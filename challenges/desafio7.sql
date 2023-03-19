SELECT
  artist_name AS artista,
  album.album_name AS album,
  COUNT(follows.user_id) AS pessoas_seguidoras
FROM
  artist
  INNER JOIN album
  INNER JOIN follows ON artist.artist_id = album.artist_id
  AND artist.artist_id = follows.artist_id
GROUP BY
  artist.artist_name,
  album.album_name
ORDER BY
  pessoas_seguidoras DESC,
  artista,
  album;