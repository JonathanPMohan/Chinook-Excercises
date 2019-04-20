-- Line Item List By Track Name -- 
-- Select Track by name from (*) All Invoices  --
Select t.Name, i.*
 -- From the Track Database --
From dbo.Track t
-- Joining with the InvoiceLine Database --
Join dbo.InvoiceLine i
-- Where the Track ID from Track Database = Track ID from InvoiceLine Database 
On t.TrackId = i.TrackId
-- Order Alphabetically by the Track Name --
Order By t.Name