-- 5 May 2026

use sem4_dbms;



-- question 1 : Sid's of supplier supplied some red parts
SELECT sid 
from catalog 
where pid in (SELECT pid from parts where color ="red");

-- using exist
select sid 
from catalog c
where exists (select * from parts p where c.pid = p.pid and p.color = "red");




-- inverte additional values in parts table to verify question 2
INSERT INTO parts
(pid,pname,color)
VALUES
(6,"pant","grey"),
(7,"laptop cover" , "grey");




-- question 2 : parts which are not supplied by any supplier
-- 1 .using not in
select pid 
from parts
where pid not in (select pid from catalog);

-- 2. using not exist
select pid 
from parts  p
where  not exists (select * from catalog c where c.pid = p.pid);



-- question 3 : sid's of supplier supplied proper subset of parts.(EXISTS WITH EXPECT)

select * from catalog;
insert some values to catalog so that we can try our query

INSERT INTO catalog
(sid,pid,cost)
VALUES
(1,6,5000),
(1,2,500),
(1,3,600),
(1,4,6000),
(1,5,70000),
(1,7,45000);

select * from catalog;


-- executing query for question 3
select c1.sid
from catalog c1
where exists (select pid from parts p where not exists ( select pid from catalog c2 where c2.sid = c1.sid and c2.pid = p.pid));


-- executing query for question 3 using except
SELECT c1.sid
FROM catalog c1
WHERE  EXISTS (
    SELECT pid
    FROM parts
    EXCEPT
    SELECT c2.pid
    FROM catalog c2
    WHERE c2.sid = c1.sid
);



-- question 4 : sid's of supplier supplied all parts (Both via nested NOT EXIST and NOT EXIST WITH EXCEPT) -> both ways

-- executing query for question 4 using nested not exist
select distinct c1.sid
from catalog c1
where not exists (select pid from parts p where not exists ( select pid from catalog c2 where c2.sid = c1.sid and c2.pid = p.pid));

-- executing query for question 4 using except
SELECT distinct c1.sid
FROM catalog c1
WHERE NOT  EXISTS (
    SELECT pid
    FROM parts
    EXCEPT
    SELECT c2.pid
    FROM catalog c2
    WHERE c2.sid = c1.sid
);




-- question 5 : retrive sid's of the supplier whose rating>10 and suplied every red part 
select * from supplier;


-- to execute question 5 we need to insert some row data 
INSERT INTO supplier
(sid,sname,rating)
VALUES
(6,"Miland",12),
(7,"Irnfan",11);

select * from parts;



-- inserting some values to catalog table
INSERT INTO catalog
(sid,pid,cost)
VALUES
(6,3,5000),
(6,4,500),
(7,3,600),
(7,4,6000);


select s.sid
from supplier as s
where rating > 10 and not exists(select pid from parts p where color = "red" and not exists (select c.sid from catalog c where c.sid = s.sid and c.pid = p.pid));























