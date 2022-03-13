-- Find number of countries in each continent

SELECT continent, COUNT(*)
FROM drinks
GROUP BY continent
ORDER BY continent