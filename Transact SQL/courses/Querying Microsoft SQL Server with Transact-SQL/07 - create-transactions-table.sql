USE [70-461]
GO
CREATE TABLE tblTransaction
(
    Amount smallmoney NOT NULL,
    DateOfTransaction smalldatetime NULL,
    EmployeeNumber int NOT NULL
)

INSERT INTO tblTransaction
VALUES
    (303.56, '20141014', 458),
    (174.45, '20141027', 700)

-- Delete all rows
TRUNCATE TABLE tblTransaction