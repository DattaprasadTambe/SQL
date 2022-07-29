use NewDB;

create table Employee
(E_id int primary key not null , E_name varchar(30), E_Designation varchar(20), E_Salary int check(E_Salary > 0), E_MobNo bigint unique);

insert into Employee values(1, 'Dattaprasad Tambe', 'Developer', 33000, 8308878765);
insert into Employee values(2,'Rehan Navlekar', 'Trainee', 25000, 7219772417);
insert into Employee values(3, 'Shubham Patil', 'Support', 20000, 7721461071);
insert into Employee(E_id, E_name, E_Designation, E_MobNo) values (4,'Vighnesh Chavan','Senior Developer', 7843275690);

delete from Employee where E_id = 4;

select * from Employee;