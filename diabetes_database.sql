DROP DATABASE IF EXISTS diabetes_db;
CREATE DATABASE diabetes_db;

USE diabetes_db;

CREATE TABLE patients (
   
   patient_id INT PRIMARY KEY AUTO_INCREMENT,
   diabetes_id INT NOT NULL,
   patient_age INT NOT NULL,
   patient_BMI FLOAT NOT NULL,
   patient_waist_circumference FLOAT NOT NULL,
   patient_birth_weight FLOAT NOT NULL
   FOREIGN KEY (diabetes_id) REFERENCES diabetes(diabetes_id),
);

CREATE TABLE diabetes (

    diabetes_id INT PRIMARY KEY AUTO_INCREMENT,
    diabetes_name VARCHAR(255),
    diabetes_early_onset_symptoms VARCHAR(255)
);

CREATE TABLE patients_diabetes (

    patient_diabetes_id PRIMARY KEY AUTO AUTO_INCREMENT,
    patient_id INT,
    diabetes_id INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (diabetes_id) REFERENCES diabetes(diabetes_id),

);