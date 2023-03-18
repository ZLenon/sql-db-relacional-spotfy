SELECT
    user_name AS pessoa_usuaria,
    COUNT(history.user_id) AS musicas_ouvidas,
    ROUND(SUM(songs.seconds) / 60, 2) AS total_minutos
FROM users
    INNER JOIN history ON users.user_id = history.user_id
    INNER JOIN songs ON history.song_id = songs.song_id
GROUP BY users.user_id
ORDER BY users.user_name;