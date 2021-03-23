INSERT INTO bands (name)
VALUES ('Favorite Band Name');

/* This is the query used to get the band id of the band just added */
/*
  SELECT id FROM bands
  ORDER BY id DESC LIMIT 1;
*/

INSERT INTO albums (name, release_year, band_id)
VALUES ('Favorite Album Name', 2000, 8);

-- my solution, 1 create band
INSERT INTO bands(name)
VALUES ('Jeff Buckley');
-- find id of Jeff
SELECT id from bands
WHERE name LIKE 'Jeff%';
-- create album
INSERT INTO albums(name, release_year, band_id)
VALUES ('Grace', 1994, 8);
-- double check everything has gone to plan
SELECT * from bands b
JOIN albums a ON a.band_id = b.id
WHERE b.id = 8;
