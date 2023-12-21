CREATE TABLE formaty (
    id_formatu    NUMBER(2) NOT NULL,
    nazwa_formatu VARCHAR2(20) NOT NULL
);

ALTER TABLE formaty ADD CONSTRAINT formaty_pk PRIMARY KEY ( id_formatu );

ALTER TABLE formaty ADD CONSTRAINT nazwa_formatu_uq UNIQUE ( nazwa_formatu );