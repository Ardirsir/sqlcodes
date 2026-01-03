SELECT
Sub_region,
Country_name,
Land_area,
ROUND((Land_area/SUM(Land_area) OVER(
PARTITION BY Sub_region)*100)) AS Pct_sub_region_land_area
FROM
access_to_basic_services
WHERE
Time_period = 2020
AND Land_area IS NOT NULL;

----------------------------------------------------------------------------

SELECT
Sub_region,
Country_name,
Time_period,
Land_area,
Est_population_in_millions,
ROUND(Avg(Est_population_in_millions) OVER(
PARTITION BY Sub_region ORDER BY Time_period), 4) AS Running_avg_population
FROM
access_to_basic_services
WHERE
Est_population_in_millions IS NOT NULL;
-------------------------------------------------------------------------------

SELECT
Country_name,
Time_period,
Pct_managed_drinking_water_services,
ROW_NUMBER() OVER(PARTITION BY Time_period ORDER BY Pct_managed_drinking_water_services ASC) AS Rank_of_water_services
FROM
access_to_basic_services;


----------- to rank without number repetition, use RANK() instead of ROW_NUMBER() ------

SELECT
Country_name,
Time_period,
Pct_managed_drinking_water_services,
RANK() OVER(PARTITION BY Time_period ORDER BY Pct_managed_drinking_water_services ASC) AS Rank_of_water_services
FROM
access_to_basic_services;


----------------------------------------------------------------  
calculating growth rate using	LAG-------- previous year
----------------------------------------------------------------

SELECT
Country_name,
Time_period,
Pct_managed_drinking_water_services,
LAG(Pct_managed_drinking_water_services) OVER(PARTITION BY Country_name ORDER BY Time_period ASC) AS Prev_yr_pct_managed_drinking_water_services,
Pct_managed_drinking_water_services-LAG(Pct_managed_drinking_water_services) OVER(PARTITION BY Country_name ORDER BY Time_period ASC) AS Growth_rate
FROM
access_to_basic_services
