CREATE TABLE grupy_książki (
    id_grupy_książek NUMBER(3) NOT NULL,
    id_książki       NUMBER(6) NOT NULL
);

ALTER TABLE grupy_książki ADD CONSTRAINT grupy_książki_pk PRIMARY KEY ( id_grupy_książek,
                                                                        id_książki );

ALTER TABLE grupy_książki
    ADD CONSTRAINT grupy_książki_grupy_książek_fk FOREIGN KEY ( id_grupy_książek )
        REFERENCES grupy_książek ( id_grupy );

ALTER TABLE grupy_książki
    ADD CONSTRAINT grupy_książki_książka_fk FOREIGN KEY ( id_książki )
        REFERENCES książka ( id_książki );