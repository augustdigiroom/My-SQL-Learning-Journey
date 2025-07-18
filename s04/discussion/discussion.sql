-- [SECTION] Advanced Selects

-- Show only specific number of records
-- LIMIT keyword is used to specify the number of records to return

SELECT * FROM songs LIMIT 5;

-- Combine LIMIT with WHERE clause

SELECT * FROM songs WHERE length >= 430 LIMIT 5;

-- Exclude a record
-- (!) is called NOT condition/operator

SELECT * FROM songs WHERE album_id != 11;

SELECT * FROM songs WHERE album_id != 11 AND album_id !=6;

-- Finding records using comparison operators.
-- (>, <, >=, <=)

SELECT * FROM songs WHERE length > 330;

-- Getting records with multiple conditions

SELECT * FROM songs WHERE genre = "OPM" OR genre ="K-pop";

-- IN Clause
-- Shorthand method for multiple OR condition

SELECT * FROM songs WHERE genre IN ("OPM", "K-pop");

-- MINI ACTIVITY

SELECT * FROM songs WHERE length <350 AND album_id != 2 AND genre IN ("Pop", "K-pop") LIMIT 2;

-- OR

SELECT * FROM songs WHERE length < 350
AND genre IN ("Pop", "K-pop")
AND album_id != 2
LIMIT 2;

-- Show records with partial matches.
-- "LIKE" keyword which is used in a WHERE clause to search for a specified pattern in a column.
-- There are two wildcard operators used in conjunction with LIKE.
    -- "%" which represents zero, one, or multiple characters
    -- "_" which represents a single character


-- Find values with a match at the start 

SELECT * FROM songs WHERE song_name LIKE "th%";

-- Find values with a match at the end

SELECT * FROM songs WHERE song_name LIKE "%ce";

-- Find values with a match at any position

SELECT * FROM songs WHERE song_name LIKE "%an%";

-- Find values with a match of a specific length/pattern

SELECT * FROM songs WHERE song_name LIKE "__rr_";

SELECT * FROM albums WHERE album_title LIKE "_ur%";

SELECT * FROM albums WHERE album_title LIKE "%be___%";

SELECT * FROM albums WHERE album_title LIKE "%a%" "%s%";

SELECT * FROM albums WHERE album_title LIKE "%a%" AND album_title LIKE "%s%";

-- Sorting Records
-- "ORDER BY" keywords used to sort the results to ascending (ASC) or descending (DESC) order.

SELECT * FROM songs ORDER BY song_name; -- by default ascending order

SELECT * FROM songs ORDER BY song_name ASC;
SELECT * FROM songs ORDER BY song_name DESC;

SELECT * FROM songs WHERE length > 330 ORDER BY song_name DESC LIMIT 3;

-- DISTINCT keyword eliminates duplicate rows and display a unique list of values
-- SELECT DISTINCT column_name FROM table_name;

SELECT DISTINCT genre FROM songs; 

-- Count the number of rows in the table
-- SELECT COUNT(column_name) FROM table_name;

SELECT COUNT(*) FROM songs;
SELECT COUNT(genre) FROM songs;

-- Combine COUNT() with DISTINCT keyword
SELECT COUNT(DISTINCT genre) FROM songs;

-- [SECTION] Table Joins
-- To retrieve data from multiple tables

-- Joining two tables
/*
SYNTAX:
	SELECT column_name FROM table1
		JOIN table2
		ON table1.id = table2.foreign_key_column;
*/

-- Combine artists and albums table

SELECT * FROM artists  -- primary or base table
	JOIN albums -- secondary or related table
	ON artists.id = albums.artist_id;

-- Using WHERE clause with Joined Table

SELECT * FROM artists   
	JOIN albums  
	ON artists.id = albums.artist_id;
	WHERE date_released <= 20151201;


/*
	Sample for DATETIME datatype

	SELECT * FROM artists   
	JOIN albums  
	ON artists.id = albums.artist_id;
	WHERE date_released <= NOW();

	SELECT * FROM artists 
	JOIN albums 
	ON artists.id = albums.artist_id
	WHERE date_released <= CURRENT_TIMESTAMP;
*/

SELECT * FROM artists   
	JOIN albums  
	ON artists.id = albums.artist_id;
	WHERE date_released <= 20151201 
	AND album_title LIKE "%y%"
	LIMIT 1;


-- Joining multiple tables
/*
SYNTAX:
    SELECT column_name FROM table1
        JOIN table2 ON table1.id = table2.foreign_key_column
        JOIN table3 ON table2.id = table3.foreign_key_column;
*/
-- Joining multiple tables
/*
SYNTAX:
    SELECT column_name FROM table1
        JOIN table2 
        ON table1.id = table2.foreign_key_column
        JOIN table3 
        ON table2.id = table3.foreign_key_column;
*/

-- Combine artists, albums, and songs table

SELECT name, album_title, song_name, length, genre FROM artists   
	JOIN albums  
	ON artists.id = albums.artist_id
	JOIN songs
	ON albums.id = songs.album_id;


SELECT artists.name, albums.album_title, songs.song_name, songs.length, songs.genre FROM artists   
	JOIN albums  
	ON artists.id = albums.artist_id
	JOIN songs
	ON albums.id = songs.album_id;

-- Provide aliases for joining table

SELECT name AS "Artist Name", album_title AS "Album", song_name AS Song, length AS Duration, genre AS Genre FROM artists   
	JOIN albums  
	ON artists.id = albums.artist_id;
	JOIN songs
	ON albums.id = songs.album_id;

