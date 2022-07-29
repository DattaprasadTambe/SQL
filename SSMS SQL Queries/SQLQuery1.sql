create database NewDB;
use NewDB;

create table student
( S_id int primary key not null, S_name varchar(20), S_Marks int check(S_marks>0), S_City varchar(20) default 'Mumbai');

insert into student values(1,'Datta',90, 'Devgad');
insert into student values(3,'Rehan',85, 'Banglore');
insert into student values(2,'Prasad',85, 'Delhi');
insert into student(S_id, S_name, S_Marks) values(4,'Devesh',80);
/*insert into student values(4,'Akshay',80); */

/*insert into student(S_name, S_Marks) values('Vighnesh', 79);*/



select * from student;
drop table student;

