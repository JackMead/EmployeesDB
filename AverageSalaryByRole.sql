SELECT Title, AvgSalary = 
(SELECT AVG(Salary) 
FROM Employees e WHERE e.JobPosition=jp.Id)
FROM JobPositions jp