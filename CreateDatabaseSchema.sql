IF EXISTS ( SELECT * FROM master..sysdatabases WHERE name = 'MyCompany' ) BEGIN
  USE master
  DROP DATABASE MyCompany
END
GO

CREATE DATABASE MyCompany
GO

USE MyCompany
GO

-- Create the Cats table

CREATE TABLE JobPositions(
	Id int IDENTITY NOT NULL PRIMARY KEY,
	Title nvarchar(max) NOT NULL
)

CREATE TABLE PensionProviders(
	Id int IDENTITY NOT NULL PRIMARY KEY,
	NAME nvarchar(max) NOT NULL,
	IsDefault bit NOT NULL
)

CREATE TABLE PensionFunds(
	Id int NOT NULL PRIMARY KEY,
	Amount int NOT NULL,
	Provider int NOT NULL,
	FOREIGN KEY(Provider) REFERENCES PensionProviders(Id)
)

CREATE TABLE Employees (
	Id int IDENTITY NOT NULL PRIMARY KEY,
	FirstName nvarchar(max) NOT NULL,
	LastName nvarchar(max) NOT NULL,
	Age int NOT NULL,
	Salary int NOT NULL,
	JobPosition int NOT NULL,
	PensionFund int NOT NULL,
	FOREIGN KEY(JobPosition) REFERENCES JobPositions(Id),
	FOREIGN KEY(PensionFund) REFERENCES PensionFunds(Id)
)
GO
