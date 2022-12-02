CREATE TABLE address (
    id      INTEGER
        CONSTRAINT ad_id_un UNIQUE,
    country VARCHAR2(20),
    city    VARCHAR2(20)
);

CREATE TABLE friends (
    id         INTEGER,
    name       VARCHAR2(20)
        CONSTRAINT ch_name CHECK ( length(name) > 3 ),
    email      VARCHAR2(25),
    address_id INTEGER
        CONSTRAINT fk
            REFERENCES address ( id )
                ON DELETE SET NULL,
    birthday   DATE
);

CREATE UNIQUE INDEX un_fr_in1 ON
    friends (
        id
    );

ALTER TABLE friends ADD CONSTRAINT fr_id_pk PRIMARY KEY ( id );

CREATE INDEX fr_email_in2 ON
    friends (
        email
    );

ALTER TABLE friends MODIFY
    email
        CONSTRAINT fr_email_nn NOT NULL;

INSERT INTO address VALUES (
    1,
    'Armenia',
    'Yerevan'
);

INSERT INTO address VALUES (
    2,
    'Armenia',
    'Goris'
);

INSERT INTO address VALUES (
    3,
    'Armenia',
    'Ghapan'
);

SELECT
    *
FROM
    address;

INSERT INTO friends VALUES (
    1,
    'Aram',
    'dav@gmail.com',
    1,
    TO_DATE('02-12-2022', 'DD-MM-YYYY')
);

INSERT INTO friends VALUES (
    1,
    'Aram',
    'dav@gmail.com',
    3,
    TO_DATE('02-12-2022', 'DD-MM-YYYY')
);

SELECT
    *
FROM
    friends;