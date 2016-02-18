
create table Customers
		(CustomerID int not null primary key,
		 FirstName varchar(255) not null,
		 LastName varchar(255) not null,
		 NationalID int not null unique,
		 DateOfBirth date not null,);
		 
create table Departments
		(DepartmentID int not null primary key,
		 DepartmentName varchar(255) not null,
		);
		
create table Employees
		(EmployeeID int not null primary key,
		 FirstName varchar(255) not null,
		 LastName varchar(255) not null,
		 NationalID int not null unique,
		 DateofBirth date not null,	
		);
	
create table ServicesOffered
		(ServiceID int not null primary key,
		 ServiceName varchar(255) not null, 
		);
