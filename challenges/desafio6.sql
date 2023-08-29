SELECT 
  MIN(p.preço),2 AS faturamento_minimo,
  MAX(p.preço),2 AS faturamento_maximo,
  ROUND(AVG(p.preço),2) AS faturamento_medio,
  SUM(p.preço),2 AS faturamento_total
FROM SpotifyClone.planos AS p
JOIN SpotifyClone.pessoa_usuaria AS a
ON a.id_plano = p.id_plano;
