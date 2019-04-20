  -- Invoice Line Items By Artist & Track Name --  
  -- Choosing Artist Name & Track Name From All Invoices --
Select a.Name As ArtistName, t.Name As TrackName, i.*
 -- Pulling From InvoiceLine Database --
From dbo.InvoiceLine i
-- Joining with the Track Database --
Join dbo.Track t
-- Where TrackID from InvoiceLine Database = TrackID from Track Database --
On i.TrackId = t.TrackId
 -- Joined with the Album Database --
Join dbo.Album al
 -- Where AlbumID from Track Database = AlbumID from Album Database --
On t.AlbumId = al.AlbumId
-- Joined with the Artist Database --
Join dbo.Artist a
-- Where ArtistID from Artist Database = ArtistID from Album Database --
On a.ArtistId = al.ArtistId
-- Order Alphabetically By Artist Name --
Order By a.Name