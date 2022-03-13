-- Default constraints only acts as constraints when you add a new row
-- It gives a default value except if another value is specified

-- Add new column to transactions table
ALTER TABLE tblTransaction
ADD DateOfEntry DATETIME

-- Add date automaticall when row is inserted
ALTER TABLE tblTransaction
ADD CONSTRAINT defDateOfEntry DEFAULT GETDATE() FOR DateOfEntry

-- Add constraint when table is created
-- Add constraint at the same time as table is created
CREATE TABLE tblTransaction2
(
    Amount smallmoney NOT NULL,
    DateOfTranasction smalldatetime NOT NULL,
    EmployeeNumber int NOT NULL,
    -- We have to change the name of the constraint,
    -- even though it is in another table because
    -- there can't be two constraints with the same name
    DateOfEntry datetime NULL CONSTRAINT tblTransaction_DateOfEntry DEFAULT GETDATE()
    -- This is why it might be a good idea to include
    -- the table name in the constraint name
)

DROP TABLE tblTransaction2