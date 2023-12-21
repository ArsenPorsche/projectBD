CREATE TABLE książka_w_formacie (
    id_książki_w_formacie NUMBER(6) NOT NULL,
    id_książki            NUMBER(6) NOT NULL,
    id_formatu            NUMBER(2) NOT NULL
);

ALTER TABLE książka_w_formacie ADD CONSTRAINT książka_w_formacie_pk PRIMARY KEY ( id_książki_w_formacie );

ALTER TABLE książka_w_formacie
    ADD CONSTRAINT książka_w_formacie_formaty_fk FOREIGN KEY ( id_formatu )
        REFERENCES formaty ( id_formatu );

ALTER TABLE książka_w_formacie
    ADD CONSTRAINT książka_w_formacie_książka_fk FOREIGN KEY ( id_książki )
        REFERENCES książka ( id_książki );