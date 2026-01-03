USE united_nations;
SELECT
COUNT(*) AS Number_of_entry,
MIN(Time_period) AS Min_time_period,
MAX(Time_period) AS Max_time_period,
AVG(Pct_managed_drinking_water_services) AS Pct_access_water_services,
COUNT(DISTINCT Country_name) AS Country_name
FROM
access_to_basic_services;

SELECT
Region,
Sub_region,
MIN(Pct_managed_drinking_water_services) AS min_pct_access_water_services,
MAX(Pct_managed_drinking_water_services) AS max_ct_access_water_services,
AVG(Pct_managed_drinking_water_services) AS avg_pct_managed_water_services,
COUNT(DISTINCT Country_name) AS No_of_countries,
SUM(Est_gdp_in_billions) AS gdp_in_billions
FROM
access_to_basic_services
WHERE
Time_period = 2020
AND Pct_managed_drinking_water_services < 60
GROUP BY
Region,Sub_region
HAVING 
COUNT(DISTINCT Country_name) < 4
ORDER BY
gdp_in_billions ASC;


