CREATE TABLE autory_książki (
    id_książki NUMBER(6) NOT NULL,
    id_autora  NUMBER(6) NOT NULL
);

ALTER TABLE autory_książki ADD CONSTRAINT autory_książki_pk PRIMARY KEY ( id_książki,
                                                                          id_autora );

ALTER TABLE autory_książki
    ADD CONSTRAINT autory_książki_autory_fk FOREIGN KEY ( id_autora )
        REFERENCES autory ( id_autora );

ALTER TABLE autory_książki
    ADD CONSTRAINT autory_książki_książka_fk FOREIGN KEY ( id_książki )
        REFERENCES książka ( id_książki );