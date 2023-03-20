SELECT
  CASE
    WHEN users.age <= 30 THEN 'Até 30 anos'
    WHEN users.age <= 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
  END AS faixa_etaria,
  COUNT(DISTINCT users.user_id) total_pessoas_usuarias,
  COUNT(songs_fav.user_id) total_favoritadas
FROM
  users
  LEFT JOIN songs_fav ON songs_fav.user_id = users.user_id
GROUP BY
  faixa_etaria
ORDER BY
  faixa_etaria;