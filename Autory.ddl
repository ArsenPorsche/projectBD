CREATE TABLE autory (
    id_autora       NUMBER(6) NOT NULL,
    imie_autora     VARCHAR2(30) NOT NULL,
    nazwisko_autora VARCHAR2(30) NOT NULL
);

ALTER TABLE autory ADD CONSTRAINT autory_pk PRIMARY KEY ( id_autora );