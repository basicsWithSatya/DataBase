-- SQL cheat sheet

-- Create a schema/database

create schema [schemaName];

ex:- create schema school;

-- Using the schema

use [schemaName]

ex:- use school;

-- Creating a table

create table [tableName](column1 datatype,column2 datatype,column3 datatype,.....)

ex:- create table student(id int,name varchar(50),class int);


-- Altering a table -> add a new column

Alter table [tableName] add column [columnName] datatype;

ex:- Alter table student add column address varchar(100);

-- Droping a table or schema

Drop table [tableName];
Drop schema [schemaName];

ex:- Drop table student;
     Drop schema school;

-- More with select

create schema company;
    
use company;
    
create table user(id int,first_name varchar(50),last_name varchar(50),city varchar(50),salary double);

insert into user values(1,'Satya','Gaur','Bangalore',50000);
insert into user values(2,'Hussain','Khan','Bangalore',55000);
insert into user values(3,'Jack','Adams','Newyork',40000);
insert into user values(4,'Peter','Johnes','Newyork',40000);
insert into user values(5,'Maya','Jacob','Boston',70000);

-- DISTINCT
SELECT distinct [columnName] from [tableName];

ex:- select distinct salary from user;

-- WHERE
select */[column1,column2, ....] from [tableName] where [condition];

ex:- select * from user where first_name = 'Maya';

-- Conditional OPERATOR AND,OR,NOT

-- OR
select */[column1,column2, ....] from [tableName] where [condition1] or [condition2];

ex:- select * from user where city = 'Bangalore' or city = 'Boston';

-- AND

select */[column1,column2, ....] from [tableName] where [condition1] AND [condition2];

ex:- select * from user where city = 'Bangalore' and salary > 50000;

-- NOT

select */[column1,column2, ....] from [tableName] where not [condition];

ex:- select * from user where not city = 'Bangalore';

-- IN
select */[column1,column2, ....] from [tableName] where [columnName] in (columnValue1,columnValue2,.....);

ex:- select * from user where city in ('Bangalore','Boston');

-- NOT In
select */[column1,column2, ....] from [tableName] where [columnName] not in (columnValue1,columnValue2,.....);

ex:- select * from user where city not in ('Bangalore','Boston');

-- Order By
	-- ascending
select */[column1,column2, ....] from [tableName] order by [columnName] asc;
	-- descending
select */[column1,column2, ....] from [tableName] order by [columnName] desc;   
ex:- select * from user order by salary desc;


-- SQL Aggregate Functions | Min, Max, Count, Avg, Sum & Like

-- Min
select min(columnName) from [tableName];
ex:- select min(salary) from user;

-- MAX

select max(columnName) from [tableName];
ex:- select max(salary) from user;

-- Count

select count(*) from [tableName];
ex:- select count(*) from user;
	 select count(id) from user;

-- Avg

select avg(columnName) from [tableName];
ex:- select avg(salary) from user;

-- SUM

select sum(columnName) from [tableName];
ex:- select sum(salary) from user;

-- LIKE

select * from [tableName] where [columnName] like '%[value]%';
ex:- select * from user where name like '%satya%';

-- Second Max Query

select max(salary) from user where salary < (select max(salary) from user);


