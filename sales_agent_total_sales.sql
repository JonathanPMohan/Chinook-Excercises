-- Return Total Sales For Each Sales Agent -- 
-- Selecting First & Last Name of Employees, & Requesting the Sum of the Sales Total from Inovices DB --
Select e.FirstName + ' ' + e.LastName EmployeeName, Sum(i.Total) SalesTotal
-- Pulling from the Employee DB --
From dbo.Employee e
-- To Join with the Customer DB where SupportRepID in Customer DB = EmployeeID in Employee DB --
Join dbo.Customer c On c.SupportRepId = e.EmployeeId
-- Also to Join with the Invoice DB where Customer ID from Invoice ID = CustomerID from Customer DB --
Join dbo.Invoice i On i.CustomerId = c.CustomerId
-- Return info Alphabetically sorted by Employee Last Name --
Group By e.FirstName, e.LastName