SELECT * FROM Employees e WHERE NOT EXISTS (SELECT * FROM PensionFunds WHERE e.Id=EmployeeId)

SELECT * FROM Employees e LEFT OUTER JOIN PensionFunds p ON e.Id=p.EmployeeId WHERE p.EmployeeId IS NULL