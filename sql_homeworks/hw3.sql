select * from employees WHERE first_name = 'David';

select * from employees where job_id like 'FI_ACCOUNT';

select first_name, last_name, salary,department_id from employees
WHERE department_id = 50 and salary >4000;

select * from employees where department_id in (20, 30);

select * from employees where first_name like '_a%a';

SELECT * from employees;

select * from employees where department_id IN (50, 80) 
and commission_pct is not null ORDER BY 4 asc;

select * from employees where first_name like ('%n%n%');

select * from employees where first_name like ('_____%')
order by department_id desc nulls LAST;

select * from employees 
where salary BETWEEN 3000 and 7000 
and commission_pct is NULL
and job_id in ('PU_CLERK', 'ST_MAN', 'ST_CLERK');

select * from employees where first_name like ('%\%%') ESCAPE '\';

select job_id, first_name, salary from employees
WHERE employee_id >= 120
and
job_id != 'IT_PROG'
order by 
job_id, first_name desc;



