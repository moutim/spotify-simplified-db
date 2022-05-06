SELECT 
	ROUND(MIN(s.price), 2)  AS 'faturamento_minimo',
  ROUND(MAX(s.price), 2) AS 'faturamento_maximo',
  ROUND(AVG(s.price), 2) AS 'faturamento_medio',
  ROUND(SUM(s.price), 2) AS 'faturamento_total'
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.signature AS s
ON u.signature_id = s.signature_id;