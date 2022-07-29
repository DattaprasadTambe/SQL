use NewDB;

create table customer
(custid int primary key,
cname varchar(20),
city varchar(20),
mobile bigint);

create table orderDetails
(orderid int primary key,
orerdate date,
custid int,
constraint fkcustid foreign key (custid) references customer(custid)
on delete set null on update cascade);

insert into customer values (101, 'Yogesh','Oros',3456789012);
insert into customer values (102,'Datta','Kankavli',98345023403);
insert into customer values (103, 'Prasad','Kudal',79454797450);
insert into customer values (104,'Rehan','Nandgaon',898657344);

insert into orderDetails values (1,'2022-07-26',102);
insert into orderDetails values (2,'2022-08-03',103);
insert into orderDetails values (3,'2022-07-14',102);
insert into orderDetails values (4,'2022-07-20',101);
insert into orderDetails values (5,'2022-08-10',104);
insert into orderDetails values (6,'2022-07-29',101);

select * from customer;
select * from orderDetails;

create table items
(itemid int primary key,
itemname varchar(20),
price int);

insert into items values (901, 'Chicken Burger',250);
insert into items values (902,'Onion rings',150);
insert into items values (903,'Pizza', 300);
insert into items values (904,'Cappuccino',199);

create table custOrders
(orderid int,
itemid int,
quantity int,
primary key (orderid, itemid),
foreign key (orderid) references orderDetails(orderid),
foreign key (itemid) references items(itemid));

insert into custOrders values 
(1,901,2),
(1,902,1),
(2,903,2),
(3,904,3),
(3,902,2),
(4,901,1),
(4,904,1);

select * from items;
select * from custOrders;

update customer set custid = 105 where custid = 101;
delete from customer where custid=103;