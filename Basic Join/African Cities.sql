/*
query the names of all cities where the CONTINENT is 'Africa'.
*/
SELECT NAME FROM CITY
WHERE COUNTRYCODE IN (SELECT CODE FROM COUNTRY
                     WHERE CONTINENT = 'Africa')