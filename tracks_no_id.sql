-- Providing Tracks by Name but without ID Ordered By Genre & Media Type --
-- Selecting Track Name, Title, Genre & Media Type From Respective Databases --
Select t.Name TrackName, a.Title AlbumTitle, g.Name Genre, mt.Name MediaType
-- From the Track Database --
From dbo.Track t
-- To Join with the MediaType Database where the MediaTypeID = MediaType ID in the Track Database --
Join dbo.MediaType mt On mt.MediaTypeId = t.MediaTypeId
-- Also Join on the Album Database where the Track DB AlbumID = AlbumID on Album DB --
Join dbo.Album a On t.AlbumId = a.AlbumId
-- Also Join on the Genre DB where the Genre ID from Genre DB = Genre ID from Track DB --
Join dbo.Genre g On g.GenreId = t.GenreId
-- Order Alphabetically by Genre Type --
Order By g.Name