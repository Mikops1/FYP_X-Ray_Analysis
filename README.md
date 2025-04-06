## Repo Background Information

This repository contains the relevant code for my final year project investigation. It isn't particularly readable so I hope to summarise the folder structure here.

This repo doesn't contain any of the models or arrays used for their training due to size constraints but they are available on request.
### FYP_X-Ray_Analysis/Archive
Contains .txt tracker files I used to track changes to trial models prior to settling on a stable one and resolving many of my issues with class weightings. These aren't included in this repo due to the number and size of the trial models but can be made avaiable on request.

### FYP_X-Ray_Analysis/Code
This folder contains all the code related to training the various models associated witht the project
#### Analysis
Contains some analysis and figures used to comapre results between the sex models as well as code to generate csv results for the multi-label and binary models

#### Brax_Testing
Contains code to train and test the multi-label and binary models on the BRAX dataset

#### Combined

Contains code that provides testing results when comparing the binary model to various iterations of the multi-label models

#### Label{1,2,23,3,4,5}
Contains the code for training the individual binary models for the ensemble 

Label 23 correlates to the model with labels 2 and 3 merged together

#### Multi-label VGG
Contains the code for training the multi-label model with the Hybrid-Fin.ipynb file being used as the baseline

This specific folder looks at the multi-label model prior to merging classes 2 and 3

#### Multi-Merged
Sames as Multi-label VGG but after merging classes 2 and 3

#### No-Findings_Unfiltered
Contains the code for training a trial binary no-findings model using a pre-trained model

#### Specific
Contains the code for my age and sex specific study models based on the model from Multi-Merged

### FYP_X-Ray_Analysis/Data
This folder contains the images and csv files for the data in the NIH and BRAX datasets

The images have already been downsized to 256x256

### FYP_X-Ray_Analysis/Data Sorting
Contains the code to preprocess the NIH and BRAX data, some will be suited to a local windows environment and some to aws

### FYP_X-Ray_Analysis/Results
Contains the results in csv and sav format which I have used for my analysis along with the reusable scripts I used


