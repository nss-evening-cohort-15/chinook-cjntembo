sales_agent_total_sales.sql

Provide a query that shows total sales made by each sales agent.

SELECT 
    TotalSales,
    EFirstName ||" "|| ELastName AS EFullName
FROM (SELECT SUM(I.total) AS TotalSales,
    E.firstName AS EFirstName, 
    E.lastName AS ELastName
    FROM Employee E
    JOIN Customer C
    ON E.EmployeeId = C.SupportRepId
        JOIN Invoice I
        ON C.customerId = I.customerId
        WHERE Title LIKE "%SALES%AGENT%"
        GROUP BY EmployeeId);