SELECT
    *
FROM
    employees;

CREATE TABLE emp1000
    AS
        (
            SELECT
                first_name,
                last_name,
                salary,
                department_id
            FROM
                employees
        );

DROP TABLE emp1000;

SELECT
    *
FROM
    emp1000;

CREATE FORCE VIEW v1000 AS
    SELECT
        first_name,
        last_name,
        salary,
        department_name,
        city
    FROM
             emp1000 e
        JOIN departments d ON ( e.department_id = d.department_id );

DROP VIEW v1000;

ALTER TABLE emp1000 ADD (
    city VARCHAR2(15)
);

ALTER VIEW v1000 COMPILE;

SELECT
    *
FROM
    v1000;

CREATE SYNONYM syn1000 FOR v1000;

SELECT
    *
FROM
    syn1000;

DROP VIEW v1000;

DROP SYNONYM syn1000;

DROP TABLE emp1000;

CREATE SEQUENCE seq1000 START WITH 12 INCREMENT BY 4 MAXVALUE 200 CYCLE;

SELECT
    seq1000.NEXTVAL
FROM
    dual;

ALTER SEQUENCE seq1000 NOMAXVALUE NOCYCLE;

INSERT INTO employees (
    employee_id,
    last_name,
    email,
    hire_date,
    job_id
) VALUES (
    seq1000.NEXTVAL,
    'Kirakosyan',
    'dav190692@gmail.com',
    TO_DATE('05.12.2022', 'DD.MM.YYYY'),
    'IT_PROG'
);

INSERT INTO employees (
    employee_id,
    last_name,
    email,
    hire_date,
    job_id
) VALUES (
    seq1000.NEXTVAL,
    'Sargsyan',
    'artak@gmail.com',
    TO_DATE('05.12.2022', 'DD.MM.YYYY'),
    'IT_PROG'
);

COMMIT;

SELECT
    *
FROM
    employees;