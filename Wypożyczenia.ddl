CREATE TABLE wypożyczenia (
    id_wypożyczenia       NUMBER(6) NOT NULL,
    data_wypożyczenia     DATE NOT NULL,
    data_zwrotu           DATE NOT NULL,
    cena                  NUMBER(6, 2) NOT NULL,
    id_statusu            NUMBER(1) NOT NULL,
    id_abonementu_klienta NUMBER(6) NOT NULL
);

ALTER TABLE wypożyczenia ADD CONSTRAINT wypożyczenia_pk PRIMARY KEY ( id_wypożyczenia );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE wypożyczenia
    ADD CONSTRAINT wypożyczenia_abonement_klienta_fk FOREIGN KEY ( id_abonementu_klienta )
        REFERENCES abonement_klienta ( id_abonementu_klienta );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE wypożyczenia
    ADD CONSTRAINT wypożyczenia_status_wypożyczenia_fk FOREIGN KEY ( id_statusu )
        REFERENCES status_wypożyczenia ( id_statusu );