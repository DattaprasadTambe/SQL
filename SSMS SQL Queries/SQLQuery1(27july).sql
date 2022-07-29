create table Hotel
(H_Id int , H_name varchar(20));

alter table Hotel add H_Location varchar(20);
alter table Hotel add H_Rating int;

insert into Hotel values (101, 'MintLeaf', 'Kankavli', 5);
insert into Hotel values (102, 'Lemon Twist', 'Sawantwadi',4);

alter table Hotel drop column H_Rating;
alter table Hotel add H_Rating float;

update Hotel set H_Rating = 5 where H_name = 'MintLeaf';
update Hotel set H_Rating = 4.5 where H_name = 'Lemon Twist';

alter table Hotel alter column H_Id int not null;
alter table Hotel add constraint pkHID primary key(H_Id);
alter table Hotel add constraint uni Unique(H_Rating);
alter table Hotel drop constraint uni;
alter table Hotel drop column H_Rating;

sp_help Hotel;
select * from Hotel;