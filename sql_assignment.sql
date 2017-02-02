-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
SELECT id FROM artists WHERE name='Queen';
SELECT * FROM albums WHERE artist_id=51;


-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
SELECT id, name FROM media_types;
SELECT COUNT (*) FROM tracks WHERE tracks.media_type_id=3;
= 214


-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT id, name FROM genres; --> 15
SELECT id, name, unit_price FROM tracks WHERE unit_price <= 0.99 and genre_id=15;

-- 4) Find the all the artists whose names start with A.

SELECT * FROM artists WHERE name LIKE 'A%';

-- 5) Find all the tracks that belong to playlist 1.
SELECT id, name FROM playlists;
SELECT * FROM playlists_tracks where playlist_id=1;
