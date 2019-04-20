-- Return the top 5 Tracks --
-- Selecting the Count of # of Sales by TrackID for top 5 songs by Track Name --
Select Top 5 t.Name, Count(t.TrackId) #OfSales
-- Accessing Track DB --
From dbo.Track t
-- Join on the InvoiceLine Db where TrackID on Track DB = TrackId on InvoiceLine DB --
Join dbo.InvoiceLine il On t.TrackId = il.TrackId
-- Also Join on the Invoice DB where InvoiceId = InvoiceID on the InvoiceLine DB --
Join dbo.Invoice i On i.InvoiceId = il.InvoiceId
-- Group by Track Name from Track DB --
Group By t.Name
-- Order by the #ofSales Count in Descending Order --
Order By #OfSales Desc