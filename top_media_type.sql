 -- Return the Top Selling Media Type --
 -- Selecting the Top Selling Media Type by Count (#ofSales) by Name from MediaType DB --
Select Top 1 mt.Name MediaType, Count(t.TrackId) #OfSales
-- Accessing the Invoice DB --
From dbo.Invoice i
-- Join on InvoiceLine DB where InvoiceID = InvoiceID from Invoice DB --
Join dbo.InvoiceLine il On il.InvoiceId = i.InvoiceId
-- Also Join on Track DB where TrackID = TrackID from InvoiceLine DB --
Join dbo.Track t On t.TrackId = il.TrackId
-- Also Join MediaType DB where MediaTypeID = MediaTypeID from Track DB --
Join dbo.MediaType mt On mt.MediaTypeId = t.MediaTypeId
-- Group by MediaType Name From MediaType DB --
Group By mt.Name
-- Order by Count(#OfSales) in Descending Order
Order By #OfSales Desc