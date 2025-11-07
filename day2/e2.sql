USE sqldemo;
DROP TABLE books;

CREATE TABLE books(bookid int, bookname varchar(20), author varchar(20), price int, publisher varchar(20));

INSERT INTO books VALUES (1,'C','Balu',100,'BPB'), (2,'C++','Gowri',200,'McGraw'),(3,'Java','Mano',300,'BPB'),(4,'Perl','James',400,'BPB'),(5,'Ruby','Antony',500,'McGraw');

-- 1 
SELECT * FROM books;
-- 2
SELECT bookname FROM books;
-- 3
SELECT count(*) FROM books;
-- 4
SELECT author FROM books WHERE bookname = 'C++';
-- 5
SELECT bookname FROM books WHERE price>200;
-- 6
SELECT bookname FROM books WHERE price BETWEEN 200 AND 400;
-- 7
SELECT bookname FROM books WHERE author = 'Antony';
-- 8
SELECT bookname, price FROM books WHERE price=(SELECT max(price) FROM books);
-- 9
SELECT bookname, price FROM books WHERE price=(SELECT min(price) FROM books);
-- 10
SELECT count(bookid),publisher FROM books GROUP BY publisher;
-- 11
SELECT avg(price) FROM books GROUP BY publisher HAVING publisher = 'McGraw';
-- 12
SELECT * FROM books LIMIT 2;
-- 13
SELECT * FROM books LIMIT 3,2;
SELECT * FROM books ORDER BY bookid DESC LIMIT 2;
