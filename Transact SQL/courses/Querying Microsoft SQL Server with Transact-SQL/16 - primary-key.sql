-- PRIMARY KEY
--  not nullable
--  clustered
--  can only be one (no duplicates)

ALTER TABLE tblEmployee
ADD CONSTRAINT PK_tblEmployee PRIMARY KEY (EmployeeNumber)


CREATE TABLE tblEmployee2
(
    -- IDENTITY  automatically numbers new rows
    -- two arguments: (starting number, increment)
    EmployeeNumber int CONSTRAINT PK_tblEmployee2 PRIMARY KEY IDENTITY(1, 1),
    EmployeeName nvarchar(20)
)
DROP TABLE tblEmployee2

-- global variable - returns the last identity used
SELECT @@IDENTITY

-- Gives same answer as @@IDENTITY
SELECT SCOPE_IDENTITY()
SELECT IDENT_CURRENT('dbo.tblEmployee')