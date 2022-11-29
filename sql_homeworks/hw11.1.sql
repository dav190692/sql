CREATE TABLE friends
    AS
        (
            SELECT
                employee_id id,
                first_name  name,
                last_name   surname
            FROM
                employees
            WHERE
                commission_pct IS NOT NULL
        );

SELECT
    *
FROM
    friends;

ALTER TABLE friends ADD (
    email VARCHAR2(20) DEFAULT 'example@example.com'
);

SELECT
    *
FROM
    friends;

ALTER TABLE friends MODIFY (
    email VARCHAR2(20) DEFAULT NULL
);

ALTER TABLE friends MODIFY (
    email VARCHAR2(20) DEFAULT 'no email'
);

INSERT INTO friends (
    id,
    name,
    surname
) VALUES (
    180,
    'Davit',
    'Kirakosyan'
);

SELECT
    *
FROM
    friends;

ALTER TABLE friends RENAME COLUMN id TO friends_id;

DROP TABLE friends;

CREATE TABLE friends (
    id       INTEGER,
    name     VARCHAR2(15),
    surname  VARCHAR2(20),
    email    VARCHAR2(15),
    salary   NUMBER(7, 2) DEFAULT 99999,
    city     VARCHAR2(15),
    birthday DATE DEFAULT TO_DATE('19-JUN-1992')
);

SELECT
    *
FROM
    friends;

INSERT INTO friends VALUES (
    3,
    'Davit',
    'Kirakosyan',
    'dav@gmail.com',
    99999.55555,
    'Yerevan',
    TO_DATE('19-06-1992', 'DD-MM-YYYY')
);

ALTER TABLE friends MODIFY (
    email VARCHAR2(40)
);

INSERT INTO friends (
    id,
    name,
    surname,
    email,
    city
) VALUES (
    2,
    'Artak',
    'Sargsyan',
    'artachok1992@gijmard.com',
    'Yerevan'
);

SELECT
    *
FROM
    friends;

COMMIT;

ALTER TABLE friends DROP COLUMN salary;

ALTER TABLE friends SET UNUSED COLUMN email;

ALTER TABLE friends SET UNUSED COLUMN birthday;

ALTER TABLE friends DROP UNUSED COLUMNS;

ALTER TABLE friends READ ONLY;

DELETE FROM friends
WHERE
    id = 2;

TRUNCATE TABLE friends;

DROP TABLE friends;