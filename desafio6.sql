SELECT 
	MIN(valor_plano) AS faturamento_minimo,
  MAX(valor_plano) AS faturamento_maximo,
  ROUND(AVG(valor_plano), 2) AS faturamento_medio,
  SUM(valor_plano) AS faturamento_total
FROM SpotifyClone.tb_planos p
INNER JOIN SpotifyClone.tb_usuarios u ON u.plano_id = p.plano_id;