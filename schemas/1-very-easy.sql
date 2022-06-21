SHOW DATABASES;

CREATE DATABASE guided_inquiry;
USE guided_inquiry;

CREATE TABLE cars(
	make VARCHAR(128),
    model VARCHAR(128),
    year YEAR
);

INSERT INTO cars(make, model, year)
VALUES('Acura','NSX',2021);



INSERT INTO cars(make, model, year)
VALUES('Acura','TLX Type-S',2022), ('Acura','RLX',2018);

SHOW TABLES;
SELECT * FROM cars;
