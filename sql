-- -- Active: 1732300881140@@127.0.0.1@3306@pc
-- /TO SHOW DATABASE
-- SHOW DATABASES;


-- TO CREATE DATABASE
CREATE DATABASE MACHINES;

CREATE DATABASE COMPUTER;

SHOW DATABASES;

DROP DATABASE MACHINES;

SHOW DATABASES;

CREATE DATABASE MACHINES;

USE MACHINES;

SELECT DATABASE();

CREATE TABLE GAMES(
        name VARCHAR(50),
        RATINGS INT
)


USE PC

SHOW TABLES;

SHOW COLUMNS FROM GAMES;

DESCRIBE GAMES;

desc GAMES;

drop table GAMES

CREATE TABLE GAMES(
    name VARCHAR(50) DEFAULT 'Anonymous',
    release_year INT DEFAULT 20,
    ratings INT
)

desc Games;

Use pc;

CREATE TABLE Movies(
    title VARCHAR(50),
    release_year INT,
    ratins DECIMAL,
    comment CHAR(10),
    comment_date DATE DEFAULT "2025-04-02",
    comment_time TIME DEFAULT "14:10:23"
);

desc Movies;

create table game(
    name varchar(50),
    release_year int,
    ratins int
);

desc Game

Insert into Game(name,release_year,ratins)
values('GTA-6',2025,6)

select * from Game;

select 2+2;

Select 2-2;

select 2*2;

select name from Game;

select release_year from Game;

select ratInS FROM GAME;

select name,release_year from Game;

drop table Game;

create table game(
    name varchar(50),
    release_year int,
    ratins int
);

Insert into Game(name,release_year,ratins)
values('GTA-6',2025,6),('GTA-5',2013,9),
("hi-the movie",2021,7)

select name,ratin,release_year from Game;

select * from Game;

Drop table Game;

create table movie(
    id int primary key,
    title varchar(50),
    genre varchar(50),
    director varchar(50),
    cast_count int,
    lanuae int,
    release_year int,
    imbd_ratings double,
    duration int
)

insert into movie(id,title,genre,director,cast_count,lanuae,release_year,imbd_ratings,duration)
values(5,'The-Witcher',"Horror","timur",5,5,5,5.0,120),
(3,'The-KNIHT',"ACTION","SAM aNDRREWr",5,5,5,5.0,120)

SELECT*FROM MOVIE;

DROP TABLE MOVIE

create table movie(
    id int primary key AUTO_INCREMENT,
    title varchar(50),
    genre varchar(50),
    director varchar(50),
    cast_count int,
    lanuae int,
    release_year int,
    imbd_ratings double,
    duration int
)

insert into movie(title,genre,director,cast_count,lanuae,release_year,imbd_ratings,duration)
values('The-Witcher',"Horror","timur",5,5,5,5.0,120),
('The-KNIHT',"ACTION","SAM aNDRREWr",5,5,5,5.0,120)

SELECT*FROM MOVIE;

SELECT*FROM MOVIE where genre='ACTION'

Select title from movie where genre="Horror"

Select title,genre from movie where genre="ACTION"

Select title,imbd_ratings from movie where imbd_ratings=5.0;

select id as movie_id from movie;

select title as movie_name from movie;

select imbd_ratings as movie_ratin from movie;

SELECT CAST_COUNT AS ALL_CASTS FROM MOVIE;

DROP TABLE MOVIE;

create table user(
    id int primary key,
    name varchar(50),
    age int,
    email varchar(50),
    password varchar(50)
);

insert into user(id,name,age, email,password)
values(1,"john",25,"john@gmail.com","password@123"),
(2,"raj",25,"raj@gmail.com","password@123"),
(3,"kiran",25,"kiran@gmail.com","password@123"),
(4,"harish",25,"harish@gmail.com","password@123");

select * from user;

update user
set age=30
where id=1;

select*from user;

update user
set password="yep@change it"
where id=1;

select*from user;

update user
set name="roll1"
where id=1;

select*from user;

update user
set age=50
select * from user

drop table user;

create table user(
    id int primary key,
    name varchar(50),
    age int,
    email varchar(50),
    password varchar(50)
);

