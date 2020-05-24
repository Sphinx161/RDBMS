-- EMPLOYEE TABLE
CREATE TABLE employee(
	emp_id INT PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	birth_date DATE,
	sex VARCHAR(1),
	salary INT,
	super_id INT,
	branch_id INT
);
-----------------------------------------

--BRANCH TABLE

CREATE TABLE branch(
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(20),
	mgr_id INT,
	mgr_start_date INT,
	FOREIGN KEY (mgr_id) REFERENCES employee(emp_id) ON DELETE CASCADE
);

SELECT * FROM branch ;
------------------------------------------------
-- ADD THE 2 FKS

ALTER TABLE employee 
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id) 
ON DELETE SET NULL;

ALTER TABLE employee 
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;
-------------------------------------------------






















