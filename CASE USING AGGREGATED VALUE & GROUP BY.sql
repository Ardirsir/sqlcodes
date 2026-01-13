SELECT
*
FROM 
access_to_basic_services
WHERE
Region LIKE '%Africa%';

SELECT
CASE
	When Country_name IN ("Angola", "Botswana", "Comoros","Democratic Republic of Congo","Eswatini","Lesotho","Madagascar","Malawi","Mauritius","Mozanbique","Namibia","Seychelles","South Africa","United Republic of Tanzania","Zimbabwe")
	THEN "SADC"

	When Country_name IN ("Algeria", "Libya", "Mauritania","Morocco","Eswatini","Tunisia")
	THEN "UMA"

	When Country_name IN ("Benin","Burkina Faso","Cabo Verde","Cote d'Ivoire","Gambia","Ghana","Guinea","Guinea-Bissau","Liberia","Mali","Niger","Nigeria","Senegal","Sierra Leone")
	THEN "ECOWAS"

	ELSE "Not Classified"
END AS Regional_Economic_Community,

MIN(Pct_managed_drinking_water_services) AS Min_pct_managed_drinking_water_services,
AVG(Pct_managed_drinking_water_services) AS Avg_pct_managed_drinking_water_services,
MAX(Pct_managed_sanitation_services) AS Max_pct_managed_drinking_water_services
FROM 
access_to_basic_services
WHERE
Region LIKE '%Africa%'

GROUP BY
	CASE
	When Country_name IN ("Angola", "Botswana", "Comoros","Democratic Republic of Congo","Eswatini","Lesotho","Madagascar","Malawi","Mauritius","Mozanbique","Namibia","Seychelles","South Africa","United Republic of Tanzania","Zimbabwe")
	THEN "SADC"

	When Country_name IN ("Algeria", "Libya", "Mauritania","Morocco","Eswatini","Tunisia")
	THEN "UMA"

	When Country_name IN ("Benin","Burkina Faso","Cabo Verde","Cote d'Ivoire","Gambia","Ghana","Guinea","Guinea-Bissau","Liberia","Mali","Niger","Nigeria","Senegal","Sierra Leone")
	THEN "ECOWAS"

	ELSE "Not Classified"
END;
