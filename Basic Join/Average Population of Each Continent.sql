/*
query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
*/
SELECT CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM COUNTRY
INNER JOIN CITY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY CONTINENT