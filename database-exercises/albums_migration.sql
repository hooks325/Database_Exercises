USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INTEGER ,
    artist TEXT ,
    name TEXT ,
    release_date INTEGER ,
    sales FLOAT ,
    genre TEXT
);