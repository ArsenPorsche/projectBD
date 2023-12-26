CREATE TABLE klient (
    id_klienta     NUMBER(6) NOT NULL,
    imie           VARCHAR2(30) NOT NULL,
    nazwisko       VARCHAR2(30) NOT NULL,
    numer_telefonu VARCHAR2(9),
    email          VARCHAR2(40) NOT NULL,
    konto_aktywne  CHAR(1) NOT NULL
);

ALTER TABLE klient ADD CONSTRAINT klient_pk PRIMARY KEY ( id_klienta );

ALTER TABLE klient ADD CONSTRAINT numer_telefonu_uq UNIQUE ( numer_telefonu );

ALTER TABLE klient ADD CONSTRAINT email_uq UNIQUE ( email );