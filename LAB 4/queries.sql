-- add github user name column to enrollement table
ALTER TABLE enrollement
ADD COLUMN github_uname VARCHAR(100);

-- select all elements from table
SELECT * FROM enrollement;

-- populate data in student table
INSERT INTO student
(s_id,s_name,s_phone)
VALUES
(1,"Harshit Kamriya","+91-000111222"),
(2,"Prince Kamriya","+91-000111222"),
(3,"Dev Bharavdvaj","+91-000111222"),
(4,"Sanjay Saini","+91-000111222"),
(5,"Anomal Agrawal","+91-000111222"),
(6,"Anand Agrawal","+91-000111222"),
(7,"Mukund Johri","+91-000111222"),
(8,"Rajveer Singh","+91-000111222"),
(9,"Sanjeev patel","+91-000111222"),
(10,"Naveen Manuka","+91-000111222");


-- populate data in course table
INSERT INTO course
(c_id,c_name,c_fee)
VALUES
(1,	"MACHINE LEARNING",900.00),
(2,	"DEEP LEARNING",99000.00),
(3,	"COMPUTER VISION",19000.00),
(4,	"FULL STACK DEVELOPMENT",90000.00),
(5,	"DATA SCIENCE",7000.00),
(6,"DATA STRUCTURE AND ALGORITHM",8000.00);



-- now populate child table after populating parrent table
INSERT INTO enrollement
(s_id,c_id,e_date,payment)
VALUES
(1,1,'2026-01-01',900),
(1,2,'2026-01-01',99000),
(2,3,'2026-02-01',19000),
(3,2,'2026-01-05',99000),
(4,5,'2026-01-01',7000),
(5,6,'2026-01-01',8000),
(6,4,'2026-01-01',90000),
(7,3,'2026-01-01',19000);

-- now see the enrollement table
SELECT * FROM enrollement;

-- try updating some values in enrollement table
UPDATE enrollement 
SET payment = 89000
WHERE s_id = 4;


UPDATE enrollement
SET github_uname = "HarshitKamriya"
WHERE s_id = 1;

-- now see how it looks after updating
SELECT * FROM enrollement;

-- select all the studnet id from enrollement who have payed greater that 9000
SELECT s_id 
FROM enrollement
WHERE payment>9000;


-- use join to display student name , course name and date of enrollement 
SELECT s.s_name,c.c_name,e.e_date
FROM enrollement e
JOIN student s ON e.s_id = s.s_id
JOIN course c ON e.c_id = c.c_id;

-- displaying total sum using aggregrate function
SELECT SUM(payment) FROM enrollement; 