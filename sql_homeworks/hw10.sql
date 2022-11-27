CREATE TABLE locations2
    AS
        (
            SELECT
                *
            FROM
                locations
            WHERE
                1 = 2
        );

SELECT
    *
FROM
    locations2;

SELECT
    *
FROM
    locations;

SELECT
    *
FROM
    countries;

INSERT INTO locations2 (
    location_id,
    street_address,
    city,
    country_id
)
    (
        SELECT
            location_id,
            street_address,
            city,
            country_id
        FROM
            locations
        WHERE
            country_id IN (
                SELECT
                    country_id
                FROM
                    countries
                WHERE
                    country_name = 'Italy'
            )
    );

COMMIT;

SELECT
    *
FROM
    locations2;

INSERT INTO locations2 VALUES (
    3300,
    '78 Rue Tiquetonne',
    '60538',
    initcap('paris'),
    '?le-de-France',
    upper('fr')
);

INSERT INTO locations2 VALUES (
    3300,
    '52 Place Maurice de Fontenay',
    '39676',
    initcap('paris'),
    '?le-de-France',
    upper('fr')
);

COMMIT;

INSERT INTO locations2
    (
        SELECT
            *
        FROM
            locations
        WHERE
            length(state_province) > 9
    );

COMMIT;

CREATE TABLE locations4europe
    AS
        (
            SELECT
                *
            FROM
                locations
            WHERE
                1 = 2
        );

SELECT
    *
FROM
    locations;

SELECT
    *
FROM
    countries;

SELECT
    *
FROM
    regions;

SELECT
    *
FROM
    locations2;

SELECT
    *
FROM
    locations4europe;

INSERT
    ALL WHEN 5 = 5 THEN
        INTO locations2
        WHEN country_id IN (
            SELECT
                country_id
            FROM
                countries
            WHERE
                region_id IN (
                    SELECT
                        region_id
                    FROM
                        regions
                    WHERE
                        region_name LIKE 'Europe'
                )
        ) THEN
            INTO locations4europe (
                location_id,
                street_address,
                city,
                country_id
            )
            VALUES (
                location_id,
                street_address,
                city,
                country_id
            )
SELECT
    *
FROM
    locations;

COMMIT;

UPDATE locations2
SET
    postal_code = nvl(postal_code, '11111');

ROLLBACK;

UPDATE locations2
SET
    postal_code = nvl(postal_code,(
        SELECT
            postal_code
        FROM
            locations
        WHERE
            location_id = 2600
    ));

COMMIT;

DELETE FROM locations2
WHERE
    country_id = 'IT';

SAVEPOINT s1;

UPDATE locations2
SET
    street_address = 'Sezam st. 18'
WHERE
    location_id > 2500;

SAVEPOINT s2;

DELETE FROM locations2
WHERE
    street_address = 'Sezam st. 18';

ROLLBACK TO SAVEPOINT s1;

COMMIT;