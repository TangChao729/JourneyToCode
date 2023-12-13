import sys
from collections import defaultdict
import os
import time
import json
import ijson

### version 05, finalized version ###


class TtLoaderParser:
    def __init__(self, sal_path, tt_path, self_rank, total_rank, seek=True):
        self.sal_path = sal_path
        self.tt_path = tt_path
        self.rank = self_rank
        self.total_rank = total_rank
        self.start = time.time()

        size = os.path.getsize(self.tt_path)

        self.pre_define_dicts()

        self.seek = seek
        self.start_position = size // total_rank * self_rank
        self.end_position = size // total_rank * (self_rank + 1)

    def load_sal(self):
        with open(self.sal_path, 'r') as file:
            return json.load(file)
        
    def parse_location(self, place):

            # break down each address into sections
            suburb, city, state = None, None, None
            place_components = [p.strip().lower() for p in place.split(",")]

            # lookup state from state list
            state = next((state for state in self.state_dict.keys() if state in place_components), None)

            # lookup city from city list
            city = next((city for city in self.cap_cities.values() if city in place_components), None)

            suburb = place_components[0]

            # failed to retrieve city, then use suburb to look for city
            if city == None:
                # lookup "suburb (code)" from gcc_code_dict
                if state != None:
                    suburb_code = suburb + " " + self.state_dict[state]
                    if suburb_code in self.gcc_code_dict.keys():
                        city = self.gcc_code_dict[suburb_code]
                else:
                    if suburb in self.gcc_dict.keys():
                        city = self.gcc_dict.get(suburb)

            return city

    # parser method, with predefined city, city_code, state information
    def load_and_parse_tweets(self):

        # return a generator for use in next step
        def tweets_generator():
            
            # method 3:
            if self.seek == True:
                
                # when single task (core)
                if self.total_rank <= 1:
                    with open(self.tt_path, "rb") as f:
                        for idx, json_obj in enumerate(ijson.items(f, 'item')):
                            if idx % self.total_rank == self.rank:
                                yield [json_obj["data"]["author_id"], self.parse_location(json_obj["includes"]["places"][0]["full_name"])]

                # when multi core    
                else:
                    for idx, json_obj in enumerate(self.read_json_objects(self.tt_path, self.start_position, self.end_position)):
                        # time.sleep(0.0001)
                        yield [json_obj["data"]["author_id"], self.parse_location(json_obj["includes"]["places"][0]["full_name"])]
            
            # method 2:
            else:
                with open(self.tt_path, "rb") as f:
                    for idx, json_obj in enumerate(ijson.items(f, 'item')):
                        if idx % self.total_rank == self.rank:
                            yield [json_obj["data"]["author_id"], self.parse_location(json_obj["includes"]["places"][0]["full_name"])]

        return tweets_generator()

    def pre_define_dicts(self):
        self.sal = self.load_sal()

        self.cap_cities = {
            "1gsyd": "sydney",
            "2gmel": "melbourne",
            "3gbri": "brisbane",
            "4gade": "adelaide",
            "5gper": "perth",
            "6ghob": "hobart",
            "7gdar": "darwin",
            "8acte": "canberra",
            "9oter": "other_territories",
        }

        self.state_dict = {"queensland": "(qld)",
                           "victoria": "(vic.)",
                           "new south wales": "(nsw)",
                           "northern territory": "(nt)",
                           "south australia": "(sa)",
                           "western australia": "(wa)",
                           "tasmania": "(tas.)",
                           "australian capital territory": "(act)",
                           "other territories": "(oter)"}

        # a dict of suburb: city
        self.gcc_dict = {suburb: self.cap_cities[self.sal[suburb]["gcc"]]
                         for suburb in self.sal if self.sal[suburb]["gcc"] in self.cap_cities}
        
        # a dict of suburb (code): city
        _cap_cities_code = {
            "1gsyd": "(nsw)",
            "2gmel": "(vic.)",
            "3gbri": "(qld)",
            "4gade": "(sa)",
            "5gper": "(wa)",
            "6ghob": "(tas.)",
            "7gdar": "(nt)",
            "8acte": "(act)",
            "9oter": "(oter)",
        }

        self.gcc_code_dict = {}

        for suburb in self.sal:
            # check if this is in great capital cities
            if self.sal[suburb]['gcc'] in self.cap_cities:
                cap_city_fullname = self.cap_cities[self.sal[suburb]["gcc"]]
                state = self.sal[suburb]['gcc']

                suburb_with_code = ""
                if '(' in suburb and ')' in suburb:
                    suburb_with_code = suburb
                else:
                    suburb_with_code = suburb + " " + _cap_cities_code[state]

                self.gcc_code_dict[suburb_with_code] = cap_city_fullname

    # after getting [author_id, city], stack the results into dictionaries respectively
    def process_results(self, tweets_generator):
        city_count = defaultdict(int)
        user_tweet_count = defaultdict(int)
        user_city_count = defaultdict(list)

        for author_id, city in tweets_generator:
            # count all tweets
            user_tweet_count[author_id] += 1
            
            # only record when twitter in great capital cities
            if city != None:

                city_count[city] += 1
                user_city_count[author_id].append(city)
        
        # used to track each rank's time spend
        self.end = time.time()
        
        return {
            "city_count": dict(city_count),
            "user_tweet_count": dict(user_tweet_count),
            "user_city_count": {k: (len(v), v) for k, v in user_city_count.items()},
        }, self.end - self.start

    def read_json_objects(self, file_path=None, start_position=0, end_position=None):

        with open(file_path, 'r') as file:
            json_str = ''

            # Seek to the start position
            file.seek(start_position)

            # this block is used to read and parse each json object given a certain range
            while True:
                new_line = file.readline()

                # if reaching end of a json object
                if new_line == '  },\n' or new_line == '  }\n':
                    json_str += new_line.split(',')[0]

                    try:
                        json_obj = json.loads(json_str)
                        json_str = ""

                        # yield json object
                        yield json_obj

                    except:
                        json_str = ""

                    # stop when finished last json object in given range
                    if file.tell() > end_position:
                        break

                elif new_line == ',\n':
                    continue

                # if reaching end of file, or exceeding reading limit (but will continue until current json file is fully read)
                elif not new_line:
                    break

                # else keep adding lines to current json object
                else:
                    json_str += new_line
