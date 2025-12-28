USE united_nations;
-- SELECT all columns in the database
SELECT 
	*
FROM
	access_to_basic_services;
    
-- SELECT all columns and LIMIT to 11 rows
SELECT 
	*
FROM
	access_to_basic_services
LIMIT 11;

-- SELECT distinct column
------------------------------
SELECT DISTINCT
	Country_name
FROM
	access_to_basic_services;
    
    
-- Saving query into a table
------------------------------
CREATE TABLE
	Country_list(
    Country_name VARCHAR(225)
    );
INSERT INTO Country_list(
	Country_name
    )
SELECT distinct
    Country_name
FROM
	access_to_basic_services;
    
-- Chceck for country with lowest pct of people with access to managed drinking water services
--------------------------------------------------------------------------------------------
SELECT 
	Country_name,
    Time_period,
    Pct_managed_drinking_water_services AS pct_access_water
FROM
	access_to_basic_services
WHERE
	Time_period = 2020;