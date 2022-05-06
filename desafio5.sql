SELECT 
	m.name AS 'cancao',
  COUNT(p.music_id) AS 'reproducoes'
FROM SpotifyClone.user_playback AS p
INNER JOIN SpotifyClone.music AS m
ON m.music_id = p.music_id
GROUP BY m.name
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;