-- STRING TYPES:
--      char - ASCII - 1 byte per character (for english language) - Have to specify max characters, and storage size is 1 byte *  max characters
--      varchar - ASCII - 1 byte per character (for english language) - Storage size is (actual number or characters * 1 byte) + 2 bytes
--      nchar - UNICODE - 2 bytes per character (includes all other letters of various languages)
--      nvarchar - UNICODE - 2 bytes per character (includes all other letters of various languages)

-- String index in SQL starts at 1

-- String methods
DECLARE @name AS varchar(10)
SET @name = 'Theo'

-- For non-english letter use nchar or nvarchar
DECLARE @norwegianName AS nvarchar(10)
SET @norwegianName = 'Jørgen'
SELECT @norwegianName

--Upper
SELECT UPPER(@name) AS name, LEN(@name) AS length

-- Concat strings
DECLARE @firstname AS varchar(20)
DECLARE @middlename AS varchar(20)
DECLARE @lastname AS varchar(20)

SET @firstname = 'George'
-- SET @middlename = 'Gooding'
SET @lastname = 'Costanza'

-- Method 1:
SELECT @firstname
+ IIF(@middlename IS NULL, '', ' ' + @middlename)
+ ' ' + @lastname AS FullName

-- Method 2:
SELECT @firstname
+ CASE WHEN @middlename IS NULL THEN '' ELSE ' ' + @middlename END
+ ' ' + @lastname AS FullName

-- Method 3
SELECT CONCAT(@firstname, ' ' + @middlename, ' ' + @lastname)

-- Concat string with a number
SELECT 'My number is: ' + CONVERT(varchar(20), 4567)
SELECT 'My number is: ' + CAST(4567 AS varchar(20))
SELECT 'My salary is: ' + FORMAT(2345.6, 'C', 'en-GB')

-- Left
DECLARE @newName AS varchar(10)
SET @newName = 'Theodor'
SELECT LEFT(@name, 4) AS FirstTwoLetters

-- Substring
SELECT SUBSTRING('Preben', 1, 3) AS PartialName

-- String split
SELECT REPLICATE('Hello', 3) AS RepeatedWord

-- Trim
DECLARE @TrimmedWord AS varchar(10)
SET @TrimmedWord = RTRIM(LTRIM('  space  '))
SELECT @TrimmedWord AS Word, len(@TrimmedWord) AS WordLength

-- Replace
DECLARE @euro AS varchar(5)
SET @euro = '€45'
SELECT CONVERT(int, REPLACE(@euro, '€', '')) AS Euro

