CREATE TABLE metoda_płatności (
    id_metody    NUMBER(1) NOT NULL,
    nazwa_metody VARCHAR2(20) NOT NULL
);

ALTER TABLE metoda_płatności ADD CONSTRAINT metoda_płatności_pk PRIMARY KEY ( id_metody );

ALTER TABLE metoda_płatności ADD CONSTRAINT nazwa_metody_uq UNIQUE ( nazwa_metody );