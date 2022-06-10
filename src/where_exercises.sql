use employees;

# Create a file named where_exercises.sql. Make sure to use the employees database before you begin.
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Find all employees whose last name starts with 'E' — 7,330 rows.
# Find all employees with a 'q' in their last name — 1,873 rows.
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
#     Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
#     Find all employees whose last name starts or ends with 'E' — 30,723 rows.
#     Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
#     Find all employees with a 'q' in their last name but not 'qu' — 547 rows.


select * from employees where first_name IN('Irena', 'Vidya', 'Maya');

select * from employees where LOWER(last_name) like 'e%';

select * from employees where hire_date between '1989-12-31' and '2000-01-01';

select * from employees where month(birth_date)= 12 and day(birth_date)= 25;

select * from employees where last_name like '%q%';

# part two
select * from employees where first_name='Irena' or first_name='Vidya' or first_name='Maya';

select * from employees where (first_name='Irena' or first_name='Vidya' or first_name='Maya') and gender='M';

select * from employees where last_name like '%e' or last_name like 'e%';

select * from employees where last_name like '%e' and last_name like 'e%';

select * from employees where (month(birth_date)=12 and day(birth_date) = 25) and hire_date between '1989-12-31' and '2000-01-01';

select * from employees where last_name like '%q%' and last_name not like '%qu%';



