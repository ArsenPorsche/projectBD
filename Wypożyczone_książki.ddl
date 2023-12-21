CREATE TABLE wypożyczone_książki (
    id_wypożyczonej_książki NUMBER(6) NOT NULL,
    id_książki_w_formacie   NUMBER(6) NOT NULL,
    id_wypożyczenia         NUMBER(6) NOT NULL
);

ALTER TABLE wypożyczone_książki ADD CONSTRAINT wypożyczone_książki_pk PRIMARY KEY ( id_wypożyczonej_książki );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE wypożyczone_książki
    ADD CONSTRAINT wypożyczone_książki_książka_w_formacie_fk FOREIGN KEY ( id_książki_w_formacie )
        REFERENCES książka_w_formacie ( id_książki_w_formacie );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE wypożyczone_książki
    ADD CONSTRAINT wypożyczone_książki_wypożyczenia_fk FOREIGN KEY ( id_wypożyczenia )
        REFERENCES wypożyczenia ( id_wypożyczenia );