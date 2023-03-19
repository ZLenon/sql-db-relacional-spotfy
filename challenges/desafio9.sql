SELECT
  COUNT(song_id) AS musicas_no_historico
FROM
  history
  INNER JOIN users ON users.user_id = history.user_id
WHERE
  users.user_name = "Barbara Liskov";