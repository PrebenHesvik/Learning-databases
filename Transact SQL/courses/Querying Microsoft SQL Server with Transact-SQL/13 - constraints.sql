-- CONSTRAINTS
-- Constraints let you define the way the database engine automatically enforces the integrity of a database.
-- Constraints define rules regarding the values allower in columns and are the standard mechanism for enforcing integrity.
-- Using constraints is preferred to using DML Triggers, rules and defaults.
-- The query optimizer also uses constraint definitions to build high-performance query execution plans.

-- Constraint types: unique, default, check, primary key, foreign key

-- Check for duplicate Governemnt IDs
SELECT EmployeeGovernmentID, count(EmployeeGovernmentID) AS MyCount
FROM tblEmployee
GROUP BY EmployeeGovernmentID
HAVING COUNT(EmployeeGovernmentID) > 1


-- Find all the rows with the ID number of 'HN513777D'
SELECT *
FROM tblEmployee
WHERE EmployeeGovernmentID = 'HN513777D'


-- Delete row with employee number 134
BEGIN TRANSACTION
DELETE FROM tblEmployee
WHERE EmployeeNumber = 134
COMMIT TRANSACTION


-- Create constraint for unique government IDs
ALTER TABLE tblEmployee
ADD CONSTRAINT unqGovernmentID UNIQUE (EmployeeGovernmentID);


-- Create constraint for unique combination of
-- Amount, DateOfTransaction, EmployeeNumber
-- in table transactions
ALTER TABLE tblTransaction
ADD CONSTRAINT unqTransaction UNIQUE(Amount, DateOfTransaction, EmployeeNumber)


-- To drop the constraint:
BEGIN TRANSACTION
ALTER TABLE transactions
DROP CONSTRAINT unqTransaction
ROLLBACK TRANSACTION


-- Add constraint at the same time as table is created
CREATE TABLE transactions2
(
    Amount smallmoney NOT NULL,
    DateOfTransAction smalldatetime NOT NULL,
    EmployeeNumber int NOT NULL,
    CONSTRAINT unqTransaction2
    UNIQUE(Amount, DateOfTransaction, EmployeeNumber)
)

DROP TABLE tranasctions2