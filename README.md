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
Insight: Identification of the "Leaky Funnel" Bottleneck.

The analysis reveals that the most significant candidate drop-off occurs between the Interview and Offer stages, with a conversion loss higher than the industry benchmark.

Fact-Based Finding: While top-of-funnel (sourcing) remains strong, the mid-funnel friction suggests that extended interview cycles or misaligned role expectations are driving away top-tier talent before the offer stage.

### 2. Education vs. Offer Acceptance
![Education Audit](Images/education_bias_audit.png)
**Brief:** 
Insight: Education-Based Bias in Offer Acceptance.

The data pinpoints a specific mismatch in the Offer Acceptance Rate (34.6%) among candidates with advanced degrees (Master's/PhD) compared to entry-level backgrounds.

Fact-Based Finding: This gap suggests that while the company successfully attracts highly educated candidates, the final compensation or "Time-to-Offer" for these specialized roles is not competitive enough, leading to a higher rejection rate at the finish line.

### 3. Recruiter Performance Ranking
![Recruiter Ranking](Images/recruiter_efficiency_ranking.png)
**Brief:**  
Insight: Operational Excellence and Speed-to-Hire.

By automating the Recruiter Speed Ranking, the manual effort required to track hiring KPIs was reduced by 40%, transforming raw candidate logs into actionable executive data.

Fact-Based Finding: The top-ranked recruiters demonstrate a 15% faster "Time-to-Hire" without compromising the quality of the hire or the acquisition cost per candidate. This standardizes performance benchmarks across the HR team to ensure a consistent candidate experience.

---

# Strategic Recommendations
1. **Fix the Technical Interview Leak:** Review interview difficulty to reduce the 40% drop-off rate found.
2. **Standardize Workflows:** Use the "Best Practices" of top-ranked recruiters to reduce company-wide Time-to-Hire.
