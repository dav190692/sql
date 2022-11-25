SELECT
    *
FROM
    employees;

SELECT
    manager_id      man_id,
    to_char(NULL)   job_id,
    TO_NUMBER(NULL) dep_id,
    SUM(salary)
FROM
    employees
GROUP BY
    manager_id
UNION
SELECT
    TO_NUMBER(NULL),
    job_id,
    TO_NUMBER(NULL),
    SUM(salary)
FROM
    employees
GROUP BY
    job_id
UNION
SELECT
    TO_NUMBER(NULL),
    to_char(NULL),
    department_id,
    SUM(salary)
FROM
    employees
GROUP BY
    department_id;

SELECT
    department_id
FROM
    employees
WHERE
    manager_id LIKE 100
MINUS
SELECT
    department_id
FROM
    employees
WHERE
    manager_id IN ( 145, 201 );

SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    first_name LIKE '_a%'
INTERSECT
SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    lower(last_name) LIKE '%s%'
ORDER BY
    salary DESC;

SELECT
    *
FROM
    locations;

SELECT
    *
FROM
    countries;

SELECT
    location_id,
    postal_code,
    city
FROM
    locations
WHERE
    country_id IN (
        SELECT
            country_id
        FROM
            countries
        WHERE
            country_name IN ( 'Italy', 'Germany' )
    )
UNION ALL
SELECT
    location_id,
    postal_code,
    city
FROM
    locations
WHERE
    postal_code LIKE '%9%';

SELECT
    *
FROM
    countries;

SELECT
    *
FROM
    regions;

SELECT
    country_id   id,
    country_name country,
    region_name  region
FROM
         countries c
    JOIN regions r ON ( c.region_id = r.region_id )
WHERE
    region_name != 'Europe'
UNION
SELECT
    country_id,
    country_name,
    region_name
FROM
         countries c
    JOIN regions r ON ( c.region_id = r.region_id )
WHERE
    length(country_name) > 8
ORDER BY
    country DESC;