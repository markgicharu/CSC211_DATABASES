--This script creates tables for the shamba_Enterprise Database
--creates the staff table
create table staff(
    staffNo int primary key not null,
    branchNo int not null,
    staffSurname varchar(20) null,
    staffOtherName varchar(30) not null,
    staffStreet varchar(25) not null,
    staffTown varchar(20) not null,
    staffPCode int not null,
    staffTelNo varchar(12) null,
    staffGender varchar(1) not null,
    staffSalary money not null,
);

--creates the owner table
create table ownerTable(
	ownerNo int primary key not null,
	ownerSurname varchar (20) not null,
	ownerForeName varchar(30)  null,
	ownerTown varchar (20) not null,
	ownerPCode int not null,
);

--creates the properties type table
create table propertyType(
	propertyType int primary key not null,
	propertyTypeDescription varchar (20) not null,
);

--creates the properties for rent table
create table propertyForRent(
	propertyNo int primary key not null,
	propertyStreet varchar(20) not null,
	propertyTown varchar (20) not null,
	propertyPCode int not null,
	propertyType int foreign key references propertyType(propertyType) not null,
	propertyRooms int not null,
	propertyRentPerMonth double not null,
	ownerNo int foreign key references ownerTable(ownerNo),
	staffNo int foreign key references staff(staffNo) null,
	branchNo int foreign key references branch(branchNo),
	available varchar (3) not null,
	comments varchar (200) null,
);
--creates the tenant table
create table tenant(
	tenantNo int primary key not null,
	tenantSurname varchar(20) null,
	tenantForename varchar (30) not null,
	tenantTown varchar (20) not null,
	tenantPCode int not null,
	tenantTelNo varchar(12) null,
	tenantPrefType int foreign key references propertyType(propertyType) null,
);
--creates the lease table
create table lease(
	leaseNo int primary key not null,
	propertyNo int Foreign key references propertyType(propertyType) not null,
	tenantNo int Foreign key references tenant(tenantNo) not null,
	rentPerMonth double not null,
	depositAmount double not null.
	depositPaid double not null,
	startDate date not null,
	endDate date null,
);
create table tenantsInProperty(
	propertyNo int foreign key references property(propertyNo) not null,
	tenantNo int foreign key references tenant(tenantNo) not null,
	viewDate date not null,
	comments varchar (200) not null,
);
create table inspection(
	proertyNo int foreign key references property(propertyNo) not null,
	staffNo int foreign key references staff(staffNo) not null,
	inspectDate date not null,
	comments varchar (200) not null,
);
