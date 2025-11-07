-- renaming a table
RENAME TABLE emp TO newemp;
-- adding a new column to existing table
ALTER TABLE newemp ADD deptname varchar(20);
-- dropping a column from existing table
ALTER TABLE newemp DROP deptname;
-- show all table in the database
SHOW TABLES;
-- show all databases in the system
SHOW DATABASES;
-- show the structure of the table
DESC newemp;
-- dropping a table
DROP TABLE newemp;