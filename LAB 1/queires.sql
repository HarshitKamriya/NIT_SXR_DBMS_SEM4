-- inserting first row
INSERT INTO student
(stuedntid,studentname,age,course)
VALUES
(1,"harshit",19,"btech - IT")


-- to see all the attributes and records
SELECT * FROM student;

-- To see some attribute 
SELECT studentname , course FROM student;
SELECT age FROM student;


-- Inserting multiple values
INSERT INTO student
(stuedntid,studentname,age,course)
VALUES
(2,"prince",19,"btech - Petro"),
(3,"Sanjay",19,"btech - CHE"),
(4,"Sanjeev",19,"btech - CSE");


-- Updating the table
UPDATE student
SET age = 18
WHERE studentname = "Harshit";

-- updating multiple values
UPDATE student
SET age = 17 , studentname = "yash"
WHERE stuedntid = 3;

-- ADDING NEW COLUM USING ALTER KEY
ALTER TABLE student
ADD COLUMN phone VARCHAR(15);

-- MODIFIYING EXISTING COLUMN
ALTER TABLE student
MODIFY COLUMN age INT NOT NULL;
