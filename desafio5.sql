SELECT 
  c.nome AS cancao, 
  COUNT(r.cancao_id) AS reproducoes 
FROM SpotifyClone.tb_cancoes c
  INNER JOIN SpotifyClone.tb_reproducoes r ON r.cancao_id = c.cancao_id
GROUP BY nome
ORDER BY COUNT(r.cancao_id) DESC, nome
LIMIT 2;