use employees;

-- Find all the employees with the same hire date as employee 101010 using a subquery.
-- 69 Rows
select * from employees as e
where e.hire_date = (
    select e.hire_date from employees as e where e.emp_no = 101010
);

-- Find all the titles held by all employees with the first name Aamod.
-- 314 total titles, 6 unique titles
select distinct title from titles
where emp_no IN (
    select emp_no from employees where first_name = 'Aamod'
);

-- Find all the current department managers that are female.
select first_name, last_name from employees
where emp_no IN (
    select emp_no from dept_manager
    where emp_no IN (
        select emp_no from employees where gender = 'F'
    ) and to_date > now()
);