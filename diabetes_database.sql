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

CREATE TABLE external_factors (

    factor_id PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    physical_activity VARCHAR(255),
    dietary_habits VARCHAR(255),
    socioeconomic_factors VARCHAR(255),
    environmental_factors VARCHAR(255),
    alcohol_consumption VARCHAR(255),
    smoking_status VARCHAR(255) 

)

CREATE TABLE genetics (

    genetic_id PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    patient_race VARCHAR(255),
    patient_ethnicity VARCHAR(255),
    genetic_markers VARCHAR(255),
    family_history VARCHAR(255),
    cystic_fibrosis_diagnosis VARCHAR(255)

)

CREATE TABLE tests (

    test_id PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    blood_pressure INT,
    blood_glucose_levels INT,
    cholesterol_levels INT,
    autoantibodies VARCHAR(255),
    glucose_tolerance_test VARCHAR(255),
    urine_test VARCHAR(255),
    pulmonary_function INT,
    pancreatic_health INT,
    insulin_levels INT,
    digestive_enzyme_levels	INT

)

CREATE TABLE reproduction (

    reproductive_id PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    history_of_pcos VARCHAR(255),
    pregnancy history VARCHAR(255),
    weight_gain_during_pregnancy INT,
    previous_gestational_diabetes VARCHAR(255)

)