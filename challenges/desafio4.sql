SELECT a.nome AS pessoa_usuaria,
    CASE WHEN MAX(h.data_reproducao) >= '2021-01-01'
			THEN 'Ativa'
      ELSE 'Inativa'
      END
		AS status_pessoa_usuaria
FROM  SpotifyClone.usuarios AS a 
JOIN SpotifyClone.historico AS h ON h.id_usuario = a.id_usuario
GROUP BY a.nome
ORDER BY pessoa_usuaria;