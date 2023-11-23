/*Given the CITY and COUNTRY tables, query the sum of the populations 
of all cities where the CONTINENT is 'Asia'*/
SELECT SUM(A.POPULATION)
FROM CITY as A
INNER JOIN COUNTRY as B ON A.COUNTRYCODE = B.CODE
WHERE B.CONTINENT = 'Asia';