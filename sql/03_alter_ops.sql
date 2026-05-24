ALTER TABLE "Patient" ADD COLUMN "Emergency_Contact" varchar;

ALTER TABLE "Appointment" ALTER COLUMN "Status_ID" SET DEFAULT 0;

ALTER TABLE "Billing" ADD CONSTRAINT check_min_bill CHECK ("Total_Amount" >= 50) NOT VALID;
