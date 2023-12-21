CREATE TABLE kategoria_książek (
    id_kategorii    NUMBER(6) NOT NULL,
    nazwa_kategorii VARCHAR2(30) NOT NULL
);

ALTER TABLE kategoria_książek ADD CONSTRAINT kategoria_książek_pk PRIMARY KEY ( id_kategorii );

ALTER TABLE kategoria_książek ADD CONSTRAINT nazwa_kategorii_uq UNIQUE ( nazwa_kategorii );