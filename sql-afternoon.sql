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