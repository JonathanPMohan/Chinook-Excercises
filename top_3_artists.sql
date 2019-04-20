-- Return the top 3 Selling Artists --
-- Selecting Count (#OfSales) from TrackId in Track DB by Name in Artist DB --
Select Top 3 a.Name, Count(t.TrackId) #OfSales
-- Accessing the InvoiceLine DB --
From dbo.InvoiceLine il
-- Join Track DB where TrackID = TrackId from InvoiceLine DB --
Join dbo.Track t On t.TrackId = il.TrackId
-- Also Join on Album DB where AlbumID on Album DB = AlbumID from Track DB --
Join dbo.Album al On al.AlbumId = t.AlbumId
-- Also Join on Artist DB where Artist DB = ArtistID from Album DB --
Join dbo.Artist a on a.ArtistId = al.ArtistId
-- Group By Artist Name from Artist DB --
Group By a.Name
-- Order by Count (#OfSales) in Descending Order --
Order By #OfSales Desc