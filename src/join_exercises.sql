use employees;
show tables;
select * from dept_manager;

# write a query that shows each department along with the name of the current manager for that department.

select d.dept_name as department,
       concat(e.first_name, ' ', e.last_name) as manager
from employees as e
         join dept_manager as dm
              on e.emp_no = dm.emp_no
         join departments as d
              on dm.dept_no = d.dept_no
where dm.to_date > now();

# Find the name of all departments currently managed by women.
select d.dept_name as 'Department Name',
        concat(e.first_name, ' ', e.last_name) as 'Manager Name'
from employees as e
         join dept_manager as dm
              on e.emp_no = dm.emp_no
         join departments as d
              on dm.dept_no = d.dept_no
where e.gender = 'F' and
        dm.to_date > now();

select * from departments;

# Find the current titles of employees currently working in the Customer Service department.
select t.title as Title, count(t.title)
from employees as e
         join titles as t
              on e.emp_no = t.emp_no
         join dept_emp as de
              on t.emp_no = de.emp_no
         join departments as d
              on de.dept_no = d.dept_no
where d.dept_name = 'Customer Service'
group by t.title;


# Find the current salary of all current managers.
select d.dept_name as 'Department Name',
        concat(e.first_name, ' ', e.last_name) as 'Name',
        s.salary as 'Salary'
from employees as e
         join dept_manager as dm
              on e.emp_no = dm.emp_no
         join salaries as s
              on dm.emp_no = s.emp_no
         join departments as d
              on d.dept_no = dm.dept_no
where dm.to_date > now()
  and s.to_date > now()
order by d.dept_name ;




