SELECT 
	u.user AS 'usuario',
  IF(MAX(YEAR(p.played_in)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.user_playback AS p 
ON u.user_id = p.user_id
GROUP BY u.user;