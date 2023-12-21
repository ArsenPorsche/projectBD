CREATE TABLE kryteria_oceny (
    id_kryterium    NUMBER(2) NOT NULL,
    nazwa_kryterium VARCHAR2(30) NOT NULL
);

ALTER TABLE kryteria_oceny ADD CONSTRAINT kryteria_oceny_pk PRIMARY KEY ( id_kryterium );

ALTER TABLE kryteria_oceny ADD CONSTRAINT nazwa_kryterium_uq UNIQUE ( nazwa_kryterium );