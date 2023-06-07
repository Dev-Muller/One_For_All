SELECT u.user_name as pessoa_usuaria,
  IF ( MAX(YEAR(h.date))  >= 2021, 'Ativa' , 'Inativa' ) as status_pessoa_usuaria
	FROM SpotifyClone.history as h
	JOIN SpotifyClone.user as u ON h.user_id = u.user_id

    GROUP BY pessoa_usuaria
    ORDER BY pessoa_usuaria ASC;