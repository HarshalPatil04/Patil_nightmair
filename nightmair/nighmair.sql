


create database collage;
use collage;

create table student
(id int primary key,
name varchar(90),
city varchar(90),
marks int,
age int);

insert into student (id, name, city, marks, age) values
(1, "devil", "pune", 95, 22),
(2, "soul", "mumbai", 80, 23),
(3, "neo", "banglor", 85, 24),
(4, "cloud", "pachora", 87, 25),
(5, "networking", "dubai", 96, 26);

select * from student;


select name, age from student;

select * from student
where city="mumbai";


select distinct name from student;


select name, age from student
where marks>80;

select*from student
where marks>70 and city="mumbai";


select*from student
where marks>80 or city="pahur";


select*from student
where marks between 80 and 90;

select*from student
where city in ("mumbai", "lol");


select*from student
where city not in ("mumbai", "lol", "pune", "dubai");

select*from student
where marks>85 limit 2;


select max(marks) from student;

select count(id) from student;

select*from student
order by city asc;

select*from student
order by name desc;




create table nun
(id int primary key,
name varchar(90),
city varchar(90),
marks int,
age int);

insert into nun (id, name, city, marks, age) values
(1, "HTML", "pune", 95, 22),
(2, "CSS", "mumbai", 80, 23),
(3, "JS", "pune", 85, 24),
(4, "PHP", "mumbai", 87, 25),
(5, "MYSQL", "dubai", 96, 26);

select*from nun;

select city, count(name) from nun
group by city  
order by city asc limit 2;

SELECT * FROM nun              /* like, all, any */
WHERE marks LIKE 'a%';


select city, count(name) from nun
group by city
having max(marks)>90;


create table lol
(id int primary key,
name varchar(90),
city varchar(90),
marks int,
grade varchar(90),
age int);

insert into lol (id, name, city, marks, grade, age) values
(1, "HTML", "pune", 95, "O", 22),
(2, "CSS", "mumbai", 80, "B", 23),
(3, "JS", "pune", 85, "A", 24),
(4, "PHP", "mumbai", 87, "B", 25),
(5, "MYSQL", "dubai", 96, "O", 26);

set sql_safe_updates=0;

update lol
set grade="E"
where grade="O";

update lol
set marks=94
where marks=85;


update lol
set city="india"
where city="dubai";

update lol
set grade="A"
where marks between 80 and 90;

update lol
set marks = marks+1;


delete from lol
where marks<82;


select*from lol;

set sql_safe_updates=0;
delete from nun
where city="pune";


delete from nun
where id=4;

update lol
set id=8
where id=5;



create table happy
(id int primary key,
name varchar(90),
city varchar(90));

insert into happy (id, name, city) values
(1, "HTML", "pune"),
(2, "CSS", "mumbai"),
(3, "JS", "pune"),
(4, "PHP", "mumbai"),
(5, "MYSQL", "dubai");

select * from happy;

drop table happy;


create table journey
(id int primary key,
name varchar(90),
city varchar(90),
dept_id int,
foreign key (dept_id) references happy (id));

insert into journey (id, name, city) values
(1, "HTML", "pune"),
(2, "CSS", "mumbai"),
(3, "JS", "pune"),
(4, "PHP", "mumbai"),
(5, "MYSQL", "dubai");

select * from journey;






create table teacher
(id int primary key,
name varchar(90));

insert into teacher (id, name ) values
(1, "lol"),
(2, "gog"),
(3, "pip"),
(4, "lil");

select * from teacher;

create table child
(id int primary key,
name varchar(90),
id_teach int,
foreign key (id_teach) references teacher(id)
on delete cascade
on update cascade
);

insert into child (id, name ) values
(1, "lll"),
(2, "ggg"),
(3, "ppp"),
(4, "iii");

select*from child;









create table nocola
(id int primary key,
name varchar(90),
city varchar(90),
marks int,
age int);

insert into nocola (id, name, city, marks, age) values
(1, "devil", "pune", 95, 22),
(2, "soul", "mumbai", 80, 23),
(3, "neo", "banglor", 85, 24),
(4, "cloud", "pachora", 87, 25),
(5, "networking", "dubai", 96, 26);


select * from good;

alter table nocola
add column country varchar(90);

alter table nocola
drop column country;

alter table nocola
rename to good;

alter table good
add column look varchar(90);

select * from good;

alter table good
change column look light varchar(2);

alter table good
modify column  light varchar(4);


alter table good
add column price int default 20;

select max(marks) from good
where marks<
(select max(marks) from good);




create table smash
(id int primary key,
name varchar(90),
city varchar(90),
marks int,
age int);

insert into smash (id, name, city, marks, age) values
(1, "HTML", "pune", 95, 22),
(2, "CSS", "mumbai", 80, 23),
(3, "JS", "pune", 85, 24),
(4, "PHP", "mumbai", 87, 25),
(5, "MYSQL", "dubai", 96, 26);

select*from smash;

truncate table smash; 










