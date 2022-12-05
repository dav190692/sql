CREATE TABLE test200 (
    id       INTEGER,
    name1    VARCHAR2(20),
    name2    VARCHAR2(20),
    address1 VARCHAR2(20),
    address2 VARCHAR2(20)
);

DROP TABLE test200;

INSERT INTO test200 VALUES (
    1,
    'Davit',
    'Artak',
    'Andranik 148',
    'Manument'
);

UPDATE test200
SET
    &col5 = &val
WHERE
    id = &id;

SELECT
    *
FROM
    test200;

SELECT
    *
FROM
    test200
WHERE
        name1 = '&&val1'
    AND name2 = '&val1'
    AND address1 = '&&val2'
    AND address2 = '&val2';

undefine col5;
undefine id;

undefine name;

define;