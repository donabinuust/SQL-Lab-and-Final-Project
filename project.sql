DROP DATABASE project;
CREATE DATABASE project;
USE project;

DROP TABLE doctors;
DROP TABLE patients;

CREATE TABLE doctors(docid int primary key, docname varchar(20), dept varchar(20), noofopddays int);
CREATE TABLE patients(patno int primary key, patname varchar(20), dept varchar(20), docid int, foreign key (docid) references doctors(docid));

INSERT INTO doctors VALUES (101,'J K Mishra','Ortho',3),(102,'Mahesh Tripathi','ENT',4),(103,'Ravi Kumar','Neuro',5),(104,'Mukesh Jain','Physio',3);
INSERT INTO patients VALUES (1,'Payal','ENT',102),(2,'Naveen','Ortho',101),(3,'Rakesh','Neuro',103),(4,'Atul','Physio',104);

SELECT * FROM doctors;
SELECT * FROM patients;

DESC doctors;
DESC patients;

-- 1
SELECT p.patno,p.patname,d.docname FROM patients p LEFT JOIN doctors d ON p.docid = d.docid;
-- 2
SELECT docname FROM doctors WHERE noofopddays>3;
-- 3
SELECT d.docid,d.docname,d.dept,p.patname FROM doctors d JOIN patients p ON d.docid = p.docid WHERE d.docid = 101 OR d.docid = 103;
-- 4
SELECT DISTINCT count(dept) AS 'Count of distinct depts' FROM patients;