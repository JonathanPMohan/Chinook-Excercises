-- # of invoices per country --
-- Returning the Invoice Count by Billing Country via Invoice ID --
Select i.BillingCountry, Count(i.InvoiceId) As NumberOfInvoices
-- From the Invoice Database --
From dbo.Invoice i
-- Grouping by BillingCountry --
Group By i.BillingCountry