-- create and select the database
Use Master;
go
DROP DATABASE IF EXISTS bmdb;
go
CREATE DATABASE bmdb;
go
USE bmdb;
go

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key Identity(1,1),
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
);

-- create Actor table
-- DROP TABLE IF EXISTS Actor;
Create table Actor (
ID 			integer 		primary key identity(1,1),
FirstName 	varchar(255) 	not null,
LastName 	varchar(255) 	not null,
Gender 		varchar(1) 		not null,
BirthDate 	date 			not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate)
);

-- create Credits table
-- business rule - combo of actor+movie must be unique
Create table Credit (
ID 				integer 			primary key identity(1,1),
ActorID 		integer 			not null,
MovieID 		integer 			not null,
Role		 	varchar(255)		not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);

-- Add some movies
 insert into Movie (Title, Year, Rating, Director) values
 	('Revenge of the Nerds', 1984, 'R', 'Jeff Kanew'),
 	('Avengers Infinity War', 2018, 'PG-13', 'Anthony Russo, John Russo'),
    ('Thor', 2011, 'PG-13', 'Kenneth Branagh'),
    ('Twilight', 2008, 'PG-13', 'Catherine Hardwick'),
    ('Rocky', 1976, 'PG', 'John G. Avildsen'),
    ('Silence of the Lambs', 1991, 'R', 'Jonathon Demme'),
    ('The Shawshank Redemption', 1994, 'R', 'Frank Darabont'),
    ('Braveheart', 1995, 'R', 'Mel Gibson'),
    ('Dances with Wolves', 1990, 'PG-13', 'Kevin Costner'),
    ('Gran Torino', 2008, 'R', 'Clint Eastwood');
    
	-- Add some actors
 insert into Actor (FirstName, LastName, Gender, BirthDate)  VALUES
 	('Robert', 'Downey Jr.', 'M', '1965-4-4'),
 	('Chris', 'Hemsworth', 'M', '1983-08-11'),
    ('Scarlett', 'Johansson', 'F', '1984-11-22'),
 	('Robert', 'Carradine', 'M', '1954-3-24'),
 	('Anthony', 'Edwards', 'M', '1962-7-19'),
    ('Anthony', 'Hopkins', 'M', '1937-12-31'),
    ('Robert', 'Pattinson', 'M', '1986-05-13'),
    ('Kristen', 'Stewart', 'F', '1990-04-09'),
    ('Sylvester', 'Stalone', 'M', '1946-07-06'),
    ('Talia', 'Shire', 'F', '1946-04-25'),
    ('Jodie', 'Foster', 'F', '1962-11-19'),
    ('Tim', 'Robbins', 'M', '1958-10-16'),
    ('Morgan', 'Freeman', 'M', '1937-06-01'),
    ('Mel', 'Gibson', 'M', '1956-01-03'),
    ('Catherine', 'McCormick', 'F', '1972-04-03'),
    ('Kevin', 'Costner', 'M', '1955-01-18'),
    ('Mary', 'McDonnel', 'F', '1952-04-28'),
    ('Clint', 'Eastwood', 'M', '1930-05-31'),
    ('Ahney', 'Her', 'F', '1992-07-13');
    
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
 -- DROP USER IF EXISTS bmdb_user@localhost;
 -- CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
 -- GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;
