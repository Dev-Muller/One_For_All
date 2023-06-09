SELECT art.artist_name as artista,
	alb.album_name as album
	
	FROM SpotifyClone.artist as art
	JOIN SpotifyClone.album as alb ON alb.artist_id = art.artist_id
    WHERE artist_name = 'Elis Regina'
    
    GROUP BY art.artist_name, alb.album_name
    order by alb.album_name;