-- command to access MariaDB in cmd

mysql -u root

-- showing list of databases inside RDBMS
SHOW DATABASES;

-- to create new database
CREATE DATABASE music_db;

-- drop database
DROP DATABASE music_db;

-- select a data base to manipulate
USE music_db;

-- [SECTION] creating tables
-- table columns have the following format: [column_name] [data_type] [other_options]

CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	full_name VARCHAR(50) NOT NULL,
	contact_number INT NOT NULL,
	email VARCHAR(50),
	address VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE artists (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
	album_title VARCHAR(50) NOT NULL,
	date_release DATE NOT NULL,
	artist_id INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_albums_artist_id
		FOREIGN KEY (artist_id) REFERENCES artists(id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);