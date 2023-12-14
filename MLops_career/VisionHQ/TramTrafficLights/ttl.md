# 1. [Overview]

The most recent project I worked on at VisionHQ is the TRAM traffic lights project. The project is about detecting the traffic lights from the on-board camera of a tram, and assess if the tram is following the traffic lights. This is aiming to provide evidence to the public transport company, for situations such as a tram accident.

Such a project is quite different to other project's pipeline, as it involves many other possible inputs, such as GPS location, tram speed, etc. However, the company has no access to these data, and all we have is some video footage taken from the on-board camera. This poses a challenge to the project.

However, the team decided to take on the challenge, and develop a prototype model. The model is expected to be able to detect the traffic lights from the video footage, infer the tram speed and location, and assess if the tram is following the light.

# 2. [Responsibilities]

This is the most challenging project I have worked on at VisionHQ. As this is something new to the company, we had to start from scratch. I was responsible for the following tasks:

- Researching the possible solutions.
- Collecting the dataset, and labelling the images.
- Designing traffic light logic flow.
- Designing various CV models for different purpose:

1. Traffic light detection.
2. Tram stop detection.
3. Tram speed estimation.
4. Tram location estimation.

In short, the Computer Vision part of this project is scatted into several parts, and each part is responsible for a specific task. The pipeline needs to be designed carefully, and consolidate the results from each part to form the final result.

The designing and the logic part are the most important part of the project. We discussed various possible solutions, and divide the project into several parts to conquer. I was responsible for the raw data collection (i.e. video footage analysis and labelling), traffic logic flow design, and implement optical flow model for tram speed estimation. I worked closely with the team to ensure we are on the same page.

# 3. [Outcome]

The project is a success. We were able to derive the tram speed, traffic light status, and tram obeys the traffic light or not from the video footage (by comparing the goal and status). The demo video can be found [here](./video/Second_lights.mp4)

We were all satisfied with the result. However, the project is still in the prototype stage, and there are many things to be improved. For example, the tram speed estimation is not very accurate, and the traffic light detection model is not very robust. It would be necessary to obtain more data, and access to the tram's GPS location and speed. This will greatly improve the accuracy of the model.
