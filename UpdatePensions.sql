UPDATE PensionFunds SET Amount=Amount+0.05*Salary
FROM Employees e JOIN PensionFunds pf on e.Id = pf.EmployeeId;