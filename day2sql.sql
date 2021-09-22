update dept set dept_name='science' where dept_id=1;
select * from student where id in (select dept_id from dept where dept_name='math' || dept_name='computer');
alter table student drop studentcol;
alter table student add dept_id varchar(10);
select s.name,d.dept_name from student join dept on s.id=d.dept_id;
create table info (
i_id int not null,
i_name varchar(40) null,
id int,
primary key (i_id),
foreign key (id) references student(id)
);
select * from info;

create table sales(
salesid int not null primary key,
salesname varchar(40),
address varchar(20)
);
create table orders(
id int primary key,
pname varchar(20),
address varchar(20),
salesid int,
constraint FK_order foreign key(salesid) references sales(salesid)
);
select * from orders;
select * from parents;
select s.id, s.class, p.pname, p.p_addr from parents p inner join student s on s.id=p.id;
select s.id, s.class, p.pname, p.p_addr from parents p left join student s on s.id=p.id;
select s.id, s.class, p.pname, p.p_addr from parents p right join student s on s.id=p.id;
