USE employee_attrition;

-- 1. Total Employees
SELECT COUNT(*) AS Total_Employees
FROM employee_data;

-- 2. Attrition Count
SELECT Attrition,
       COUNT(*) AS Employee_Count
FROM employee_data
GROUP BY Attrition;

-- 3. Employees Left by Department
SELECT Department,
       COUNT(*) AS Employees_Left
FROM employee_data
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Employees_Left DESC;

-- 4. Average Income by Job Role
SELECT JobRole,
       ROUND(AVG(MonthlyIncome),2) AS Avg_Income
FROM employee_data
GROUP BY JobRole
ORDER BY Avg_Income DESC;

-- 5. Overtime vs Attrition
SELECT OverTime,
       Attrition,
       COUNT(*) AS Employees
FROM employee_data
GROUP BY OverTime, Attrition;

-- 6. Average Age by Attrition
SELECT Attrition,
       ROUND(AVG(Age),2) AS Avg_Age
FROM employee_data
GROUP BY Attrition;