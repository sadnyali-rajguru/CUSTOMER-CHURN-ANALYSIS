
-- CUSTOMER CHURN ANALYSIS --

create database customer_churn_analysis;
use customer_churn_analysis;

-- 1. View the customer data
SELECT *
FROM churn_analysis;

-- 2. Find the total number of customers
SELECT COUNT(*) AS total_customers
FROM churn_analysis;

-- 3. Find the number of churned and retained customers
SELECT 
    Churn,
    COUNT(*) AS customer_count
FROM churn_analysis
GROUP BY Churn;


-- 4. Find the percentage of churned and retained customers
SELECT 
    Churn,
    COUNT(*) AS customer_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM churn_analysis), 2) AS percentage
FROM churn_analysis
GROUP BY Churn;


-- 5. Analyze churn by gender
SELECT 
    gender,
    Churn,
    COUNT(*) AS customer_count
FROM churn_analysis
GROUP BY gender, Churn
ORDER BY gender;


-- 6. Analyze churn by senior citizen status
SELECT 
    `Senior Citizen`,
    Churn,
    COUNT(*) AS customer_count
FROM churn_analysis
GROUP BY `Senior Citizen`, Churn
ORDER BY `Senior Citizen`;


-- 7. Analyze churn by contract type
SELECT 
    Contract,
    Churn,
    COUNT(*) AS customer_count
FROM churn_analysis
GROUP BY Contract, Churn
ORDER BY Contract;


-- 8. Analyze churn by payment method
SELECT 
    `Payment Method`,
    Churn,
    COUNT(*) AS customer_count
FROM churn_analysis
GROUP BY `Payment Method`, Churn
ORDER BY `Payment Method`;


-- 9. Compare average tenure of churned and retained customers
SELECT 
    Churn,
    ROUND(AVG(tenure), 2) AS average_tenure
FROM churn_analysis
GROUP BY Churn;


-- 10. Compare average monthly charges of churned and retained customers
SELECT 
    Churn,
    ROUND(AVG(`Monthly Charges`), 2) AS average_monthly_charges
FROM churn_analysis
GROUP BY Churn;


