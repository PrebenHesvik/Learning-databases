





-- FOREIGN KEY
--  SEEK
--  SCAN

-- When deleting
--  no action (default) leads to an error when being referenced
--  cascade
--  set null
--  set default

-- The primary key and the foreign key has to be of the same type

BEGIN TRANSACTION
--ALTER TABLE tblTransaction ALTER COLUMN EmployeeNumber INT NULL
ALTER TABLE tblTransaction ADD CONSTRAINT DF_tblTransaction DEFAULT 124 FOR EmployeeNumber

ALTER TABLE tblTransaction WITH NOCHECK
ADD CONSTRAINT FK_tblTransaction_EmployeeNumber FOREIGN KEY (EmployeeNumber)
REFERENCES tblEmployee(EmployeeNumber)

SELECT E.EmployeeNumber, T.*
FROM tblEmployee AS E
    RIGHT JOIN tblTransaction AS T
    ON E.EmployeeNumber = T.EmployeeNumber
WHERE T.Amount IN (-179.47, 786.22, -967.36, 957.03)
ROLLBACK TRANSACTION