playlists_track_count.sql

Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT * FROM Playlist
SELECT * FROM PlaylistTrack
SELECT * FROM Track

SELECT COUNT(TrackId) AS Number_of_tracks, playList.name AS PlayList_Name
FROM PlaylistTrack
    JOIN Playlist
    ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
        GROUP BY playList.PlaylistId