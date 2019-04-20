-- Return the Top Track of 2013 --
-- Selecting the Top 1 by Count of OrderTotal by TrackId from Track DB --
select top 1 t.Name, Count(t.TrackId) OrderTotal
-- Accessing Invoice DB --
from dbo.Invoice i
-- Join on InvoiceLine DB where InvoiceID = InvoiceID on Invoice DB --
join dbo.InvoiceLine il on il.InvoiceId = i.InvoiceId
-- Also Join on TrackDB where TrackID from Track DB = TrackId from InvoiceLine DB --
join dbo.Track t on t.TrackId = il.TrackId
-- Where the InvoiceDate from Invoice DB = 2013
where year (i.InvoiceDate) = 2013
-- Group by Track Name from Track DB --
group by t.Name
-- Order the OrderTotal Count in Descending Order --
order by OrderTotal Desc