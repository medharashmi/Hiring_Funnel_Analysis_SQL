
-- BUSINESS ANALYSIS QUERIES --

Q1: Total applications received per job position
SELECT position, COUNT(*) AS total_applications
FROM hiring_data
GROUP BY position ORDER BY total_applications DESC;

Q2: Most successful recruitment sources for 'Hired' candidates
SELECT source, COUNT(*) AS hired_count
FROM hiring_data
WHERE status = 'Hired'
GROUP BY source ORDER BY hired_count DESC;

Q3: Recruiter workload and average candidate performance
SELECT recruiter, COUNT(*) AS candidates_managed,
ROUND(AVG(performancerating::NUMERIC), 2) AS avg_candidate_performance
FROM hiring_data
GROUP BY recruiter ORDER BY candidates_managed DESC;

Q4: Distribution of Education levels in the applicant pool
SELECT education, COUNT(*) AS total_count,
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hiring_data), 2) AS percentage
FROM hiring_data
GROUP BY education;

Q5: Average Hire Cost per Position (Financial Analysis)
SELECT position, ROUND(AVG(hirecost::NUMERIC), 2) AS avg_hire_cost
FROM hiring_data
GROUP BY position ORDER BY avg_hire_cost DESC;

Q6: Funnel Drop-off Analysis using CTE and Window Functions
WITH funnel_stages AS (
    SELECT status, COUNT(*) AS stage_count
    FROM hiring_data
    GROUP BY status
)
SELECT status, stage_count,
LAG(stage_count) OVER (ORDER BY stage_count DESC) AS previous_stage,
ROUND((1 - stage_count::FLOAT / NULLIF(LAG(stage_count) OVER (ORDER BY stage_count DESC), 0)) * 100, 2) AS drop_off_pct
FROM funnel_stages;

Q7: Diversity Audit - Average Acquisition Cost by Gender
SELECT gender, ROUND(AVG(hirecost::NUMERIC), 2) AS avg_cost
FROM hiring_data
GROUP BY gender;

Q8: Offer Acceptance Rate by Education (Bias Analysis)
SELECT education, 
COUNT(*) FILTER (WHERE offeraccepted = 'True') AS accepted,
COUNT(*) AS total_offers,
ROUND(COUNT(*) FILTER (WHERE offeraccepted = 'True')::NUMERIC / COUNT(*) * 100, 2) AS acceptance_rate
FROM hiring_data
WHERE status IN ('Offered', 'Hired')
GROUP BY education;

Q9: Recruiter Speed Ranking using RANK() Window Function
SELECT recruiter, AVG(timetohire::INTEGER) AS avg_days,
RANK() OVER (ORDER BY AVG(timetohire::INTEGER) ASC) AS speed_rank
FROM hiring_data
WHERE timetohire IS NOT NULL
GROUP BY recruiter;

Q10: Interview-to-Hire Conversion Rate per Role
SELECT position,
COUNT(*) FILTER (WHERE status = 'Interviewed') AS interviews,
COUNT(*) FILTER (WHERE status = 'Hired') AS hires,
ROUND(COUNT(*) FILTER (WHERE status = 'Hired')::NUMERIC / 
      NULLIF(COUNT(*) FILTER (WHERE status = 'Interviewed'), 0) * 100, 2) AS conv_rate
FROM hiring_data
GROUP BY position;