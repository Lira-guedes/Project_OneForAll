SELECT a.nome AS cancao,
  COUNT(b.id_cancoes) AS reproducoes
FROM SpotifyClone.cancoes AS a
LEFT JOIN SpotifyClone.historico AS b ON b.id_cancoes = a.id_cancoes
GROUP BY cancao 
ORDER BY reproducoes DESC, cancao LIMIT 2;

-- GROUP BY a.id_cancoes 

