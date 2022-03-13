BEGIN TRANSACTION
SELECT count(*)
FROM tblTransaction

-- Delete transactions where the person who made the transaction does not have
-- have a record in tblEmployee
DELETE
    tblTransaction
FROM
    tblTransaction
WHERE
    EmployeeNumber IN
(
    SELECT TNumber
FROM
    (
    SELECT
        E.EmployeeNumber AS Enumber,
        E.EmployeeFirstName,
        E.EmployeeLastName,
        T.EmployeeNumber AS Tnumber,
        SUM(T.Amount) AS TotalAmount
    FROM
        tblEmployee AS E
        RIGHT JOIN tblTransaction AS T
        ON E.EmployeeNumber = T.EmployeeNumber
    GROUP BY
        E.EmployeeNumber,
        T.EmployeeNumber,
        E.EmployeeFirstName,
        E.EmployeeLastName
    )
    AS newTable
WHERE
    Enumber IS NULL
)


SELECT COUNT(*)
FROM tblTransaction
ROLLBACK TRANSACTION