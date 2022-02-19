tracks_no_id.sql

Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT NAME FROM TRACK WHERE NOT EXISTS(SELECT TRACKID FROM Track);
SELECT * FROM Album;
SELECT * FROM MediaType;
SELECT * FROM Genre;
SELECT * FROM Track

SELECT 
    track.Name AS trackName, 
    track.composer,
    track.milliseconds,
    track.bytes,
    track.unitprice,
    album.Title,
    MediaType.Name AS MediaName,
    Genre.Name AS genreName
FROM Track
    JOIN Album
    ON Track.AlbumId = Album.AlbumId
        JOIN MediaType
        ON Track.MediaTypeId = MediaType.MediaTypeId
            JOIN Genre
            ON Track.GenreId = Genre.GenreId