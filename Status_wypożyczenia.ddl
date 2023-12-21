CREATE TABLE status_wypożyczenia (
    id_statusu    NUMBER(1) NOT NULL,
    nazwa_statusu VARCHAR2(30) NOT NULL
);

ALTER TABLE status_wypożyczenia ADD CONSTRAINT status_wypożyczenia_pk PRIMARY KEY ( id_statusu );

ALTER TABLE status_wypożyczenia ADD CONSTRAINT nazwa_statusu_uq UNIQUE ( nazwa_statusu );