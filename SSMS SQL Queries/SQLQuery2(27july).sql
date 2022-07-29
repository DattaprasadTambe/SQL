create table Trainer
(T_Id int not null Primary Key, T_name varchar(20), Experience int default 0);
insert into Trainer
values(101, 'Deepa', 3),(102,'Kalyani',2);

create table Stud
(sid int primary key, sname varchar(20), batchname varchar(20), trainerid int,constraint fkid foreign key(trainerid) references trainer(T_Id));

insert into Stud values (1,'Datta', 'Prorigo',101),(2,'Devesh','Microsoft',102);
insert into Stud values(3,'Prasad','Amazon',103);

update Stud 
set sname = 'Dattaprasad' where sid = 1;
update Trainer
set Experience = Experience+5 where T_Id = 101;



alter table Trainer add T_Salary int;

update Trainer
set T_Salary = 50000 where T_Id = 101;
update Trainer
set T_Salary = 45000 where T_Id = 102;

select * from Trainer;
select * from Stud;

drop table Trainer;
drop table Stud;