CREATE DATABASE MOH;
SHOW DATABASES;
USE MOH;

CREATE TABLE patients(
patientID int PRIMARY KEY,
patient_name varchar(80) not null,
Yearofbirth DATE,
contact varchar(20),

resindence varchar(30)
);

CREATE  TABLE charges(
chargeID int PRIMARY KEY,
test_charge int,
blood_charge int,
Doctor_charge int
);

CREATE TABLE doctors(
doctorID int primary key auto_increment,
doctor_name varchar(50) UNIQUE,
specitiality varchar(30)
);

CREATE TABLE appointment(
appointmentID int PRIMARY KEY,
patientID int,
doctorID int,
appointment_date DATE,
appointment_time time,
FOREIGN KEY (patientID) references patients(patientID),
FOREIGN KEY (doctorID) references doctors(doctorID)
);

SELECT *FROM patients;
INSERT INTO patients VALUES
(1,"MUKISA EMMANUEL","2001/03/15","0773909077","MUKONO"),
(2,"NALULE JOAN","2003/04/22","077390576","JINJA"),
(3,"MARK MORRIS","2001/06/18","0756904077","NANSANA");

INSERT INTO charges VALUES
(1,5000,20000,15000),
(2,6000,21000,15000);

INSERT INTO doctors VALUES
(1,"DR KISIMOSE TONNY","EARS"),
(2,"DR KIZZA MARK","THROAT"),
(3,"DR NANKYA GIFT","NUTRITIONIST"),
(4,"DR ELUCU RITAH","GENERAL DOCTOR");

SELECT*FROM appointment;
INSERT INTO appointment VALUES
(1,1,1,"2025/06/14","9:00"),
(2,2,3,"2025/06/16","12:00"),
(3,3,2,"2025/06/18","10:00");

ALTER TABLE patients add column Address varchar(40);
UPDATE patients set Address = "Wadengeya road" where patientID=1;
UPDATE patients set Address = "BISHOP TUCKER" where patientID = 2;
ALTER TABLE patients rename column patient_name to patienz_name;


SELECT *
FROM appointment;

SELECT patienz_name,Yearofbirth
FROM patients
LIMIT 2;

SELECT COUNT(*) total_patients
FROM patients;

SELECT*
FROM patients
WHERE patienz_name LIKE 'M%';

SELECT*
FROM patients
WHERE Yearofbirth >1990;

SELECT patienz_name, (2025/07/08 - Yearofbirth) as current_age
FROM patients;