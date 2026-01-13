SELECT * FROM access_to_basic_services;

SELECT 
DISTINCT Country_name
FROM 
access_to_basic_services;

SELECT 
DISTINCT Country_name
FROM 
access_to_basic_services
WHERE
Country_name LIKE '%(%)%';


-----------------------------------------------
CLEANING DATA USING NESTED FUNCTION - LEFT, RTRIM
-----------------------------------------------

SELECT 
DISTINCT Country_name,
LENGTH(Country_name) AS String_lenght,
POSITION('(' IN Country_name) AS Position_opening_bracket,
RTRIM(LEFT(Country_name, POSITION('(' IN Country_name)-1)) AS New_country_name,
length(RTRIM(LEFT(Country_name, POSITION('(' IN Country_name)-1))) AS New_string_length

FROM 
access_to_basic_services
WHERE
Country_name LIKE '%(%)%'