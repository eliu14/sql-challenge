CREATE TABLE departments (
    dept_no varchar(4) NOT NULL,
    dept_name varchar(30),
    PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
    title_id varchar(5) NOT NULL,
    title varchar(30),
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no int,
    emp_title_id varchar(5),
    birth_date varchar(10),
    first_name varchar(30),
    last_name varchar(30),
    sex char,
    hire_date date,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar(4) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar(4) NOT NULL,
    emp_no int NOT NULL,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary int,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

