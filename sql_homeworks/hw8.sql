select * from employees 
WHERE LENGTH(first_name) = (select MAX(LENGTH(first_name)) from employees);

select * from employees
where salary > (select AVG(salary) from employees);

select * from employees;
SELECT * from departments;
select * from locations;


select city, SUM(salary) from 
employees e JOIN departments d ON(e.department_id = d.department_id)
JOIN locations l ON(d.location_id = l.location_id)
GROUP BY city
HAVING SUM(salary) = (select MIN(SUM(salary))
from 
employees e JOIN departments d ON(e.department_id = d.department_id)
JOIN locations l ON(d.location_id = l.location_id)
GROUP BY city);



select * from employees
where manager_id IN (select employee_id from employees where salary > 15000);


select * from employees;
select * from departments;

select * from departments 
where department_id NOT IN(select DISTINCT department_id from employees where department_id is not null);

select * from employees where
employee_id NOT IN(select DISTINCT manager_id from employees WHERE manager_id is not null);

SELECT * from employees emp1
where (select COUNT(*) from employees emp2 where emp1.employee_id= emp2.manager_id)>6;

select * from employees;
select * from departments;

select * from employees
where department_id = (select department_id from departments where department_name = 'IT');

select * from employees where
manager_id IN (select employee_id
from employees where TO_CHAR(hire_date, 'yyyy') = '2005')
AND hire_date < TO_DATE('01012005', 'DDMMYYYY');

select * from employees where
manager_id IN(select employee_id from employees where TO_CHAR(hire_date, 'MM') = '01')
and JOB_ID IN (select job_id from jobs where LENGTH(job_title)>15);





