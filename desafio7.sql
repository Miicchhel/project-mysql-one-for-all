SELECT 
  ar.nome AS artista, 
  al.nome AS album, 
  COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.tb_artistas ar
  INNER JOIN SpotifyClone.tb_albuns al ON al.artista_id = ar.artista_id
  INNER JOIN SpotifyClone.tb_seguindo_artistas s ON s.artista_id = ar.artista_id
GROUP BY 
  ar.nome, 
  al.nome
ORDER BY 
  COUNT(s.usuario_id) DESC, 
  ar.nome, 
  al.nome;