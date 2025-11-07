CREATE TABLE testindex(id int PRIMARY KEY, fname VARCHAR(20));
INSERT INTO testindex VALUES (1,'user1'), (2,'user2'),(3,'user3');
SELECT * FROM testindex;
SHOW INDEX FROM testindex;
CREATE INDEX myindex ON testindex(fname);