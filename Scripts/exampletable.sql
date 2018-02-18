use cliTest;

INSERT INTO example (name) VALUES ('Chum Deluxe'), ('Lil Squirt');

SELECT * FROM example;

DROP TABLE table1;

CREATE TABLE table1 (
                    id int(10) NOT NULL AUTO_INCREMENT,
                    name VARCHAR(20),
                    sex CHAR(1),
                    PRIMARY KEY (id));

INSERT INTO table1 (name, sex) VALUES ('Chum Deluxe', 'M'),
                      ('Lil Squirt', 'F'), ('Ryan B', 'M');

SELECT * FROM table1;

desc table1;

INSERT INTO table1 VALUES ('Cheddar Bob', 'M');
