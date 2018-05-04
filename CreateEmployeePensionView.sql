CREATE VIEW EmployeeWithPensionDetails AS
SELECT EmployeeId, FirstName, LastName, Salary, Amount, PensionProviders.NAME
    FROM  Employees
    JOIN  PensionFunds ON EmployeeId= Employees.Id
	JOIN PensionProviders ON PensionProviders.Id = PensionFunds.Provider
