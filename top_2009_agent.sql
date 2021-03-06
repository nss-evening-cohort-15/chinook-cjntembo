top_2009_agent.sql

Which sales agent made the most in sales in 2009?
    Hint: Use the MAX function on a subquery.

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
        WHERE strftime('%Y', I.invoiceDate) = '2009'
        GROUP BY E.FirstName, E.LastName
        ORDER BY Total DESC) AS temp_table;