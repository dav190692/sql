select department_id, 
MAX(salary), 
MIN(salary),
MAX(hire_date),
MIN(hire_date),
COUNT(*)
from employees
group by department_id
order by COUNT(*) desc;


select SUBSTR(first_name, 1, 1), COUNT(*) from employees
group by SUBSTR(first_name, 1, 1)
having COUNT(*)> 1
order by COUNT(*) DESC;

select department_id, salary, COUNT(*) 
from employees
group by department_id, salary
having COUNT(*) > 1
order by COUNT(*);

select TO_CHAR(hire_date, 'Day'), COUNT(*) from employees
group by TO_CHAR(hire_date, 'Day');


select department_id,COUNT(*) from employees
group by department_id
having COUNT(*)> 30 and SUM(salary)> 300000;

select * from countries;

select region_id from countries
group by region_id
having SUM(LENGTH(country_name))> 50;

select job_id, COUNT(*), ROUND(AVG(salary)) from employees
group by job_id
order by ROUND(AVG(salary));

select department_id, COUNT(*) from employees
group by department_id
HAVING COUNT(DISTINCT job_id)>1
order by department_id;

select department_id, job_id,MAX(salary), MIN(salary), COUNT(*)
from employees
group by department_id, job_id
having AVG(salary)> 10000
order by department_id, job_id,COUNT(*);


select manager_id, COUNT(*)
from employees
where commission_pct is null
group by manager_id
having AVG(salary) between 6000 and 9000
order by manager_id;

select ROUND(MAX(AVG(salary)), -3) from employees
group by department_id;
