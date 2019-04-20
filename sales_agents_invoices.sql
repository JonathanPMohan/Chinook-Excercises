-- Sales Agents Invoices -- 
-- Selet Name from Employee Data base, Invoice ID from Invoice --
Select [Name] = e.[FirstName] + ' ' + e.[LastName], i.InvoiceId
-- From Database of Invoice & Customer
From dbo.Invoice i, dbo.Customer c
-- Join on the Employee Database --
Join dbo.Employee e
-- When SupportRepID from Customer = EmployeeId from Employee
on c.SupportRepId = e.EmployeeId
-- Where the CustomerID from Invoice = the Customer ID from Customer
Where i.CustomerId = c.CustomerId
-- Order the info by last name and Invoice Number --
Order By e.LastName, i.InvoiceId