delimiter //
CREATE TRIGGER t1
AFTER INSERT ON emp
FOR EACH ROW
BEGIN
	SET @count = 'record added';
END //
delimiter ;

INSERT INTO emp VALUES(6,'user6',6000,102);
SELECT @count;

delimiter //
CREATE TRIGGER t2
AFTER DELETE ON emp
FOR EACH ROW
BEGIN
	SET @count = 'record deleted';
END //
delimiter ;

DELETE FROM emp WHERE empid = 6;
select @count;

delimiter //
CREATE TRIGGER t3
AFTER UPDATE ON emp
FOR EACH ROW
BEGIN
	SET @count = 'record updated';
END //
delimiter ;

UPDATE emp SET sal = 6000 WHERE empid = 5;
select @count;
