-- Todays work (25 March 2026)

use sem4_work1; 

-- Question 1.
select * from student;
select * from enrollement;
select * from course;


-- Add values to course table to perform delete operations
INSERT INTO course
(c_id,c_name,c_fee)
VALUES 
(101,"DBMs",55.00),
(102,"OS",99.00),
(103,"Computer Network",44.00);


-- Add values in enrollements table
INSERT INTO enrollement
(s_id,c_id,e_date,payment)
VALUES
(1,101,'2026-01-01',900),
(2,102,'2026-01-01',99000),
(3,101,'2026-02-01',19000),
(4,102,'2026-01-05',99000);



select * from enrollement;


-- this is to check can we delete from paret table if we have used it in our child table
delete from course 
where c_id = 101;

-- so for doing first question manually first delete from child table and then delete from parent table



-- Question 2
Alter Table enrollement
Drop Constraint c_id;




show Create Table enrollement;


ALTER TABLE enrollement 
ADD constraint c_id
FOREIGN KEY (c_id)
REFERENCES course (c_id)
ON DELETE CASCADE;



SELECT * from enrollement;


delete from course where c_id = 101;

SELECT * FROM enrollement;



show create table course;

Alter table enrollement
ADD CONSTRAINT s_id
FOREIGN KEY (s_id)
REFERENCES student(s_id)
ON DELETE SET NULL;


Alter Table enrollement
Drop Constraint enrollement_ibfk_1;


select * from enrollement;

show create table enrollement;


DELETE from student where s_id = 4;


Alter Table enrollement
Drop Constraint enrollement_ibfk_2;

Alter table enrollement
ADD CONSTRAINT s_id
FOREIGN KEY (s_id)
REFERENCES student(s_id)
ON DELETE SET NULL;

delete from student where s_id = 1;

select * from enrollement;




-- Question 4
SELECT count(s_id) from enrollement;


SELECT * FROM enrollement;

ALTER TABLE enrollement
ADD COLUMN c_credit double;

UPDATE enrollement 
set c_credit = 3.0;

SELECT * FROM enrollement;

SELECT SUM(c_credit) FROM enrollement;

SELECT AVG(c_credit) from enrollement;

SELECT AVG(payment) from enrollement;

SELECT MAX(payment) from enrollement;

SELECT MIN(payment) from enrollement;

