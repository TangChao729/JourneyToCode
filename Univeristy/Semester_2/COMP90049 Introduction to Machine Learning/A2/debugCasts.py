import numpy as np
import pandas as pd

# Write additional code here, if necessary (you may insert additional code cells)

def cv_preprocess(filename, m_partitions):
    train_data = pd.read_csv("data/" + filename)
    
    # delete client id
    del train_data[train_data.columns.values[0]]

    # drop client ID & label
    all_labels = np.unique(train_data[train_data.columns[-1]])

    all_features = list(train_data.columns)
    all_features.pop()

    # random partitions
    permuted_indices = np.random.permutation(len(train_data))
    
    feature_partitions = []
    label_partitions = []
    for i in range(m_partitions):
        one_partition = train_data.iloc[permuted_indices[i::m_partitions]]
        one_label_partition = one_partition[train_data.columns[-1]]
        del one_partition[one_partition.columns.values[-1]]
        
        feature_partitions.append(one_partition)
        label_partitions.append(one_label_partition)

    return feature_partitions, label_partitions, all_features, all_labels


def train(train_data, train_label, all_features, all_labels):
    train_size = train_data.shape[0]
    features = all_features
    
    label_priors = {}
    pred_priors = {}
    likelihoods = {}

    # initial label_prior dict
    for label in np.unique(all_labels):
        label_priors.update({label: 0})   

    # initialization
    for feature in features:

        # initial likelihoods dict
        likelihoods[feature] = {}

        # initial prediction prior belief dict
        pred_priors[feature] = {}

        # for each feature, iterate over unique value of this set of feature
        for feat_val in np.unique(train_data[feature]):

            # # initial this unique feature value dict
            # pred_priors[feature].update({feat_val: 0})

            # iterate over each label
            for label in np.unique(all_labels):

                # initial likelihood dict
                likelihoods[feature].update({feat_val+'_'+label:0})

    # calculate label probability prior P(y)
    for label in np.unique(all_labels):
        label_count = sum(train_label == label)
        
        # i.e. {'yes': 0.88, 'no': 0.11}
        label_priors[label] = label_count / train_size
        

    # calculate likelihoods P(x|y)
    for feature in features:
        for label in np.unique(all_labels):
            label_count = sum(train_label == label)

            # each feature likelihood under this lable (yes or no) equals to all instances of this feature that is under this label (yes or no)
            # simple visualization:
            # - cross all other class row
            # - cross all other features column
            # count this valid column's values, put into a dict
            feat_likelihood = train_data[feature][train_label[train_label == label].index.values.tolist()].value_counts().to_dict()
            #print("Under feature: ", feature, "Under label: ", label, " - ", feat_likelihood)
            
            # calculate the likelihoods for each feature_val of each feature of this label
            # format is like: {'job': {'admin._no': 0.105, 'admin._yes': 0, 'blue-collar_no': 0.21925, 'blue-collar_yes': 0 ...}}
            for feat_val, count in feat_likelihood.items():
                likelihoods[feature][feat_val + '_' + label] = count/label_count

    #print(likelihoods)

    # calculate predict prior P(x)
    # for feature in features:

    #     # under each feature, no matter its class/label, count the number of appearance of each feat_val
    #     feat_vals = train_data[feature].value_counts().to_dict()

    #     # calculate the predict prior for each feature_val of each feature 
    #     for feat_val, count in feat_vals.items():
    #         pred_priors[feature][feat_val] = count/train_size

    #print(pred_priors)
    unique_labels = np.unique(all_labels)

    return features, unique_labels, label_priors, pred_priors, likelihoods

def predict(candidates, features, unique_labels, label_priors, pred_priors, likelihoods):
    
    results = []
    epsilon = 1e-7

    # for each candidate
    for candidate in candidates:
        
        candidate_probability = {}

        # either 'yes' or 'no' in this case
        for label in np.unique(unique_labels):

            # percentage of 'yes' or 'no'
            # log-transformation
            p_y = np.log(label_priors[label])

            # initial set
            p_x_y = 0

            # initial set
            # p_x = 1

            # reverse processing to pair feature heading with candidate features
            for feat, feat_val in zip(features, candidate):

                # look up the p_x_y of this feature value of this feature under this label P(x|y)
                # i.e. 'service_yes' is under 'job', its p_x_y is 0.1222
                # log-transformation
                # print(label, feat, feat_val)
                if feat_val + '_' + label not in likelihoods[feat].keys():
                    a_likelihood = 0
                else:
                    a_likelihood = likelihoods[feat][feat_val + '_' + label]
                if a_likelihood == 0:
                    a_likelihood = epsilon
                    #print("Found one")
                
                a_likelihood = np.log(a_likelihood)
                p_x_y += a_likelihood

                # look up the predictor prior probability P(x)
                # a_pred_prior = np.log(pred_priors[feat][feat_val])
                # if a_pred_prior == 0:
                #     a_pred_prior = epsilon
                #     print("Found one")
                # p_x *= pred_priors[feat][feat_val]

            # Bayes rule in log-transformation
            p_y_x = (p_x_y + p_y) # / (p_x) dont need it

            # add bayes probability to dict
            candidate_probability[label] = p_y_x
            
        # might be the cause
        # # pick the highest probability as the result
        # label_probability = {}
        # for label, probability in candidate_probability.items():
        #     label_probability[label] = probability
        # prediction_label = max(candidate_probability, key = lambda x: candidate_probability[x])
        # result_pack = (prediction_label, label_probability)
        # # append to result list
        # results.append(result_pack)

        
        prediction_label = max(candidate_probability, key = lambda x: candidate_probability[x])
        
        # append to result list
        results.append(prediction_label)

    return np.array(results), candidate_probability

def evaluate(y_orig, y_pred):
               
    return float(sum(y_pred == y_orig))/float(len(y_orig))

def cross_validation(filename, m_partitions):
    feature_partitions, label_partitions, all_features, all_labels = cv_preprocess(filename, m_partitions)

    for i in range(len(feature_partitions)):
        # pick one partition as test sample
        to_predict = np.array(feature_partitions[i])
        to_compare = label_partitions[i]

        # concat the rest as training sample
        _train_data = feature_partitions[0:i] + feature_partitions[i + 1 : len(feature_partitions)]
        train_data = pd.concat(_train_data)
        _train_label = label_partitions[0:i] + label_partitions[i + 1 : len(label_partitions)]
        train_label = pd.concat(_train_label)

        features, unique_labels, label_priors, pred_priors, likelihoods = train(train_data, train_label, all_features, all_labels)
        
        results, results_probability = predict(to_predict, features, unique_labels, label_priors, pred_priors, likelihoods)

        print("Filename: ", filename, "Partition: ", i, "Train Accuracy: ", evaluate(to_compare, results))


cross_validation("obesity.csv", 10)