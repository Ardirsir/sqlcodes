SELECT
Region,
Pct_unemployment,
IF((Region = "Central and Southern Asia") AND (Pct_unemployment IS NULL), 19.99, -999) AS New_pct_unemployment
FROM access_to_basic_services;

SELECT
Region,
Pct_unemployment,
IF((Region = "Central and Southern Asia") AND (Pct_unemployment IS NULL), 19.99, 
	IF((Region = "Eastern and South Eastern Asia") AND (Pct_unemployment IS NULL), 22.64, 
		IF((Region = "Europe and Northern America") AND (Pct_unemployment IS NULL), 24.43,
			IF((Region = "Latin America and the Caribbean") AND (Pct_unemployment IS NULL), 24.43,
				IF((Region = "Ocean") AND (Pct_unemployment IS NULL), 17.84,
					IF((Region = "Sub-Saharan Africa") AND (Pct_unemployment IS NULL), 33.65,
-999)))))
) AS New_pct_unemployment
FROM access_to_basic_services;

SELECT
Region,
Pct_unemployment,
IF((Region = "Central and Southern Asia") AND (Pct_unemployment IS NULL), 19.99, 
	IF((Region = "Eastern and South Eastern Asia") AND (Pct_unemployment IS NULL), 22.64, 
		IF((Region = "Europe and Northern America") AND (Pct_unemployment IS NULL), 24.43,
			IF((Region = "Latin America and the Caribbean") AND (Pct_unemployment IS NULL), 24.43,
				IF((Region = "Ocean") AND (Pct_unemployment IS NULL), 17.84,
					IF((Region = "Sub-Saharan Africa") AND (Pct_unemployment IS NULL), 33.65,
Pct_unemployment)))))
) AS New_pct_unemployment
FROM access_to_basic_services;
