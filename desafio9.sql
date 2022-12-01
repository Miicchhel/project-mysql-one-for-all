SELECT COUNT(r.cancao_id) AS quantidade_musicas_no_historico 
FROM SpotifyClone.tb_reproducoes r
  INNER JOIN SpotifyClone.tb_usuarios u ON u.usuario_id = r.usuario_id
WHERE u.nome = 'Barbara Liskov'
GROUP BY r.usuario_id;