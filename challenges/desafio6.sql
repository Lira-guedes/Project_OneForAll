SELECT 
  MIN(p.preco) AS faturamento_minimo,
  MAX(p.preco) AS faturamento_maximo,
  ROUND(AVG(p.preco),2) AS faturamento_medio,
  SUM(p.preco) AS faturamento_total
FROM SpotifyClone.planos AS p
JOIN SpotifyClone.usuarios AS a
ON a.id_plano = p.id_plano;
