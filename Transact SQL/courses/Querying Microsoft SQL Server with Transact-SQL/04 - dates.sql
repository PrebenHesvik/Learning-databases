-- Data types:
-- time, date, smalldatetime, datetime, datetime2, datetimeoffset

-- Declare date
DECLARE @mydate AS date = '2021-11-16'


SELECT @mydate AS myDate
SELECT YEAR(@mydate) AS Year, MONTH(@mydate) AS Month, DAY(@mydate) AS Day
SELECT DATEFROMPARTS(2020, 11, 21) AS ThisDate

-- Todays date
SELECT GETDATE() AS GetDataFunction
SELECT CURRENT_TIMESTAMP AS CurrentTimestamp_

-- Add 1 year to date
DECLARE @year AS int = 2
SELECT DATEADD(year, @year, '2020-12-24')


-- Parse date - pull month
SELECT DATEPART(MONTH, '2020-12-24')


-- Name of today's date
SELECT DATENAME(WEEKDAY, GETDATE())

-- Days between two days
SELECT DATEDIFF(DAY, GETDATE(), '2021-12-24')

-- Datetime timezone offset
DECLARE @mydatetime AS datetime = '2020-11-10 14:30:00'
SELECT TODATETIMEOFFSET(@mydatetime, '+05:30')


-- Convert date to string
SELECT CONCAT('Valid Date: ', CONVERT(nvarchar(20), @mydate))  AS ConvertedDate
SELECT CONCAT('Valid Date: ', CAST(@mydate AS nvarchar(20)))  AS ConvertedDate

-- Convert string to date
SELECT CONVERT(date, 'Tuesday, 10 November 2020') AS ConvertedDate

-- Format date
SELECT FORMAT(CAST('2020-12-24' AS date), 'D') AS FormattedDate