CREATE DATABASE shop;
show databases;
use shop;
DROP TABLE product;
SELECT*FROM product;
CREATE TABLE product(pdtID int primary key, productname varchar(20) NOT NULL, price int, stockqty varchar(20));
INSERT INTO product()
VALUES
(1,"RICE",20000,4),
(2,"MATOOKE",6000,8),
(3,"SALT",1000,5),
(4,"JELLY",1000,5);

CREATE TABLE customer(
customerID int primary key,
Name varchar(50) NOT NULL,
email varchar(40) UNIQUE,
pdtID int,
FOREIGN KEY(pdtID) REFERENCES product(pdtID));

Desc customer;
DROP TABLE customer;
SELECT*FROM customer;
INSERT INTO customer VALUES
(1,"Mukisa Emmanuel","mukisae44@gmail.com",1),
(2,"Mukisa Joel","mukisjoel@gmail.com",1),
(3,"Mugusha Amos","mugisha001@gmailcom",4),
(4,"Nalule Esther","naluleessie@gmail.com",1);

update customer set Name = "Mark Morris" where customerID=2;
ALTER table product add column paymentmode varchar(40);