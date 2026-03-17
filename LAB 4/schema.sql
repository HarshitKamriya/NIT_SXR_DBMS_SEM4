-- 17 march 2026 todays work 
CREATE DATABASE sem4_work1;

use sem4_work1;

CREATE TABLE student(       -- parent table
	s_id INT PRIMARY KEY,
    s_name VARCHAR(100) ,
    s_phone VARCHAR(100)
)


CREATE TABLE course(       --parent table
	c_id INT PRIMARY KEY,
    c_name VARCHAR(100) ,
    c_fee DECIMAL
)


-- Create child table enrollement
CREATE TABLE enrollement(
	s_id INT,
    c_id INT,
    e_date date,
    payment DECIMAL,
    FOREIGN KEY (s_id) REFERENCES student(s_id),
    FOREIGN KEY (c_id) REFERENCES course(c_id)
); 

