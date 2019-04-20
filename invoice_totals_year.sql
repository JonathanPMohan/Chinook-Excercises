-- Invoice Totals: Year 2009 & 2011 -- 
-- Select the # of invoices by year
Select Count(*) As InvoiceCount, Year(i.InvoiceDate) As InvoiceYear
-- From Invoices Database --
From dbo.Invoice i
-- of the year 2009 --
Where Year(i.InvoiceDate) = '2009'
-- Or by 2011 -- 
Or Year(i.InvoiceDate) = '2011'
-- group by the year (self explanatory)
Group By Year(i.InvoiceDate)