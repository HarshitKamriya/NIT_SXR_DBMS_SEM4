-- Todays work

-- Inserting values into Department
INSERT INTO Departments
(DeptID,DeptName,Building,HOD,Budget,Capacity)
VALUES
(1,"Information Technology","IT Department","HOD1",64000.00,500.00),
(2,"Computer Science and Engineering","CSE Department","HOD2",74000.00,500.00),
(3,"Chemical Engineering","CHE Department","HOD3",60000.00,500.00),
(4,"Petorleum Engineering","Petro Department","HOD4",84000.00,500.00);







SELECT * FROM Departments;


--  Inserting values into student
INSERT INTO Students
(StudentId,Sname,Sage,Semail,Scity,DeptID)
VALUES
(1,"Harshit Kamriya",19,"harshitkamriya9@gmail.com","Mandsaur",1),
(2,"Prince Kamriya",18,"princekamriya1@gmail.com","Mandsaur",4),
(3,"Dev Bharavdvaj",19,"dev9@gmail.com","Mathura",2),
(4,"Sanjay Saini",19,"sanjay@gmail.com","Ranthambore",3),
(5,"Anomal Agrawal",19,"anmol9@gmail.com","Kota",3),
(6,"Anand Agrawal",19,"anand9@gmail.com","Samistipur",2),
(7,"Mukund Johri",19,"mukund9@gmail.com","Mathura",2),
(8,"Rajveer Singh",19,"rajveer9@gmail.com","Kota",1),
(9,"Sanjeev patel",19,"sanjeev9@gmail.com","Srinagar",2),
(10,"Naveen Manuka",19,"naveen9@gmail.com","Srinagar",2);



-- last to see unique city
SELECT  distinct Scity from Students;