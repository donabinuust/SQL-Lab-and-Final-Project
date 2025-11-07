USE sqldemo;
DROP TABLE employee;
DROP TABLE dept;

CREATE TABLE employee(empid int, empname varchar(20),deptid int, salary int);
CREATE TABLE dept(deptid int, deptname varchar(20));

INSERT INTO employee VALUES(1,'john',101,1000),(2,'mano',102,2000),(3,'prakash',101,3000),(4,'venu',102,4500),(5,'abirami',101,5000);
INSERT INTO dept VALUES (101,'hr'),(102,'testing'),(103,'development'),(104,'accounts');

-- 1
SELECT empname FROM employee WHERE deptid = (SELECT deptid FROM dept WHERE deptname = 'testing');
-- 2
SELECT count(empid) FROM employee WHERE deptid = (SELECT deptid FROM dept WHERE deptname = 'accounts');
-- 3
SELECT deptname FROM dept WHERE deptid = (SELECT deptid FROM employee WHERE empname = 'john');
-- 4
SELECT deptname FROM dept WHERE deptid = (SELECT deptid FROM employee WHERE salary = (SELECT max(salary) FROM employee));
-- 5
SELECT deptname FROM dept WHERE deptid = (SELECT deptid FROM employee WHERE salary = (SELECT min(salary) FROM employee));
-- 6
SELECT deptname FROM dept WHERE deptid = (SELECT deptid FROM employee GROUP BY deptid ORDER BY count(empid) DESC LIMIT 1);
-- 7
SELECT deptname FROM dept WHERE deptid NOT IN (SELECT deptid FROM employee);
-- 8
SELECT empname FROM employee WHERE deptid != (SELECT deptid FROM dept WHERE deptname = 'hr');
-- 9
SELECT empname FROM employee WHERE salary = (SELECT salary FROM employee ORDER BY salary DESC LIMIT 1,1);
-- 10
SELECT empname FROM employee WHERE salary>(SELECT salary FROM employee WHERE empname = 'mano');
-- 11
SELECT e.empid, e.empname, d.deptname FROM employee e LEFT JOIN dept d ON e.deptid = d.deptid;
-- 12
SELECT deptid,deptname FROM dept WHERE deptid NOT IN (SELECT deptid FROM employee);