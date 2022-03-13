SELECT *
FROM tblEmployee
WHERE DateOfBirth BETWEEN '19760101' AND '19760430'

SELECT *
FROM tblEmployee
WHERE DateOfBirth > '19760101' AND DateOfBirth < '19760430'

-- This will be slower since we included a calculation
SELECT *
FROM tblEmployee
WHERE year(DateOfBirth) BETWEEN 1976 AND 1976

-- COUNT(*) means count number of rows
-- Whenever we use an aggregate function like COUNT(), we also
-- have to include a GROUP BY
SELECT year(DateOfBirth) AS YearDataOfBirth, COUNT(*) AS NumberBorn
FROM tblEmployee
GROUP BY YEAR(DateOfBirth)
ORDER BY YEAR(DateOfBirth) ASC


-- Select top 5 initial letters in last names
SELECT TOP(5)
    LEFT(EmployeeLastName, 1)  AS Initial,
    COUNT(*)                   AS CountOfInitial
FROM tblEmployee
GROUP BY LEFT(EmployeeLastName, 1)
HAVING COUNT(*) > 50
ORDER BY COUNT(*) DESC


-- Order: select - from - where - groupby - having - order by
SELECT
    LEFT(EmployeeLastName, 1) AS Initial,
    COUNT(*) AS CountOfInitial
FROM tblEmployee
WHERE (DateOfBirth > '19860101' AND Department = 'HR')
GROUP BY LEFT(EmployeeLastName, 1)
HAVING COUNT(*) >= 7
-- we can use the alias name in order by - but only order by
ORDER BY CountOfInitial DESC


SELECT
    DATENAME(MONTH, DateofBirth) AS MonthNumber,
    COUNT(*) AS NumberEmployees
FROM tblEmployee
GROUP BY DATENAME(MONTH, DateofBirth), DATEPART(MONTH, DateOfBirth)
ORDER BY DATEPART(MONTH, DateOfBirth)

-- Same as above, but also counting people in each month who has a middle name
SELECT
    DATENAME(MONTH, DateofBirth) AS MonthNumber,
    COUNT(*) AS NumberEmployees,
    COUNT(EmployeeMiddleName) AS NumberOfMiddleNames,
    COUNT(*) - COUNT(EmployeeMiddleName) AS NoMiddleName,
    format(MIN(DateOfBirth), 'D') AS EarliestDateOfBirth
FROM tblEmployee
GROUP BY DATENAME(MONTH, DateofBirth), DATEPART(MONTH, DateOfBirth)
ORDER BY DATEPART(MONTH, DateOfBirth)

-- THIS IS HOW WE WRITE A QUERY
-- SELECT YEAR(DateOfBirth) as YearDateOfBirth, COUNT(*) AS NumberNorn
-- FROM tblEmployee
-- WHERE Department = 'Human Resources'
-- GROUP BY YEAR(DataOfBirth)

-- AND THIS IS HOW SQL READS THE QUERY
-- FROM tblEmployee
-- WHERE Department = 'Human Resources'
-- GROUP BY YEAR(DataOfBirth)
-- SELECT YEAR(DateOfBirth) as YearDateOfBirth, COUNT(*) AS NumberNorn
