INSERT INTO JobPositions (Title) VALUES
('CEO'),('Director'),('Keyboard Warrior');

INSERT INTO PensionProviders (Name, IsDefault)
VALUES ('Provider A',0), ('Provider B',1);

INSERT INTO PensionFunds (Amount, Provider)
VALUES (1000, 1), (2000,2), (0,2);

INSERT INTO Employees (FirstName, LastName, Age, Salary, JobPosition, PensionFund)
VALUES ('Matt', 'English', 29, 10000, 1, 2),
('A','Name', 24, 12000, 2,1),
('Elvis', 'Presley', 1000, 8, 3,3)