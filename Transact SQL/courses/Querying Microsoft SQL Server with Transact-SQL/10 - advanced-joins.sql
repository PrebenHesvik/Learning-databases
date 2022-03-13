SELECT
    tblDepartment.Department,
    DepartmentHead,
    SUM(Amount) AS SumOfAmount
FROM tblDepartment
    LEFT JOIN tblEmployee
    ON tblDepartment.Department = tblEmployee.Department
    LEFT JOIN tblTransaction
    ON tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
GROUP BY
    tblDepartment.Department,
    tblDepartment.DepartmentHead
ORDER BY Department


-- A different way of writing it
SELECT
    D.Department,
    D.DepartmentHead,
    SUM(T.Amount) AS SumOfAmount
FROM tblDepartment AS D
    LEFT JOIN tblEmployee AS E
    ON D.Department = E.Department
    LEFT JOIN tblTransaction AS T
    ON E.EmployeeNumber = T.EmployeeNumber
GROUP BY D.Department, DepartmentHead
ORDER BY D.Department


-- Find all employees who has not made any transactions
SELECT
    E.EmployeeNumber AS ENumber,
    E.EmployeeFirstName,
    E.EmployeeLastName,
    T.EmployeeNumber AS TNumber,
    SUM(T.Amount) AS TotalAmount
FROM
    tblEmployee AS E
    LEFT JOIN
    tblTransaction AS T
    ON
    E.EmployeeNumber = T.EmployeeNumber
WHERE
    T.EmployeeNumber IS NULL
GROUP BY
    E.EmployeeNumber,
    T.EmployeeNumber,
    E.EmployeeFirstName,
    E.EmployeeLastName
ORDER BY
     E.EmployeeNumber,
     T.EmployeeNumber,
     E.EmployeeFirstName,
     E.EmployeeLastName


-- A different way of writing the above query
SELECT
    Enumber,
    EmployeeFirstName,
    EmployeeLastName
FROM (
    SELECT
        E.EmployeeNumber AS Enumber,
        E.EmployeeFirstName,
        E.EmployeeLastName,
        T.EmployeeNumber AS TNumber,
        SUM(T.Amount) AS TotalAmount
    FROM
        tblEmployee AS E
        LEFT JOIN tblTransaction AS T
        ON E.EmployeeNumber = T.EmployeeNumber
    GROUP BY
        E.EmployeeNumber,
        T.EmployeeNumber,
        E.EmployeeFirstName,
        E.EmployeeLastName
    )
        AS newTable
WHERE
    TNumber IS NULL
ORDER BY
     Enumber,
     TNumber,
     EmployeeFirstName,
     EmployeeLastName


-- Doing the same with a right join
SELECT *
FROM
    (
    SELECT
        E.EmployeeNumber AS ENumber,
        E.EmployeeFirstName,
        E.EmployeeLastName,
        T.EmployeeNumber AS TNumber,
        sum(T.Amount) AS TotalAmount
    FROM tblEmployee AS E
        RIGHT JOIN tblTransaction AS T
        ON E.EmployeeNumber = T.EmployeeNumber
    GROUP BY
        E.EmployeeNumber,
        T.EmployeeNumber,
        E.EmployeeFirstName,
        E.EmployeeLastName
    )
    AS newTable
WHERE ENumber IS NULL
ORDER BY
    ENumber,
    TNumber,
    EmployeeFirstName,
    EmployeeLastName