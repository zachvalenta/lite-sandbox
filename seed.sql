PRAGMA foreign_keys = ON;

CREATE TABLE artist(
    artist_id INTEGER PRIMARY KEY,
    artist_name TEXT
);

CREATE TABLE song(
    song_id INTEGER PRIMARY KEY,
    song_name TEXT,
    artist_id INTEGER,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

INSERT INTO artist(artist_name) VALUES ('nas'), ('massive attack');
INSERT INTO song(song_name, artist_id) VALUES ('nasty', 1), ('protection', 2), ('black bond', 1);

SELECT a.artist_name, s.song_name 
FROM song as s INNER JOIN artist as a
ON s.artist_id = a.artist_id 
ORDER BY a.artist_name
