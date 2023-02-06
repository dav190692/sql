select *from employees;

desc hr.employees;
describe employees;

describe hr.regions;
desc hr.countries;
describe jobs;
desc locations;



select * from regions;


select * from employees;

select first_name, department_id, salary, last_name from employees;


select employee_id, email, hire_date, hire_date-7 as "One week before hire date" from employees;


select first_name || '(' || job_id || ')' as "our_employees" from employees;

select DISTINCT first_name from employees;


select * from jobs;


select job_title, 'min = '|| min_salary || ', max = ' || max_salary as info, max_salary as max, max_salary*2-2000 as "new_salary" from jobs;

select q'<Peter's dog is very clever>' from dual;

select 'Peter''s dog is very clever' from dual;

select 100*365.25*24*60*60 from dual;




select * from employees where first_name = 'David';


select * from employees where first_name like 'David';

select * from employees where job_id = 'FI_ACCOUNT';

select first_name, last_name, salary, department_id from employees
where department_id = 50 and salary > 4000;


select * from employees where department_id in(20, 30);

select * from employees where department_id = 20 or department_id = 30;

select * from employees where first_name like '_a%a';

select * from employees where commission_pct is not null and department_id in (50,80)
order by 4;


select * from employees where first_name like '%n%n%';

select * from employees where first_name like '_____%'
order by department_id desc nulls last;


select * from employees where salary >= 3000 and salary <= 7000
and commission_pct is null and job_id in('PU_CLERK', 'ST_MAN', 'ST_CLERK');

select * from employees where first_name like '%\%%' escape '\';

select job_id, first_name, salary from employees 
where employee_id >= 120
and job_id not like 'IT_PROG'
order by job_id, first_name desc;





select * from employees where LENGTH(first_name)>10;

select * from employees where MOD(salary, 1000)= 0;

select phone_number ,SUBSTR(phone_number, 1, 3) from employees
where phone_number like '___.___.____';

select * from employees 
where SUBSTR(first_name, LENGTH(first_name),1)= 'm' and LENGTH(first_name) > 5;



select next_day('03-Feb-2023', 6) from dual;


select * from employees;


select * from employees where MONTHS_BETWEEN(SYSDATE, hire_date)> 150;

select phone_number, REPLACE(phone_number, '.', '-') new_number from employees;


select UPPER(first_name), LOWER(last_name), INITCAP(job_id) from employees;


select CONCAT(first_name,salary) from employees;


select hire_date, ROUND(hire_date, 'MM'), TRUNC(hire_date, 'yyyy') from employees;

select first_name, RPAD(first_name, 10, '$'), last_name, LPAD(last_name, 15, '!') from employees;

select first_name, INSTR(first_name, 'a', 1, 2) from employees;


select REPLACE('   HELLO  MY FRIEND          ', ' ', '!'), TRIM('!' FROM '!!!HELLO!!MY!FRIEND!!!!!!!!!') FROM DUAL;

select salary, salary*3.1415, ROUND(salary*3.1415), TRUNC(salary*3.1415, -3)/1000 from employees;


select hire_date, ADD_MONTHS(hire_date, 6), LAST_DAY(hire_date)  from employees;


select * from employees;

  
select first_name from employees
where INSTR(UPPER(first_name), 'B', 1,1)>0;  


select * from employees where INSTR(first_name, 'a', 1,2)>0;

select * from departments;

select department_name, SUBSTR(department_name, 1, INSTR(department_name, ' ', 1)-1) from departments
where INSTR(department_name, ' ', 1)>0;

select first_name, substr(first_name, 2, LENGTH(first_name)-2) from employees;


select * from employees 
where LENGTH(SUBSTR(job_id, INSTR(job_id, '_', 1, 1)+1))>3
and SUBSTR(job_id, INSTR(job_id, '_', 1, 1)+1) != 'CLERK';

select * from employees
where TO_CHAR(hire_date, 'dd') = 01;


select * from employees
where TO_CHAR(hire_date, 'yyyy') = 2008;


SELECT to_char(TO_DATE('07-02-23'), '"Tomorrow is " fmddthsp " day of " Month ') from dual;


select first_name,  TO_CHAR(hire_date, 'DDth " of " fmMonth "," YYYY') from employees;

select first_name, last_name, salary, TO_CHAR(salary+(salary*20)/100, '$99,999.99') from employees;

select TO_CHAR(sysdate, 'DD-MM-YYY HH24:MI:SS') from dual;

select first_name, salary, salary+TO_NUMBER('$12,345.55', '$99,999.99') from employees;


select first_name, hire_date, 
MONTHS_BETWEEN(TO_DATE('SEP, 18:45:00 18 2009', 'MON, HH24:MI:SS DD YYYY'), hire_date), 
ROUND(MONTHS_BETWEEN(TO_DATE('SEP, 18:45:00 18 2009', 'MON, HH24:MI:SS DD YYYY'), hire_date))
from employees;

select * from employees;

select first_name, salary, TO_CHAR(salary+(salary*commission_pct)/100, '$99,999.00') from employees
where commission_pct is not null;

select first_name, last_name, NVL2(NULLIF(LENGTH(first_name), LENGTH(last_name)), 'different length','same length' ) from employees;


select first_name, commission_pct, NVL2(commission_pct, 'yes', 'no') from employees;

select first_name, NVL2(commission_pct, commission_pct, NVL2(manager_id, manager_id, salary)) from employees;




















