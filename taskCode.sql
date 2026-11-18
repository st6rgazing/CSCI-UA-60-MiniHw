.parameter clear
.parameter init
.parameter set :code 101

SELECT taskDescription
FROM task
WHERE taskCode = :code;
