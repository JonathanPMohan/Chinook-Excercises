-- Invoice Sales Totals: Year 2009 & 2011 -- 
-- Select Total Sales Sum By Year --
Select Count(*) As InvoiceCount, Sum(i.Total), Year(i.InvoiceDate)
-- From Invoices Database --
From dbo.Invoice i
-- From 2009 & 20011 Only --
Where Year(i.InvoiceDate) = '2009'
Or Year(i.InvoiceDate) = '2011'
-- Group by year (obviously)
Group By Year(i.InvoiceDate)