CREATE TABLE abonement_klienta (
    id_abonementu_klienta NUMBER(4) NOT NULL,
    id_klienta            NUMBER(6) NOT NULL,
    id_metody_płatności   NUMBER(1) NOT NULL,
    id_abonementu         NUMBER(1) NOT NULL
);

ALTER TABLE abonement_klienta ADD CONSTRAINT abonement_klienta_pk PRIMARY KEY ( id_abonementu_klienta );

ALTER TABLE abonement_klienta
    ADD CONSTRAINT abonement_klienta_abonement_fk FOREIGN KEY ( id_abonementu )
        REFERENCES abonement ( id_abonementu );

ALTER TABLE abonement_klienta
    ADD CONSTRAINT abonement_klienta_klient_fk FOREIGN KEY ( id_klienta )
        REFERENCES klient ( id_klienta );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE abonement_klienta
    ADD CONSTRAINT abonement_klienta_metoda_płatności_fk FOREIGN KEY ( id_metody_płatności )
        REFERENCES metoda_płatności ( id_metody );