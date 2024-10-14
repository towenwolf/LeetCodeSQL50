USE sbx
GO

IF OBJECT_ID('dbo.Patients', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Patients;
END

CREATE TABLE dbo.Patients (
    -- Column definitions here
    patient_id int, patient_name varchar(30), conditions varchar(100)
);

insert into Patients (patient_id, patient_name, conditions) values ('1', 'Daniel', 'YFEV COUGH')
insert into Patients (patient_id, patient_name, conditions) values ('2', 'Alice', '')
insert into Patients (patient_id, patient_name, conditions) values ('3', 'Bob', 'DIAB100 MYOP')
insert into Patients (patient_id, patient_name, conditions) values ('4', 'George', 'ACNE DIAB100')
insert into Patients (patient_id, patient_name, conditions) values ('5', 'Alain', 'DIAB201')