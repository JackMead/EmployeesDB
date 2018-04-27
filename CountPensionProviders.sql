SELECT pp.Name, COUNT(*) 
FROM Employees e
JOIN PensionFunds pf ON pf.EmployeeId=e.Id
JOIN PensionProviders pp ON pf.Provider=pp.Id
GROUP BY pp.NAME
