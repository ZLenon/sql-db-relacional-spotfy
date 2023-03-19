SELECT
  artist.artist_name AS artista,
  album.album_name AS album
FROM
  artist
  INNER JOIN album ON album.artist_id = artist.artist_id
WHERE
  artist.artist_id = 3
ORDER BY
  album;