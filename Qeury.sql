--1
SELECT emp.emp_no, emp.emp_lastname, emp.emp_firstname, emp.emp_sex, salaries.emp_salary 
FROM emp
INNER JOIN salaries
ON salaries.emp_no = emp.emp_no;

--2
SELECT emp.emp_firstname, emp.emp_lastname, emp.emp_hiredate
FROM emp
WHERE emp_hiredate LIKE '%1986';

SELECT * FROM emp;
SELECT * FROM dept_managers;
SELECT * FROM depts;

--3
SELECT dept_managers.dept_no, depts.dept_name, dept_managers.emp_no, emp.emp_lastname, emp.emp_firstname
FROM dept_managers
LEFT JOIN depts
ON dept_managers.dept_no = depts.dept_no
LEFT JOIN emp
ON dept_managers.emp_no = emp.emp_no;

--4
SELECT  emp.emp_no, emp.emp_lastname, emp.emp_firstname, depts.dept_name
FROM dept_emp
LEFT JOIN depts
ON dept_emp.dept_no = depts.dept_no
LEFT JOIN emp
ON dept_emp.emp_no = emp.emp_no;

--5
SELECT emp_firstname, emp_lastname, emp_sex
FROM emp
WHERE emp_firstname = 'Hercules' and emp_lastname like 'B%';

--6
SELECT emp.emp_no, emp.emp_lastname, emp.emp_firstname, depts.dept_name
FROM dept_emp
LEFT JOIN depts
ON dept_emp.dept_no = depts.dept_no
LEFT JOIN emp
ON dept_emp.emp_no = emp.emp_no
WHERE depts.dept_name = 'Sales'

--7
SELECT emp.emp_no, emp.emp_lastname, emp.emp_firstname, depts.dept_name
FROM emp 
LEFT JOIN dept_emp 
ON emp.emp_no=dept_emp.emp_no
INNER JOIN depts 
ON depts.dept_no=dept_emp.dept_no
WHERE depts.dept_name IN ('Sales', 'Development')



