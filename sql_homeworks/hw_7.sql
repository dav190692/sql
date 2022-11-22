select * from regions;
select * from countries;
select * from locations;
select * from departments;
select * from employees;


select region_name, COUNT(*)
from employees e 
JOIN departments d ON(e.department_id = d.department_id)
JOIN locations l ON(d.location_id = l.location_id)
JOIN countries c ON(l.country_id = c.country_id)
JOIN regions r ON(c.region_id = r.region_id)
GROUP BY region_name;

select first_name, last_name, department_name, job_id, street_address, country_name, region_name
from employees e 
JOIN departments d ON(e.department_id = d.department_id)
JOIN locations l ON(d.location_id = l.location_id)
JOIN countries c ON(l.country_id = c.country_id)
JOIN regions r ON(c.region_id = r.region_id);


select emp1.first_name, COUNT(*)
from employees emp1 JOIN employees emp2 ON(emp1.employee_id= emp2.manager_id)
GROUP BY emp1.first_name
HAVING COUNT(*)>6
ORDER BY COUNT(*) DESC;

select department_name, COUNT(*)
from employees JOIN departments USING(department_id)
GROUP BY department_name
HAVING COUNT(*) > 30
ORDER BY COUNT(*) DESC;

select  department_name
from employees e RIGHT JOIN departments d ON(e.department_id = d.department_id)
where first_name is null;

select emp.* from 
employees emp JOIN employees man ON(emp.manager_id = man.employee_id)
where TO_CHAR(man.hire_date, 'yyyy')= '2005'
and emp.hire_date < TO_DATE('01-01-2005', 'DD-MM-YYYY');



select country_name, region_name
from countries NATURAL JOIN regions;

select * from employees;
select * from jobs;

SELECT first_name, last_name, salary
from employees e JOIN jobs j ON(e.job_id = j.job_id and salary < min_salary + 1000); 

select * from countries;
select * from locations;
select * from departments;
select * from employees;


select DISTINCT first_name, last_name, country_name 
from employees e 
FULL JOIN departments d ON(e.department_id = d.department_id)
FULL JOIN locations l ON(d.location_id = l.location_id)
FULL JOIN countries c ON(l.country_id = c.country_id);

select first_name, last_name, country_name 
from employees  
CROSS JOIN countries;



select region_name, COUNT(*)
from employees e, departments d, locations l, countries c, regions r
where (e.department_id = d.department_id AND
d.location_id = l.location_id AND
l.country_id = c.country_id AND
c.region_id = r.region_id)
GROUP BY region_name;


select  department_name
from employees e, departments d 
where e.department_id(+) = d.department_id
AND  first_name is null;



