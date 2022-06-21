USE guided_inquiry;

CREATE TABLE movies(
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(id),
	movie_title VARCHAR(128) NOT NULL,
	movie_date DATE,
	movie_rating INT(2) NOT NULL
);

INSERT INTO movies(movie_title, movie_date, movie_rating)
VALUES 
('Toy Story', '1995-11-22', 95),
('Toy Story 2', '1999-11-24', 76),
('Cars', '2006-06-09', 69),
('UP', '2009-05-28', 79),
('Nemo', '2003-05-30', 78),
('Coco', '2017-11-22', 82),
('Ratatouille', '2007-06-29', 78),
('Finding Dory', '2016-06-17', 70),
('Toy Story 3', '2010-06-17', 78),
('Cars 3', '2017-06-16', 68);

SHOW TABLES;
SELECT movie_date, movie_title FROM movies WHERE movie_title LIKE "%s%" ORDER BY movie_date DESC ;
