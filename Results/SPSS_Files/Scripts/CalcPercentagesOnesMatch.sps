* Encoding: UTF-8.

COMPUTE match_count = 0.
COMPUTE total_ones = 0.

DO REPEAT i = 1 TO 5.
    IF (CHAR.SUBSTR(Present_Conditions, i, 1) = '1') total_ones = total_ones + 1.

    IF (CHAR.SUBSTR(Present_Conditions, i, 1) = '1' AND CHAR.SUBSTR(Predicted_Conditions, i, 1) = '1') match_count = match_count + 1.
END REPEAT.

COMPUTE match_percentage_ones = (match_count / total_ones) * 100.

EXECUTE.