CREATE TABLE podkategoria_książek (
    id_podkategorii    NUMBER(6) NOT NULL,
    nazwa_podkategorii VARCHAR2(30) NOT NULL,
    id_kategorii       NUMBER(6) NOT NULL
);

ALTER TABLE podkategoria_książek ADD CONSTRAINT podkategoria_książek_pk PRIMARY KEY ( id_podkategorii );

ALTER TABLE podkategoria_książek ADD CONSTRAINT nazwa_podkategorii_uq UNIQUE ( nazwa_podkategorii );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE podkategoria_książek
    ADD CONSTRAINT podkategoria_książek_kategoria_książek_fk FOREIGN KEY ( id_kategorii )
        REFERENCES kategoria_książek ( id_kategorii );