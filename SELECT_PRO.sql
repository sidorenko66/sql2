SELECT name, COUNT(*)
FROM genres g
LEFT JOIN artistgenre a ON g.id = a.genre_id 
GROUP BY name;

SELECT COUNT(*)
FROM tracks t
JOIN albums a ON t.album_id = a.id 
WHERE year BETWEEN 2019 AND 2020;

SELECT a.name, AVG(duration)
FROM tracks t
LEFT JOIN albums a ON t.album_id = a.id
GROUP BY a.name;

SELECT name
FROM artists 
WHERE name != (SELECT artists.name
				FROM albums 
				LEFT JOIN artistalbum ON albums.id =artistalbum.album_id 
				JOIN artists ON artistalbum.artist_id = artists.id 
				WHERE YEAR = 2020);
				
SELECT collections.name 
FROM collections
LEFT JOIN collectiontrack ON collections.id = collectiontrack.collection_id
JOIN tracks ON tracks.id = collectiontrack.track_id
JOIN albums ON tracks.album_id = albums.id 
LEFT JOIN artistalbum ON albums.id = artistalbum.album_id 
JOIN artists ON artistalbum.artist_id = artists.id 
WHERE artists.name = 'Queen'
GROUP BY collections.name;

SELECT albums.name
FROM albums
LEFT JOIN artistalbum ON albums.id = artistalbum.album_id 
JOIN artists ON artistalbum.artist_id = artists.id 
WHERE artists.id = (SELECT artist_id
					FROM artistgenre
					GROUP BY artist_id
					HAVING COUNT(*) > 1);
					
SELECT tracks.name 
FROM tracks
LEFT JOIN collectiontrack ON tracks.id = collectiontrack.track_id 
WHERE collectiontrack.track_id IS NULL;

SELECT artists.name 
FROM artists 
LEFT JOIN artistalbum ON artists.id = artistalbum.artist_id 
JOIN albums ON artistalbum.album_id = albums.id
LEFT JOIN tracks ON albums.id = tracks.album_id 
WHERE duration = (SELECT MIN (duration) FROM tracks);

SELECT a.name
FROM albums a 
LEFT JOIN tracks t ON a.id = t.album_id
GROUP BY a.name
HAVING COUNT(*) = (SELECT COUNT(*)
					FROM albums a 
					LEFT JOIN tracks t ON a.id = t.album_id
					GROUP BY a.name
					ORDER BY COUNT(*)
					LIMIT 1)
