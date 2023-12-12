This README describes the various ipynb and csv files created for 2022S2 COMP90049 Project 3.

A iml_as3_codelines_emb_submission.ipynb file in the structure:
    1.0 Data preprocessing
	Use full train dataset and development dataset
    2.0 Supervised learning models
        2.1 Baseline model 
		Manually configured one-r baseline model, picking the identifier with highest accuracy rate
        2.2.1 Naive bayes
		Import sklearn naive bayes model, fine tuned to suit train dataset, predict on development dataset
        2.2.2 Logistic regression
		Import sklearn logistic regression model, fine tuned to train dataset, predict on development dataset
        2.2.3 Neural network
		Import sklearn neural network model, fit train dataset, predict on development dataset
    3.0 Semi-supervised learning model
	Based on above tests, choose logistic regression as the base model, gradually feeding unlabelled data for 
	semi-supervised learning
    4.0 Unsupervised learning model  
	Import sklearn K-mean model, gradually feeding unlabelled data to check for detailed performance

The written report is based on above machine learning experiences, all performances and charts are from the above ipynb file.

For Kaggle competition, after a few round of submission (including kaggle_prediction_full_semi.csv, kaggle_prediction_nb.csv, etc), the 
the performance is at only 52%. The author realized there is a overfitting issue with above models. Hence, another experiment is created to test this:

A iml_as3_codelines_emb_submission_balanaced.ipynb file in the structure:
    1.0 Data preprocessing
        Different from above experiment, this one use a balanced dataset (50:50 toxic vs non-toxic)
    2.0 Supervised learning models
        2.1 Logistic regression
		Same as above
    3.0 Semi-supervised learning model
        3.1 Logistic regression with Unlabelled data
		Same as above
   
A few prediction for Kaggle competition is created (including 50_50_kaggle_prediction_1.0_semi.csv, 50_50_kaggle_prediction_LR_tuned.csv, etc)
The performance increased to 72%, prove that previous models are having a overfitting issue. And this is discussed in the written report.
