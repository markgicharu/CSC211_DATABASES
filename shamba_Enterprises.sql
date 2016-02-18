create database shamba_Enterprise;
create table branch(
				staff_no int not null primary key,
				br_street varchar(25) not null,
				br_area varchar(20),
				br_town varchar(20),
				br_pcode int not null,
				br_telno varchar(12)
				);
