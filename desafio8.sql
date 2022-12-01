SELECT
  ar.nome AS artista,
  al.nome AS album
FROM SpotifyClone.tb_albuns al
  INNER JOIN SpotifyClone.tb_artistas ar ON ar.artista_id = al.artista_id
WHERE ar.nome = 'Elis Regina'
ORDER BY al.album_id;