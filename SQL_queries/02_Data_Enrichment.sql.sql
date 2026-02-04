-- STEP 3: Add new columns for demographic analysis
ALTER TABLE hiring_data 
ADD COLUMN gender TEXT, 
ADD COLUMN education TEXT;

-- STEP 4: Populate 'gender' column using probabilistic distribution
UPDATE hiring_data
SET gender = CASE 
    WHEN random() < 0.45 THEN 'Female'
    WHEN random() < 0.90 THEN 'Male'
    ELSE 'Non-binary' 
END;

-- STEP 5: Populate 'education' column using probabilistic distribution
UPDATE hiring_data
SET education = CASE 
    WHEN random() < 0.60 THEN 'Bachelors'
    WHEN random() < 0.30 THEN 'Masters'
    ELSE 'PhD' 
END;