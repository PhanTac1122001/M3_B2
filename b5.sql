create database ss2b5;
use ss2b5;

create table users(
id int auto_increment primary key,
fullname varchar(100),
email varchar(255),
password varchar(255),
phone varchar(11),
permission bit,
status bit
);

create table address(
id int auto_increment primary key,
user_id int,
receiveaddress varchar(100),
receivename varchar(100),
receivephone varchar(11),
isdefault bit,
foreign key (user_id) references users(id)
);

create table orders(
id int auto_increment primary key,
orderat datetime,
totals double,
user_id int,
status bit,
foreign key (user_id) references users(id)
);

create table book(
id int auto_increment primary key,
name varchar(100),
price double,
stock int,
status bit
);

create table order_detail(
id int auto_increment primary key,
order_id int,
book_id int,
quantity int,
uint_price double,
foreign key (order_id) references orders(id),
foreign key (book_id) references book(id)
);

create table catalog(
id int auto_increment primary key,
name varchar(100),
status bit
);

create table book_catalog(
catalog_id int,
book_id int,
foreign key (catalog_id) references catalog(id),
foreign key (book_id) references book(id)
);