DROP TABLE if exists depts;
DROP TABLE if exists dept_managers;
DROP TABLE if exists dept_emp;
DROP TABLE if exists emp;
DROP TABLE if exists titles;
DROP TABLE if exists salaries;
CREATE TABLE depts (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE dept_managers (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL
);

CREATE TABLE emp (
    emp_no INT NOT NULL,
    emp_birthdate VARCHAR(20) NOT NULL,
    emp_firstname VARCHAR(20) NOT NULL,
    emp_lastname VARCHAR(20) NOT NULL,
    emp_sex VARCHAR(10) NOT NULL,
    emp_hiredate VARCHAR(15) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL,
    title VARCHAR(20) NOT NULL
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    emp_salary INT NOT NULL
);