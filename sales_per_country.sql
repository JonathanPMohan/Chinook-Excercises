-- Return Total Sales By Country --
-- Selecting the Total Sum from Invoices DB by BillingCountry from the Invoice DB
Select i.BillingCountry, Sum(i.Total) InvoicesSum
-- Accessing the Invoice DB --
From dbo.Invoice i
-- Grouping the return by BillingCountry from the Invoice DB --
Group by i.BillingCountry
-- Ordering the return by InvoicesSum in Descending Order --
Order By InvoicesSum Desc