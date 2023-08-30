SELECT a.nome AS pessoa_usuaria ,
COUNT(*) AS musicas_ouvidas,
FORMAT(SUM(c.duracao/ 60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS a
LEFT JOIN SpotifyClone.historico AS b ON a.id_usuario = b.id_usuario
LEFT JOIN SpotifyClone.cancoes AS c ON c.id_cancoes = b.id_cancoes
GROUP BY a.nome
ORDER BY pessoa_usuaria;
