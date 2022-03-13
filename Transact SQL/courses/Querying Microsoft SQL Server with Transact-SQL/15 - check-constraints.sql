-- CHECK constraints enforce domain integrity by limiting the values that are accepted by one or more columns.
-- You can create a CHECK constraint with any logical (Boolean) expression that returns TRUE or FALSE based on
-- the logical operators. For example, the range of values for a salary column can be limited by creating a CHECK
-- constraint that allows for only data that ranges from $15,000 through $100,000. This prevents salaries from being
-- entered beyond the regular salary range. The logical expression would be the following: salary >= 15000 AND salary <= 100000.

-- You can apply multiple CHECK constraints to a single column. You can also apply a single CHECK constraint to multiple columns
-- by creating it at the table level. For example, a multiple-column CHECK constraint could be used to confirm that any row with
-- a country_region column value of USA also has a two-character value in the state column. This allows for multiple conditions to
-- be checked in one location.

-- CHECK constraints are similar to FOREIGN KEY constraints in that they control the values that are put in a column.
-- The difference is in how they determine which values are valid: FOREIGN KEY constraints obtain the list of valid values
-- from another table, while CHECK constraints determine the valid values from a logical expression.

ALTER TABLE tblTransaction
ADD CONSTRAINT chkAmount CHECK (Amount > -1000 AND Amount < 1000)

-- This wont work because the value we are trying to add
-- is in violation with the constraint we added
INSERT INTO tblTransaction
VALUES
    (2500, '2017-01-01', 1)


-- Replace the puctuation (.) after the middle name
-- such as Robert K. Foss
-- WITH NOCHECK means that we won't check if there
-- already are such values in the table column
ALTER TABLE tblEmployee WITH NOCHECK
ADD CONSTRAINT chkMiddleName CHECK
(REPLACE(EmployeeMiddleName, '.', '') = EmployeeMiddleName OR EmployeeMiddleName IS NULL)


-- Add constraint for acceptable date of birth entries.
-- getdate() returns today's date
ALTER TABLE tblEmployee WITH NOCHECK
ADD CONSTRAINT chkDateOfBirth
CHECK (DateOfBirth BETWEEN '1900-01-01' AND getdate())