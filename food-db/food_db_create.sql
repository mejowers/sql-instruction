-- create and select the database
DROP DATABASE IF EXISTS food_db;
CREATE DATABASE food_db;
USE food_db;

-- create Customer table
-- DROP TABLE IF EXISTS Customer;
Create table  Customer (
ID 				integer 		primary key auto_increment,
CustomerNumber	varchar(5) 		not null unique,
LastName		Varchar(255) 	not null,
FirstName		varchar(255) 	not null,
Email	 		varchar(75) 	not null,
PhoneNumber		varchar(12)	
-- CONSTRAINT uCustomerNumber unique (CustomerNumber)
);

-- create Category table
-- DROP TABLE IF EXISTS Category;
Create table Category (
ID 			integer 		primary key auto_increment,
Name	 	varchar(255) 	not null unique
);

-- create MenuItem table
-- business rule - combo of category+item name must be unique
Create table MenuItem (
ID 				integer 			primary key auto_increment,
CategoryID 		integer 			not null,
Name	 		varchar(75)			not null,
Price		 	decimal(10,2)		not null,
Calories		Integer				not null,
Foreign Key (CategoryID) references Category(ID),
CONSTRAINT cat_nam unique (CategoryID, Name)
);

-- create OrderTicket table
-- business rule - combo of customerid+orderDate must be unique
Create table OrderTicket (
ID 				integer 			primary key auto_increment,
CustomerID 		integer 			not null,
OrderDate	 	timestamp			not null default current_timestamp,
Status		 	Varchar(1)			not null default 'O',
Total			decimal(10,2)		not null default 0,
Foreign Key (CustomerID) references Customer(ID),
CONSTRAINT Cust_Ord unique (CustomerID, OrderDate)
);

-- create LineItem table
-- business rule - combo of orderticketid+menuitemID must be unique
Create table LineItem (
ID 				integer 			primary key auto_increment,
OrderTicketID 	integer 			not null,
MenuItemID	 	integer				not null,
Quantity	 	integer				not null,
Foreign Key (OrderTicketID) references OrderTicket(ID),
Foreign Key (MenuItemID) references MenuItem(ID),
CONSTRAINT Ord_Menu unique (OrderTicketID, MenuItemID)
);

    
-- Add Categories
 insert into Category (Name) VALUES
	('Appetizers'),
	('Salads'),
	('Entrees'),
	('Sides'),
	('Drinks'),
    ('Desserts');


-- create a user and grant privileges to that user
DROP USER IF EXISTS fooddb_user@localhost;
CREATE USER fooddb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON food_db.* TO fooddb_user@localhost;
