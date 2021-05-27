-- 3 table inner join - movie title, movie year, actor name, role
select title, year, firstname, lastname, role
	from movie m
    join credit
    on MovieID = m.id
    join actor a
    on ActorID = a.id
    order by title;