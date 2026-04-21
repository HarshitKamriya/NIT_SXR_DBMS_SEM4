use sem4_work;

SELECT * from departments;


-- depid available 1,2,3,4

SELECT * FROM employees;

delete from employees 
where DeptID != 5;

-- Inserting values into Department
INSERT INTO Departments
(DeptID,DeptName,Building,HOD,Budget,Capacity)
VALUES
(1,"Information Technology","IT Department","HOD1",64000.00,500.00),
(2,"Computer Science and Engineering","CSE Department","HOD2",74000.00,500.00),
(3,"Chemical Engineering","CHE Department","HOD3",60000.00,500.00),
(4,"Petorleum Engineering","Petro Department","HOD4",84000.00,500.00);




INSERT INTO employees
(EmpID,FirstName,LastName,JobTitle,Salary,DeptID)
VALUES
(1,"Harshit","Kamriya","IT HOD",80000.00,1),
(2,"Prince","Kamriya","Petro HOD",70000.00,4),
(3,"Sanjay","Saini","CHE HOD",60000.00,3),
(4,"Anmol","Agrawal","CHE HOD",90000.00,3),
(5,"Anannd","Agrawal","CSE HOD",72000.00,2),
(6,"Dev","Bahradwaj","CSE HOD",50000.00,2),
(7,"Sanjeev","Kumar","CSE HOD",63000.00,2);


SELECT * FROM employees;
SELECT * FROM departments;



-- QUESTION 1 : TOTAL SALARY PAYOUT IN EACH SALARY
SELECT   sum(salary) from employees
GROUP BY DeptID;


-- QUESTION 2 : RETRIVE DEPARTMENT WHICH PAYOUT GREATER THAN 1 LAKH
Select d.DeptName
from departments d
JOIN employees  e
ON d.DeptID = e.DeptID
Group by e.DeptID
having sum(e.salary) > 100000;




-- question 3 : dept having avg salary > 80k
Select d.DeptName
from departments d
JOIN employees  e
ON d.DeptID = e.DeptID
Group by e.DeptID
having avg(e.salary) > 10000;


-- QUESTION 4 : SORT BY DESCENDING ORDER
Select d.DeptID,d.DeptName
from departments d
JOIN employees  e
ON d.DeptID = e.DeptID
Group by e.DeptID
having avg(e.salary) > 10000
order by e.DeptID;



















