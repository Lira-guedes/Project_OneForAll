SELECT
a.nome AS artista,
al.nome AS album
FROM SpotifyClone.artistas AS a
JOIN SpotifyClone.album AS al ON a.id_artista = al.id_artista
WHERE a.nome = 'Elis Regina'
ORDER BY album;
