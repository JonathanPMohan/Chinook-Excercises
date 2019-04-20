-- Return the Top Country From Customer Sales --
-- Selecting the Total Sum from Invoices DB by BillingCountry from the Invoice DB
Select Top 1 i.BillingCountry, Sum(i.Total) InvoicesSum
-- Accessing the Invoice DB --
From dbo.Invoice i
-- Grouping the return by BillingCountry from the Invoice DB --
Group by i.BillingCountry 
-- Ordering the return by InvoicesSum in Descending Order --
Order by InvoicesSum Desc