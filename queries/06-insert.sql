-- Insert Track #13 titled "Endless, Nameless" into Nirvana's Nevermind album
-- Nirvana's id is 6, Nevermind's id is 9
INSERT INTO songs (name, track_number, artist_id, album_id)
SELECT 'Endless, Nameless', 13, 6, 9
FROM DUAL
WHERE NOT EXISTS (
    SELECT 1
    FROM songs
    WHERE name = 'Endless, Nameless'
      AND album_id = 9
);
