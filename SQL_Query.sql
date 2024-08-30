
-- project- Global Layoffs: An EDA with SQL and Tableau

-- companies that had the highest number of layoffs in a single event
SELECT top 10 company, MAX(total_laid_off) AS max_laid_off,
ROUND(MAX(percentage_laid_off)*100,2) AS max_percentage_laid_off
FROM layoffs_staging_new
GROUP BY company
ORDER BY max_laid_off DESC
;

-- the trend of layoffs over the years 2020 to 2023
SELECT 
    YEAR([date]) AS year,
    COUNT(*) AS num_layoffs,
    Round(SUM(total_laid_off),0) AS total_laid_off
FROM 
    layoffs_staging_new
Where YEAR([date]) is not Null
GROUP BY 
    YEAR([date])
ORDER BY 
    year;

-- industries that faced the most layoffs during this period
SELECT TOP 10 industry, ROUND(SUM(total_laid_off),0) AS total_laid_off,
ROUND(SUM(percentage_laid_off),2) AS total_percentage_laid_off
FROM layoffs_staging_new
GROUP BY industry
ORDER BY total_laid_off DESC
;

-- Top 10 countries experienced the highest number of layoffs
SELECT TOP 10 country, ROUND(SUM(total_laid_off),0) AS total_laid_off
FROM layoffs_staging_new
GROUP BY country
ORDER BY total_laid_off DESC
;

-- Top 10 locations(cities) in USA experienced the highest number of layoffs
SELECT TOP 10 location, ROUND(SUM(total_laid_off),0) AS total_laid_off
FROM layoffs_staging_new
Where country = 'United States'
GROUP BY location
ORDER BY total_laid_off DESC
;

-- top 10 companies with the highest number of layoffs
SELECT TOP 10 company, ROUND(SUM(total_laid_off),0) AS total_laid_off
FROM layoffs_staging_new
GROUP BY company
ORDER BY total_laid_off DESC
;

-- correlation between the amount of funds raised and the number of layoffs
WITH Stats AS (
    SELECT 
        AVG(funds_raised_millions) AS avg_funds,
        AVG(total_laid_off) AS avg_laid_off,
        COUNT(*) AS n
    FROM layoffs_staging_new
),
Correlations AS (
    SELECT 
        ROUND(SUM((funds_raised_millions - avg_funds) * (total_laid_off - avg_laid_off)) / 
        (SQRT(SUM(POWER(funds_raised_millions - avg_funds, 2))) * 
		SQRT(SUM(POWER(total_laid_off - avg_laid_off, 2)))),2) AS correlation
    FROM layoffs_staging_new, Stats
)
SELECT 
    correlation
FROM 
    Correlations;

-- the distribution of layoffs across different stages of companies (e.g., startup, public)
SELECT stage, COUNT(*) AS num_events, SUM(total_laid_off) AS total_laid_off,
ROUND(AVG(percentage_laid_off)*100,2) AS avg_percentage_laid_off
FROM layoffs_staging_new
WHERE stage is not NULL and stage <> 'Unknown'
GROUP BY stage
ORDER BY total_laid_off DESC;
