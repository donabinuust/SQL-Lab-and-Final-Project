USE dona;
CREATE TABLE students(rollno int, studentname varchar(20));
CREATE TABLE courses(courseno varchar(20), coursename varchar(20), fee int);
CREATE TABLE courseenrolled(rollno int, courseno varchar(20));

INSERT INTO students VALUES (1,'john'), (2,'prakash'), (3,'mano'), (4,'raghav'), (5,'kumar');
INSERT INTO courses VALUES ('001','dos',1500), ('002','mswindows',2000),('003','c++',3000),('004','c',2000),('005','java',3000),('006','oracle',4000);
INSERT INTO courseenrolled VALUES (1,'001'),(1,'004'),(2,'003'),(5,'006');

SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM courseenrolled;

SELECT c.coursename FROM courses c WHERE c.courseno IN (SELECT ce.courseno FROM courseenrolled ce WHERE ce.rollno = (SELECT s.rollno FROM students s WHERE s.studentname = 'john'));
SELECT coursename FROM courses WHERE fee>3500;
SELECT coursename FROM courses WHERE courseno NOT IN (SELECT courseno FROM courseenrolled);
SELECT fee FROM courses WHERE courseno = '004';
SELECT count(courseno) FROM courseenrolled WHERE rollno = (SELECT rollno FROM students WHERE studentname = 'prakash');
SELECT coursename FROM courses WHERE courseno IN (SELECT courseno FROM courseenrolled);
-- SELECT s.studentname FROM students s WHERE (s.rollno IN (SELECT ce.rollno FROM courseenrolled ce) AND 1<(SELECT count(ce.rollno) FROM courseenrolled ce WHERE s.rollno = ce.rollno));
SELECT studentname FROM students WHERE rollno IN (SELECT rollno FROM courseenrolled GROUP BY rollno HAVING count(rollno)>1);
SELECT studentname FROM students WHERE rollno IN (SELECT rollno FROM courseenrolled WHERE courseno = (SELECT courseno FROM courses WHERE coursename = 'oracle'));

DROP TABLE students;
DROP TABLE courses;
DROP TABLE courseenrolled;