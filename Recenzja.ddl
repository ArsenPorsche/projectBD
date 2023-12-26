CREATE TABLE recenzja (
    id_recenzji           NUMBER(6) NOT NULL,
    tekst_recenzji        VARCHAR2(100) NOT NULL,
    ocena_końcowa         NUMBER(2) NOT NULL,
    data_dodania_recenzji DATE NOT NULL,
    id_książki            NUMBER(6) NOT NULL
);

ALTER TABLE recenzja ADD CONSTRAINT recenzja_pk PRIMARY KEY ( id_recenzji );

ALTER TABLE recenzja
    ADD CONSTRAINT recenzja_książka_fk FOREIGN KEY ( id_książki )
        REFERENCES książka ( id_książki );