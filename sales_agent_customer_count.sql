-- Return Customer Count Per Each Sales Agent --
-- selecting the Count of Customers (#ofCustomers) by Customer ID from the Customer DB --
Select e.EmployeeId, Count(c.CustomerId) #OfCustomers
-- Accessing Both the Employee DB & the Customer DB --
From dbo.Employee e, dbo.Customer c
-- Where EmployeeID from Employee DB = SupportRepId from Customer DB --
Where e.EmployeeId = c.SupportRepId
-- Group return by EmployeeID from Employee DB --
Group By e.EmployeeId
