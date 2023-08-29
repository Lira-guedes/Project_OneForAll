SELECT 
ar.nome AS artista, 
al.nome AS album,
COUNT(s.id_usuario) AS pessoas_seguidoras
FROM SpotifyClone.artistas AS ar
JOIN SpotifyClone.album AS al ON al.id_artista = ar.id_artista
LEFT JOIN SpotifyClone.seguindo_artistas AS s ON s.id_artista =a r.id_artista
GROUP BY ar.id_artista, al.album_id
ORDER BY pessoas_seguidoras DESC, artista, album;