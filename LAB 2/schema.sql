-- how to use data base
USE sem4_work


--  creating the first table 
CREATE TABLE student(
	stuedntid INT PRIMARY KEY,
    studentname VARCHAR(100) NOT NULL,
    age INT,
    course VARCHAR(50) default 'GENERAL'
);

-- how to see schema of sql table 
DESCRIBE student;
SHOW CREATE TABLE student;


-- CREATE TABLE course  
CREATE TABLE course(
	cid INT PRIMARY KEY,
    cname varchar(50)
); 

-- re - creating the student table 
CREATE TABLE student(
	stud_id INT PRIMARY KEY,
    stud_name VARCHAR(100) NOT NULL,
    stud_age INT,
    c_id INT ,
    course VARCHAR(50) default 'GENERAL',
    FOREIGN KEY (c_id) REFERENCES courses(c_id)   
);