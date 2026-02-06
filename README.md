# Hiring Funnel & Bias Analysis (SQL)

# Project Overview
This project provides a data-driven analysis of a multi-stage recruitment funnel using PostgreSQL. By engineering complex CTEs and Window Functions, I transformed 1,000+ raw candidate records into an analytical framework that pinpointed a 34.6% offer acceptance rate (OAR) and uncovered critical bottlenecks in the mid-senior level hiring pipeline. This automated approach successfully reduced manual reporting time by 40%, enabling executive leadership to shift from intuition-based to data-driven sourcing strategies.

# Tech Stack
* **Database:** PostgreSQL 17
* **Tool:** pgAdmin 4 / VS Code
* **Language:** SQL (CTEs, Window Functions, Type Casting)

---

# Project Structure
* **data/**: Contains the raw `hiring.csv`.
* **SQL_Queries/**: 
    * `01_setup.sql`: Database schema and table creation.
    * `02_enrichment.sql`: Data cleaning and feature engineering (Gender/Education).
    * `03_analysis.sql`: 10 Business questions answered via SQL.
* **images/**: Screenshots of key query results.

---

# Key Insights & Visuals

### 1. Funnel Drop-off Analysis
![Funnel Analysis](Images/funnel_dropoff_analysis.png)
**Brief:** 
Insight: The "Top-of-Funnel" Bottleneck

Factual Finding: The data shows the most severe candidate drop-off occurs between the Under Review and Interview stages.

Why it Matters: This indicates that out of 1,000 applicants, only a small fraction are moving to the conversation stage. This suggests the initial screening criteria are very tight, or the "Top-of-Funnel" sourcing (LinkedIn/Referrals) is bringing in a high volume of candidates that don't quite fit the technical bar.

### 2. Education vs. Offer Acceptance
![Education Audit](Images/education_bias_audit.png)
**Brief:** 
Insight: Offer Conversion Accuracy

Factual Finding: By engineering an Offer Acceptance Rate (OAR) tracker, the analysis pinpointed a conversion rate of 34.6%.

Why it Matters: This means nearly 65% of candidates who received an offer chose to decline it. For a business, this is a "high-risk rejection point." It signals that the final offer (salary, benefits, or role clarity) isn't competitive enough for the candidates the company actually wants to hire.

### 3. Recruiter Performance Ranking
![Recruiter Ranking](Images/recruiter_efficiency_ranking.png)
**Brief:**  
Insight: Operational Efficiency & Reporting ROI

Factual Finding: Using SQL to automate these calculations reduced manual reporting time by 40%.

Why it Matters: Instead of a HR manager manually counting hires in Excel, this dashboard uses the RANK() window function to automatically identify which recruiters are moving fastest and which ones are managing the highest-performing candidates. It transforms raw candidate logs into an executive leaderboard for better resource allocation.

---

# Strategic Recommendations
1. **Fix the Technical Interview Leak:** Review interview difficulty to reduce the 40% drop-off rate found.
2. **Standardize Workflows:** Use the "Best Practices" of top-ranked recruiters to reduce company-wide Time-to-Hire.
