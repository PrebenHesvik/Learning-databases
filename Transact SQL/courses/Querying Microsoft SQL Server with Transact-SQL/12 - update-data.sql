-- Change all employee numbers in tblTransaction
-- with a value of 3 to a value of 194

BEGIN TRAN

UPDATE tblTransaction
SET EmployeeNumber = 194
-- This next line will display what has been
-- inserted and what has been deleted
OUTPUT inserted.EmployeeNumber, deleted.*
FROM tblTransaction
WHERE EmployeeNumber = 3

ROLLBACK TRAN