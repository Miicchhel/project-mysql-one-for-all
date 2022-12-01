SELECT DISTINCT
  u.nome AS usuario, 
  IF(MAX(YEAR(r.data_reproducao)) >= 2021, "Usuário ativo", "Usuário inativo") AS status_usuario
FROM SpotifyClone.tb_usuarios u
  INNER JOIN SpotifyClone.tb_reproducoes r ON u.usuario_id = r.usuario_id
GROUP BY u.nome
ORDER BY u.nome;