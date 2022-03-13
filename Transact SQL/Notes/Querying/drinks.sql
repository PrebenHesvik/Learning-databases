SELECT
    continent,
    AVG(spirit_servings) AS AvgSpiritServings,
    AVG(wine_servings) AS AvgWineServings,
    AVG(beer_servings) AS AvgBeerServings,
    ROUND(AVG(total_litres_of_pure_alcohol), 2)  AS AvgLitresOfAlcohol,
    AVG((beer_servings + spirit_servings + wine_servings)) AS Total_Servings
FROM
    drinks
GROUP BY
    continent
ORDER BY
    AvgLitresOfAlcohol DESC



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



SELECT
    top(5)
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