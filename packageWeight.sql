.parameter clear
.parameter init
.parameter set :task 102

SELECT packageId, packageWeight
FROM package
WHERE taskCode = :task
  AND packageWeight > (
      SELECT AVG(packageWeight)
      FROM package
  );
