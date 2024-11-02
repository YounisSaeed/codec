# Write your MySQL query statement below
# low salary < 20000
# Average range [20000,50000]
# high range > [50000]

WITH 
low_salary AS (
    SELECT COUNT(*) AS count
    FROM Accounts
    WHERE income < 20000
),
average_salary AS (
    SELECT COUNT(*) AS count
    FROM Accounts
    WHERE income BETWEEN 20000 AND 50000
),
high_salary AS (
    SELECT COUNT(*) AS count
    FROM Accounts
    WHERE income > 50000
)

SELECT 
    'Low Salary' AS category,
    COALESCE(low_salary.count, 0) AS accounts_count
FROM low_salary

UNION ALL

SELECT 
    'Average Salary' AS category,
    COALESCE(average_salary.count, 0) AS accounts_count
FROM average_salary

UNION ALL

SELECT 
    'High Salary' AS category,
    COALESCE(high_salary.count, 0) AS accounts_count
FROM high_salary;
