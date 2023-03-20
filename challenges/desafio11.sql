SELECT
  album_name AS album,
  COUNT(songs.song_id) AS favoritadas
FROM
  album
  INNER JOIN songs ON songs.album_id = album.album_id
  INNER JOIN songs_fav ON songs_fav.song_id = songs.song_id
GROUP BY
  album.album_id
ORDER BY
  favoritadas DESC
LIMIT
  3;