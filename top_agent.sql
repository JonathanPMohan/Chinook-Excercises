-- Return Top Agent By Overall Sales --
-- select Top 1 (last name, first name) by Sum of Total Sales From Employee DB --
Select Top 1 e.LastName, e.FirstName, Sum(i.Total) As SalesTotal
-- Accessing The Employee DB --
From dbo.Employee e
-- Joining the Customer DB where SupportRepID from Customer DB = EmployeeID from Employee DB --
Join dbo.Customer c on c.SupportRepId = e.EmployeeId
-- Also join on Invoice DB where Customer ID on Invoice DB = CustomerID on Customer DB --
join dbo.Invoice i on i.CustomerId = e.EmployeeId
-- Grouping Alphabetically by Last Name, First Name --
group by e.LastName, e.FirstName
-- Order by SalesTotal in descending order --
order by SalesTotal Desc