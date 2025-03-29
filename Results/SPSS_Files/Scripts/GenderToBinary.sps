* Encoding: UTF-8.
COMPUTE Gender_Binary = 0.

IF (Patient_Gender = 'F') Gender_Binary = 1.

EXECUTE.
