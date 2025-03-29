* Encoding: UTF-8.
COMPUTE Predicted_Conditions = CONCAT(STRING(Atelectasis_Prediction,F1.0), STRING(Cardiomegaly_Prediction,F1.0), STRING(Mass_or_Nodule_Prediction,F1.0), STRING(Consolidation_Prediction,F1.0), STRING(No_Finding_Prediction,F1.0)).
EXECUTE.
