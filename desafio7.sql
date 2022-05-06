SELECT
	a.name AS 'artista',
  b.name AS 'album',
	COUNT(c.artist_id) AS 'seguidores'
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS b
ON a.artist_id = b.artist_id
INNER JOIN SpotifyClone.user_following AS c
ON a.artist_id = c.artist_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;