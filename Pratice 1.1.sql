#1.1 
CREATE TABLE Addressbook
(regist_no INTEGER NOT NULL PRIMARY KEY,
 name VARCHAR(128) NOT NULL,
 address VARCHAR(256) NOT NULL,
 tel_no CHAR(10) ,
 mail_address CHAR(20));
 
 #1.2
 ALTER TABLE Addressbook ADD COLUMN postal_code CHAR(8) NOT NULL;
 
 #1.3
 DROP TABLE Addressbook;
 
 #1.4
 #Cannot recover droped table using SQL