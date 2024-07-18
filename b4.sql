create database ss2b4;
use ss2b4;

create table users(
id int auto_increment primary key,
fullname varchar(100) not null,
email varchar(100)not null,
password varchar(100)not null,
phone varchar(11)not null,
permission bit not null,
status bit not null
);

create table historys(
id int auto_increment primary key,
user_id int not null,
points int not null,
examdate datetime,
foreign key(user_id) references users(id) 
);

create table exams(
id int auto_increment primary key,
nname varchar(100),
duration int,
status bit
);
create table questions(
id int auto_increment primary key,
content varchar(255),
exam_id int,
status bit,
foreign key (exam_id) references exams(id)
);

create table history_detail(
id int auto_increment primary key,
history_id int ,
question_id int,
resuslt bit,
foreign key (history_id) references historys(id),
foreign key (question_id) references questions(id)
);
create table answer(
id int auto_increment primary key,
content varchar(255),
question_id int,
answertrue bit,
foreign key (question_id) references questions(id)
);