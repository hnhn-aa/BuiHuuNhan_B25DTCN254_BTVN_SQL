create database quanlysinhvien1 ;

use quanlysinhvien1;

create table Student (
	maSinhVien int primary key,
    hoTen varchar(50) not null
);

create table Subject (
	maMonHoc int primary key,
    tenMonHoc varchar(50) not null,
    soTinChi int check (soTinChi > 0)
);