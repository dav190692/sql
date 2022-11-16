select * from employees 
where LENGTH(first_name) > 10;

select first_name, last_name, salary from employees 
where MOD(salary, 1000)= 0;


select first_name, last_name, phone_number, SUBSTR(phone_number, 1, 3) 
from employees 
where LENGTH(phone_number)= 12;

select * from  employees 
where SUBSTR(first_name, -1)= 'm'
and LENGTH(first_name)> 5;

select NEXT_DAY('05.11.2022', 5) from dual;

select first_name, last_name, salary, hire_date, MONTHS_BETWEEN('05.11.2022', hire_date) from employees
where MONTHS_BETWEEN('05.11.2022', hire_date)>150;


select first_name, last_name, phone_number, REPLACE(phone_number, '.', '-')new_number 
from employees;

select UPPER(first_name), LOWER(Email), INITCAP(job_id) 
from employees;

select first_name, salary, CONCAT(first_name, salary) 
from employees;

select first_name, last_name, hire_date, ROUND(hire_date, 'MM'), TRUNC(hire_date, 'YYYY') 
from employees;

select first_name, last_name, RPAD(first_name, 10, '$'),LPAD(last_name, 15, '!') 
from employees;


select first_name, INSTR(first_name, 'a', 1, 2)
from employees;

select '!!!HELLO!! MY FRIEND!!!!!!!!', TRIM('!' from  '!!!HELLO!! MY FRIEND!!!!!!!!' ) 
from dual;


select salary, salary*3.1415 as salary2, ROUND(salary*3.1415), TRUNC(salary*3.1415, -3)/1000
from employees;

select hire_date, ADD_MONTHS(hire_date, 6), LAST_DAY(hire_date) 
from employees;


