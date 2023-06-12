SELECT a.artist_name as artista,
    CASE
		WHEN COUNT(f.song_id) >= 5 THEN 'A'
		WHEN COUNT(f.song_id) BETWEEN 3 AND 4 THEN 'B'
		WHEN COUNT(f.song_id) BETWEEN 1 AND 2 THEN 'C'
        ELSE '-'
        END AS ranking
	FROM SpotifyClone.artist as a
    LEFT JOIN SpotifyClone.album as alb ON alb.artist_id = a.artist_id
	LEFT JOIN SpotifyClone.songs as s ON s.album_id = alb.album_id
    LEFT JOIN SpotifyClone.favorites as f ON f.song_id = s.song_id
	
    GROUP BY artista
    ORDER BY COUNT(f.song_id) DESC, artista;