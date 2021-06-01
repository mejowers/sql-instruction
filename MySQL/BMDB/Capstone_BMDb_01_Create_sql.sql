-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
);

-- create Actor table
-- DROP TABLE IF EXISTS Actor;
Create table Actor (
ID 			integer 		primary key auto_increment,
FirstName 	varchar(255) 	not null,
LastName 	varchar(255) 	not null,
Gender 		varchar(1) 		not null,
BirthDate 	date 			not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate)
);

-- create Credits table
-- business rule - combo of actor+movie must be unique
Create table Credit (
ID 				integer 			primary key auto_increment,
ActorID 		integer 			not null,
MovieID 		integer 			not null,
Role		 	varchar(255)		not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Revenge of the Nerds', 1984, 'R', 'Jeff Kanew'),
 	(2, 'Avengers Infinity War', 2018, 'PG-13', 'Anthony Russo, John Russo'),
    (3, 'Thor', 2011, 'PG-13', 'Kenneth Branagh'),
    (4, 'Twilight', 2008, 'PG-13', 'Catherine Hardwick'),
    (5, 'Rocky', 1976, 'PG', 'John G. Avildsen'),
    (6, 'Silence of the Lambs', 1991, 'R', 'Jonathon Demme'),
    (7, 'The Shawshank Redemption', 1994, 'R', 'Frank Darabont'),
    (8, 'Braveheart', 1995, 'R', 'Mel Gibson'),
    (9, 'Dances with Wolves', 1990, 'PG-13', 'Kevin Costner'),
    (10, 'Gran Torino', 2008, 'R', 'Clint Eastwood');
    
-- Add some actors
 insert into Actor VALUES
 	(1, 'Robert', 'Downey Jr.', 'M', '1965-4-4'),
 	(2, 'Chris', 'Hemsworth', 'M', '1983-08-11'),
    (3, 'Scarlett', 'Johansson', 'F', '1984-11-22'),
 	(4, 'Robert', 'Carradine', 'M', '1954-3-24'),
 	(5, 'Anthony', 'Edwards', 'M', '1962-7-19'),
    (6, 'Anthony', 'Hopkins', 'M', '1937-12-31'),
    (7, 'Robert', 'Pattinson', 'M', '1986-05-13'),
    (8, 'Kristen', 'Stewart', 'F', '1990-04-09'),
    (9, 'Sylvester', 'Stalone', 'M', '1946-07-06'),
    (10, 'Talia', 'Shire', 'F', '1946-04-25'),
    (11, 'Jodie', 'Foster', 'F', '1962-11-19'),
    (12, 'Tim', 'Robbins', 'M', '1958-10-16'),
    (13, 'Morgan', 'Freeman', 'M', '1937-06-01'),
    (14, 'Mel', 'Gibson', 'M', '1956-01-03'),
    (15, 'Catherine', 'McCormick', 'F', '1972-04-03'),
    (16, 'Kevin', 'Costner', 'M', '1955-01-18'),
    (17, 'Mary', 'McDonnel', 'F', '1952-04-28'),
    (18, 'Clint', 'Eastwood', 'M', '1930-05-31'),
    (19, 'Ahney', 'Her', 'F', '1992-07-13');
    
-- Add movie credits for actors
 insert into Credit (ActorID, MovieID, Role) VALUES
 	(1, 2, 'Tony Stark - Iron Man'),
    (2, 2, 'Thor'),
    (3, 2, 'Natasha Romanoff - Black Widow'),
    (4, 1, 'Lewis'),
    (5, 1, 'Gilbert'),
    (2, 3, 'Thor'),
    (6, 3, 'Odin'),
    (7, 4, 'Edward Cullen'),
    (8, 4, 'Bella Swan'),
    (9, 5, 'Rocky'),
    (10, 5, 'Adrian'),
    (6, 6, 'Dr. Hannibal Lecter'),
    (11, 6, 'Clarice Starling'),
    (12, 7, 'Andy Dufresne'),
    (13, 7, 'Ellis Boyd - Red - Redding'),
    (14, 8, 'William Wallace'),
    (15, 8, 'Murron'), 
    (16, 9, 'Lieutenant Dunbar'),
    (17, 9, 'Stands with a Fist'),
    (18, 10, 'Walt Kowalski'),
    (19, 10, 'Sue');


-- create a user and grant privileges to that user
DROP USER IF EXISTS bmdb_user@localhost;
CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;
