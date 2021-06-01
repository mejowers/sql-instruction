select * from student
	order by lastname, firstName;

-- distinct keyword
select distinct state from student;

-- count function
select Count(*) from student;

-- how many students from ohio
select count(*) from student
  where state = "OH"; 
  
  -- how many students per state
select state, count(state) count
 from student
	group by state
    order by count desc;
    
-- pull state with max students
select state, count(state) count
 from student
	group by state
    order by count desc;

-- maximum and mnimum birthdate
select max(birthday) from student;
select min(birthday) from student;

-- most common middle initial
select middleInitial, count(middleinitial) count
	from student
     group by middleinitial
     order by count desc
     limit 1;
    
 -- join students and courses enrolled insert
 select lastname, firstname, courseid, grade, subject, name
  from student s
	join enrolled
     on studentID = s.id
	join course c
    on courseid = c.id
    order by grade, lastName;

  