insert into user(id,name,age, email,password)
values(1,"john",25,"john@gmail.com","password@123"),
(2,"raj",25,"raj@gmail.com","password@123"),
(3,"kiran",25,"kiran@gmail.com","password@123"),
(4,"harish",25,"harish@gmail.com","password@123");

select * from user;

delete from user
where id=1

select * from user

delete from user;

select * from user;

create table game( 
    name varchar(10),
    genre char(20)
)

insert into game(name,genre )
values("game1","action")

select * from game

drop table game

create table events(
    event_name varchar(25),
    event_date date,
    event_time time,
    event_datetime datetime
);

insert into events(event_name,event_date,event_time,event_datetime)
values("Meeting1","2024-03-02","14:30:00","2024-03-02 14:30:00"),
("Meeting2","2025-04-02","17:30:00","2025-04-02 17:30:00"),
("Meeting3","2026-05-02","18:30:00","2026-05-02 18:30:00")

select * from events

select current_date();

select current_time();

select now();


drop table events


create table comment(
    id int auto_increment primary key,
    author varchar(255),
    content varchar(255),
    create_at TIMESTAMP default current_timestamp,
    update_at TIMESTAMP default current_timestamp on update current_timestamp
);

insert into comment(author,content)
values ("name1","This is dummy"),
("george","This is gonna change"),
("nope","life sucks")

select * from comment

update comment set content="is it gonna changd?"where id=1;


select * from comment

update comment
set content="never ever give up "where id=2


select * from comment

drop table user

create table user(
    user_id int primary key auto_increment,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    email varchar(255) unique not null,
    passowrd varchar(255) not null,
    age int 
)

insert into user (first_name,last_name,email,passowrd,age)
values('john','henry',"1@gmail.com","1@12",25),
('rovk','sjhhjy',"3@gmail.com","1@13",23),
('cena','sfoshij',"41@gmail.com","1@14",80),
('jack','tjicoo',"928@gmail.com","1@15",33)

select substring("hello world",7,5)

select substring("job",3)

select substring(first_name,2) from user

select substring(first_name,2,6) from user

select substring(first_name,1,7) from user

select substring(first_name,2,7) from user

select replace ("Hello World","Hello","bye")

select replace ("john","x",2)

select replace (first_name,"jane","janeeeeeee") from user

select replace(last_name,"joe","joeyyyyyy")from user

select reverse("Hello World")

select reverse ("name")

select reverse(first_name) from user

select reverse(last_name) from user

select char_length('Hello world')

select char_length(first_name) from user

select char_length(last_name) from user

select length(first_name) from user

select length(last_name) from user

select first_name from user order by first_name asc;

select first_name from user order by first_name desc;

select first_name from user order by length(first_name)desc;

select first_name from user;

select first_name from user limit 2;

select * from user;

select * from user where first_name like "%j%";-- all possible with one j at any point in it

select * form user where last_name like "-mma"  -- checks fro only one output

select count(*) from user;

select count(first_name) from user;

select count(*) from user where first_name="john";

select min(age) from user;

select max(age) from user;

select avg(age) from user;

select sum(age) from user;

select first_name,avg(age) as average_age from user group by first_name

select first_name,last_name from user where age!=35

select first_name,last_name from user  where first_name!="emma"

select * from user where age>30

select * from user where length(first_name)>2

select * from user where age>10 and length(first_name)>2

select * from user where age<70 or age>10;

select * from user where age between 40 and 90

select * from user where age in(80,18,19)

select first_name,age,
case 
when age<30 then 'Young'
when age>=30 and age<60 then 'middle-aged'
else 'Senior'
end as age_group
from user;

create table series(
    id int auto_increment primary key,
    title varchar(50) unique,
    releas_year int,
    genre varchar(255)
);

drop table series;

create table series(
    id int auto_increment primary key,
    title varchar(50) unique,
    releas_year int,
    genre varchar(255)
);

insert into series(title,releas_year,genre)
values('Srtanger_things',2016,'Science-fiction'),
('Game-of Thrones',2008,'Myth'),
('Wind_breaker',2024,'fiction');

select * from series

create table employee(
    emp_id int primary key,
    emp_name varchar(50),
    emp_age int check(emp_age>=18 and emp_age<=65),
    emp_salary decimal (10,2) check (emp_salary>=0)
)

