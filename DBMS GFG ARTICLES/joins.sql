
-- SQL Pratice from GFG - 5 May 2026
-- how to use joins


CREATE DATABASE geeks;

USE geeks;


-- create three tables student marks and attendence
CREATE TABLE students(id INT, name VARCHAR(50), branch VARCHAR(50));
CREATE TABLE marks(id INT, marks INT);
CREATE TABLE attendance(id INT, attendance INT);


-- Insert data into tables

-- students
INSERT INTO students VALUES
(1,'Liam','CSE'),
(2,'Emma','ECE'),
(3,'Noah','ECE'),
(4,'Olivia','CSE');

-- marks
INSERT INTO marks VALUES
(1,95),
(2,85),
(3,80),
(4,65);

-- attendance
INSERT INTO attendance VALUES
(1,75),
(2,65),
(3,80),
(4,87);



select * from students;

select * from marks;

select * from attendance;

-- to get the students marks whose attendance is greater than equal to 75
select s.id , s.name, m.marks, a.attendance 
from students as s
inner join marks as  m on s.id = m.id
inner join attendance as a on s.id = a.id
where a.attendance >= 75;


--  #use joins accorss multiple tables 
select s.id,s.name , m.marks,a.attendance 
from students as s
inner join marks as m on s.id = m.id
inner join attendance as a on s.id  = a.id
where a.attendance >= 80;





-- left outer join with multiple tables 
select s.id, s.name , m.marks , a.attendance
from students as s 
left join marks as m on s.id = m.id  and m.marks > 70
left join attendance as a on s.id = a.id;



-- right outer join with multiple tables
select s.id,s.name , m.marks,a.attendance
from students as s
right join marks as m on s.id = m.id and s.branch = 'CSE'
right join attendance as a on s.id = a.id;






-- full outer join with multiple tables 
-- LEFT JOIN part
SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
LEFT JOIN marks AS m ON s.id = m.id AND m.marks > 80
LEFT JOIN attendance AS a ON s.id = a.id AND a.attendance > 80

UNION

-- RIGHT JOIN part
SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
RIGHT JOIN marks AS m ON s.id = m.id AND m.marks > 80
RIGHT JOIN attendance AS a ON s.id = a.id AND a.attendance > 80;



















