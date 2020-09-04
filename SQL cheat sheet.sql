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

