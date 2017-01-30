USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INTEGER ,
    artist LINESTRING ,
    name LINESTRING ,
    release_date INTEGER ,
    sales FLOAT ,
    genre TEXT
);

ALTER TABLE albums ADD UNIQUE (`artist`, `name`);

ALTER TABLE albums
    MODIFY id INT NOT NULL AUTO_INCREMENT;

DESCRIBE albums;

INSERT INTO albums VALUES(id, 'Michael Jackson', '', 1987, 203000000, 'Pop, funk, rock');

DELETE FROM albums WHERE id >= 34;