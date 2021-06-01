-- update total of order ticket id 1 to $11
select * from orderticket where id = 1;
update orderticket
	set total =11
 where ID = 1;
 
 -- delete dummy record from table
 delete from category
  where id = 7;
