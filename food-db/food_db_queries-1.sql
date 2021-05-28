-- test data to food_db
insert into menuItem values
(1, 1, 'Cheese Sticks', 8.99, 800),
(2, 1, 'Fried Pickles', 5.99, 600),
(3, 1, 'Bread Sticks', 7.99, 700),
(4, 1, 'Ultimate Nachos', 11.99, 1200),
(5, 1, 'Potato Skins', 8.99, 850),
(6, 1, 'Loaded French Fries', 9.99, 1000),
(7, 2, 'House Salad', 4.99, 400),
(8, 2, 'Ceasar Salad', 6.99, 600),
(9, 3, 'Filet Mignon', 28.99, 1100),
(10, 3, 'Pizza', 13.99, 1400);
insert into menuItem values
(11, 3, 'Burrito Loco', 11.99, 835),
(12, 3, 'Burrito Mexicano', 14.99, 447),
(13, 3, 'La Cazuela', 19.99, 350),
(14, 3, 'Seafood Soup', 17.99, 325),
(15, 3, 'Fish Taco', 11.99, 740),
(16, 2, 'Fajita Taco Salad', 15.99, 740),
(17, 2, 'Pepes Salad', 11.99, 269),
(18, 1, 'Quesedilla Appetizer', 6.99, 525),
(19, 4, 'Chalupas', 9.99, 290),
(20, 4, 'Enchiladas', 7.99, 740),
(21, 4, 'Tamales', 9.99, 470),
(22, 4, 'Rice', 2.69, 185), 
(23, 4, 'Beans', 2.69, 120),
(24, 4, 'Steamed Vegetable', 3.99, 90),
(25, 5, 'Texana Margarita', 11.99, 120), 
(26, 5, 'Coconut Margarita', 11.99, 373),
(27, 5, 'Domestic Beer', 3.49, 171),
(28, 5, 'Mexican Beer', 4.49, 138),
(29, 5, 'Domestic Draft Beer', 3.99, 200),
(30, 5, 'Coca Cola', 2.99, 150),
(31, 5, 'Root Beer', 2.99, 175),
(32, 6, 'Sopapilla Cheese Cake', 4.49, 553),
(33, 6, 'Fried Ice Cream', 6.49, 1100),
(34, 6, 'Churros', 7.49, 485),
(35, 6, 'Chimi Cheesecake', 7.49, 880);


insert into Customer values
(1, 'MJ001', 'Jowers', 'Michelle', 'michelle.jowers@icloud.com', '513-313-6012'),
(2, 'DJ102', 'Jowers', 'Derrick', 'derrick.jowers@icloud.com', '513-123-4449'),
(3, 'CB103', 'Becker', 'Cheyenna', 'cheyenna.becker@icloud.com', '513-345-6677'),
(4, 'JJ104', 'Jowers', 'Jason', 'Jason.jowers@icloud.com', '513-456-8899'),
(5, 'RP105', 'Pinacho', 'Raquel', 'raquel.pinacho@icloud.com', '513-333-4488'),
(6, 'BB106', 'Becker', 'Brent', 'brent.becker@icloud.com', '339-443-9933');

insert into OrderTicket (id, customerid) values
 (1, 1);
insert into OrderTicket (id, customerid) values
 (2, 2),
 (3, 3);
 
 insert into LineItem (OrderTicketID, MenuItemID, Quantity) values
  (1, 9, 2),
  (1, 4, 2),
  (1, 7, 1);
insert into LineItem (OrderTicketID, MenuItemID, Quantity) values
 (2, 17, 1),
 (2, 20, 1),
 (2, 25, 2),
 (3, 25, 2),
 (3, 19, 1);
  
  
