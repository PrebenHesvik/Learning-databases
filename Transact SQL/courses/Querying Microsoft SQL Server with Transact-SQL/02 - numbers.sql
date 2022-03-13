--  NUMERIC TYPES
--      TINYINT, SMALLINT, INT, BIGINT
--      DECIMAL, NUMERIC (both are the same)
--      MONEY, SMALLMONEY
--      FLOAT, REAL (approximate-number data types)

--  INTEGER TYPES:
--      TINYINT (1 byte, 0 to 255)
--      SMALLINT (2 bytes, -32,768 to 32,767)
--      INT (4 bytes)
--      BIGINT (8 byte)

-- DECIMALS (5 bytes for 1-9 digits)
-- SMALLMONEY (4 bytes, 4 decimal accuracy, +- 214,748.3647)
-- MONEY (8 bytes, 4 decimal accuracy)

--------- EXAMPLE 1: ADDITION WITH INTS ----------
-- Initialize a variable, give it a data type and a value
DECLARE @myInt AS int = 10
SELECT @myInt AS myInteger

--------- EXAMPLE 2: ADDITION WITH DECIMALS ----------
-- must specify total number of integers, and number of decimals
-- total number of integers both beforre and afteer the decimal
DECLARE @myDecimal AS decimal(4, 2)
SET @myDecimal = 12.67
SELECT @myDecimal AS myVariable


--------  EXAMPLE 3: CONVERT AN INTEGER TO A DECIMAL ----------
SELECT CONVERT(decimal(5, 2), 5) AS convertedToDecimal
SELECT CAST(5 AS decimal(5, 2)) AS castedToDecimal
SELECT CONVERT(int, 4.68) AS convertedToInteger

------- EXAMPLE 4: SOME MATH FUNCTIONS
DECLARE @myvar1 AS numeric(7, 2) = 13.78

-- Power of n
SELECT POWER(@myvar1, 2)

-- Square
SELECT SQUARE(@myvar1)

-- Square root
SELECT SQRT(@myvar1)

-- Rounds down to nearest integer
SELECT FLOOR(@myvar1)

-- Rounds up to nearest integer
SELECT CEILING(@myvar1)

-- Rounds to nearest integer or decimal
-- Not always accurate
SELECT ROUND(@myvar1, 0)

-- Round to nearest tenth using -1
SELECT ROUND(@myvar1, -1)

------- EXAMPLE 5: OTHER DATA TYPES
DECLARE @money AS smallmoney = 3148.29
SELECT @money AS myMoney

------- EXAMPLE 6: DIVISION WHERE ONE VALUE IS A DECIMAL
DECLARE @result AS decimal(2, 1) = 3.0 / 2
SELECT @result




