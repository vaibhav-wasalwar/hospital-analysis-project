-- =============================================
-- Hospital Operations & Patient Flow Analytics
-- SQL KPI Queries
-- =============================================

CREATE DATABASE hospital_db;

USE hospital_db;

-- Create patients table
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    blood_type VARCHAR(5),
    phone VARCHAR(15),
    city VARCHAR(50)
);

-- Create admissions table
CREATE TABLE admissions (
    admission_id INT PRIMARY KEY,
    patient_id INT,
    admission_date DATE,
    discharge_date DATE,
    department VARCHAR(50),
    doctor_name VARCHAR(100),
    room_number INT,
    medical_condition VARCHAR(100),
    billing_amount DECIMAL(10,2),
    insurance_covered DECIMAL(10,2),
    admission_type VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- ---------------------------------------------
-- Query 1: Total Patients
-- Purpose: Get overall count of patients
-- ---------------------------------------------
SELECT
    COUNT(*) AS total_patients
FROM patients;

-- ---------------------------------------------
-- Query 2: Average Length of Stay by Department
-- Purpose: Find how long patients stay in each department
-- ---------------------------------------------
SELECT
    department,
    ROUND(AVG(DATEDIFF(discharge_date, admission_date)), 1)
        AS avg_stay_days
FROM admissions
GROUP BY department
ORDER BY avg_stay_days DESC;

-- ---------------------------------------------
-- Query 3: Total Patients per Department
-- Purpose: Find which department is busiest
-- ---------------------------------------------
SELECT
    department,
    COUNT(*) AS total_patients
FROM admissions
GROUP BY department
ORDER BY total_patients DESC;

-- ---------------------------------------------
-- Query 4: Average Billing per Medical Condition
-- Purpose: Find which disease costs the most to treat
-- ---------------------------------------------
SELECT
    medical_condition,
    ROUND(AVG(billing_amount), 2) AS avg_billing,
    COUNT(*) AS total_cases
FROM admissions
GROUP BY medical_condition
ORDER BY avg_billing DESC;

-- ---------------------------------------------
-- Query 5: Monthly Admission Trend
-- Purpose: See which months have most admissions
-- ---------------------------------------------
SELECT
    DATE_FORMAT(admission_date, '%Y-%m') AS month,
    COUNT(*) AS total_admissions
FROM admissions
GROUP BY month
ORDER BY month;

-- ---------------------------------------------
-- Query 6: Gender wise Patient Distribution
-- Purpose: Find male vs female patient ratio
-- ---------------------------------------------
SELECT
    p.gender,
    COUNT(*) AS total_patients,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM patients),
        1
    ) AS percentage
FROM patients p
GROUP BY p.gender;

-- ---------------------------------------------
-- Query 7: Top 5 Doctors by Patient Count
-- Purpose: Find most busy doctors
-- ---------------------------------------------
SELECT
    doctor_name,
    COUNT(*) AS total_patients,
    ROUND(AVG(billing_amount), 2) AS avg_billing
FROM admissions
GROUP BY doctor_name
ORDER BY total_patients DESC
LIMIT 5;

-- ---------------------------------------------
-- Query 8: Create View for Power BI
-- Purpose: Combine patients + admissions into
--          one clean dataset for dashboard
-- ---------------------------------------------
CREATE VIEW vw_patient_summary AS
SELECT
    a.admission_id,
    p.name,
    p.age,
    p.gender,
    p.blood_type,
    p.city,
    a.department,
    a.doctor_name,
    a.medical_condition,
    a.admission_type,
    a.billing_amount,
    a.insurance_covered,
    a.admission_date,
    a.discharge_date,
    DATEDIFF(
        a.discharge_date,
        a.admission_date
    ) AS length_of_stay
FROM admissions a
JOIN patients p
    ON a.patient_id = p.patient_id;

-- ---------------------------------------------
-- Query 9: Verify the View
-- Purpose: Check first 5 rows of the view
-- ---------------------------------------------
SELECT *
FROM vw_patient_summary
LIMIT 5;