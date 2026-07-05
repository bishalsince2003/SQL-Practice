CREATE DATABASE hospital;
USE hospital;

CREATE TABLE province_names (
    province_id CHAR(2) PRIMARY KEY,
    province_name VARCHAR(30)
);

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender CHAR(1),
    birth_date DATE,
    city VARCHAR(30),
    province_id CHAR(2),
    allergies VARCHAR(80),
    height DECIMAL(3,0),
    weight DECIMAL(4,0),

    FOREIGN KEY (province_id)
        REFERENCES province_names(province_id)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    specialty VARCHAR(25)
);

CREATE TABLE admissions (
    patient_id INT,
    admission_date DATE,
    discharge_date DATE,
    diagnosis VARCHAR(50),
    attending_doctor_id INT,

    FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    FOREIGN KEY (attending_doctor_id)
        REFERENCES doctors(doctor_id)
);

USE hospital;

-- Province Names
INSERT INTO province_names VALUES
('BR', 'Bihar'),
('DL', 'Delhi'),
('MH', 'Maharashtra'),
('UP', 'Uttar Pradesh'),
('WB', 'West Bengal');

-- Patients
INSERT INTO patients
(patient_id, first_name, last_name, gender, birth_date, city, province_id, allergies, height, weight)
VALUES
(1, 'Rahul', 'Kumar', 'M', '1999-05-12', 'Patna', 'BR', 'Dust', 175, 72),
(2, 'Priya', 'Sharma', 'F', '2001-09-18', 'Delhi', 'DL', 'Peanuts', 162, 55),
(3, 'Aman', 'Singh', 'M', '1998-11-03', 'Lucknow', 'UP', NULL, 180, 81),
(4, 'Sneha', 'Das', 'F', '2000-07-25', 'Kolkata', 'WB', 'Pollen', 160, 58),
(5, 'Rohit', 'Patil', 'M', '1997-01-15', 'Mumbai', 'MH', NULL, 178, 75),
(6, 'Anjali', 'Verma', 'F', '2002-02-20', 'Patna', 'BR', 'Milk', 158, 52),
(7, 'Vikas', 'Yadav', 'M', '1996-10-11', 'Delhi', 'DL', NULL, 172, 70),
(8, 'Neha', 'Gupta', 'F', '1995-06-08', 'Lucknow', 'UP', 'Dust', 165, 60);

-- Doctors
INSERT INTO doctors
(doctor_id, first_name, last_name, specialty)
VALUES
(101, 'Amit', 'Sinha', 'Cardiology'),
(102, 'Neha', 'Kapoor', 'Neurology'),
(103, 'Rakesh', 'Jain', 'Orthopedics'),
(104, 'Pooja', 'Mehta', 'Dermatology'),
(105, 'Arvind', 'Roy', 'General Medicine');

-- Admissions
INSERT INTO admissions
(patient_id, admission_date, discharge_date, diagnosis, attending_doctor_id)
VALUES
(1, '2025-01-10', '2025-01-15', 'Fever', 105),
(2, '2025-02-02', '2025-02-06', 'Migraine', 102),
(3, '2025-02-12', '2025-02-20', 'Fracture', 103),
(4, '2025-03-01', '2025-03-04', 'Skin Allergy', 104),
(5, '2025-03-18', '2025-03-24', 'Heart Disease', 101),
(6, '2025-04-05', '2025-04-08', 'Viral Fever', 105),
(7, '2025-04-18', '2025-04-25', 'Back Pain', 103),
(8, '2025-05-10', '2025-05-15', 'Migraine', 102),
(1, '2025-06-01', '2025-06-04', 'Chest Pain', 101),
(3, '2025-06-20', '2025-06-25', 'High Fever', 105);