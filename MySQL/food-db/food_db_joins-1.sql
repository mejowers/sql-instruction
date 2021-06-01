-- line item for order, with subtotals
select orderticketID, name, price, quantity, (price * quantity) as subtotal
	from lineitem
    join menuitem mi
     on MenuItemID = mi.id
where OrderTicketID = 2;

select OrderTicketID as 'Order ID', concat(lastname, ', ', firstname) as 'Customer Name', cat.name as Category,
  mi.name as Item, concat('$', ' ', price) as Price, Quantity as Qty, 
  concat('$', ' ', (price * quantity)) as Subtotal
	from lineitem
    join menuitem mi
     on MenuItemID = mi.id
	join orderticket ot
     on orderticketid = ot.id
	join customer c
     on Customerid = c.id
	join category cat
     on categoryid = cat.id
where OrderTicketID = 3;

-- calculate total for an order
select sum(price * Quantity) as total
 from lineitem
 join menuitem mi on menuitemid = mi.id
where orderticketid = 2
group by OrderTicketID;