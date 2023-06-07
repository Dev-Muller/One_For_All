SELECT s.song_name as cancao,
	COUNT(h.user_id) as reproducoes
	FROM SpotifyClone.history as h
	JOIN SpotifyClone.songs as s ON h.song_id = s.song_id
	
    GROUP BY song_name
    ORDER BY reproducoes DESC, cancao ASC
    
    LIMIT 2;