CREATE TABLE metoda_płatności (
    id_metody        NUMBER(6) NOT NULL,
    nazwa_metody     VARCHAR2(20) NOT NULL,
    data_płatnośći   DATE NOT NULL,
    status_płatnośći CHAR(1) NOT NULL,
    kwota_płatnośći  NUMBER NOT NULL
);

ALTER TABLE metoda_płatności ADD CONSTRAINT metoda_płatności_pk PRIMARY KEY ( id_metody );

ALTER TABLE metoda_płatności ADD CONSTRAINT nazwa_metody_uq UNIQUE ( nazwa_metody );