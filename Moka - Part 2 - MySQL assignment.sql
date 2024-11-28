#Task 1

SELECT COUNT(*) AS total_cities_in_USA
FROM city
WHERE CountryCode = 'USA';

#Task 2

SELECT Name AS country, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;

#Task 3

SELECT Name AS city, CountryCode
FROM city
WHERE Name LIKE '%New%';

#Task 4

SELECT Name AS city, CountryCode, Population
FROM city
ORDER BY Population DESC
LIMIT 10;

#Task 5

SELECT Name AS City, CountryCode, Population
FROM city
WHERE Population > 2000000
ORDER BY Population DESC;

#Task 6

SELECT Name AS City, CountryCode, Population
FROM city
WHERE Name LIKE 'Be%'
ORDER BY Name;

#Task 7

SELECT Name AS City, CountryCode, Population
FROM city
WHERE Population BETWEEN 500000 and 1000000
ORDER BY Population ASC;

#Task 8

SELECT Name AS City, CountryCode, District, Population
FROM city
ORDER BY Name ASC;

#Task 9

SELECT Name AS City, Population
FROM city
ORDER BY Population DESC
LIMIT 1;

#Task 10 

SELECT name AS City, COUNT(*) AS Frequency
FROM city
GROUP BY name
ORDER BY name ASC;

#Task 11

SELECT Name AS City, Population
FROM city
ORDER BY Population ASC
LIMIT 1;

#Task 12

SELECT Name AS Country, Population
FROM country
ORDER BY Population DESC
LIMIT 1;

#Task 13

SELECT city.CountryCode, country.name AS Country, city.name AS CapitalCity
FROM country
JOIN city
ON city.ID = country.capital
WHERE country.name = 'Spain';


#Task 14

SELECT Name AS Country, LifeExpectancy
FROM Country
ORDER BY LifeExpectancy DESC
LIMIT 1;

#Task 15

SELECT city.name, continent
FROM city
JOIN country
ON country.code = city.countrycode
WHERE continent = 'Europe'
ORDER BY city.name;

-- join tables experimentation:
SELECT * FROM city, country;
SELECT * FROM city CROSS JOIN country ON country.code = city.CountryCode; 

#Task 16

SELECT name AS Country, AVG(population) AS AveragePopulation
FROM country
GROUP BY Country;

-- (To improve readability: rounded to zero decimal places)
SELECT name AS Country, ROUND(AVG(population), 0) AS AveragePopulation
FROM country
GROUP BY name
ORDER BY AveragePopulation DESC;

#Task 17

SELECT country.name AS Country, city.name AS CapitalCity, city.population AS CityPopulation
FROM country
JOIN city
ON city.ID = country.capital
ORDER BY city.population DESC;

/*
-- ID = capital 

SELECT ID from city; 
-- PRIMARY KEY

SELECT capital FROM country; 
-- FOREIGN KEY
*/

#Task 18

SELECT name AS country, population, surfacearea, (population / surfacearea) AS population_density
FROM country
WHERE (population / surfacearea) < 25
ORDER BY population_density DESC;

-- BONUS TASKS!

#Task 19

-- column info pull:
SELECT * 
from country;
SELECT * 
from city;

SELECT city.name AS city, ROUND(AVG(country.GNP), 0) AS average_GNP
FROM city
JOIN country ON city.CountryCode = country.code
GROUP BY city.name
ORDER BY average_gnp ASC;

-- correction
SELECT city.name as city, country.GNP AS average_GNP
FROM city, country
WHERE GNP > (SELECT AVG(GNP) FROM country)
ORDER BY GNP;

#Task 20

SELECT *
FROM city 
ORDER BY Population DESC
LIMIT 10 OFFSET 30;