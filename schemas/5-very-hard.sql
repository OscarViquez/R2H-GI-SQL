USE guided_inquiry;

CREATE TABLE cars_veryhard(
	id INT AUTO_INCREMENT PRIMARY KEY,
	cars_make VARCHAR(128),
    cars_model VARCHAR(128),
    cars_year YEAR
);

INSERT INTO cars_veryhard(cars_make,cars_model,cars_year)
VALUES('Acura','TLX Type-S',2022), ('Acura','RLX',2018), ('Acura','NSX',2021);

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE cars_veryhard ADD COLUMN cars_color VARCHAR(128);
ALTER TABLE cars_veryhard ADD COLUMN cars_prices DECIMAL(8,2);
UPDATE cars_veryhard SET cars_color="blue", cars_prices="123.99" WHERE id=1; 
UPDATE cars_veryhard SET cars_color="white", cars_prices="600.99" WHERE id=2; 
UPDATE cars_veryhard SET cars_color="orange", cars_prices="500.99" WHERE id=3; 

ALTER TABLE cars_veryhard ADD COLUMN cars_make_model VARCHAR(128);
UPDATE cars_veryhard SET cars_make_model = CONCAT(cars_make, ' ' , cars_model);



SHOW TABLES;
SELECT * FROM cars_veryhard;

SELECT cars_make_model, COUNT(*) FROM cars_veryhard GROUP BY cars_make HAVING COUNT(*) > 1;

