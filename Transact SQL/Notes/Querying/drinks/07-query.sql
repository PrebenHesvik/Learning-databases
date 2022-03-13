-- look up consumption for countries whose name contains the letter 'Z'
SELECT *
FROM drinks
WHERE [country] LIKE '%Z%' OR [country] LIKE '%X%'