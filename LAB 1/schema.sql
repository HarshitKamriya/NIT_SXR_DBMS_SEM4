-- how to create data base
CREATE DATABASE sem4_work;

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
