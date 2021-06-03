-- create 3 requests with at least 2 line items each
-- join user and request
Select firstname, lastname  from user
	join request
    on userid = user.id;
   
insert into request (userid, description, justification, dateneeded, deliverymode, status, total) values
(3, 'Cannon Copier and Case of Hammermill Paper', 'Copier stopped working and needs replaced', '2021-06-21', 'Delivery', 'New', '129.98'),
(5, 'Acer Desktop with monitor, Mouse Pad, Wireless Keyboard and Mouse', 'Setting up new office for new employee', '2021-06-07', 'Delivery', 'New', '532.96'),
(7, 'Dell Laptop, Wireless Optical Mouse, Mouse Pad', 'Remote Office', '2021-06-07', 'Pick Up', 'New', '257.97');

select firstname, lastname, requestid, productid, quantity, total from user
	join request on userid = user.id
    join product on vendorid = vendor.id
    join lineitem on requestid = request.id
    and productid = product.id;

 