-- basic where clause
select * from student
	where statecode = 'KY';
    
-- basic where clause with or
select * from student
	where statecode = 'OH' or statecode = 'KY';
    
-- where clause w/ in
SELECT * from student
	where statecode in ('ky', 'in');
    
    -- where clause w/ not
SELECT * from student
	where statecode != 'KY';
    
    -- where clause w/ not
SELECT * from student	
	where not statecode = 'KY';
    
    -- where clause w/ like
SELECT * FROM student
	where lastname like 'B%';
    
    -- where clause w/ like case sensative and start and end
SELECT * FROM student
	-- where lastname like binary 'b%';
    where lastname like 'b%s'
    order by lastname;
    
      -- where - states starting with 'I'
SELECT * FROM student
	where statecode like 'I_';