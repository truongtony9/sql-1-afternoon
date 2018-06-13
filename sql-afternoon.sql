-- Table - People
#1
create table person (
	id integer primary key autoincrement,
  	name text,
  	age integer,
 	height integer,
  	city text,
  	favorite_color text
)
#2
insert into person (name, age, height, city, favorite_color)
values ('Peter', 28, 152, 'New York City', 'Red'), 
('Lisa', 30, 155, 'San Francisco', 'Pink' ), 
('Tommy', 16, 148, 'Houston', 'Green'),
('Christine', 35, 160, 'Dallas', 'Purple'),
('Tony', 25, 165, 'Los Angeles', 'Blue')
#3
select * from person
order by height DESC
#4
select * from person
order by height ASC
$5
select * from person
order by age DESC
#6
select * from person
where age > 20
#7
select * from person
where age = 18
#8
select * from person
where age < 20 OR age > 30
#9
select * from person
where age != 27
#10
select * from person
where favorite_color != "Red"
#11
select * from person
where favorite_color != "Red" AND favorite_color != "Blue"
#12
select * from person
where favorite_color = "Orange" OR favorite_color = "Green"
#13
select * from person
where favorite_color IN ("Orange", "Green", "Blue")
#14
select * from person
where favorite_color IN ("Yellow", "Purple")
-- Table - Orders
#1
create table records (
	personId integer, 
  	productName string,
  	productPrice float,
  	quantity integer
)
#2
insert into records (personID, productName, productPrice, quantity)
values (1091, "Cell Phone", 800, 200),
(1082, "Laptop", 1600, 40),
(1073, "TV", 500, 500)
#3
select * from records
#4
select SUM(quantity) from records
#5
select SUM(productPrice * quantity) from records
#6
select SUM(productPrice * quantity) from records
where personID = 1091
-- Table - Artist
#1
insert into Artist (Name)
values ("Maroon 5"), ("Drake"), ("Usher")
#2
select * from Artist
order by name DESC
LIMIT 10
#3
select * from Artist
order by name ASC 
LIMIT 5
#4
select * from Artist
where Name
like "Black%"
#5
select * from Artist
where Name
like "%Black%"
-- Table - Employee
#1
select FirstName, LastName from Employee
where city = "Calgary"
#2
select FirstName, LastName, MAX(BirthDate) from Employee
#3
select FirstName, LastName, MIN(BirthDate) from Employee
#4
select * from Employee
where ReportsTo = 2
#5
select count(*) from Employee
where city = "Lethbridge"
-- Table Invoice
#1
select Count(*) from Invoice
where BillingCountry = "USA"
#2
select MAX(total) from Invoice
#3
select MIN(total) from Invoice
#4
select Total from Invoice
where Total > 5
#5
select Count(Total) from Invoice
where Total < 5
#6
select * from Invoice 
where BillingState
IN ('CA', 'TX', 'AZ')
#7
select AVG(Total) from Invoice 
#8
select SUM(Total) from Invoice 
