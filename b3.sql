create database ss2b3;
use ss2b3;

create table vattu(
mavt int auto_increment primary key,
tenvt varchar(255)
);
create table phieunhap(
sopn int primary key,
ngaynhap datetime
);

create table phieunhapchitiet(
sopn int,
mavt int,
dongianhap double,
soluongnhap int,
foreign key (mavt) references vattu(mavt),
foreign key (sopn) references phieunhap(sopn)
);


create table chitietdondathang(
mavt int ,
sodh int primary key,
foreign key (mavt) references vattu(mavt)
);
create table ngaycungcap(
mancc int primary key,
tenncc varchar(255),
diachi varchar(255),
sodienthoai varchar(11)
);

create table dondathang(
sodh int ,
mancc int,
ngaydh datetime,
foreign key (sodh) references chitietdondathang(sodh),
foreign key (mancc) references ngaycungcap(mancc)
);


create table phieuxuat(
sopx int primary key,
ngayxuat datetime
);

create table phieuxuatchitiet(
sopx int,
mavt int,
dongiaxuat double,
soluongxuat int,
foreign key (sopx) references phieuxuat(sopx),
foreign key (mavt) references vattu(mavt)
);
