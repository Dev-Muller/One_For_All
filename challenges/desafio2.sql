SELECT
  (SELECT COUNT(*) FROM SpotifyClone.songs) as cancoes,
  (SELECT COUNT(*) FROM SpotifyClone.artist) as artistas,
  (SELECT COUNT(*) FROM SpotifyClone.album) as albuns;