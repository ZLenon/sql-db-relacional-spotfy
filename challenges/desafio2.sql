SELECT (
        SELECT
            COUNT(song_name)
        FROM
            songs
    ) as cancoes, (
        SELECT
            COUNT(artist_name)
        FROM
            artist
    ) as artistas, (
        SELECT
            COUNT(album_name)
        FROM album
    ) as albuns;