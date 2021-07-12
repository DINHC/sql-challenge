
CREATE TABLE depts (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE emp (
    emp_no INT NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
    emp_birthdate VARCHAR(20) NOT NULL,
    emp_firstname VARCHAR(20) NOT NULL,
    emp_lastname VARCHAR(20) NOT NULL,
    emp_sex VARCHAR(10) NOT NULL,
    emp_hiredate VARCHAR(15) NOT NULL,
	PRIMARY KEY (emp_no) 
);


CREATE TABLE dept_managers (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES depts(dept_no),
	FOREIGN KEY (emp_no) REFERENCES emp(emp_no)
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES depts(dept_no),
	FOREIGN KEY (emp_no) REFERENCES emp(emp_no)
);


CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL,
    title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    emp_salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES emp(emp_no)
);