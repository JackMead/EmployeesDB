INSERT INTO PensionFunds
(EmployeeId, Amount, Provider)
(SELECT e.Id, 0, pp.Id 
FROM Employees e CROSS JOIN PensionProviders pp WHERE IsDefault=1 AND NOT EXISTS(SELECT * FROM PensionFunds WHERE EmployeeId= e.Id))