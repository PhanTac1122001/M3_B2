create database ss2b6;
use ss2b6;

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
create table catalog(
id int auto_increment primary key,
name varchar(100),
status bit
);
create table product(
id int auto_increment primary key,
name varchar(100),
price double,
stock int,
catalog_id int,
status bit,
foreign key (catalog_id) references catalog(id)
);

create table order_detail(
id int auto_increment primary key,
order_id int,
product_id int,
quantity int,
uint_price double,
foreign key (order_id) references orders(id),
foreign key (product_id) references product(id)
);


create table wishlist(
user_id int,
product_id int,
foreign key (user_id) references users(id),
foreign key (product_id) references product(id)
);
create table shopping_cart(
id int auto_increment primary key,
user_id int,
product_id int,
quantity int,
foreign key (user_id) references users(id),
foreign key (product_id) references product(id)
);