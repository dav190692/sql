select * from employees;


select manager_id man_id, TO_CHAR(null) job_id, TO_NUMBER(null) dep_id, SUM(salary) from employees 
GROUP BY manager_id
UNION
select TO_NUMBER(null), job_id, TO_NUMBER(null), SUM(salary) from employees
GROUP BY job_id
UNION
select TO_NUMBER(null),TO_CHAR(null), department_id, SUM(salary) from employees
group by department_id;

select department_id from employees where manager_id like 100
minus
select department_id from employees where manager_id IN (145,201);

select first_name, last_name, salary from employees where first_name like '_a%'
INTERSECT
select first_name, last_name, salary from employees where LOWER(last_name) like  '%s%'
ORDER BY salary DESC;

select * from locations;
select * from countries;

select location_id, postal_code, city from locations 
where country_id IN (select country_id from countries where country_name IN('Italy', 'Germany'))
UNION ALL
select location_id, postal_code, city from locations where postal_code like '%9%';


select * from countries;
select * from regions;

select country_id id, country_name country, region_name region from countries c
JOIN regions r ON(c.region_id = r.region_id) where region_name != 'Europe' 
UNION
select country_id, country_name, region_name from countries c
JOIN regions r ON(c.region_id = r.region_id) where LENGTH(country_name)> 8
order by  country DESC;