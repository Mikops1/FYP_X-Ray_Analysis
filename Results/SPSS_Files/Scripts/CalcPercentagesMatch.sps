* Encoding: UTF-8.
COMPUTE match_count = 0.

LOOP i = 1 TO 5.
    IF (CHAR.SUBSTR(Present_Conditions, i, 1) = CHAR.SUBSTR(Predicted_Conditions, i, 1)) match_count = match_count + 1.
END LOOP.
.
COMPUTE Match_Percentage = (match_count / 5) * 100.

EXECUTE.