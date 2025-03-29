* Encoding: UTF-8.
* 1 = True Positive (TP)
* 2 = False Positive (FP)
* 3 = True Negative (TN)
* 4 = False Negative (FN)

COMPUTE Match_Atelectasis = 0.
IF (Atelectasis = 1 AND Atelectasis_Prediction = 1) Match_Atelectasis = 1.
IF (Atelectasis = 0 AND Atelectasis_Prediction = 1) Match_Atelectasis = 2.
IF (Atelectasis = 0 AND Atelectasis_Prediction = 0) Match_Atelectasis = 3.
IF (Atelectasis = 1 AND Atelectasis_Prediction = 0) Match_Atelectasis = 4.

COMPUTE Match_Cardiomegaly = 0.
IF (Cardiomegaly = 1 AND Cardiomegaly_Prediction = 1) Match_Cardiomegaly = 1.
IF (Cardiomegaly = 0 AND Cardiomegaly_Prediction = 1) Match_Cardiomegaly = 2.
IF (Cardiomegaly = 0 AND Cardiomegaly_Prediction = 0) Match_Cardiomegaly = 3.
IF (Cardiomegaly = 1 AND Cardiomegaly_Prediction = 0) Match_Cardiomegaly = 4.

COMPUTE Match_Mass_or_Nodule = 0.
IF (Mass_or_Nodule = 1 AND Mass_or_Nodule_Prediction = 1) Match_Mass_or_Nodule = 1.
IF (Mass_or_Nodule = 0 AND Mass_or_Nodule_Prediction = 1) Match_Mass_or_Nodule = 2.
IF (Mass_or_Nodule = 0 AND Mass_or_Nodule_Prediction = 0) Match_Mass_or_Nodule = 3.
IF (Mass_or_Nodule = 1 AND Mass_or_Nodule_Prediction = 0) Match_Mass_or_Nodule = 4.

COMPUTE Match_Consolidation = 0.
IF (Consolidation = 1 AND Consolidation_Prediction = 1) Match_Consolidation = 1.
IF (Consolidation = 0 AND Consolidation_Prediction = 1) Match_Consolidation = 2.
IF (Consolidation = 0 AND Consolidation_Prediction = 0) Match_Consolidation = 3.
IF (Consolidation = 1 AND Consolidation_Prediction = 0) Match_Consolidation = 4.

COMPUTE Match_No_Finding = 0.
IF (No_Finding = 1 AND No_Finding_Prediction = 1) Match_No_Finding = 1.
IF (No_Finding = 0 AND No_Finding_Prediction = 1) Match_No_Finding = 2.
IF (No_Finding = 0 AND No_Finding_Prediction = 0) Match_No_Finding = 3.
IF (No_Finding = 1 AND No_Finding_Prediction = 0) Match_No_Finding = 4.

EXECUTE.