-- Derived table
SELECT Department
FROM
    (
    SELECT Department, count(*) AS NumberOfDepartments
    FROM tblEmployee
    GROUP BY Department
    )
AS newTable


-- Another way to get distinct departments is to use DISTINCT keyword
SELECT DISTINCT Department
FROM tblEmployee


-- Create new table based on distinct department values
SELECT
    DISTINCT Department,
    -- The next line will create column
    CONVERT(varchar(20), N'') AS DepartmentHead
INTO tblDepartment
FROM tblEmployee
-- Refresh db tables and check if there is a new table there

