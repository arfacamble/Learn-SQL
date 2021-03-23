SELECT bands.name AS 'Band Name'
FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) = 0;

-- my solution
SELECT bands.name as 'Band Name' FROM bands
LEFT JOIN albums on albums.band_id = bands.id
WHERE albums.id IS NULL;

-- also his solution threw an error:
-- Query 1 ERROR: Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'record_company.bands.name' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
