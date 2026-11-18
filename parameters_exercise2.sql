-- -----------------------------------
-- PARAMETERIZED QUERY PRACTICE
-- -----------------------------------

-- For each question:
-- 1. Create a seperate .sql file with the given name
-- 2. Include a .parameter set line
-- 3. Write a query using that parameter
-- 4. Run it with .read and change the parameter value to test

--------------------------------------------------
-- Question 1
-- What is the description of the task with this task code?
-- File: taskCode.sql
-- Use parameter: :code

--------------------------------------------------
-- Question 2
-- What is the name and phone number of the volunteer with this volunteer id?
-- File: volunteerId.sql
-- Use parameter: :vid

--------------------------------------------------
-- Question 3
-- What is the name of the volunteer assigned to this task code?
-- (This one requires a JOIN)
-- File: taskAssignment.sql
-- Use parameter: :task

--------------------------------------------------
-- Question 4
-- For a user-supplied task code, which packages for that task
-- are heavier than the average weight of ALL packages?
-- Display the package ID and weight.
-- Your query must use a subquery and the AVG() aggregate function.
-- Use parameter: :task
-- File: packageWeight.sql
-- HINT: Use a subquery to calculate the average weight of all packages.
-- In the outer query, filter by :task and compare each package weight
-- to the average returned by the subquery. No GROUP BY is needed.

-- Example:

.parameter clear
.parameter init
.parameter set :code 101

SELECT *
FROM task
WHERE taskCode = :code;

