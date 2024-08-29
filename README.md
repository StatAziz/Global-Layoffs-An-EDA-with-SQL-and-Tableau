![Layoffs Data Cleaning Project](Image/EDA.gif)

# Global Layoffs: An EDA with SQL and Tableau

## Table of Contents

1. [Overview](#overview)
2. [Problem Statements](#problem-statements)
3. [Key Findings](#key-findings)
   - [Companies with the Highest Number of Layoffs in a Single Event](#companies-with-the-highest-number-of-layoffs-in-a-single-event)
   - [Yearly Trends in Layoffs from 2020 to 2023](#yearly-trends-in-layoffs-from-2020-to-2023)
   - [Industries with the Most Layoffs](#industries-with-the-most-layoffs)
   - [Countries Experiencing the Highest Number of Layoffs](#countries-experiencing-the-highest-number-of-layoffs)
   - [Top U.S. Cities with the Highest Number of Layoffs](#top-us-cities-with-the-highest-number-of-layoffs)
   - [Companies with the Highest Total Number of Layoffs](#companies-with-the-highest-total-number-of-layoffs)
   - [Correlation Between Funds Raised and Layoff Counts](#correlation-between-funds-raised-and-layoff-counts)
   - [Distribution of Layoffs Across Different Stages of Companies](#distribution-of-layoffs-across-different-stages-of-companies)
4. [Snapshot of Tableau Dashboard](#snapshot-of-tableau-dashboard)
5. [Conclusion](#conclusion)

## Overview
I created the `layoffs_staging_new` dataset during my data cleaning project as the foundation for this exploratory analysis. The dataset includes 1,995 records of layoffs from 2020 to 2023, covering 1,628 distinct companies worldwide. It provides a comprehensive overview of job market disruptions during this period, reflecting significant variability across companies, industries, and geographies.

## Problem Statements

The primary goal of my project was to explore how different companies and industries across the globe have experienced layoffs during this period. I guided my analysis with the following research questions:

- **How do layoff statistics vary across different companies?**
- **What are the yearly trends in layoffs from 2020 to 2023?**
- **Which industries experienced the highest number of layoffs?**
- **How does the geographical distribution of layoffs vary across different countries?**
- **How do layoffs differ across various stages of company maturity?**

## Key Findings

### Companies with the Highest Number of Layoffs in a Single Event
Google had the highest number of layoffs in a single event, affecting 12,000 employees, though this accounted for only 6% of its workforce. Meta and Amazon also saw significant layoffs, with 11,000 and 10,000 employees affected, representing 13% and 17% of their respective workforces.

### Yearly Trends in Layoffs from 2020 to 2023
I observed significant fluctuations in layoffs from 2020 to 2023. In 2020, the pandemic caused 532 layoff events, affecting 86,419 employees. Layoffs sharply declined in 2021 but surged again in 2022, with 1,030 events affecting 178,486 employees. Early 2023 trends suggest ongoing economic instability.

### Industries with the Most Layoffs
The Retail and Consumer sectors faced the most layoffs, each with over 46,000 employees affected. Other significantly impacted industries include Transportation, Finance, Healthcare, and Food.

### Countries Experiencing the Highest Number of Layoffs
The United States experienced the highest number of layoffs, with 278,471 employees affected. India followed with 37,198 layoffs, while other countries like the Netherlands, Sweden, and Brazil also saw substantial layoffs.

### Top U.S. Cities with the Highest Number of Layoffs
The San Francisco Bay Area had the highest number of layoffs in the U.S., affecting 133,692 employees, followed by Seattle and New York City with 35,881 and 32,834 layoffs, respectively.

### Companies with the Highest Total Number of Layoffs
Amazon had the highest total number of layoffs with 18,150 employees affected, followed by Google and Meta. Other companies like Salesforce, Microsoft, Philips, and Ericsson also experienced significant layoffs.

### Correlation Between Funds Raised and Layoff Counts
The correlation coefficient of 0.07 indicates a very weak positive relationship between the amount of funds raised and the number of layoffs, suggesting little to no linear relationship between these variables.

### Distribution of Layoffs Across Different Stages of Companies
Post-IPO companies experienced the highest total number of layoffs, though the average percentage was moderate. Seed stage companies showed the highest average percentage of layoffs, indicating vulnerability to workforce reductions.

## Snapshot of Tableau Dashboard

In my [Tableau dashboard](link_to_dashboard), I provide a detailed visualization of layoff trends and impacts from 2020 to 2023. Key elements include:

- **Key Performance Indicators (KPIs):** Metrics such as Total Layoffs, Average Percentage Laid Off, Total Funds Raised, and Number of Layoff Events.
- **Bar Chart:** Highlighting sectors most affected by layoffs.
- **Line Chart:** Tracking the fluctuation of layoffs over the years.
- **Heatmap:** Offering a comparative view of layoffs across different countries and industries.
- **Geographical Distribution Map:** Visualizing the spread of layoffs across various regions.

## Conclusion

Through this analysis, I discovered that major tech companies faced substantial layoffs, there were significant fluctuations in layoff trends over the years, and various industries and countries were heavily impacted. These patterns are crucial for job seekers navigating a tough job market and for organizations planning their workforce strategies.
