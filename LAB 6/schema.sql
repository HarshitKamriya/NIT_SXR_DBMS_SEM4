CREATE DATTBASE sem4_work;
-- createing departments table

CREATE TABLE Departments(
	DeptID int PRIMARY KEY,
    DeptName varchar(100) ,
    Building varchar(100),
    HOD varchar(100),
    Budget decimal ,
    Capacity decimal
);

-- createing employees table

CREATE TABLE Employees(
	EmpID int PRIMARY KEY,
    FirstName varchar(100) ,
    LastName varchar(100),
    JobTitle varchar(100),
    Salary decimal ,
    DeptID INT,
    FOREIGN KEY(DeptId) REFERENCES Departments(DeptId)
);