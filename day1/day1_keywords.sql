CREATE TABLE emp(empid int, empname varchar(20), sal int, deptname varchar(20));
INSERT INTO emp VALUES(1,'user1', 1000,'hr');
INSERT INTO emp VALUES(2,'user2', 2000,'testing');
INSERT INTO emp VALUES(3,'user3', 3000,'hr');
INSERT INTO emp VALUES(4,'user4', 4000,'development');
INSERT INTO emp VALUES(5,'user5', 5000,'testing');
INSERT INTO emp VALUES(6,'user6', 6000,'hr');
INSERT INTO emp VALUES(7,'user7', 7000,'hr');
SELECT * FROM emp;

SELECT deptname, MAX(sal) FROM emp GROUP BY deptname;
SELECT deptname, MAX(sal) FROM emp GROUP BY deptname HAVING MAX(sal)>4000; -- having can only be used after and always with group by
SELECT empid, empname, deptname FROM emp WHERE deptname IN ('testing', 'development');
SELECT empid, empname, deptname FROM emp WHERE deptname NOT IN ('testing', 'development');
SELECT empid AS id, empname AS name FROM emp;
SELECT * FROM emp WHERE deptname = "testing" AND sal>4000;
SELECT * FROM emp WHERE deptname = "testing" OR sal<4000;
SELECT * FROM emp WHERE sal BETWEEN 4000 AND 6000;

INSERT INTO emp VALUES(8,'user8',3000, null);
SELECT * FROM emp WHERE deptname IS NULL;
SELECT * FROM emp WHERE deptname IS NOT NULL;
SELECT * FROM emp WHERE deptname LIKE 'd%';
SELECT * FROM emp WHERE deptname LIKE '_e%';

DROP TABLE emp;