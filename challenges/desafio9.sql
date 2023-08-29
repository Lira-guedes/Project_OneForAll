SELECT
    COUNT(*) AS musicas_no_historico
FROM SpotifyClone.usuarios AS a
JOIN SpotifyClone.historico AS b ON a.id_usuario = b.id_usuario
WHERE a.nome = 'Barbara Liskov';