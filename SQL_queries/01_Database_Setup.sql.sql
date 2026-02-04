-- STEP 1: Remove the table if it already exists to avoid errors
DROP TABLE IF EXISTS hiring_data;

-- STEP 2: Create the table with TEXT types to ensure a smooth CSV import
-- This "Text-First" strategy prevents data-type mismatch errors
CREATE TABLE hiring_data (
    candidateid TEXT,
    applicationdate TEXT,
    position TEXT,
    source TEXT,
    status TEXT,
    interviewdate TEXT,
    offerdate TEXT,
    hireddate TEXT,
    rejecteddate TEXT,
    recruiter TEXT,
    timetohire TEXT,
    offeraccepted TEXT,
    hirecost TEXT,
    performancerating TEXT,
    candidatenps TEXT,
    recruitmentsitevisits TEXT,
    socialmentions TEXT
);

-- NOTE: After running this, use the pgAdmin Import Tool to load 'hiring.csv'