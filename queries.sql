

-- - What is the total amount of debt owed by   all countries in the dataset?

SELECT sum(debt) AS total_debt_owed
FROM dataanalytics.international_debt;

-- How many distinct countries are recorded in the dataset?
SELECT COUNT(DISTINCT country_name) AS DISTINCT_contries
FROM dataanalytics.international_debt;

--  What are the distinct types of debt indicators, and what do they represent?
SELECT DISTINCT indicator_name
FROM dataanalytics.international_debt;

-- Which country has the highest total debt, and how much does it owe?
SELECT  country_name, sum(debt) AS total_debt
FROM dataanalytics.international_debt
GROUP BY
	country_name
ORDER BY
	sum(debt) DESC
LIMIT 1;

--What is the average debt across different debt indicators?
SELECT indicator_name, AVG(debt) AS average_indicator_debt
FROM dataanalytics.international_debt
GROUP BY
	indicator_name;

--  Which country has made the highest amount of principal repayments?

SELECT 
    country_name,
    SUM(debt) AS total_debt
FROM 
    dataanalytics.international_debt
WHERE indicator_name LIKE '%Principal repayments%'
GROUP BY 
    country_name
ORDER BY 
    total_debt DESC
LIMIT 1;
  
-- What is the most common debt indicator across all countries?

SELECT 
    indicator_name,
    COUNT(*) AS frequency
FROM 
    dataanalytics.international_debt
GROUP BY 
    indicator_name
ORDER BY 
    frequency DESC
LIMIT 1;

--- Identify any other key debt trends and summarize your findings.
-- Top 5 countries with the highest debt
SELECT 
    country_name,
    SUM(debt) AS total_debt
FROM 
    dataanalytics.international_debt
GROUP BY 
    country_name
ORDER BY 
    total_debt DESC
LIMIT 5;

-- indicators with the total highest debt
SELECT 
    indicator_name,
    SUM(debt) AS total_indicator_debt
FROM 
    dataanalytics.international_debt
GROUP BY 
    indicator_name
ORDER BY 
    total_indicator_debt DESC
LIMIT 5;




 
