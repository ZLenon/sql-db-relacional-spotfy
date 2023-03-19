CREATE TABLE
  usuario (
    user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL
  );

INSERT INTO
  usuario (user_id, user_name)
VALUES
  (1, 'Barbara Liskov'),
  (2, 'Robert Cecil Martin'),
  (3, 'Ada Lovelace'),
  (4, 'Martin Fowler'),
  (5, 'Sandi Metz'),
  (6, 'Christopher Alexander'),
  (7, 'Judith Butler'),
  (8, 'Jorge Amado');

CREATE TABLE
  albo (
    album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(100) NOT NULL
  );

INSERT INTO
  albo (album_id, album_name)
VALUES
  (1, 'ALIEN SUPERSTAR'),
  (2, 'Como Nossos Pais'),
  (3, 'Feeling Good'),
  (4, 'Don\'t Stop Me Now'),
  (5, 'BREAK MY SOUL'),
  (6, 'O Medo de Amar é o Medo de Ser Livre'),
  (7, 'VIRGO\'S GROOVE');

CREATE TABLE
  seguidores (
    user_id INT NOT NULL,
    album_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, album_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (album_id) REFERENCES albums (album_id)
  );

INSERT INTO
  seguidores (user_id, album_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 4),
  (3, 5),
  (3, 1),
  (4, 6),
  (4, 4),
  (5, 3),
  (5, 7),
  (6, 4),
  (7, 6),
  (8, 1);