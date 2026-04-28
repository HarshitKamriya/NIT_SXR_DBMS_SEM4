-- 28 april 2026
 CREATE database sem4_dbms;

use sem4_dbms;

-- Question 1 : create student table
CREATE TABLE student(
	sid int primary key,
    marks float ,
    branch varchar(20)
    );












-- Question 4 :  Create table Emp (id,gender,salary,dname)

create table employee1(
	eid int primary key,
    gender varchar(2),
    salary float,
    dname varchar(50)
);









-- Question 5 : create supplier(sid,sname,rating) and parts(pid,pname,color) table, catalog(sid,pid,cost)
create table supplier(
	sid int primary key,
    sname varchar(50),
    rating float
);

create table parts(
	pid int primary key,
    pname varchar(50),
    color varchar(10)
);

create table catalog(
	sid int,
    pid int,
    cost float,
    foreign key (sid) references supplier(sid),
    foreign key (pid) references parts(pid)
);


-- Question 7 : Emp(Eid,Ename,salary,Dept) , retriver Eid's whose salary is greater than any employee salary of dept 5
create table employee2(
	eid int primary key,
    ename varchar(50),
    salary float,
    deptid int
    );
