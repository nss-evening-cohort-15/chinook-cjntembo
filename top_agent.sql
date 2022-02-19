top_agent.sql

 Which sales agent made the most in sales over all?

SELECT temp_table.FirstName AS REP_FirstName,
temp_table.LastName AS REP_LASTName,
max(total) 
FROM
(SELECT e.FirstName, e.LastName, sum(i.total) AS total
FROM Employee E
    JOIN Customer C
    ON C.SupportRepID = E.EmployeeId
    JOIN Invoice I
    ON I.CustomerID = C.CustomerId
        GROUP BY E.FirstName, E.LastName
        ORDER BY Total DESC) AS temp_table;