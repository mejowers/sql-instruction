-- using an alias
select mov.title, mov.year, mov.rating
	from movie as mov;
    
    -- using an alias, no 'as' keyword
select m.title, m.year, m.rating
	from movie m;