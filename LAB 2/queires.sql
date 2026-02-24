-- Inserting data into previously created table
use sem4_work; 
INSERT INTO student
(stuedntid,studentname,age,course)
VALUES
(7,"Akshat",19,"btech-IT"),
(8,"Dev",20 , "btech-CSE"),
(9,"Anomal",20, "btech-che");


-- view the table retrive the data
SELECT * FROM student; 



-- UPDATING THE TABLE DATA
UPDATE student
SET phone = "9826698157"
WHERE studentname = "harshit"; 

SELECT * FROM student; 

-- DELETING THE TABLE DATA
DELETE  FROM student 
WHERE studentname=  "harshit";
SELECT * FROM student; 

-- RETRIVE SELECTED COLUMNS
SELECT studentname,course FROM student;

-- RETRIVE SELECTD ATTRIBUTED FROM THE TABLE
SELECT studentname,age,course FROM student
where studentname='prince';


-- DELETE PREVIOUSLY CRAETED STUDENT TABLE
DROP TABLE student; 

-- CREATE TABLE course  
CREATE TABLE course(
	cid INT PRIMARY KEY,
    cname varchar(50)
); 

-- INSERT DATA INTO course table 
INSERT INTO course
(cid,cname)
VALUES
(1,"MATHEMATICS"),
(2,"DATA STRUCTURE"),
(3,"MACHINE LEARNING"),
(4,"DATA SCIENCE"),
(5,"WEB DEVELOPMENT"),
(6,"LOW LEVEL DESIGN"),
(7,"HIGH LEVEL DESIGN");

-- INSERTING DATA INTO STUDENT TABLE
INSERT INTO student
(stud_id,stud_name,stud_age,c_id,course)
VALUES 
(1,"HARSHIT",19,3,"B-TECH"),
(2,"PRINCE",19,3,"B-TECH"),
(3,"AKSHAT",19,2,"B-TECH"),
(4,"SANJEEV",19,1,"B-TECH"),
(5,"VANSH",19,3,"B-TECH"),
(6,"PIYUSH",19,5,"B-TECH"),
(7,"AMAN",19,6,"B-TECH"),
(8,"RAKESH",19,7,"B-TECH"),
(9,"MILAND",19,4,"B-TECH");


-- selecting ALL COURSE NAME FROM course table using join and foregin key
SELECT  course.cname
FROM course
JOIN student 
WHERE student.c_id = course.cid;
