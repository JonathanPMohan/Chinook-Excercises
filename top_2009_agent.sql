-- Return Top Sales Performer for 2009 --
-- select Top 1 (last name, first name) by Sum of Total Sales From Employee DB --
Select Top 1 e.LastName, e.FirstName, Sum(i.Total) As SalesTotal
-- Accessing The Employee DB --
From dbo.Employee e
-- Joining the Customer DB where SupportRepID from Customer DB = EmployeeID from Employee DB --
Join dbo.Customer c On c.SupportRepId = e.EmployeeId
-- Also join on Invoice DB where Customer ID on Invoice DB = CustomerID on Customer DB --
Join dbo.Invoice i On i.CustomerId = c.CustomerId
-- Selecting the year 2009 as InvoiceDate from Invoice DB --
Where Year(i.InvoiceDate) = '2009'
-- Grouping Alphabetically by Last Name, First Name --
Group By e.LastName, e.FirstName
-- Ordering by Sales Total in Descending Order --
Order By SalesTotal Desc