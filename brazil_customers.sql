brazil_customers.sql

-- Provide a query only showing the Customers from Brazil.

SELECT FirstName, LastName, customerId, Country
FROM Customer
WHERE country = "Brazil"