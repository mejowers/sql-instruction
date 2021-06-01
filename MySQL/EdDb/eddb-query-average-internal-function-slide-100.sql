select * from student
where gpa >= (select avg(gpa)
	from student)
    order by gpa;

-- assigment from slide 100 query function average
select firstname, lastname, sat
	from student
    where SAT < (select avg(SAT)
	from student)
    order by SAT;



select avg(SAT)
	from student;