/* =========================================================
   DATABASE SETUP
   ========================================================= */

CREATE DATABASE customer_churn;

USE customer_churn;


/* =========================================================
   DATA CLEANING & INITIAL CHECKS
   ========================================================= */

/* Rename incorrect column name */
ALTER TABLE churn_modelling
RENAME COLUMN `ï»¿CustomerId` TO customer_id;


/* Total number of records */
SELECT COUNT(*) AS total_records
FROM churn_modelling;


/* Total unique customers */
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM churn_modelling;


/* Check distinct churn values */
SELECT DISTINCT Exited
FROM churn_modelling;


/* Check for NULL values in important columns */
SELECT *
FROM churn_modelling
WHERE CreditScore IS NULL
   OR Age IS NULL
   OR Balance IS NULL
   OR Geography IS NULL;


/* Check for invalid or abnormal values */
SELECT * FROM churn_modelling WHERE Balance < 0;
SELECT * FROM churn_modelling WHERE Age < 18 OR Age > 100;
SELECT * FROM churn_modelling WHERE NumOfProducts < 1;


/* =========================================================
   FEATURE ENGINEERING
   ========================================================= */

/* Create Age Group classification */
SELECT *,
       CASE 
           WHEN Age < 30 THEN 'Young'
           WHEN Age < 50 THEN 'Middle'
           ELSE 'Senior'
       END AS age_group
FROM churn_modelling;


/* =========================================================
   KEY METRICS & KPIs
   ========================================================= */

/* Total customers */
SELECT COUNT(*) AS total_customers
FROM churn_modelling;


/* Total churned customers */
SELECT COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1;


/* Churn rate (%) */
SELECT 
    COUNT(CASE WHEN Exited = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM churn_modelling;


/* Average metrics */
SELECT AVG(Age) AS avg_age FROM churn_modelling;
SELECT AVG(Balance) AS avg_balance FROM churn_modelling;
SELECT AVG(CreditScore) AS avg_credit_score FROM churn_modelling;
SELECT AVG(EstimatedSalary) AS avg_salary FROM churn_modelling;
SELECT AVG(Tenure) AS avg_tenure FROM churn_modelling;


/* =========================================================
   CHURN ANALYSIS (DIMENSION-WISE)
   ========================================================= */

/* Churn by Geography */
SELECT Geography,
       COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1
GROUP BY Geography;


/* Churn by Gender */
SELECT Gender,
       COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1
GROUP BY Gender;


/* Churn by Number of Products */
SELECT NumOfProducts,
       COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1
GROUP BY NumOfProducts
ORDER BY NumOfProducts;


/* Churn by Active Membership */
SELECT IsActiveMember,
       COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1
GROUP BY IsActiveMember;


/* Churn by Credit Card Ownership */
SELECT HasCrCard,
       COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1
GROUP BY HasCrCard;


/* =========================================================
   DISTRIBUTION ANALYSIS
   ========================================================= */

/* Age distribution of churned customers */
SELECT Age,
       COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1
GROUP BY Age
ORDER BY Age;


/* Balance distribution of churned customers */
SELECT Balance,
       COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1
GROUP BY Balance
ORDER BY Balance;


/* Tenure distribution of churned customers */
SELECT Tenure,
       COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1
GROUP BY Tenure
ORDER BY Tenure;


/* Credit Score distribution of churned customers */
SELECT CreditScore,
       COUNT(*) AS churned_customers
FROM churn_modelling
WHERE Exited = 1
GROUP BY CreditScore
ORDER BY CreditScore;


/* =========================================================
   HIGH-RISK CUSTOMER SEGMENT
   ========================================================= */

/* Identify potentially high churn-risk customers */
SELECT *
FROM churn_modelling
WHERE Tenure < 2
  AND NumOfProducts = 1
  AND IsActiveMember = 0;
