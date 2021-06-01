Select * from Major;


Select * from Student
	where SAT < 1000; 

Select Firstname, Lastname, YearsExperience from Instructor
	order by lastname asc;


-- student class enrollments
select Firstname, Lastname, ClassId, Subject from student
	join StudentClass sc
	 on studentid = student.id
	 join Class c
	 on classid = c.id;


-- student grades
Select Firstname, lastname, Subject, ClassGradeValue from student
	join studentclass sc
	on studentid = student.id
	join class c
	on classid = c.id;

-- enrolled with instructors
select s.firstname, s.lastname, subject, classgradevalue, i.Firstname, i.Lastname from student s
	join studentclass sc
	on studentid = s.id
	join class c
	on classid = c.id
	join instructor i
	on instructorid = i.id;


-- students enrolled in classes and students not enrolled
select Firstname, Lastname, ClassId, Subject from student
	Left outer join StudentClass sc
	 on studentid = student.id
	 left outer join Class c
	 on classid = c.id;




