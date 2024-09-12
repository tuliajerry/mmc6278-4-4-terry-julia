CREATE DATABASE IF NOT EXISTS music_db;


CREATE TABLE IF NOT EXISTS music_db.artists (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS music_db.albums (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  artist_id INT,
  release_year INT,
  PRIMARY KEY (id),
  FOREIGN KEY (artist_id) REFERENCES music_db.artists(id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS music_db.songs (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  track_number INT,
  artist_id INT,
  album_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (artist_id) REFERENCES music_db.artists(id) ON DELETE CASCADE,
  FOREIGN KEY (album_id) REFERENCES music_db.albums(id) ON DELETE CASCADE
);
