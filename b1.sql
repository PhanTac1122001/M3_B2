create database ss2b1;
use ss2b1;

create table product(
id int auto_increment primary key,
name varchar(100) not null,
created date not null
);
create table color(
id int auto_increment primary key,
name varchar(100) not null,
status bit not null
);
create table size(
id int auto_increment primary key,
name  varchar(100) not null,
status bit not null
);

create table product_detail(
id int auto_increment primary key,
product_id int,
color_id int,
size_id int,
price double not null,
stock int not null,
status bit not null,
foreign key (product_id) references product(id),
foreign key (color_id) references color(id),
foreign key (size_id) references size(id)
);