invoices_line_item_count.sql

Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId, COUNT(il.InvoiceLineId) as "# of Invoice Line Items" 
FROM Invoice i 
LEFT JOIN InvoiceLine il 
Where i.InvoiceId == il.InvoiceId 
GROUP BY i.InvoiceId;