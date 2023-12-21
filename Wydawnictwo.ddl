CREATE TABLE wydawnictwo (
    id_wydawnictwa    NUMBER(6) NOT NULL,
    nazwa_wydawnictwa VARCHAR2(40) NOT NULL
);

ALTER TABLE wydawnictwo ADD CONSTRAINT wydawnictwo_pk PRIMARY KEY ( id_wydawnictwa );

ALTER TABLE wydawnictwo ADD CONSTRAINT nazwa_wydawnictwa_uq UNIQUE ( nazwa_wydawnictwa );