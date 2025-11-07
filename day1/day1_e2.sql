CREATE DATABASE dona;
CREATE TABLE students(rollno int, studentname varchar(20), age int);
DESC students;
ALTER TABLE students ADD dept varchar(20);
DESC students;

ALTER TABLE students RENAME COLUMN rollno TO id;
INSERT INTO students VALUES(1, 'user1', 22, 'testing');
INSERT INTO students VALUES(2, 'user2', 23, 'dev');
INSERT INTO students VALUES(3, 'user3', 21, 'hr');
SELECT * FROM students;

ALTER TABLE students ADD mobileno BIGINT;
-- INSERT INTO students(mobileno) VALUES(8156954180, 8156954180,8156954180);
UPDATE students SET mobileno = 8156954180 WHERE id = 1;
UPDATE students SET mobileno = 8156897780 WHERE id = 2;
UPDATE students SET mobileno = 8157264110 WHERE id = 3;
SELECT * FROM students;

ALTER TABLE students DROP COLUMN age;
UPDATE students SET dept = 'development' WHERE dept = 'dev';
UPDATE students SET dept = 'human resource' WHERE dept = 'hr';
SELECT * FROM students;