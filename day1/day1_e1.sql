USE sqldemo;

CREATE TABLE books(bookid int, bookname varchar(20), author varchar(20), price int);

INSERT INTO books VALUES(1,'c','balaguruswamy', 150);
INSERT INTO books VALUES(2,'c++','balaguruswamy', 175);
INSERT INTO books VALUES(3,'java','balaguruswamy', 300);
INSERT INTO books VALUES(4,'oracle','rish', 850);
INSERT INTO books VALUES(5,'mysql','manohar', 400);

SELECT * FROM books;
SELECT author FROM books WHERE bookname = 'mysql';
SELECT price FROM books WHERE bookname = 'oracle';
SELECT bookname FROM books WHERE author = 'balaguruswamy';
SELECT count(bookname) FROM books;
SELECT bookid FROM books WHERE bookname = 'java';
SELECT bookname FROM books WHERE price>200;
SELECT count(bookname) FROM books WHERE author = 'balaguruswamy';