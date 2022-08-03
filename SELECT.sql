SELECT name, year
FROM albums
WHERE year >= 2018;

SELECT name, duration
FROM tracks
ORDER BY duration DESC 
LIMIT 1;

SELECT name
FROM tracks
WHERE duration >= '00:03:30';

SELECT name, year
FROM collections
WHERE year BETWEEN 2018 AND 2020;

SELECT name
FROM tracks
WHERE name LIKE '%мой%' OR name LIKE '%my%' OR name LIKE '%Мой%' OR name LIKE '%My%';