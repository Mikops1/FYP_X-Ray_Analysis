* Encoding: UTF-8.
STRING Predicted_Conditions (A20).
STRING Present_Conditions (A20).
COMPUTE Predicted_Conditions = CONCAT(STRING(Atelectasis_Prediction,F1.0), STRING(Cardiomegaly_Prediction,F1.0), STRING(Mass_or_Nodule_Prediction,F1.0), STRING(Consolidation_Prediction,F1.0), STRING(No_Finding_Prediction,F1.0)).
COMPUTE Present_Conditions = CONCAT(STRING(Atelectasis,F1.0), STRING(Cardiomegaly,F1.0), STRING(LungLesion,F1.0), STRING(Consolidation,F1.0), STRING(NoFinding,F1.0)).

COMPUTE match_count = 0.

LOOP i = 1 TO 5.
    IF (CHAR.SUBSTR(Present_Conditions, i, 1) = CHAR.SUBSTR(Predicted_Conditions, i, 1)) match_count = match_count + 1.
END LOOP.
.
COMPUTE Match_Percentage = (match_count / 5) * 100.


COMPUTE match_count = 0.
COMPUTE total_ones = 0.

DO REPEAT i = 1 TO 5.
    IF (CHAR.SUBSTR(Present_Conditions, i, 1) = '1') total_ones = total_ones + 1.

    IF (CHAR.SUBSTR(Present_Conditions, i, 1) = '1' AND CHAR.SUBSTR(Predicted_Conditions, i, 1) = '1') match_count = match_count + 1.
END REPEAT.

COMPUTE match_percentage_ones = (match_count / total_ones) * 100.


EXECUTE.
