-- set variable with the total
set @order_total = (select Sum(price * quantity) as total 
	from lineitem
    join menuitem mi  	on menuitemID = mi.id
    where orderticketid = 2
    group by OrderTicketID);
    
update orderticket
	set total = @order_total
where id = 2;


    