create database ss2b2;
use ss2b2;

create table customer(
cid int auto_increment primary key,
cname varchar(255) not null,
cage int not null 
);
create table Orders(
oid int auto_increment primary key,
cid int,
odate datetime,
ototalprice double,
foreign key (cid) references customer(cid)
);

create table product(
pid int auto_increment primary key,
pname varchar(255) not null,
pprice double not null
);

create table orderdetail(
oid int,
pid int,
odqty int,
foreign key (oid) references Orders(oid),
foreign key (pid) references product(pid)
);