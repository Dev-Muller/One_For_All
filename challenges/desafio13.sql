SELECT
    CASE
		  WHEN COUNT(u.user_age) <= 30 THEN 'Até 30 anos'
		  WHEN COUNT(u.user_age) BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
		  ELSE 'Maior de 60 anos'
        END AS faixa_etaria,
    CASE
		  WHEN COUNT(u.user_age) <= 30
		  WHEN COUNT(u.user_age) BETWEEN 31 AND 60
		  ELSE COUNT(u.user_age)
        END AS total_pessoas_usuarias,
    
	FROM SpotifyClone.user as u
    LEFT JOIN SpotifyClone.album as alb ON alb.artist_id = a.artist_id
	LEFT JOIN SpotifyClone.songs as s ON s.album_id = alb.album_id
    LEFT JOIN SpotifyClone.favorites as f ON f.song_id = s.song_id
	
    GROUP BY artista
    ORDER BY COUNT(f.song_id) DESC, artista;