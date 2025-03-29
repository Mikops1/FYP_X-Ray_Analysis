* Encoding: UTF-8.
COMPUTE Present_Conditions = CONCAT(STRING(Atelectasis,F1.0), STRING(Cardiomegaly,F1.0), STRING(Mass_or_Nodule,F1.0), STRING(Consolidation,F1.0), STRING(No_Finding,F1.0)).
EXECUTE.
