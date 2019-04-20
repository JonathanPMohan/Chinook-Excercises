-- Invoice Totals -- 
-- select Invoice Total, Customer Name from Customers, Country, Sales Agent Name from Employees --
Select i.Total, [CustName] = c.[FirstName] + ' ' + c.[LastName], c.[Country], [AgentName] = e.[FirstName] + ' ' + e.[LastName]
-- From the Invoice Database & Employee Database --
From dbo.Invoice i, dbo.Employee e
-- Joining on the Customer Database --
Join dbo.Customer c
 -- On SupportRepId from Customers = EmployeeID from Employees
On c.SupportRepId = e.EmployeeId
-- Where Customer ID from Customers = CustomerID from Invoices
Where c.CustomerId = i.CustomerId
-- Order by Last Name of Customers
Order By c.LastName