SELECT 
	m.name AS 'nome',
  COUNT(p.music_id) AS 'reproducoes'
FROM SpotifyClone.user_playback AS p
INNER JOIN SpotifyClone.music AS m
ON p.music_id = m.music_id
INNER JOIN SpotifyClone.user AS u
ON u.user_id = p.user_id
WHERE u.signature_id IN (1, 4)
GROUP BY `nome`;