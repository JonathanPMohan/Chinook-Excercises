-- Brazil Customers Invoices --
-- By Name, invoice ID, invoice Date, Billing Country, 
Select [Name] = c.[FirstName] + ' ' + c.[Lastname], i.InvoiceId, i.InvoiceDate, i.BillingCountry
from dbo.Customer c -- From Customer DataBase --
join dbo.Invoice i -- Join To Invoice DataBase --
on c.CustomerId = i.CustomerId -- On Customer ID (customer DB) = Customer ID (Invoice DB)
where i.BillingCountry = 'Brazil'  -- self explanatory --