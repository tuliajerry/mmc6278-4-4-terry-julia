CREATE TABLE IF NOT EXISTS songs (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  track_number INT,
  artist_id INT,
  album_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE,
  FOREIGN KEY (album_id) REFERENCES albums(id) ON DELETE CASCADE
);

-- Insert Track #13 titled "Endless, Nameless" into Nirvana's Nevermind album
-- Nirvana's id is 6, Nevermind's id is 9
INSERT INTO songs (name, track_number, artist_id, album_id)
VALUES ('Endless, Nameless', 13, 6, 9);
