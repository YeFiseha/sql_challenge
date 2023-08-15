--- Employee table schema
--- NOT NULL condition and defined value length for columns

CREATE TABLE departments (
	Department_no VARCHAR,
	Department_name VARCHAR (9) NOT NULL,
	PRIMARY KEY (Department_no)
);

CREATE TABLE titles (
	Title_id VARCHAR,
	Title VARCHAR (7) NOT NULL,
	PRIMARY KEY (Title_id)
);

CREATE TABLE employees (
	Emp_no INT,
	Emp_title_id VARCHAR (4) NOT NULL,
	Birth_date VARCHAR NOT NULL,
	First_name VARCHAR NOT NULL,
	Last_name VARCHAR NOT NULL,
	Sex VARCHAR NOT NULL,
	Hire_date VARCHAR NOT NULL,
	FOREIGN KEY (Emp_title_id) REFERENCES titles (Title_id),
	PRIMARY KEY (Emp_no)
);

CREATE TABLE Depart_emp (
	Emp_no INT NOT NULL,
	Department_no VARCHAR (9) NOT NULL,
	FOREIGN KEY (Emp_no) REFERENCES employees (Emp_no),
	FOREIGN KEY (Department_no) REFERENCES departments (Department_no),
	PRIMARY KEY (Emp_no, Department_no)
);

CREATE TABLE Depart_manager (
	Department_no VARCHAR (9) NOT NULL,
	Emp_no INT NOT NULL,
	FOREIGN KEY (Emp_no) REFERENCES employees (Emp_no),
	FOREIGN KEY (Department_no) REFERENCES departments (Department_no),
	PRIMARY KEY (Emp_no, Department_no)
);

CREATE TABLE salaries (
	Emp_no INT,
	Salary INT NOT NULL,
	FOREIGN KEY (Emp_no) REFERENCES employees (Emp_no),
	PRIMARY KEY (Emp_no)
);
