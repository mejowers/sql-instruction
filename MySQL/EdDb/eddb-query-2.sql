-- student class enrollment - slide 90
select firstname, lastname, code, subject, ClassGradeValue
 from student
 join studentclass
	on studentid = student.id
 join class
    on classid = class.id;
    
-- major description, class code and class subject for Major Business - slide 91
select description, c.code, subject
	from major m
    join majorclass
    on majorid = m.id
    join class c
    on classid = c.id
    where m.description = 'general business';