--List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT Employee.last_name, Employee.first_name, Employee.sex, Salaries.salary, Employee.emp_no
FROM Employee
INNER JOIN Salaries
ON Salaries.emp_no = Employee.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT Employee.last_name, Employee.first_name, Employee.hire_date
FROM Employee
WHERE extract(year from hire_date)= '1986'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, Employee.last_name, Employee.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN Employee
ON dept_manager.emp_no = Employee.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name
SELECT departments.dept_name, Employee.last_name, Employee.first_name, Employee.emp_no
FROM dept_employee
LEFT JOIN departments
ON dept_employee.dept_no = departments.dept_no
LEFT JOIN Employee
ON dept_employee.emp_no = Employee.emp_no
ORDER BY departments.dept_name;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name,sex
FROM Employee
WHERE first_name = 'Hercules' and last_name like 'B%';
--List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT departments.dept_name, Employee.last_name, Employee.first_name, Employee.emp_no
FROM dept_employee
LEFT JOIN departments
ON dept_employee.dept_no = departments.dept_no
LEFT JOIN Employee
ON dept_employee.emp_no = Employee.emp_no
WHERE departments.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT departments.dept_name, Employee.last_name, Employee.first_name, Employee.emp_no
FROM dept_employee
LEFT JOIN departments
ON dept_employee.dept_no = departments.dept_no
LEFT JOIN Employee
ON dept_employee.emp_no = Employee.emp_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "last_name_freq"
FROM Employee
GROUP BY last_name
ORDER BY "last_name_freq" 

--Epilogue
SELECT *
FROM Employee 
Where Employee.emp_no ='499942'

