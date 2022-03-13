USE [70-461]
GO

-- Drop the table if it already exists
DROP TABLE IF EXISTS tblEmployee

-- Create a table
CREATE TABLE tblEmployee
(
    EmployeeNumber int NOT NULL,
    EmployeeFirstName varchar(50) NOT NULL,
    EmployeeMiddleName varchar(50) NULL,
    EmployeeLastName varchar(50) NOT NULL,
    EmployeeGovernmentID char(10) NULL,
    DateOfBirth date NOT NULL,
)

-- Add new column to the table
ALTER TABLE tblEmployee
ADD Department varchar(50);

-- Insert data into the table
INSERT INTO tblEmployee
VALUES
    (134, 'Dylan', 'A', 'Word', 'HN513777D', '19920914', 'Customer Relations')

-- Being explicit when inserting values
INSERT INTO tblEmployee
    (
    [EmployeeNumber],
    [EmployeeFirstName],
    [EmployeeMiddleName],
    [EmployeeLastName],
    [EmployeeGovernmentID],
    [DateOfBirth],
    [Department]
    )

VALUES
    (
        138,
        'Guido',
        'Van',
        'Rossum',
        'HN513877D',
        '19900914',
        'Customer Relations'
    ),
    (
        139,
        'Kevin',
        '',
        'Markham',
        'HN513889D',
        '19900612',
        'Data Analytics'
    )

-- Update column values: changing blank strings to null
UPDATE tblEmployee
SET EmployeeMiddleName = NULL
WHERE EmployeeMiddleName = ''

-- Change number of chars allowed in Department column
-- Will only work if the data in the column is less than 55 characters
ALTER TABLE tblEmployee
ALTER COLUMN Department VARCHAR(55)
