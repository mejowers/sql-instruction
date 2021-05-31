use classicmodels;
select * from customers
	order by customernumber
	;
    
-- using select and where statements
select lastName, firstName, jobTitle
	from employees
    where jobTitle = 'Sales Rep';
    
-- using where along with and statements
select lastname, firstname, jobtitle, officecode
	from employees
    where jobtitle = 'Sales Rep' and 
    officeCode = 1;
    
-- including the and - or statements with like, %, _
select firstname, lastname, jobtitle, officecode
	from employees
    where lastname like '%_o%' and
        officeCode = 1
    order by officeCode, jobTitle;
    
-- in statements
Select lastname, firstname, jobtitle, officecode
	from employees
    where officecode in (1, 2, 3)
    order by officecode;
    
-- null statements
select lastname, firstname, reportsto
	from employees
    where reportsTo is null;
    
-- limit statement
select distinct city, state
	from customers 
    where state != 'CA'
    limit 5
;

-- between
select lastname, officecode
	from employees
    where officeCode between 2 and 6
    order by officeCode;
    
-- inner join
select productcode, productname, textdescription
	from products p
    join productlines pl;
    
-- create Parts table
Create table Parts (
	part_no varchar(18) Primary Key,
	description varchar(40),
    cost decimal(10,2) not null check (cost >= 0),
    price decimal(10,2) not null check (price >= 0));
    
show create table parts;

insert into parts(part_no, description, cost, price)
	values
    ('a-001', 'Cooler', 0, '100');
	

    
    


