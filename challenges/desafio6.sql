SELECT CAST(MIN(s.subscription_value) as decimal(3,2)) as faturamento_minimo,
	CAST(MAX(s.subscription_value) as decimal(3,2)) as faturamento_maximo,
    CAST(AVG(s.subscription_value) as decimal(4,2)) as faturamento_medio,
    CAST(SUM(s.subscription_value) as decimal(4,2)) as faturamento_total
	FROM SpotifyClone.subscription as s
	JOIN SpotifyClone.user as u ON s.subscription_id = u.subscription_id

    LIMIT 1;