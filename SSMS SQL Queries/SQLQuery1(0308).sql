create table thinkemp
(empid int primary key,
ename varchar(20) not null,
salary int,
mgrid int);

alter table thinkemp
add constraint fkmgrid foreign key (mgrid) references thinkemp(empid);

select e.ename 'EmpName', m.ename 'Manager'  from thinkemp e inner join thinkemp m on e.mgrid = m.empid;


--list all the managers where 2 emps are working

select m.ename 'Manager', count (*) from thinkemp e inner join thinkemp m 
on e.mgrid = m.empid  group by m.ename having count(*) >= 2 ;


delete s from Stud s inner join Trainer t 
on s.trainerid = t.T_Id where T_name =  'Deepa';

select * from Stud;