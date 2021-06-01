-- join views
-- join student and major...
-- list of all students and their respective majors
SELECT firstname, lastname, code, description 
 from student
 join major
	on MajorId = m.id;
 
