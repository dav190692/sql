select * from employees where INSTR(UPPER(first_name), 'B')> 0;

select * from employees;

select * from employees where INSTR(LOWER(first_name), 'a', 1, 2)> 0;

select * from departments;

select  SUBSTR(department_name, 1, INSTR(deparTment_name, ' ')-1) from departments
where INSTR(deparTment_name, ' ') > 0;

select * from employees;

select first_name, SUBSTR(first_name, 2, LENGTH(first_name)-2) from employees;

select * from employees where 
LENGTH(SUBSTR(job_id, INSTR(job_id, '_')+1))>3 and SUBSTR(job_id, INSTR(job_id, '_')+1) != 'CLERK' ;

select * from employees where TO_CHAR(hire_date, 'dd') = '01';

select * from employees where TO_CHAR(hire_date, 'yyyy')= '2008';


select SYSDATE from dual;
select TO_CHAR(SYSDATE+1, 'fm"Tomorrow is" Ddspth "day of" Month') from dual;


select * from employees;
select first_name, last_name, TO_CHAR(hire_date, 'fmddth "of" Month,  yyyy') from employees;


select first_name, last_name, salary, TO_CHAR(salary+salary*20/100, '$999,999.99') AS "New salary" 
from employees;

select first_name, last_name, salary, salary+ TO_NUMBER('$24,000.00', '$99,999.99')
from employees;

select first_name, last_name, salary, hire_date,
TO_DATE('SEP, 18:45:00 18 2009', 'MON, HH24;MI:SS DD YYYY'),
ROUND(MONTHS_BETWEEN(TO_DATE('SEP, 18:45:00 18 2009', 'MON, HH24;MI:SS DD YYYY'), hire_date),1) AS "months between"
from employees;

select * from employees;
select first_name, last_name, salary,commission_pct,
TO_CHAR(salary*NVL(commission_pct, 0)/100+salary, '$99,999.99' ) 
from employees;

select first_name, last_name,
NVL2(NULLIF(LENGTH(first_name), LENGTH(last_name)),'diferent length ' ,'same length')
from employees;


select first_name, last_name, commission_pct,
NVL2(commission_pct,'YES','NO') from employees;

select * from employees;

select first_name, commission_pct, manager_id, salary,
COALESCE(commission_pct, manager_id, salary) 
from employees;

select first_name, salary,
CASE
WHEN salary < 5000 THEN 'LOW LEVEL'
WHEN salary>= 5000 and salary < 10000 THEN 'NORMAL LEVEL'
WHEN salary>=10000 THEN 'HIGH LEVEL'
END
from employees;

select * from countries;
select * from regions;
select country_name,
DECODE(region_id,  1, 'Europe',  2, 'America',  3,'Asis',  4, 'Africa')
from countries;


select country_name,
CASE region_id
WHEN 1 THEN 'EUROPE'
WHEN 2 THEN 'AMERICA'
WHEN 3 THEN 'ASIA'
WHEN 4 THEN 'AFRICA'
END
from countries;


select first_name,salary,commission_pct,
CASE
WHEN salary < 10000 and commission_pct is null THEN 'BAD'
WHEN salary between 10000 and 15000 or commission_pct  is not null THEN 'NORMAL'
WHEN salary>= 15000 THEN 'GOOD'
END
from employees;







