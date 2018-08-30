-- 1. Query all of the entries in the Genre table
SELECT Label FROM Genre;

SELECT * FROM Artist;

SELECT * 
FROM Artist
WHERE ArtistName = "Jisie"
or ArtistName LIKE "Jordan%";

-- 2. Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist 
(ArtistName, YearEstablished)
VALUES 
("Jordan's Bluegrass Band", 1990);

-- Select all albums for a given genre

SELECT Album.Title, s.Title
FROM Album 
JOIN Song s ON s.AlbumId = Album.AlbumId;


SELECT a.Title, s.Title 
FROM Song s 
LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

-- 8. Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT s.AlbumId, a.Title, COUNT(s.SongId)
FROM Song s
JOIN Album a on s.AlbumId = a.AlbumId
GROUP BY s.AlbumId;

-- 12. Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT a.Title, MAX(a.AlbumLength)
FROM Album a;