use NewDB;

create table Book
(B_Id int primary key not null, B_name varchar(30),B_Authorname varchar(30), B_Price int check(B_Price > 0) default '250');

insert into Book values(101, 'The Secret', 'Rhonda Byrne', 350);
insert into Book(B_Id,B_name, B_Authorname) values (102, 'A Tale of Two Cities','Charles Dickens');
insert into Book values (103, 'Harry Potter Series','J.K.Rowlings',400);
insert into Book(B_Id, B_Price) values (104,300);

alter table Book alter column B_name varchar(40);
update Book set B_name = 'The Hobbit', B_Authorname='J.R.R. Tolkien' where B_Id = 104;


sp_help Book;
select * from Book;
drop table Book;