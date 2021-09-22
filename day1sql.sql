show databases
create database waqeer
show databases
create table customer(
cusid int not null primary key,
cusname varchar(40),
address varchar(20)
);
insert into customer values (1,'abc','cghhhh');
insert into details values (7,'45','g');
use waqeer
show tables

insert into details values (4, '26', 'h'),(3,'23','f');
show tables
select * from college;
select * from student;
select * from parents;
select * from student order by id asc;
select * from student order by id desc;
select * from student where id<2;
select * from student where id<2 and id>1;
select count(*) from student;
insert into parents values (3, 'khizer', 'tip');
select dept_id from dept where dept_name='math' || dept_name='computer';