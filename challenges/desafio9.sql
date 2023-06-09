SELECT COUNT(u.user_name) as musicas_no_historico
	
	FROM SpotifyClone.user as u
	JOIN SpotifyClone.history as h ON h.user_id = u.user_id
    WHERE user_name = 'Barbara Liskov';