CREATE database sorol;
show databases;
use sorol;

DROP TABLE student;
CREATE TABLE student (
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20),
	DOB DATE
);
Desc stundent;
SELECT*FROM student;

INSERT INTO student(name, major, DOB) VALUES('Jack', 'Biology', "2001-05-23");
INSERT INTO student(name, major, DOB) VALUES('Morris', 'CHEMISTRY', "2001-01-13");
INSERT INTO student(name, major, DOB) VALUES('Mark', 'ENGLISH', "2004-09-15");
INSERT INTO student(name, major, DOB) VALUES('Joan', 'MATH', "2000-07-26");
INSERT INTO student(name, major, DOB) VALUES('James', 'BIOLODY', "2002-02-14");
INSERT INTO student(name, major, DOB) VALUES('Cathy', 'MATH', "2001-12-25");
INSERT INTO student(name, major, DOB) VALUES('Kevin', 'Biology', "2005-08-16");



