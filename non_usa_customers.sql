-- non_usa_customers --
Select [Name] = c.[FirstName] + ' ' + c.[LastName], c.CustomerId, c.Country
from dbo.Customer c
-- <> is current form for NOT EQUAL --
where c.Country <> 'USA'