-- 1.
select 
	emp_no,
	last_name,
	first_name,
	sex,
	salary
from employees
	join salaries using(emp_no);
-- 2.
select 
	first_name,
	last_name,
	hire_date
from employees
WHERE
	EXTRACT(YEAR from hire_date) = 1986;
-- 3.
select 
	dept_no,
	dept_name,
	emp_no,
	last_name,
	first_name
from dept_manager
	join departments using(dept_no)
	join employees using(emp_no);
-- 4.
select 
	emp_no,
	last_name,
	first_name,
	dept_name
from employees
	join dept_emp using(emp_no)
	join departments using(dept_no);
-- 5.
select
	first_name,
	last_name,
	sex
from employees
WHERE first_name = 'Hercules'
	and last_name like 'B%';
-- 6.
select 
	emp_no,
	last_name,
	first_name
from employees
	join dept_emp using(emp_no)
	join departments using(dept_no)
WHERE dept_name like 'Sales';
-- 7.
select 
	emp_no,
	last_name,
	first_name,
	dept_name
from employees
	join dept_emp using(emp_no)
	join departments using(dept_no)
WHERE dept_name like 'Sales'
	or dept_name like 'Development';
-- 8.
select
	last_name,
	count(last_name) as "Number of employees"
from employees
group by last_name
order by "Number of employees" desc;