--- employee number, last name, first name, sex, and salary of each employee
SELECT employees.Emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.Emp_no = salaries.Emp_no;

--- first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

--- manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT depart_manager.Department_no, departments.Department_name, depart_manager.emp_no, employees.last_name, employees.first_name
FROM depart_manager
JOIN departments ON depart_manager.Department_no = departments.Department_no
JOIN employees ON depart_manager.Emp_no = employees.Emp_no;

--- department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT employees.Emp_no, employees.last_name, employees.first_name, departments.Department_name
FROM employees
JOIN depart_emp ON employees.Emp_no = depart_emp.Emp_no
JOIN departments ON depart_emp.Department_no = departments.Department_no;

--- first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--- each employee in the Sales department (Department no. d007), including their employee number, last name, and first name.
SELECT employees.Emp_no, employees.last_name, employees.first_name, departments.Department_name
FROM employees
JOIN depart_emp ON employees.Emp_no = depart_emp.Emp_no
JOIN departments ON depart_emp.Department_no = departments.Department_no
WHERE departments.Department_no = 'd007';

--- each employee in the Sales and Development departments (Department no. d005 and d007), including their employee number, last name, first name, and department name.
SELECT employees.Emp_no, employees.last_name, employees.first_name, departments.Department_name
FROM employees
JOIN depart_emp ON employees.Emp_no = depart_emp.Emp_no
JOIN departments ON depart_emp.Department_no = departments.Department_no
WHERE departments.Department_no = 'd005' or departments.Department_no = 'd007';

--- frequency counts, in descending order, of all the employees' last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Freq count"
FROM employees
GROUP BY last_name
ORDER BY "Freq count" DESC;



