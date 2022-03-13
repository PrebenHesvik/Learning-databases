SELECT
    TOP(5)
    country,
    spirit_servings AS spirit_servings,
    wine_servings AS wine_servings,
    beer_servings AS beer_servings,
    total_litres_of_pure_alcohol AS LitersOfAlcohol
FROM
    drinks
WHERE
    NOT continent = 'South America'
ORDER BY
    LitersOfAlcohol DESC