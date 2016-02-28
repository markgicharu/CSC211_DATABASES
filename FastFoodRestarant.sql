--This Creates a database for a Fast Food Restaurant
--CREATE DATABASE FastFood;

--This creates the tables for the fastfood restaurant
	--This creates the Products Table
/*CREATE TABLE Products(
		ProductID int Not Null PRIMARY KEY,
		ProductName Varchar(50) Not Null,
		ProductPrice money not Null,
	);*/

	--This creates the Countries Table
CREATE TABLE Country(
		CountryID int not null PRIMARY KEY,
		CountryName varchar(50) not null,
		CountryCode nvarchar(10) not null,
	);
	
	--This create the Employees Table
CREATE TABLE Employees(
		EmployeeID int not null PRIMARY KEY,
		FirstName varchar(50) not null,
		LastName varchar(50) not null,
		PoBox varchar(50) null,
		--CountryID int FOREIGN KEY REFERENCES Country(CountryID),
		CellPhone int not null,
		NationalIdNo int null,
		PassportNo nvarchar null,
	);

	--This creates the Sales Table
CREATE TABLE Sales(
		SalesID int not null PRIMARY KEY,
		SalesDate date not null,
		SalesAmount money not null,
		--StoreID int FOREIGN KEY REFERENCES Stores(StoreID),
		--ProductID int FOREIGN KEY REFERENCES Products(ProductID),
	);

	--This create the Stores Table
CREATE TABLE Stores(
		StoreID int not null PRIMARY KEY,
		StoreName varchar(50) not null,
		--LocationID int FOREIGN KEY REFERENCES Locations(LocationID),
	);
	--This create the Locations Table
CREATE TABLE Locations(
		LocationID int not null PRIMARY KEY,
		LocationName varchar(50) not null,
		--StoreID int FOREIGN KEY REFERENCES Stores(StoreID),
	);
		--This creates the Orders from customers table
CREATE TABLE Orders
	(
		OrderID int NOT NULL PRIMARY KEY,
		OrderNo int NOT NULL,
		--customerID int FOREIGN KEY REFERENCES CUSTOMERS(customerID)
	);

CREATE TABLE Customers
	(
		customerID int not null PRIMARY KEY,
		firstName varchar(50) not null,
		lastName varchar(50) not null,
		--locationID int FOREIGN KEY REFERENCES Locations(LocationID),
		--OrderID int FOREIGN KEY REFERENCES Orders(OrderID),
	);
