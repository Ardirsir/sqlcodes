SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_GDP_in_Billions
FROM
access_to_basic_services
WHERE
(Country_name = 'Nigeria'
OR Country_name = 'Ethiopia'
OR Country_name = 'Congo'
OR Country_name = 'Egypt'
OR Country_name = 'Tanzania'
OR Country_name = 'Kenya'
OR Country_name = 'South Africa')
AND Time_period BETWEEN 2019 AND 2020;


SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_GDP_in_Billions
FROM
access_to_basic_services
WHERE
(Country_name = 'Nigeria'
OR Country_name = 'Ethiopia'
OR Country_name = 'Congo'
OR Country_name = 'Egypt'
OR Country_name = 'Tanzania'
OR Country_name = 'Kenya'
OR Country_name = 'South Africa')
AND Time_period BETWEEN 2019 AND 2020;

SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_GDP_in_Billions
FROM
access_to_basic_services
WHERE
Time_period = 2020
AND Pct_managed_sanitation_services <= 50
AND Pct_managed_drinking_water_services <= 50;


SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_GDP_in_Billions
FROM
access_to_basic_services
WHERE
Time_period >= 2018
AND Pct_managed_sanitation_services <= 50
AND Pct_managed_drinking_water_services <= 50;


SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_GDP_in_Billions,
Region
FROM
access_to_basic_services
WHERE
Region = 'Sub-Saharan Africa'
AND 
Time_period = 2018;

SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_GDP_in_Billions,
Region
FROM
access_to_basic_services
WHERE
Region = 'Sub-Saharan Africa'
AND 
Time_period = 2018
AND
Est_gdp_in_billions IS NULL;

SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_GDP_in_Billions,
Region
FROM
access_to_basic_services
WHERE
Region = 'Sub-Saharan Africa'
AND 
Time_period = 2018
AND
Est_gdp_in_billions IS NOT NULL;

SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_GDP_in_Billions,
Region
FROM
access_to_basic_services
WHERE
Region = 'Sub-Saharan Africa'
AND 
Time_period = 2018
AND
Est_gdp_in_billions IS NOT NULL
AND 
Country_name IN ('Nigeria','South Africa','Kenya','Ethiopia','Angola');

SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_GDP_in_Billions,
Region
FROM
access_to_basic_services
WHERE
Region = 'Sub-Saharan Africa'
AND 
Time_period = 2018
AND
Est_gdp_in_billions IS NOT NULL
AND 
Country_name NOT IN ('Nigeria','South Africa','Kenya','Ethiopia','Angola');

SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services
FROM 
access_to_basic_services
WHERE 
Country_name LIKE '%Iran%' 
OR Country_name LIKE '%_Republic of Korea';

SELECT 
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services
FROM 
access_to_basic_services
WHERE 
Country_name LIKE '%Iran%' 
OR Country_name LIKE '%_Republic of Korea'
AND Pct_managed_sanitation_services >=96
