-- line item for order, with subtotals
select orderticketID, name, price, quantity, (price * quantity) as subtotal
	from lineitem
    join menuitem mi
     on MenuItemID = mi.id
where OrderTicketID = 2;

select orderticketid, lastname, firstname, cat.name as category, mi.name as item, price, quantity, (price * quantity) as subtotal
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