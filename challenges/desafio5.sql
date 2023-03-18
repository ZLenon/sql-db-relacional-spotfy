SELECT
    song_name AS cancao,
    COUNT(history.song_id) AS reproducoes
FROM songs
    INNER JOIN history ON history.song_id = songs.song_id
GROUP BY song_name
ORDER BY
    reproducoes DESC,
    song_name
LIMIT 2;