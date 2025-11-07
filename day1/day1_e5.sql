use dona;

CREATE TABLE members(memberid int, membername varchar(20), category varchar(20));
CREATE TABLE transaction(orderid int, memberid int);

INSERT INTO members VALUES (1,'user1','admin'),(2,'user2','guest'),(3,'user3','admin'),(4,'user4','admin');
INSERT INTO transaction VALUES (101,1),(102,1),(103,2),(104,3),(105,1);

SELECT * FROM transaction;
SELECT membername FROM members WHERE category = 'guest' AND memberid IN (SELECT memberid FROM transaction);
SELECT membername FROM members WHERE memberid = (SELECT memberid FROM transaction WHERE orderid = 104);
SELECT count(memberid) FROM members WHERE category = 'admin' AND memberid NOT IN (SELECT memberid FROM transaction);
SELECT count(memberid) FROM transaction WHERE memberid = (SELECT memberid FROM members WHERE membername = 'user1');