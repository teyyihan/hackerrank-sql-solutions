/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
*/
SELECT SUM(POPULATION) FROM CITY
WHERE COUNTRYCODE IN (SELECT CODE FROM COUNTRY
                           WHERE CONTINENT = 'Asia')