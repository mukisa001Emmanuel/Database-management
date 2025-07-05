CREATE DATABASE UCUstudentsacademicrecords;
show databases;
use UCUstudentsacademicrecords;
DROP TABLE students;
CREATE TABLE students(
student_id int PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
gender VARCHAR(10),
dob DATE UNIQUE,
email VARCHAR(15),
program VARCHAR(20) NOT NULL,
year_of_study VARCHAR(10)
);
show tables;
Desc students;
SELECT * FROM students;
insert into students(student_id,first_name,last_name,gender,dob,email,program,year_of_study) values(1,"Mukisa","Emmanuel","male",20/05/2001,"mukisae44@gmail.com","bsit",2025);
insert into students(student_id,first_name,last_name,gender,dob,email,program,year_of_study) values(2,"Mark","Morris","male",13/05/2003,"markmorris@gmail.com","bsit",2025);
insert into students(student_id,first_name,last_name,gender,dob,email,program,year_of_study) values(3,"Mukisa","Joel","male",20/06/2000,"mukisajoel@gmail.com","bsit",2025);

CREATE TABLE courses(
course_id int PRIMARY KEY,
course_name VARCHAR(80) NOT NULL,
credit_units int NOT NULL,
instructor VARCHAR(50)
);

CREATE TABLE registrations(
registration_id int PRIMARY KEY,
student_id int,
course_id int,
academic_year VARCHAR(15),
semester ENUM('1','2') NOT NULL,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE grades(
grade_id int PRIMARY KEY,
registration_id int,
marks int,
grade VARCHAR(100),
FOREIGN KEY (registration_id) REFERENCES registration (registration_id)
);

INSERT INTO courses VALUES
(1,"Database",4,"Tonny Kimomose"),
(2,"writing skills",3,"Evelyn Nalujja"),
(3,"structured programming",4,"kenneth Musasizi"),
(4,"fundamentals of computing",4,"Kenneth Ogwok"),
(5,"essential hardware and software concepts",4,"Nakayima Olivia");

INSERT INTO registrations VALUES
(1,1,1,"2025",1),
(2,2,4,"2025",1),
(3,3,3,"2025",1),
(4,4,5,"2025",1),
(5,5,3,"2025",1),
(6,6,4,"2025",1),
(7,7,3,"2025",1),
(8,8,2,"2025",1),
(9,9,1,"2025",1),
(10,10,2,"2025",1),
(11,11,4,"2025",1),
(12,12,5,"2025",1),
(13,13,5,"2025",1),
(14,14,3,"2025",1),
(15,15,"2025",1),
(16,16,4,"2025",1),
(17,17,3,"2025",1),
(18,18,1,"2025",1),
(19,19,5,"2025",1),
(20,20,5,"2025",1);

INSERT INTO grades VALUES
(1,1,95,"A"),
(2,2,55,"C"),
(3,3,74,"B"),
(4,4,85,"A"),
(5,5,34,"F"),
(6,6,50,"D");










