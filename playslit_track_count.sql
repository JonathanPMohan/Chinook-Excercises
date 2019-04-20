-- Total Number of Tracks In Each Playlist --
-- selecting the track count in each playlist by playlistID --
Select p.Name, Count(p.PlaylistId) NumberOfTracks
-- From the Playlist Database --
From dbo.Playlist p
-- Joined on the PlaylistTrack Database
Join dbo.PlaylistTrack pt
-- where the Playlist ID from PlaylistTrack Database = Playlist ID from Playlist Database --
On pt.PlaylistId = p.PlaylistId
-- Group Playlists by name alphabetically --
Group By p.Name