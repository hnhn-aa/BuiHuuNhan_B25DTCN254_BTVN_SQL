create database quanlysinhvien2;

use quanlysinhvien2;
create table Student (
	maSinhVien int primary key,
    hoTen varchar(50) not null
);

create table Subject (
	maMonHoc int primary key,
    tenMonHoc varchar(50) not null,
    soTinChi int check (soTinChi > 0)
);

create table Enrollment (
	maSinhVien int,
    maMonHoc int,
    ngayDangKy date,
    primary key (maSinhVien,maMonHoc),
    constraint fk_Student_Enrollment foreign key (maSinhvien) references student(maSinhVien),
	constraint fk_Class_Enrollment foreign key (maMonHoc) references Subject(maMonHoc)
);