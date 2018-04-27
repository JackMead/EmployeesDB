INSERT INTO JobPositions (Title) VALUES
('CEO'),('Director'),('Keyboard Warrior');

INSERT INTO PensionProviders (Name, IsDefault)
VALUES ('Provider A',0), ('Provider B',1);

INSERT INTO Employees (FirstName, LastName, Age, Salary, JobPosition)
VALUES ('Matt', 'English', 29, 10000, 1),
('A','Name', 24, 12000, 2),
('Elvis', 'Presley', 1000, 8, 3)

INSERT INTO PensionFunds (EmployeeId, Amount, Provider)
VALUES (1,1000, 1), (2,2000,2);