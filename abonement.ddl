CREATE TABLE abonement (
    id_abonementu    NUMBER(1) NOT NULL,
    nazwa_abonementu VARCHAR2(30) NOT NULL
);

ALTER TABLE abonement ADD CONSTRAINT abonement_pk PRIMARY KEY ( id_abonementu );

ALTER TABLE abonement ADD CONSTRAINT nazwa_abonementu_uq UNIQUE ( nazwa_abonementu );