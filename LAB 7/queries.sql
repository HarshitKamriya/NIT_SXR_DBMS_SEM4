-- Inserting the values in student table
INSERT INTO student
(sid,marks,branch)
VALUES
(1,40,"EC"), 
(2,80,"CS"), 
(3,40,"IT"), 
(4,60,"CS"), 
(5,80,"IT"), 
(6,NULL,"EC");



-- Question 2 : retrive sid who scored heighest marks
select sid
from student
where marks= (SELECT max(marks) from student);

-- Question 3 :  Retrive students (sid) who scored second highest Marks
SELECT sid 
from student 
where marks = (select max(marks) from student where marks != (select max(marks) from student));




-- Insert values in employees1 table
INSERT INTO employee1
(eid,gender,salary,dname)
VALUES
(1,"M",50000,"ECE"),
(2,"F",60000,"IT"),
(3,"M",70000,"ECE"),
(4,"F",80000,"IT"),
(5,"M",90000,"CSE"),
(6,"M",100000,"IT"),
(7,"F",450000,"CSE");



-- Question 4 a : Names of dept which the Avg salary more that the Avg salary of the company
select dname 
from employee1
group by dname
having avg(salary) > (select avg(salary) from employee1);



-- Question 4 b :  Departments in which the average salary of male employee is more than avg salary of all the male employee of the company

select dname 
from employee1
where gender = "M"
group by dname
having avg(salary) > (select avg(salary) from employee1 where gender = "M");


-- Question 5 : create supplier(sid,sname,rating) and parts(pid,pname,color) table, catalog(sid,pid,cost)




-- insert values into supplier table
INSERT INTO supplier
(sid,sname,rating)
VALUES
(1,"Harshit",10),
(2,"Prince",9),
(3,"Sanjeev",8),
(4,"Sanjay",9),
(5,"Mukunt",8);


-- insert values into parts table
INSERT INTO parts
(pid,pname,color)
VALUES
(1,"laptop","grey"),
(2,"mouse","black"),
(3,"shirt","red"),
(4,"chair","red"),
(5,"cap","blue");


-- insert values into catalog table
INSERT INTO catalog
(sid,pid,cost)
VALUES
(1,1,5000),
(1,3,500),
(2,3,600),
(3,4,6000),
(4,5,70000),
(5,3,45000);



-- Question 6 : retriver sid of supplier supplied some red parts
select sid
from catalog
where pid in (select pid from parts where color = "red");




-- Question 7 : Emp(Eid,Ename,salary,Dept) , retriver Eid's whose salary is greater than any employee salary of dept 5

insert values in employee 2
INSERT INTO employee2
(eid,ename,salary,deptid)
VALUES
(1,"Harshit",50000,1),
(2,"Prince",60000,2),
(3,"Vansh",70000,3),
(4,"Sanjay",5000,4),
(5,"Sanjeev",8000,5),
(6,"Naman",90000,5);

SELECT eid, ename 
FROM employee2 
WHERE salary > any (SELECT salary FROM employee2 WHERE deptid = 5);



























