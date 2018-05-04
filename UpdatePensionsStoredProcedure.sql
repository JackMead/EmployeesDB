CREATE PROCEDURE UpdatePensionFunds AS

UPDATE PensionFunds SET Amount=Amount+0.05*Salary, LastContributionDate = GETDATE()
FROM Employees e JOIN PensionFunds pf on e.Id = pf.EmployeeId;