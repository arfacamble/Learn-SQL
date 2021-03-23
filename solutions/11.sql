SELECT
  albums.name AS 'Album',
  albums.release_year AS 'Release Year',
  MAX(songs.length) AS 'Duration'
FROM albums
JOIN songs ON albums.id = songs.album_id
GROUP BY songs.album_id;

-- my solution
SELECT a.name AS 'Album', a.release_year AS 'Release Year', MAX(s.length) AS 'Duration'
FROM albums a
JOIN songs s ON s.album_id = a.id
GROUP BY a.id;
