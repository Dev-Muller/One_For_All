SELECT
    CASE
		  WHEN u.user_age <= 30 THEN 'Até 30 anos'
		  WHEN u.user_age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
		  ELSE 'Maior de 60 anos'
        END AS faixa_etaria,	
    COUNT(DISTINCT u.user_id) as total_pessoas_usuarias,
    COUNT(f.user_id) as total_favoritadas
    
	FROM SpotifyClone.user as u
    LEFT JOIN SpotifyClone.favorites as f ON f.user_id = u.user_id
	
    GROUP BY faixa_etaria
    ORDER BY faixa_etaria ASC;