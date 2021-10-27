-- Create table schema

--Create table dept_emp

DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES depts(dept_no)
);

select * from dept_emp


-- Create table dept_managers

DROP TABLE dept_manager

CREATE TABLE dept_manager (
 dept_no VARCHAR (10),
 emp_no INT,
 FOREIGN KEY (dept_no) REFERENCES depts(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager


-- Create table depts

DROP TABLE depts

CREATE TABLE depts (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from depts

-- Create table employees

DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees


--Create salaries table

DROP TABLE salaries

CREATE TABLE salaries (
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,

	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries


--Create titles table

DROP TABLE titles

CREATE TABLE titles (
	title_id INT NOT NULL,
	title VARCHAR(20) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from titles








