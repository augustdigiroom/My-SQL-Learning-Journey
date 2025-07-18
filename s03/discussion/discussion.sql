 -- [SECTION] Insert a record 
 -- Syntax: INSERT INTO table_name (column_name) VALUES (value);

 INSERT INTO artists (name) VALUES ("Psy");
 INSERT INTO artists (name) VALUES ("Rivermaya");


-- Inserting a record with multiple columns
	-- Syntax: INSERT INTO table_name (column_nameA, column_nameB, ...) VALUES (valueA, valueB, ...);

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Psy 6", "2013-08-15", 1);

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Trip", "1996-02-14", 2);

INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Gangnam Style", 339, "K-pop", 1);

-- HH:MM:SS
--     3:39


INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Kundiman", 524, "OPM", 2);

INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Kisapmata", 441, "OPM", 2);

-- Adding multiple records with one query
	-- Syntax: INSERT INTO table_name (column_nameA, column_nameB, ...) VALUES (valueA, valueB, ...), (value1, value2, ...);

INSERT INTO songs (song_name, length, genre, album_id) VALUES ("You'll Be Safe Here", 541, "OPM", 2), ("214", 331, "OPM", 2);

-- [SECTION] Selecting Records

-- Showing all record details
-- Syntax: SELECT * FROM table_name;
-- (*) means all columns will be shown in the selected table

SELECT * FROM songs;

SELECT album_title, date_released FROM albums;

-- Show records that meets a certain condition
	-- Syntax: SELECT column_nameA, column_nameB, ... FROM table_name WHERE condition;
	-- "WHERE" clause is used to filter records and to extract only those records that fulfill a specific condition

SELECT song_name FROM songs WHERE genre = "OPM";

SELECT song_name FROM songs WHERE length < 400;

-- Show records with multiple conditions
	-- Syntax: SELECT column_name FROM table_name WHERE condition1 AND condition2;
	-- Syntax: SELECT column_name FROM table_name WHERE condition1 OR condition2;

SELECT song_name, length FROM songs WHERE length > 450 AND genre = "OPM";

SELECT song_name, length FROM songs WHERE length > 450 OR genre =  "OPM";

-- [SECTION] Updating records
-- Updating single column of records
	-- SYNTAX: UPDATE table_name SET column_name = new_value WHERE condition;


UPDATE songs SET length = 424 WHERE song_name = "Kundiman"; 

-- Updating multiple columns of records
	-- SYNTAX: UPDATE table_name SET column_name1 = new_value1, column_name2 = new_value2 WHERE condition;

UPDATE albums SET album_title = "Psy 6 (Six Rules)", date_released = 20120715 WHERE album_title = "Psy 6";

UPDATE songs SET genre = "OPM and Pop Rock", length = 430 WHERE song_name = "Kisapmata"; 

-- [SECTION] Deleting a record
	-- Syntax: DELETE FROM table_name WHERE condition;
	-- NOTE: Removing the "WHERE" clause will remove/delete all rows in the table

	DELETE FROM songs WHERE genre = "OPM and Pop Rock" AND length  >= 430;