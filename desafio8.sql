SELECT 
	b.name AS 'artista',
	a.name AS 'album'
FROM SpotifyClone.album AS a
INNER JOIN SpotifyClone.artist AS b
ON a.artist_id = b.artist_id
WHERE a.artist_id = 1;