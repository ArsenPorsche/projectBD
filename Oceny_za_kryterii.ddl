CREATE TABLE oceny_za_kryterii (
    id_oceny      NUMBER(6) NOT NULL,
    wartość_oceny NUMBER(1) NOT NULL,
    id_recenzji   NUMBER(6) NOT NULL,
    id_kryterium  NUMBER(2) NOT NULL
);

ALTER TABLE oceny_za_kryterii ADD CONSTRAINT oceny_za_kryterii_pk PRIMARY KEY ( id_oceny );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE oceny_za_kryterii
    ADD CONSTRAINT oceny_za_kryterii_kryteria_oceny_fk FOREIGN KEY ( id_kryterium )
        REFERENCES kryteria_oceny ( id_kryterium );

ALTER TABLE oceny_za_kryterii
    ADD CONSTRAINT oceny_za_kryterii_recenzja_fk FOREIGN KEY ( id_recenzji )
        REFERENCES recenzja ( id_recenzji );