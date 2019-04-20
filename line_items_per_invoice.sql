-- Line Item Count Per Invoice -- 
-- Choosing to count the number of line items per invoice ID --
Select i.InvoiceId, Count(i.InvoiceId) As LineItems
-- From the InvoiceLine Database --
From dbo.InvoiceLine i
-- Grouping by the Invoice ID --
Group By i.InvoiceId