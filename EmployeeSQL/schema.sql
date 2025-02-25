CREATE TABLE departments (
    dept_no varchar,
    dept_name varchar,
    PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
    title_id varchar,
    title varchar,
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no int,
    emp_title_id varchar,
    birth_date varchar,
    first_name varchar,
    last_name varchar,
    sex char,
    hire_date varchar,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
    emp_no int,
    dept_no varchar,
	PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar,
    emp_no int,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no int,
    salary int,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

