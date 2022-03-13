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