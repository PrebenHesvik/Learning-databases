-- Display alcohol consumption of countries in South America
-- where beer_servings are above 130 per person

SELECT
    country,
    spirit_servings AS spirit_servings,
    wine_servings AS wine_servings,
    beer_servings AS beer_servings,
    total_litres_of_pure_alcohol AS LitersOfAlcohol
FROM
    drinks
WHERE
    continent = 'South America' AND beer_servings > 130
ORDER BY
    LitersOfAlcohol

