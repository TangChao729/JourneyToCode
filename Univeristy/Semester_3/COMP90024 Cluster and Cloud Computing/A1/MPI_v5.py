import sys, getopt
from mpi4py import MPI
from TwitterParser_v5 import TtLoaderParser

class MPIprocess:
    def __init__(self, sal_file, twitter_file):

        self.comm = MPI.COMM_WORLD

        self.rank = self.comm.rank
        self.size = self.comm.size
        self.name = MPI.Get_processor_name()
        self.holder = []

        self.twitter_file_path = twitter_file
        self.sal_file_path = sal_file

        self.r0_mTCC = {}
        self.r0_mTC = {}
        self.r0_mD = {}

    def process(self):

        if self.rank == 0:
            # construction tlp
            tlp = TtLoaderParser(self.sal_file_path, self.twitter_file_path, self.rank, self.size, seek=True)
            
            # load and parse
            tweets_generator = tlp.load_and_parse_tweets()  # The generator
            results, time = tlp.process_results(tweets_generator)
            
            # get result from parser
            self.r0_mTCC = results["city_count"]
            self.r0_mTC = results["user_tweet_count"]
            self.r0_mD = results["user_city_count"]
            self.time_frame = {}
            self.time_frame[0] = time

            # merge received results, and print
            self.receive_merge()
            self.print()

        else:
            # construction tlp
            tlp = TtLoaderParser(self.sal_file_path, self.twitter_file_path, self.rank, self.size, seek=True)
            
            # load and parse
            tweets_generator = tlp.load_and_parse_tweets()  # The generator
            results, time = tlp.process_results(tweets_generator)
            
            # get result from parser
            mTCC = results["city_count"]
            mTC = results["user_tweet_count"]
            mD = results["user_city_count"]

            # send result back to 0
            self.comm.send(((mTCC, mTC, mD), time), dest=0)

    def receive_merge(self):
        
        # to receive from each of the rest nodes
        if self.size > 1:
            for i in range(1, self.size):
                data, time = self.comm.recv(source=i)
                self.holder.append(data)
                self.time_frame[i] = time

            for idx, content in enumerate(self.holder):
                mTCC, mTC, mD = content

                self.r0_mTCC = self._merge(self.r0_mTCC, mTCC)
                self.r0_mTC = self._merge(self.r0_mTC, mTC)
                self.r0_mD = self._mergeTuple(self.r0_mD, mD)
    
    def _merge(self, diction_1, diction_2):
        res = {}

        for k, v in diction_1.items():
            if type(v) != int:
                print('Dict value type not int, cannot merge')
                break
            if k not in res.keys():
                res[k] = v
            else:
                res[k] = res.get(k) + v

        for k, v in diction_2.items():
            if type(v) != int:
                print('Dict value type not int, cannot merge')
                break
            if k not in res.keys():
                res[k] = v
            else:
                res[k] = res.get(k) + v

        return res
    
    def _mergeTuple(self, diction_1, diction_2):
        res = {}

        for k, v in diction_1.items():
            
            count, city_list = v

            if type(count) != int:
                print('Dict value type not int, cannot merge')
                break
            if k not in res.keys():
                res[k] = v
            else:
                count_0, city_list_0 = res[k]
                count += count_0
                city_list += city_list_0
                res[k] = (count, city_list)

        for k, v in diction_2.items():

            count, city_list = v

            if type(count) != int:
                print('Dict value type not int, cannot merge')
                break
            if k not in res.keys():
                res[k] = v
            else:
                count_0, city_list_0 = res[k]
                count += count_0
                city_list += city_list_0
                res[k] = (count, city_list)

        return res

    def print(self):
        # PRINTING FORMATTER BELOW

        # print mTCC
        print_dict = {"brisbane": "3gbri(Greater Brisbane)",
                                "melbourne": "2gmel(Greater Melbourne)",
                                "sydney": "1gsyd(Greater Sydney)",
                                "darwin": "7gdar(Greater Darwin)",
                                "adelaide": "4gade(Greater Adelaide)",
                                "perth": "5gper(Greater Perth)",
                                "hobart": "6ghob(Greater Hobart)",
                                "canberra": "8gact(Greater ACT)",
                                "other_territories": "9oter(Great Other Territories)"}
        
        print_dict2 = {
            "sydney": "gsyd",
            "melbourne": "gmel",
            "brisbane": "gbri",
            "adelaide": "gade",
            "perth": "gper",
            "hobart": "ghob",
            "darwin": "gdar",
            "canberra": "acte",
            "other_territories": "oter"
        }

        # print mTC
        sort_orders = sorted(self.r0_mTC.items(), key=lambda x: x[1], reverse=True)
        print('\n{0:<10} {1:<40} {2:<10}'.format("Rank","Author ID", "Number of Tweets Made"))
        for index, content in enumerate(sort_orders):
            index += 1
            if index > 10:
                break
            author_id, count = content
            rank = "#" + str(index)
            print('{0:<10} {1:<49} {2:<10}'.format(rank, author_id, count))

        sort_orders = sorted(self.r0_mTCC.items(), key=lambda x: x[1], reverse=True)
        print('\n{0:<10} {1:<30} {2:<10} {3:<30}'.format("Rank","Great Capital City", "", "Number of Tweets Made"))
        for index, content in enumerate(sort_orders):
            index += 1
            rank = "#" + str(index)
            print('{0:<10} {1:<30} {2:<18} {3:<30}'.format(rank, print_dict[content[0]], "", content[1]))

        # Then, sort the data by the length of the unique lists and their length (in ascending order)
        sorted_data = sorted(self.r0_mD.items(), key=lambda x: (len(set(x[1][1])), len(x[1][1])), reverse=True)

        # Finally, store the sorted data as a list of tuples
        sort_orders = [(key, (len(value), value)) for key, (_, value) in sorted_data]
        print('\n{0:<10} {1:<40} {2:<10}'.format("Rank","Author ID", "Number of Unique City Locations and #Tweets"))
        for index, content in enumerate(sort_orders):
            index += 1
            if index > 10:
                break
            author_id, (count, city_list) = content

            # construct a list like this: 6(#54 tweets - 9gsyd, 9gmel ...)
            list_len = len(set(city_list))

            city_count = {}
            for ct in city_list:
                if ct in print_dict2:
                    city_count[print_dict2[ct]] = city_count.get(print_dict2[ct], 0) + 1

            dct_summary = dict(sorted(city_count.items(), key=lambda x: x[1], reverse=True))
            lst_summary = []

            for key, value in dct_summary.items():
                lst_summary.append(f"#{value}{key}")
            
            print_str = " {}(#{} tweets - {})".format(str(list_len), str(count), ', '.join(lst_summary))

            rank = "#" + str(index)
            print('{0:<10} {1:<40} {2:<18}'.format(rank, author_id, print_str))

        print('\n')
        # used to check each rank's time spend
        for k, v in self.time_frame.items():
            print('rank {}, time (sec): {}'.format(k, round(v, 3)))
        print('\n')
            

def main(argv):
    sal_file = argv[0]
    twitter_file = argv[1]
    opts, args = getopt.getopt(argv,"hs:t:")

    for opt, arg in opts:
        if opt == '-h':
            print ('test.py -s <sal_file> -t <twitter_file>')
            sys.exit()
        elif opt in ("-s"):
            sal_file = arg
        elif opt in ("-t"):
            twitter_file = arg

    mpiprocesss = MPIprocess(sal_file, twitter_file)
    mpiprocesss.process()

if __name__ == "__main__":
   main(sys.argv[1:])
