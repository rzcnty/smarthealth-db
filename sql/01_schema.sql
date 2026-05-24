-- SQL dump generated using DBML (dbml.dbdiagram.io)
-- Database: PostgreSQL

CREATE TABLE "Hospital" (
  "Hospital_ID" int PRIMARY KEY,
  "Hospital_Name" varchar,
  "Address_Country" varchar,
  "Address_City" varchar,
  "Address_District" varchar,
  "Address_Street" varchar,
  "Address_Building_No" varchar,
  "Address_Zip_Code" varchar,
  "Contact_Number" varchar
);

CREATE TABLE "Disease" (
  "Disease_ID" int PRIMARY KEY,
  "Disease_Name" varchar,
  "Disease_Type" varchar
);

CREATE TABLE "Disease_Symptom" (
  "Disease_ID" int REFERENCES "Disease" ("Disease_ID"),
  "Symptom_Name" varchar,
  PRIMARY KEY ("Disease_ID", "Symptom_Name")
);

CREATE TABLE "Insurance_Provider" (
  "Provider_ID" int PRIMARY KEY,
  "Provider_Name" varchar,
  "Tax_Number" varchar,
  "Provider_Email" varchar
);

CREATE TABLE "Person" (
  "Person_ID" int PRIMARY KEY,
  "National_ID" varchar UNIQUE,
  "Name_First_Name" varchar,
  "Name_Last_Name" varchar,
  "Date_of_Birth" date,
  "Gender" varchar,
  "Blood_Type" varchar,
  "Phone_Number" varchar,
  "Address_Country" varchar,
  "Address_City" varchar,
  "Address_District" varchar,
  "Address_Street" varchar,
  "Address_Building_No" varchar,
  "Address_Apartment_No" varchar,
  "Address_Zip_Code" varchar,
  "Email" varchar UNIQUE,
  "Password_Hash" varchar
);

CREATE TABLE "Department" (
  "Department_ID" int PRIMARY KEY,
  "Hospital_ID" int REFERENCES "Hospital" ("Hospital_ID"),
  "Department_Name" varchar,
  "Extension_Number" varchar
);

CREATE TABLE "Patient" (
  "Person_ID" int PRIMARY KEY REFERENCES "Person" ("Person_ID") 
);

CREATE TABLE "Patient_Allergy" (
  "Patient_ID" int REFERENCES "Patient" ("Person_ID"),
  "Allergy_Name" varchar,
  PRIMARY KEY ("Patient_ID", "Allergy_Name")
);

CREATE TABLE "Admin" (
  "Person_ID" int PRIMARY KEY REFERENCES "Person" ("Person_ID"),
  "Role_Level" varchar,
  "MFA_Secret" varchar NOT NULL
);

CREATE TABLE "Staff" (
  "Person_ID" int PRIMARY KEY REFERENCES "Person" ("Person_ID"),
  "Job_Title" varchar
);

CREATE TABLE "Medical_Staff" (
  "Person_ID" int PRIMARY KEY REFERENCES "Person" ("Person_ID"),
  "Department_ID" int REFERENCES "Department" ("Department_ID")
);

CREATE TABLE "Room" (
  "Department_ID" int REFERENCES "Department" ("Department_ID"),
  "Room_Number" varchar,
  "Room_Type" varchar,
  PRIMARY KEY ("Department_ID", "Room_Number")
);

CREATE TABLE "Doctor" (
  "Person_ID" int PRIMARY KEY REFERENCES "Medical_Staff" ("Person_ID"),
  "Specialty" varchar,
  "License_Number" varchar UNIQUE
);

CREATE TABLE "Doctor_Treatment" (
  "Doctor_ID" int REFERENCES "Doctor" ("Person_ID"),
  "Treatment_Name" varchar,
  PRIMARY KEY ("Doctor_ID", "Treatment_Name")
);

CREATE TABLE "Nurse" (
  "Person_ID" int PRIMARY KEY REFERENCES "Medical_Staff" ("Person_ID") 
);

CREATE TABLE "Payer" (
  "Payer_ID" int PRIMARY KEY,
  "Payer_Type" varchar CHECK ("Payer_Type" IN ('Patient', 'Insurance')),
  "Patient_ID" int REFERENCES "Patient" ("Person_ID"),
  "Provider_ID" int REFERENCES "Insurance_Provider" ("Provider_ID"),
  CONSTRAINT check_exclusive_payer CHECK (
    ("Payer_Type" = 'Patient' AND "Patient_ID" IS NOT NULL AND "Provider_ID" IS NULL) OR
    ("Payer_Type" = 'Insurance' AND "Provider_ID" IS NOT NULL AND "Patient_ID" IS NULL)
  )
);

CREATE TABLE "Insurance" (
  "Patient_ID" int REFERENCES "Patient" ("Person_ID"),
  "Provider_ID" int REFERENCES "Insurance_Provider" ("Provider_ID"),
  "Policy_Number" varchar,
  "Coverage_Rate" decimal CHECK ("Coverage_Rate" >= 0 AND "Coverage_Rate" <= 100),
  PRIMARY KEY ("Patient_ID", "Provider_ID")
);

CREATE TABLE "Patient_Disease" (
  "Patient_Person_ID" int REFERENCES "Patient" ("Person_ID"),
  "Disease_Disease_ID" int REFERENCES "Disease" ("Disease_ID"),
  PRIMARY KEY ("Patient_Person_ID", "Disease_Disease_ID")
);

CREATE TABLE "Appointment" (
  "Appointment_ID" int PRIMARY KEY,
  "Patient_ID" int REFERENCES "Patient" ("Person_ID"),
  "Doctor_ID" int REFERENCES "Doctor" ("Person_ID"),
  "Appointment_Date" date,
  "Appointment_Time" time,
  "Status_ID" int CHECK ("Status_ID" IN (0, 1, 2)),
  "Chief_Complaint" varchar
);

CREATE TABLE "Prescription" (
  "Appointment_ID" int PRIMARY KEY REFERENCES "Appointment" ("Appointment_ID"),
  "Medication_Name" varchar,
  "Dosage" varchar,
  "Instructions" varchar
);

CREATE TABLE "Lab_Result" (
  "Lab_ID" int PRIMARY KEY,
  "Appointment_ID" int REFERENCES "Appointment" ("Appointment_ID"),
  "Test_Type" varchar,
  "Result_Value" varchar,
  "Reference_Range" varchar,
  "Test_Date" date
);

CREATE TABLE "Billing" (
  "Bill_ID" int PRIMARY KEY,
  "Appointment_ID" int REFERENCES "Appointment" ("Appointment_ID"),
  "Total_Amount" decimal CHECK ("Total_Amount" >= 0),
  "Patient_Share" decimal CHECK ("Patient_Share" >= 0),
  "Payment_Status" int,
  CONSTRAINT check_share_limit CHECK ("Patient_Share" <= "Total_Amount")
);

CREATE TABLE "Payment" (
  "Payment_ID" int PRIMARY KEY,
  "Bill_ID" int REFERENCES "Billing" ("Bill_ID"),
  "Payer_ID" int REFERENCES "Payer" ("Payer_ID"),
  "Amount_Paid" decimal CHECK ("Amount_Paid" >= 0),
  "Payment_Date" timestamp
);

