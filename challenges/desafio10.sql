CREATE TABLE
  IF NOT EXISTS songs_fav (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, song_id),
    songs_fav INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (song_id) REFERENCES songs (song_id)
  );

INSERT INTO
  songs_fav (user_id, song_id, songs_fav)
VALUES
  (1, 3, 3),
  (1, 6, 6),
  (1, 10, 10),
  (2, 4, 4),
  (3, 1, 1),
  (3, 3, 3),
  (4, 7, 7),
  (4, 4, 4),
  (5, 10, 10),
  (5, 2, 2),
  (8, 4, 4),
  (9, 7, 7),
  (10, 3, 3);