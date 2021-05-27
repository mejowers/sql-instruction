-- left join student and major
select firstname, lastname, majorid, description
from student
left outer join major
 on majorid = major.id;
 
 -- outer join class to instructor
Select class.code, subject, firstname, lastname
	from class
    left outer join instructor
    on instructorid = instructor.id;
    