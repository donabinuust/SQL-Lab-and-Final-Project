DROP PROCEDURE p1;
delimiter //
CREATE PROCEDURE p1()
BEGIN
	SELECT 'hi user';
END //
delimiter ;
CALL p1;

DROP PROCEDURE p2;
delimiter //
CREATE PROCEDURE p2(a int, b int)
BEGIN
	SELECT 'sum is ' + (a+b);
END //
delimiter ;
CALL p2(2,5);

DROP PROCEDURE p3;
delimiter //
CREATE PROCEDURE p3(a int, b int, out c int)
BEGIN
	SET c =a+b;
END //
delimiter ;
CALL p3(5,6,@output);
SELECT @output;

DROP PROCEDURE p4;
delimiter //
CREATE PROCEDURE p4(in id int)
BEGIN
	SELECT empname FROM emp WHERE empid = id;
END //
delimiter ;
call p4(1);