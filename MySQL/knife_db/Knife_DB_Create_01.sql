-- create and select the database
DROP DATABASE IF EXISTS knife_db;
CREATE DATABASE knife_db;
USE knife_db;

-- create User table
-- DROP TABLE IF EXISTS User;
Create table User (
ID 			integer 		primary key auto_increment,
Username	varchar(20) 	not null unique,
Password	varchar(10)		not null,
FirstName	varchar(20) 	not null,
LastName	varchar(20) 	not null,
Address_1	varchar(100)	not null,
Address_2	varchar(100),
City		varchar(50)		not null,
State		varchar(2)		not null,
Zipcode		integer(5)		not null,
Phone		varchar(12)		not null,
Email		varchar(75)		not null,
Reviewer	bit				not null,
Admin		bit				not null
-- CONSTRAINT uname unique (Username)
);


-- create Vendor table
-- DROP TABLE IF EXISTS Vendor;
Create table Vendor (
ID 			integer 		primary key auto_increment,
Code	 	varchar(10)	 	not null,
Name		varchar(255) 	not null,
Country		varchar(3)		not null,
CONSTRAINT cname_cou unique (Code, Name, Country)
);

-- create Category table
-- DROP TABLE IF EXISTS Category;
Create table Category (
ID 				integer 			primary key auto_increment,
Name	 		varchar(30) 		not null
);

-- create Product table
-- DROP TABLE IF EXISTS Product;
Create table Product (
ID 				integer 			primary key auto_increment,
VendorID	 	integer 			not null,
CategoryID		integer				not null,
Code			varchar(100)		not null,
Description 	varchar(255)		not null,
Cost			decimal(10,2)		not null,
Price			decimal(10,2)		not null,
Foreign Key (VendorID) references Vendor(ID),
Foreign Key (CategoryID) references Category(ID),
CONSTRAINT Ven_Cat_C_Des unique (VendorID, CategoryID, Code, Description)
);

-- create OrderDetail table
-- DROP TABLE IF EXISTS OrderDetails;
Create table OrderDetails (
ID 				integer 			primary key auto_increment,
OrderNumber	 	integer 			not null,
UserID			integer				not null,
ProductID		integer				not null,
Quantity		integer				not null,	
SubTotal		decimal(10,2)		not null,	
Foreign Key (UserID) references User(ID),
Foreign Key (ProductID) references Product(ID)
);

-- Add 'SYSTEM' user
insert into user (Username, Password, FirstName, LastName, 
	Address_1, Address_2, City, State, Zipcode, 
	Phone, Email, Reviewer, Admin) VALUES
	('SYSTEM', 'xxxxx', 'System', 'System', 'xxxx xxxxxxxxx', null, 'xxxxx', 'xx', 12345, 'XXX-XXX-XXXX', 'system@test.com', 0, 0),
    ('mjowers', 'Mj123456', 'Michelle', 'Jowers', '14063 New Harmony Salem Road', null, 'Mt.Orab', 'OH', 45154, '513-313-6012', 'michelle.jowers@icloud.com', 1, 1),
    ('djowers', 'Dj123456', 'Derrick', 'Jowers', '14063 New Harmony Salem Road', null, 'Mt.Orab', 'OH', 45154, '513-349-3787', 'tupperprint@juno.com', 1, 1);

-- insert some rows into the Vendor table
-- INSERT into vendor (ID, code, name, address, city, state, zip, phone, email) VALUES
-- (1, 'BB-1001', 'Best Buy', '100 Best Buy Street', 'Louisville', 'KY', '40207', '502-111-9099', 'geeksquad@bestbuy.com'),
-- (2, 'AP-1001', 'Apple Inc', '1 Infinite Loop', 'Cupertino', 'CA', '95014', '800-123-4567', 'genius@apple.com'),
-- (3, 'AM-1001', 'Amazon', '410 Terry Ave. North', 'Seattle', 'WA', '98109','206-266-1000', 'amazon@amazon.com'),
-- (4, 'ST-1001', 'Staples', '9550 Mason Montgomery Rd', 'Mason', 'OH', '45040', '513-754-0235', 'support@orders.staples.com'),
-- (5, 'MC-1001', 'Micro Center', '11755 Mosteller Rd', 'Sharonville', 'OH', '45241', '513-782-8500', 'support@microcenter.com');

-- insert some rows into the Product table
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (1,1,'ME280LL','iPad Mini 2',296.99,NULL,NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (3,3,'105810','Hammermill Paper, Premium Multi-Purpose Paper Poly Wrap',8.99,'1 Ream / 500 Sheets',NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (4,4,'122374','HammerMill® Copy Plus Copy Paper, 8 1/2\" x 11\", Case',29.99,'1 Case, 10 Reams, 500 Sheets per ream',NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (5,4,'784551','Logitech M325 Wireless Optical Mouse, Ambidextrous, Black ',14.99,NULL,NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (6,4,'382955','Staples Mouse Pad, Black',2.99,NULL,NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (7,4,'2122178','AOC 24-Inch Class LED Monitor',99.99,NULL,NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (8,4,'2460649','Laptop HP Notebook 15-AY163NR',529.99,NULL,NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (9,4,'2256788','Laptop Dell i3552-3240BLK 15.6\"',239.99,NULL,NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (10,4,'IM12M9520','Laptop Acer Acer™ Aspire One Cloudbook 14\"',224.99,NULL,NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (11,4,'940600','Canon imageCLASS Copier (D530)',99.99,NULL,NULL);
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (12,5,'228148','Acer Aspire ATC-780A-UR12 Desktop Computer',399.99,'','/images/AcerAspireDesktop.jpg');
-- INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (13,5,'279364','Lenovo IdeaCentre All-In-One Desktop',349.99,'','/images/LenovoIdeaCenter.jpg');

-- create a user and grant privileges to that user
DROP USER IF EXISTS knife_db_user@localhost;
CREATE USER knife_db_user@localhost IDENTIFIED BY 'NEP';
GRANT SELECT, INSERT, DELETE, UPDATE ON knife_db.* TO knife_db_user@localhost;