insert into employee(emp_id,emp_name,emp_age,emp_salary)
values(1,"mad",25,59803.090);

select * from employee

insert into employee(emp_id,emp_name,emp_age,emp_salary)
values(2,"mhi",16,59803.090); -- no proper error msg

drop table employee;

create table employee(
    emp_id int primary key,
    emp_name varchar(50),
    emp_age int,
    emp_salary decimal(10,2),
    constraint chk_emp_age check(emp_age>=18 and emp_age<=65),
    constraint chk_emp_salary check(emp_salary>=0)
);

insert into employee(emp_id,emp_name,emp_age,emp_salary)
values(2,"Bob",16,98187998);-- error msg for chk violation

drop table employee

create table employee(
    emp_id int primary key,
    emp_name varchar(50),
    emp_age int,
    emp_salary decimal(10,2),
    constraint chk_emp_age check(emp_age>=18 and emp_age<=65),
    constraint chk_emp_salary check(emp_salary>=0)
);

insert into employee(emp_id,emp_name,emp_age,emp_salary)
values(2,"Bob",18,98187998);

insert into employee(emp_id,emp_name,emp_age,emp_salary)
values(3,"Bai",50,98187998);

alter table employee 
drop column emp_salary

alter table employee 
modify column emp_name varchar(255)

alter table employee 
change column emp_name full_name varchar(255)

select * from employee

create table engineer(
    eng_id int auto_increment primary key,
    eng_name varchar(255) not null,
    profession varchar(255) not null,
    email varchar(50)
);

create table task(
    task_id int auto_increment primary key,
    task_name varchar(255),
    task_description text,
    eng_id int,
    foreign key(eng_id)references engineer(eng_id)
    );

insert into engineer(eng_name,profession,email)
values(
    "alice",'Full_stack','alice@gmail.com'),
    ("ravi",'machine lelarning expert','ravi@gmail.com'),
    ("ram",'cyber_analyst','ram@gmail.com'),
    ("raj",'data_scientist','raj@gmail.com'
);

insert into task(task_name,task_description,eng_id)
values
    ('task1',"Design UI in figma",1),
    ('task2',"Structure UI in figma",3),
    ('task3',"Plan for implementation",3),
    ('task4',"Code the program",4);
    
select * from engineer

select * from task

-- cross join
select * from engineer  cross join task

select * from engineer,task 

-- inner join
select * from engineer 
inner join task on engineer.eng_id=task.eng_id

select eng_name ,email,task_name,task_description FROM ENGINEER e
INNER JOIN  TASK t on e.eng_id=t.eng_id

-- left join  only from ENGINEER

select * from engineer e
left join task t on e.eng_id=t.eng_id

-- right join  only from task

select * from engineer e
right join task t on e.eng_id=t.eng_id

create  table movie(
    movie_id int  auto_increment primary key not null,
    title varchar(100) not null,
    year int not null,
    director  varchar(100) not null,
    genre varchar(100) not null
);

create table person(
    person_id int auto_increment not null primary key,
    name varchar(100),
    age int,
    email varchar(255),
    gender varchar(255),
    country varchar(255)
);

create table comment(
    comment_id int primary key auto_increment not null,
    comment_content text not null,
    movie_id int not null,
    person_id int not null,
    foreign key(movie_id) references movie(movie_id),
    foreign key(person_id) references person(person_id)
);

insert into movie (title,year,director,genre)
values
('The winter soldier',2015,'JOhn walkson','action'), 
('The bleach',2016,'JOhn paul','fiction'), 
('American War comedy',2017,'Sam warner','Myth'), 
('barbie',2018,'King burster','fantasy'), 

drop table comment

drop table engineer

drop table task;

drop table employee;

create table employee(
    id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    department varchar(50),
    salary decimal(10,2)
);

insert into employee(id,first_name,last_name,department,salary )
values
(1,"ram","vishal",'cse',20000.23),
(2,"sham","lal",'it',20000.23),
(3,"rai","vishva",'civil',20000.23),
(4,"kiran","nayak",'mech',20000.23)

create view employee_name as
select id,concat(first_name,' ',last_name)as full_name from employee

select * from employee_name;

create or replace view employee_name as
select id,concat(first_name,' ',last_name)as full_name from employee
where department='it'

select * from employee_name;

drop view employee_name

drop table employee;
