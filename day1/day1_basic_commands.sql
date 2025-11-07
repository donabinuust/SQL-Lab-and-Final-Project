-- creating a db
CREATE DATABASE sqldemo;
-- using a db
USE sqldemo;
-- creating a table
CREATE TABLE emp(empid int, empname varchar(20), sal int, city varchar(20));
-- inserting records into a table
INSERT INTO emp VALUES(1,'user1',2000,'tvm');
INSERT INTO emp VALUES(2,'user2',5000,'chn');
INSERT INTO emp VALUES(3,'user3',6000,'coc');
INSERT INTO emp VALUES(4,'user4',7000,'pun');
-- displaying records from a table
SELECT * FROM emp;
SELECT city FROM emp;
SELECT city, empname FROM emp;
-- filtering records using WHERE
SELECT * FROM emp WHERE sal>5000;
-- updating a record in a table
UPDATE emp SET sal = sal + 1000 WHERE city = 'tvm';
-- deleting a record frim the table
DELETE FROM emp WHERE city = 'pun';
SELECT * FROM emp;