CREATE TABLE książka (
    id_książki     NUMBER(6) NOT NULL,
    nazwa_książki  VARCHAR2(40) NOT NULL,
    id_wydawnictwa NUMBER(6) NOT NULL,
    rok_wydania    NUMBER(4),
    dostępność     CHAR(1) NOT NULL
);

ALTER TABLE książka ADD CONSTRAINT książka_pk PRIMARY KEY ( id_książki );

ALTER TABLE książka ADD CONSTRAINT nazwa_książki_uq UNIQUE ( nazwa_książki );

ALTER TABLE książka
    ADD CONSTRAINT książka_wydawnictwo_fk FOREIGN KEY ( id_wydawnictwa )
        REFERENCES wydawnictwo ( id_wydawnictwa );