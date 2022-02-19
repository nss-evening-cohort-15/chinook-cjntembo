line_item_track.sql

Provide a query that includes the purchased track name with each invoice line item.

SELECT * FROM Track
SELECT * From InvoiceLine

SELECT 
    invoiceline.InvoiceLineId,
    track.trackId,
    track.name
FROM InvoiceLine
    JOIN Track
    ON InvoiceLine.trackId = track.TrackId
    GROUP BY InvoiceLineId