SELECT u.user_name as pessoa_usuaria,
	COUNT(u.user_name) as musicas_ouvidas,
    ROUND(SUM(s.song_duration)/60,2) as total_minutos
	FROM SpotifyClone.history as h
	JOIN SpotifyClone.user as u ON h.user_id = u.user_id
	JOIN SpotifyClone.songs as s ON h.song_id = s.song_id


    GROUP BY pessoa_usuaria
    ORDER BY pessoa_usuaria ASC;