USE dona;
CREATE TABLE books(bookid int, bookname varchar(20), category varchar(20), author varchar(20), price int);
INSERT INTO books VALUES (1,'book1','fiction','raju',200),(2,'book2','non-fiction','guru',400),(3,'book3','non-fiction','swamy',500),(4,'book4','fiction','mahi',150),(5,'book5','non-fiction','pratap',300);

SELECT * FROM books;
SELECT category, count(bookid) AS count FROM books GROUP BY category;
SELECT count(bookid) AS total_books FROM books;
SELECT * FROM books WHERE price BETWEEN 300 AND 400;
SELECT bookname FROM books WHERE author = 'mahi';
SELECT bookname,price FROM books WHERE author = 'guru';
SELECT bookname FROM books WHERE author IN ('swamy','raju');
SELECT bookname FROM books WHERE author NOT IN ('pratap');
SELECT category, min(price) FROM books GROUP BY category;
SELECT bookname FROM books WHERE category = 'non-fiction' AND price>200;
SELECT bookname, author FROM books WHERE author LIKE '%u';