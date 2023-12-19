# Online Coding Course Experience

This repository contains my reflections and learnings from an online coding course that I recently completed. The course was taught by [Andrej Karpathy](https://cs.stanford.edu/people/karpathy/) and was hosted on [YouTube](https://www.youtube.com/@AndrejKarpathy). The course covered the fundamentals of deep learning and neural networks and was taught using [Python] and [PyTorch].

## Course Overview

Like Andrej said, most machine learning engineers that use pytorch on a daily basis but don't know how it works under the hood. This course is designed to fill that gap, aimed to teach you the core concepts behind neural networks and build pytorch key components from scratch. The course is divided into 7 parts:

0. [The spelled-out intro to neural networks and backpropagation: building micrograd](https://www.youtube.com/watch?v=VMj-3S1tku0&t=20s)
1. [Intro to language modelling](https://www.youtube.com/watch?v=PaCmpygFfXo&t=240s)
2. [Building makemore Part2: MLP](https://www.youtube.com/watch?v=TCH_1BHY58I&t=533s)
3. [Building makemore Part3: Activations, Gradients, BatchNorm](https://www.youtube.com/watch?v=P6sfmUTpUmc&t=5417s)
4. [Building makemore Part4: Become a Backprop Ninja](https://www.youtube.com/watch?v=P6sfmUTpUmc&t=5417s)
5. [Building makemore Part5: Building a waveNet]
6. [Let's build GPT: from scratch, in code, spelled out](https://www.youtube.com/watch?v=kCc8FmEb1nY&t=44s)

## My Experience

It was completely beyond my expectation. As a master of IT graduate (graduate with distinction, from a top university), I used pytorch on a daily basis either for my research or for my work. However, it never occurred to me that I could build pytorch from scratch. I mean, I understand the basic concept of neural networks such as activations, gradients, backpropagation, etc. All these were taught in class and I was able to understand them in simple examples. 
But when I look at them in a slightly more complicated example, I was lost. There are so many details that I didn't know. For example, how to initialize the weights that maximize the performance, how to choose the learning rate, how to choose the optimizer, etc. 
This course, as Andrej said, is designed to fill that gap. It is not a course that teaches you how to use pytorch, but a course that teaches you how pytorch works under the hood. I am so glad that I took this course. 

## Key Takeaways

There really is no new concept in this course. It started from the very basic bigram model, to implement a simple neural network using numpy, to shifting the implementation to pytorch-alike framework. 

Below are the organized notes that I took during the course.

Micrograd part 1: [notes](./Notebooks/micrograd_lecture_first_half_roughly.ipynb)
Micrograd part 2: [notes](./Notebooks/micrograd_lecture_second_half_roughly.ipynb)
Makemore part 1: [notes](./Notebooks/makemore_part1_bigrams.ipynb)
Makemore part 2: [notes](./Notebooks/makemore_part2_mlp.ipynb)
Makemore part 3: [notes](./Notebooks/makemore_part3_bn.ipynb)
Makemore part 4: [notes](./Notebooks/makemore_part4_backprop.ipynb)
Makemore part 5: [notes](./Notebooks/makemore_part5_cnn1.ipynb)
Build GPT: [notes](./Notebooks/gpt_dev.ipynb)

## Conclusion

I would highly recommend this course to anyone who wants to, not just use built models, but create their own models.
