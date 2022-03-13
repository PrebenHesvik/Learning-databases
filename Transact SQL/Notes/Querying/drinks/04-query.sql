-- Add total servings of each type of drink, and groupby continent
SELECT
    continent,
    SUM(spirit_servings + wine_servings + beer_servings) AS total_servings
FROM drinks
GROUP BY continent
ORDER BY total_servings DESC
