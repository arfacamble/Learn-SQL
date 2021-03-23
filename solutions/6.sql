SELECT
  albums.name as Name,
  albums.release_year as 'Release Year',
  SUM(songs.length) as 'Duration'
FROM albums
JOIN songs on albums.id = songs.album_id
GROUP BY songs.album_id
ORDER BY Duration DESC
LIMIT 1;

-- my solution
SELECT a.name AS 'Name', a.release_year AS 'Release Year', SUM(s.length) AS 'Duration'
FROM albums a
JOIN songs s ON s.album_id = a.id
GROUP BY a.id
ORDER BY Duration DESC
LIMIT 1;
