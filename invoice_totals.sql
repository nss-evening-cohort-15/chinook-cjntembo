invoice_totals.sql

-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT Invoice.Total, customer.firstname AS Cfirstname, customer.lastname AS Clastname, customer.country AS CCountry, employee.firstname AS EFirstName, employee.lastname AS Elastname
FROM Employee
    JOIN Customer
    ON Employee.EmployeeId = Customer.SupportRepId
        JOIN Invoice
        ON Customer.customerId = Invoice.customerId
        WHERE Title LIKE "%SALES%AGENT%"
        ORDER BY Clastname, Cfirstname ASC