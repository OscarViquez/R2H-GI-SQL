USE guided_inquiry;

CREATE TABLE movies_hard(
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(id),
	movie_title VARCHAR(128) NOT NULL,
	movie_date DATE,
	movie_rating INT(2) NOT NULL,
    movie_director_firstName VARCHAR(128) NOT NULL,
	movie_director_lastName VARCHAR(128) NOT NULL
);

INSERT INTO movies_hard(movie_title, movie_date, movie_rating, movie_director_firstName, movie_director_lastName)
VALUES 
('Toy Story', '1995-11-22', 95, 'John', 'Doe'),
('Toy Story 2', '1999-11-24', 76, 'Smith', 'Joe'),
('Cars', '2006-06-09', 69, 'Slow', 'Quick'),
('UP', '2009-05-28', 79, 'Gold', 'Blue'),
('Nemo', '2003-05-30', 78, 'Tom', 'Hanks'),
('Coco', '2017-11-22', 82, 'Adams', 'Mister'),
('Ratatouille', '2007-06-29', 78, 'Alex', 'Ham'),
('Finding Dory', '2016-06-17', 70, 'Bruno', 'Dolton'),
('Toy Story 3', '2010-06-17', 78, 'Aaron', 'Burr'),
('Cars 3', '2017-06-16', 68, 'Geo', 'Wash');

ALTER TABLE movies_hard ADD COLUMN movie_director_fullName VARCHAR(128);
UPDATE movies_hard SET movie_director_fullName = CONCAT(movie_director_firstName, ' ' , movie_director_lastName);

SHOW TABLES;

SELECT * FROM movies_hard ORDER BY movie_director_fullName ASC;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM movies_hard WHERE movie_director_lastName REGEXP "[r-z]$";
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM movies_hard LIMIT 3;