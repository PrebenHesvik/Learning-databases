-- Find all employees with last-name 'Word'
SELECT *
FROM tblEmployee
WHERE [EmployeeLastName] = 'Word'

-- Find all employees whose last name is not Word
SELECT *
FROM tblEmployee
WHERE [EmployeeLastName] <> 'Word'

-- Query all employees who last name is comes
-- after 'Word' in the alphabet
SELECT *
FROM tblEmployee
WHERE [EmployeeLastName] > 'Word'

-- Query employees whose lastname starts with 'W'
SELECT *
FROM tblEmployee
WHERE [EmployeeLastName] LIKE 'W%'
--start W%, end %W, middle %W%

-- Query employees whose lastname has a 'W' in the second letter
SELECT *
FROM tblEmployee
WHERE [EmployeeLastName] LIKE '_W%'

-- Query employees whose lastname starts
-- with either of r, s, t
SELECT *
FROM tblEmployee
WHERE EmployeeLastName LIKE '[r-t]%'

-- % = 0-infinity characters
-- _ = 1 character
-- [A-G] = in range A-G
-- [AGT] = A, G or T
-- [^AGT] = NOT A, G or T

-- Query employees with EmployeeNumber higher than 200
-- Add a new column 'NewColumnName' to table 'TableName' in schema 'SchemaName'
SELECT *
FROM tblEmployee
WHERE EmployeeNumber > 200

-- Use NOT or negate
SELECT *
FROM tblEmployee
WHERE NOT EmployeeNumber > 200

-- Use != to find everything except
SELECT *
FROM tblEmployee
WHERE EmployeeNumber != 200

SELECT *
FROM tblEmployee
WHERE (EmployeeNumber >= 200 AND EmployeeNumber <= 209)

-- Using between
SELECT EmployeeFirstName, EmployeeLastName
FROM tblEmployee
WHERE EmployeeNumber BETWEEN 200 AND 209

-- Using IN
SELECT *
FROM tblEmployee
WHERE EmployeeNumber IN (200, 204, 208)