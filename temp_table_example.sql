-- Tempoary Tables --

create table ##myCoolTable (FullName varchar(255), CoolnessRating int) 
-- always have a # pound sign like variables always have @ --
select * from ##myCoolTable
drop table ##myCoolTable

  -- ## Basically the same, it's temp but it is a "Global Temporay Table" 
				-- Any user can access this table -- Only exists in the scope of the connection.
				-- If you close this file, you lose all the data -- 


select  c.*, i.Total
into #tempdata
from Invoice i
join Customer c on c.CustomerID = i.CustomerId
where FirstName like 'a%'

select * from #tempdata