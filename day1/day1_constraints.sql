USE sqldemo;
-- Primary key - unique + not null
CREATE TABLE emp(empid int primary key, empname varchar(20), sal int);
INSERT INTO emp VALUES('user1', 2000); -- error bcos primary key cannot be null
INSERT INTO emp VALUES(1, 'user1', 2000); -- no error
INSERT INTO emp VALUES(1, 'user2', 4000); -- error bcos primary key must be unique so no duplicates allowed
DROP TABLE emp;
-- Check constraint
CREATE TABLE emp(empid int primary key, empname varchar(20), age int check(age>0));
INSERT INTO emp VALUES(1, 'user1', 20);
INSERT INTO emp VALUES(2, 'user2', -20); -- error bcos check constraint is violated, age < 0
INSERT INTO emp VALUES(2, 'user2', 20);
DROP TABLE emp;
-- Default
CREATE TABLE emp(empid int, empname varchar(20), country varchar(20) default 'India');
INSERT INTO emp VALUES(1, 'user1', 'USA');
INSERT INTO emp(empid, empname) VALUES(2, 'user2'); -- no country specified, so default value will be India
SELECT * FROM emp;
DROP TABLE emp;
-- Unique : can be null but no duplicates allowed
CREATE TABLE emp(empid int, empname varchar(20), mobile varchar(20) unique);
INSERT INTO emp VALUES(1, 'user1', 8156954180);
INSERT INTO emp VALUES(2, 'user2', 8156954180); -- error bcos duplicate value
INSERT INTO emp VALUES(2, 'user2', 8156954150);
SELECT * FROM emp;
DROP TABLE emp;
-- Not null
CREATE TABLE emp(empid int, empname varchar(20), mobile varchar(20) not null);
INSERT INTO emp VALUES(1, 'user1', 8156954180);
INSERT INTO emp(empid, empname) VALUES(2, 'user2'); -- error 
INSERT INTO emp VALUES(2, 'user2', 8156954480);
SELECT * FROM emp;
DROP TABLE emp;
-- Foreign key
CREATE TABLE dept(deptid int primary key, deptname varchar(20));
CREATE TABLE emp(empid int, empname varchar(20), deptid int, CONSTRAINT foreign key (deptid) references dept(deptid));
INSERT INTO dept VALUES(1, 'hr');
INSERT INTO dept VALUES(2, 'development');
INSERT INTO dept VALUES(3, 'testing');
INSERT INTO emp VALUES(101, 'user1', 1);
INSERT INTO emp VALUES(102, 'user2', 2);
INSERT INTO emp VALUES(103, 'user3', 4); -- error, bcos this deptid references deptid in dept and there is no deptid=4
SELECT * FROM dept;
SELECT * FROM emp;
DROP TABLE emp;
DROP TABLE dept; -- has to be deleted after emp has been deleted bcos emp is referencing dept