.parameter clear
.parameter init
.parameter set :vid 2

SELECT volunteerName, volunteerTelephone
FROM volunteer
WHERE volunteerId = :vid;
