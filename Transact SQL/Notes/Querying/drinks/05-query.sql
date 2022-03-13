-- Find number of countries with beer servings above 130
DECLARE @BeerQuantity AS int
SET @BeerQuantity = 300

SELECT count(*)
FROM drinks
WHERE beer_servings > @BeerQuantity

-- list those countries
SELECT country, beer_servings
FROM drinks
WHERE beer_servings > @BeerQuantity
ORDER BY beer_servings DESC