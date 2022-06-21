USE guided_inquiry;

CREATE TABLE book(
	bookTitle VARCHAR(128),
    bookDate DATE,
    bookAuthorFirst VARCHAR(128),
    bookAuthorLast VARCHAR(128)
);

INSERT INTO book(bookTitle, bookDate,bookAuthorFirst, bookAuthorLast)
VALUES('Book1', '2022-03-04', 'firstName1', 'secondName1'),
('Book2', '2022-03-04', 'firstName2', 'secondName1'),
('Book3', '2021-01-01', 'firstName3', 'secondName3'),
('Book4', '2020-02-05', 'firstName4', 'secondName4'),
('Book5', '2019-01-05', 'firstName5', 'secondName5');

INSERT INTO book(bookTitle, bookDate,bookAuthorFirst, bookAuthorLast)
VALUES('Book6', '2017-02-05', 'firstName6', 'secondName4'),
('Book7', '2014-01-02', 'firstName7', 'secondName7');

SHOW TABLES;
SELECT * FROM book;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM book WHERE bookTitle='Book7';
SET SQL_SAFE_UPDATES = 1;

SELECT COUNT(*) FROM book;
