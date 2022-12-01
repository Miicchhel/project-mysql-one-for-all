SELECT 
  u.nome AS usuario, 
  COUNT(r.cancao_id) AS qt_de_musicas_ouvidas, 
  ROUND(SUM(duracao_segundos)/60, 2) AS total_minutos 
FROM SpotifyClone.tb_usuarios u
  INNER JOIN SpotifyClone.tb_reproducoes r ON u.usuario_id = r.usuario_id
  INNER JOIN SpotifyClone.tb_cancoes c ON r.cancao_id = c.cancao_id
GROUP BY u.nome
ORDER BY u.nome;