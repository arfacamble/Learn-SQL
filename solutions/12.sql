SELECT
  bands.name AS 'Band',
  COUNT(songs.id) AS 'Number of Songs'
FROM bands
JOIN albums ON bands.id = albums.band_id
JOIN songs ON albums.id = songs.album_id
GROUP BY albums.band_id;

-- my solution
SELECT b.name AS 'Band', COUNT(s.id) AS 'Number of Songs'
FROM bands b
JOIN albums a ON b.id = a.band_id
JOIN songs s ON a.id = s.album_id
GROUP BY b.id;
