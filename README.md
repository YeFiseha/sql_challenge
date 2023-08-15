# sql_challenge
# Context
As data engineers at Pewlett Hackard, we are tasked with a research project on the people employed by the company during the 1980s and 1990s.  The available employee database from that period are six CSV files. For this project, we are expected to: 
•	design the tables to hold the data from the CSV files,
•	import the CSV files into a SQL database, and
•	answer questions about the data.

# Tasks and Findings:
1)	Data Modeling
The QuickDBD was used to sketch Entity Relationship Diagram for the six CSV files.

2)	Data Engineering
•	Using the provided information, a table schema is created for each of the six CSV files. 
•	The data types, primary keys, foreign keys, and other constraints are specified.
•	The 6 CSV files are imported into their corresponding SQL tables.

3)	Data Analysis
The analysis results are the followings:
•	Table showing employee number, last name, first name, sex, and salary of each employee,
•	Table showing first name, last name, and hire date for the employees who were hired in 1986,
•	Table showing manager of each department along with their department number, department name, employee number, last name, and first name,
•	Table showing department number for each employee along with that employee’s employee number, last name, first name, and department name,
•	Table showing first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B,
•	Table showing each employee in the Sales department (Department no. d007), including their employee number, last name, and first name,
•	Table showing each employee in the Sales and Development departments (Department no. d005, d007), including their employee number, last name, first name, and department name, and
•	Table showing frequency counts, in descending order, for all the employees' last names (that is, how many employees share each last name).

# References
Class recordings were reviewed, and online research was leveraged to complete the assignment.

# List of Assignment Files
EmployeeSQL: folder containing the 6 CSV files,
QuickDBD-ERD_tables:  sketch diagram of the Entity Relationship between the six CSV files
ERD tables_file: specified data types, primary keys, foreign keys, and other constraints
Employees schema: schema for creating 6 tables specifying data types, primary keys, and foreign keys,
Employees_Notnull_Columnlength: using NOT NULL condition and defining value length for the columns,
Employees_query: file of the queries for the data analysis
