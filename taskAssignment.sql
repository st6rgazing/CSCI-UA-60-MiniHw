.parameter clear
.parameter init
.parameter set :task 101

SELECT volunteer.volunteerName
FROM volunteer
JOIN assignment ON volunteer.volunteerId = assignment.volunteerId
WHERE assignment.taskCode = :task;

