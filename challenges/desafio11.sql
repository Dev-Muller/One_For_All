SELECT a.album_name as album,
	COUNT(f.song_id) as favoritadas
	FROM SpotifyClone.favorites as f
	JOIN SpotifyClone.songs as s ON s.song_id = f.song_id
    JOIN SpotifyClone.album as a ON a.album_id = s.album_id
	
    GROUP BY album
    ORDER BY favoritadas DESC
    
    LIMIT 3;
