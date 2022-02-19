total_sales_{year}.sql

What are the respective total sales for each of those years?

SELECT * FROM Invoice;

SELECT SUM(TOTAL) AS TOTAL_SALES FROM (SELECT Total, invoiceDate FROM Invoice i
WHERE 
    strftime('%Y', InvoiceDate) = '2009'
    OR
    strftime('%Y', InvoiceDate) = '2011'
    GROUP BY InvoiceDate);