-- Return All Invoices, but Also Return the # of Line Items --
-- Select the Count of # of Invoice Line items by InvoiceLine ID by selecting all(*) Invoices -- 
Select i.*, Count(il.InvoiceLineId) #OfLineItems
-- From the Invoice Database --
From dbo.Invoice i
-- To Join on the InvoiceLine DB where InvoiceID from Invoice DB = InvoiceID from InvoiceLine DB --
Join dbo.InvoiceLine il On i.InvoiceId = il.InvoiceId
-- Group return by Invoice ID, Customer ID, BillingAddress, BillingCity, BillingCountry, BillingPostalCode, BillingState, InvoiceDate & InvoiceTotal --
Group By i.InvoiceId, i.CustomerId, i.BillingAddress, i.BillingCity, i.BillingCountry, i.BillingPostalCode, i.BillingState, i.InvoiceDate, i.Total