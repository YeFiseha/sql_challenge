-- Drop table if exists
DROP TABLE departments;

-- Create new table

CREATE TABLE departments (
	Department_no VARCHAR,
	Department_name VARCHAR,
	PRIMARY KEY (Department_no)
);

select * from departments;

-- Drop table if exists
DROP TABLE titles;

-- Create new table

CREATE TABLE titles (
	Title_id VARCHAR,
	Title VARCHAR,
	PRIMARY KEY (Title_id)
);
select * from titles;

-- Drop table if exists
DROP TABLE employees;

-- Create new table

CREATE TABLE employees (
	Emp_no INT,
	Emp_title_id VARCHAR,
	Birth_date VARCHAR,
	First_name VARCHAR,
	Last_name VARCHAR,
	Sex VARCHAR,
	Hire_date VARCHAR,
	FOREIGN KEY (Emp_title_id) REFERENCES titles (Title_id),
	PRIMARY KEY (Emp_no)
);
select * from employees;

-- Drop table if exists
DROP TABLE Depart_emp;

-- Create new table

CREATE TABLE Depart_emp (
	Emp_no INT,
	Department_no VARCHAR,
	FOREIGN KEY (Emp_no) REFERENCES employees (Emp_no),
	FOREIGN KEY (Department_no) REFERENCES departments (Department_no),
	PRIMARY KEY (Emp_no, Department_no)
);

select * from Depart_emp;

-- Drop table if exists
DROP TABLE Depart_manager;

-- Create new table

CREATE TABLE Depart_manager (
	Department_no VARCHAR,
	Emp_no INT,
	FOREIGN KEY (Emp_no) REFERENCES employees (Emp_no),
	FOREIGN KEY (Department_no) REFERENCES departments (Department_no),
	PRIMARY KEY (Emp_no, Department_no)
);
select * from Depart_manager;

-- Drop table if exists
DROP TABLE salaries;

-- Create new table

CREATE TABLE salaries (
	Emp_no INT,
	Salary INT,
	FOREIGN KEY (Emp_no) REFERENCES employees (Emp_no),
	PRIMARY KEY (Emp_no)
);
select * from salaries;
