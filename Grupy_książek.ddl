CREATE TABLE grupy_książek (
    id_grupy        NUMBER(3) NOT NULL,
    nazwa_grupy     VARCHAR2(30) NOT NULL,
    id_podkategorii NUMBER(6) NOT NULL
);

ALTER TABLE grupy_książek ADD CONSTRAINT grupy_książek_pk PRIMARY KEY ( id_grupy );

ALTER TABLE grupy_książek ADD CONSTRAINT nazwa_grupy_uq UNIQUE ( nazwa_grupy );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE grupy_książek
    ADD CONSTRAINT grupy_książek_podkategoria_książek_fk FOREIGN KEY ( id_podkategorii )
        REFERENCES podkategoria_książek ( id_podkategorii );