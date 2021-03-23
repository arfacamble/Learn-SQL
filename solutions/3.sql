SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

-- my solution
SELECT * FROM albums
WHERE release_year > 1
ORDER BY release_year
LIMIT 1;
-- notes: IS NOT, != does not work
