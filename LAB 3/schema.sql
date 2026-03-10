--  todays work

USE sem4_work;

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

-- creating students table 
CREATE TABLE Students(
	StudentID int PRIMARY KEY,
    Sname varchar(100) ,
    Sage int,
    Semail varchar(100),
    Scity varchar(100),
    DeptId int,
    FOREIGN KEY(DeptId) REFERENCES Departments(DeptId)
);


-- creating courses table 
CREATE TABLE Courses(
	CourseID int PRIMARY KEY,
    Title varchar(100) ,
    Credits int,
    Professor varchar(100),
    RoomNo int ,
    Semester int
);

-- creating enrollements table 
CREATE TABLE Enrollments(
	EnrollID int PRIMARY KEY,
    StudentID int ,
    CourseID int,
    Grade varchar(10),
    Attendance decimal ,
    FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY(CourseID) REFERENCES Courses(CourseID)
);

-- creating medical records table 
CREATE TABLE Medical_Records(
	RecordID int PRIMARY KEY,
    StudentID int Unique ,
    BloodGroup varchar(10),
    Allergy varchar(100),
    LastCheckup date ,
    FOREIGN KEY(StudentID) REFERENCES Students(StudentID)
);