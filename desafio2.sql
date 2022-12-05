-- SELECT COUNT(cancao_id) AS cancoes,
--   (SELECT COUNT(artista_id) FROM SpotifyClone.tb_artistas) AS artistas,
--   (SELECT COUNT(album_id) FROM SpotifyClone.tb_albuns) AS albuns
-- FROM SpotifyClone.tb_cancoes;

-- SELECT (SELECT COUNT(cancao_id) FROM SpotifyClone.tb_cancoes) AS cancoes,
-- (SELECT COUNT(artista_id) FROM SpotifyClone.tb_artistas) AS artistas,
-- (SELECT COUNT(album_id) FROM SpotifyClone.tb_albuns) AS albuns;

SELECT 
  COUNT(c.nome) AS cancoes, 
  COUNT(DISTINCT ar.nome) AS artistas, 
  COUNT(DISTINCT al.nome) AS albuns 
FROM SpotifyClone.tb_cancoes c
INNER JOIN SpotifyClone.tb_albuns al ON c.album_id = al.album_id
INNER JOIN SpotifyClone.tb_artistas ar ON  al.artista_id = ar.artista_id;