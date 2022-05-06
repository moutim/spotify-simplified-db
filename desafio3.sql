SELECT 
	u.user AS 'usuario', 
	COUNT(p.music_id) AS 'qtde_musicas_ouvidas',
	ROUND(SUM(m.duration_sec) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.user_playback AS p ON u.user_id = p.user_id
INNER JOIN SpotifyClone.music AS m ON p.music_id = m.music_id
GROUP BY u.user; 