-- create and select the database
DROP DATABASE IF EXISTS petstore;
CREATE DATABASE petstore;
USE petstore;
​
-- create Pet table
create table Pet (
id 				int 			primary key auto_increment,
Type	 		varchar(50) 	not null,
Breed	 		varchar(75) 	not null,
Name		 	varchar(50) 	not null,
BirthDate 		date		 	not null,
Gender	 		varchar(1)		not null,
Disposition		varchar(225) 	not null,
Available 		bit		 		default 0 not null
);
​
-- Add some pets
insert into Pet (Type, Breed, Name, Birthdate, Gender, Disposition, Available) VALUES
	('Dog', 'Australian Shepard', 'Goofball', '2020-07-15', 'M', 'Sweet, crazy dog.  Happy and loves kids!  Great family dog', 1),
	('Cat', 'Tortoiseshell', 'Schlitz', '2009-03-17', 'F', 'Silly cat, loves to lounge and bat at imaginary objects.  She''s a little off!', 1),
	('Lizard', 'Bearded Dragon', 'Goofball', '2015-11-11', 'M', 'Fun, smiley lizard.  Laid back.  Might be on something!', 1);
​
-- create a user and grant privileges to that user
-- this is the user we'll use when accessing the db from our app
DROP USER IF EXISTS pet_user@localhost;
CREATE USER pet_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON petstore.* TO pet_user@localhost;