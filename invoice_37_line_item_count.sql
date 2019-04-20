-- Invoice #37 Line Item Count -- 
-- Choosing to count the number of line items --
Select Count(i.InvoiceId) As LineItems
-- From InvoiceLine Database --
From dbo.InvoiceLine i
-- Choosing Invoice #37 --
Where i.InvoiceId = 37