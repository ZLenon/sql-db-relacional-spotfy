SELECT
    users.user_name AS pessoa_usuaria,
    IF(
        YEAR(MAX(history.date_play)) >= 2021,
        'Ativa',
        'Inativa'
    ) AS status_pessoa_usuaria
FROM users
    INNER JOIN history ON history.user_id = users.user_id
GROUP BY users.user_name
ORDER BY users.user_name;