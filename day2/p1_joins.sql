-- CREATE database day2;
USE day2;

CREATE TABLE books(bookid int, bookname varchar(20), price int);
CREATE TABLE tra(traid int, bookid int);

INSERT INTO books VALUES (1,'c',100), (2,'c++',200), (3,'java',300);
INSERT INTO tra VALUES (101,1),(102,2),(103,1);

SELECT books.bookid, books.bookname FROM books INNER JOIN tra ON books.bookid = tra.bookid;
SELECT books.bookid, books.bookname FROM books LEFT JOIN tra ON books.bookid = tra.bookid;
SELECT books.bookid, books.bookname FROM books RIGHT JOIN tra ON books.bookid = tra.bookid;
SELECT * FROM books CROSS JOIN tra;

CREATE TABLE ustemp(empid int, empname varchar(20), managerid int);
INSERT INTO ustemp VALUES (1,'user1',4), (2,'user2',3), (3,'user3',1), (4,'user4',2);
SELECT * FROM ustemp;
SELECT e1.empname, e2.empname AS manager FROM ustemp e1, ustemp e2 WHERE e1.managerid = e2.empid;

-- ANY keyword
CREATE TABLE emp(empid int, empname varchar(20), sal int, deptid int);
CREATE TABLE dept(deptid int, deptname varchar(20));
INSERT INTO emp VALUES(1,'user1',1000,101), (2,'user2',2000,101),(3,'user3',3000,102),(4,'user4',4000,102);
INSERT INTO dept VALUES(101,'hr'), (102,'testing'),(103,'dev');
SELECT deptid, avg(sal) FROM emp GROUP BY deptid;
SELECT empid,empname,deptid FROM emp WHERE deptid = ANY(SELECT deptid FROM dept WHERE deptname='testing' OR deptname='hr');
