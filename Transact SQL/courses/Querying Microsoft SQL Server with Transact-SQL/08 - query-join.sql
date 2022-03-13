-- Before this step I have added a new table based on the data in tblTransaction150707.xlsx

-- TYPES OF COMMON KEYS
-- inner: join where the common_key exists in both tables
-- left: join tables, but include all common_keys that exists in left table
-- right: join tables, but include all common_keys that exists in right table
-- cross: join tables, include every combination of all common_keys that exist in either table
-- cross is almost never used

SELECT
    tblEmployee.EmployeeNumber,
    EmployeeFirstName,
    EmployeeLastName,
    sum(Amount) AS SumOfAccount
FROM tblEmployee
    LEFT JOIN tblTransaction
    ON tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
WHERE [EmployeeLastName] LIKE 'W%'
GROUP BY
    tblEmployee.EmployeeNumber,
    EmployeeFirstName,
    EmployeeLastName
ORDER BY tblEmployee.EmployeeNumber

