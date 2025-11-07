use sqldemo;

CREATE TABLE emp(empid int, empname varchar(20), sal int, deptid int);
CREATE TABLE dept(deptid int, deptname varchar(20));

INSERT INTO emp VALUES (101,'John',10000,1), (102,'Prakash',25000,2), (103,'Gowri',12000,2), (104,'Krishnan',15000,1), (105,'Kumar',28000,3);
INSERT INTO dept VALUES (1,'hr'), (2,'testing'), (3, 'development'), (4, 'accounts'), (5,'admin');

SELECT deptname from dept WHERE deptid = (SELECT deptid from emp WHERE empname = 'Prakash');
SELECT count(empid) FROM emp WHERE deptid = (SELECT deptid FROM dept WHERE deptname = 'hr');
SELECT empname FROM emp WHERE sal = (SELECT max(sal) FROM emp GROUP BY deptid HAVING deptid = (SELECT deptid FROM dept WHERE deptname = 'testing'));
SELECT deptname FROM dept WHERE deptid NOT IN (SELECT deptid FROM emp);
SELECT empname,deptid FROM emp e1 WHERE sal<(SELECT avg(sal) FROM emp e2 WHERE e1.deptid = e2.deptid) ORDER BY deptid;
SELECT empname,deptid FROM emp e1 WHERE sal = (SELECT max(sal) FROM emp e2 WHERE e1.deptid = e2.deptid) ORDER BY deptid;
SELECT deptname FROM dept WHERE deptid IN (SELECT deptid FROM emp WHERE empname IN ('Krishnan', 'Kumar'));
SELECT empname FROM emp WHERE sal>12000 and deptid = (SELECT deptid FROM dept WHERE deptname = 'hr');