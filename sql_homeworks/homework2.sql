select * from regions;
select * from employees;
select first_name, department_id,salary, last_name
from employees;
select employee_id, email, hire_date - 7 as "One week before hire date" 
from employees;
select first_name || '(' || job_id || ')' as our_employees
from employees;
select distinct first_name
from employees;
select * from jobs;
select job_title from jobs;
select job_title, 'min = '|| min_salary || ',' || 'max = ' || max_salary as "info"
from jobs;
select max_salary as max from jobs;
select max_salary*2-2000 as new_salary from jobs;
select q'<Peter's dog is very clever>' from dual;
select 'Peter''s dog is very clever' from dual;
select 100*365.25*24*60 from dual;


