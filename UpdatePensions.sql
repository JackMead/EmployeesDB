IF COL_LENGTH('PensionFunds', 'LastContributionDate') IS NULL
BEGIN
    ALTER TABLE PensionFunds
    ADD [LastContributionDate] DATETIME
END

UPDATE PensionFunds SET Amount=Amount+0.05*Salary, LastContributionDate = GETDATE()
FROM Employees e JOIN PensionFunds pf on e.Id = pf.EmployeeId;