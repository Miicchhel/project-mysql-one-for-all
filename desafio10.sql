SELECT
  c.nome AS nome,
  COUNT(r.usuario_id) AS reproducoes 
FROM SpotifyClone.tb_cancoes c
  INNER JOIN SpotifyClone.tb_reproducoes r ON r.cancao_id = c.cancao_id
  INNER JOIN SpotifyClone.tb_usuarios u ON u.usuario_id = r.usuario_id
WHERE u.plano_id IN (1, 4)
GROUP BY nome
ORDER BY nome;