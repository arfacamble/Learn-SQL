/* This is the query used to get the album id of the album added in #8 */
/*
  SELECT id FROM albums
  ORDER BY id DESC LIMIT 1;
*/

DELETE FROM albums
WHERE id = 19;

/* This is the query used to get the band id of the band added in #8 */
/*
  SELECT id FROM bands
  ORDER BY id DESC LIMIT 1;
*/

DELETE FROM bands
WHERE id = 8;

-- my solution 1 get id for album
SELECT * from albums
WHERE name LIKE "Grace";
-- delete album
DELETE FROM albums
WHERE id = 19;
-- delete band
DELETE FROM bands
WHERE id = 8;
-- check it's gone
SELECT * from bands
WHERE name LIKE 'Jeff%';
-- album must be gone as it referenced band,
-- otherwise band deleteion would have given error
