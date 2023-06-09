SELECT art.artist_name as artista,
	alb.album_name as album,
    COUNT(f.user_id) as pessoas_seguidoras
	
	FROM SpotifyClone.artist as art
	JOIN SpotifyClone.followed as f ON art.artist_id = f.artist_id
	JOIN SpotifyClone.album as alb ON alb.artist_id = art.artist_id
    
    GROUP BY art.artist_name, alb.album_name
    order by pessoas_seguidoras DESC, art.artist_name, alb.album_name;