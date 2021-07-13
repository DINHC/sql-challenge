SELECT emp.emp_lastname, emp.emp_firstname, emp.emp_sex, salaries.emp_salary, emp.emp_no
FROM emp
INNER JOIN salaries
ON salaries.emp_no = emp.emp_no;

