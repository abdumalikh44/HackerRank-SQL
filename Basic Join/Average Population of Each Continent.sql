/*Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and 
their respective 
average city populations (CITY.Population) rounded down to the nearest integer.*/

SELECT B.CONTINENT, FLOOR(AVG(A.POPULATION))
FROM CITY AS A
INNER JOIN COUNTRY AS B ON A.COUNTRYCODE = B.CODE
GROUP BY B.CONTINENT;
