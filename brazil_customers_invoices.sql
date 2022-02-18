brazil_customers_invoices.sql

--  Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT LastName, FirstName, invoiceId, invoiceDate, BillingCountry
FROM Customer
    JOIN Invoice
    ON customer.CustomerId = Invoice.CustomerId
    WHERE country = "Brazil"