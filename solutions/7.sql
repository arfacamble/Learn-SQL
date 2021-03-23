/* This is the query used to get the id */
/*
  SELECT * FROM albums where release_year IS NULL;
*/

UPDATE albums
SET release_year = 1986
WHERE id = 4;

-- my solution
-- 1 used this query to check what was going to change:
SELECT * FROM albums
WHERE release_year IS NULL;

-- 2 used this query to make the change
UPDATE albums
SET release_year = 1986
WHERE release_year IS NULL;

-- 3 used the above again to confirm change was successful
