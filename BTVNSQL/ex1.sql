create database quanlysinhvien ;

use quanlysinhvien;

create table Class	(
	maLop int primary key,
    tenLop varchar(50) not null,
    namHoc int not null
);

create table Student (
	maSinhVien int primary key,
    hoTen varchar(50) not null,
    ngaySinh date not null,
    maLop int,
    constraint fk_class_student foreign key (malop) references Class(maLop)
);