
--This alters the tables for the fastfood restaurant

	--This alters the Employees Table
alter TABLE Employees
add FOREIGN KEY CountryID
REFERENCES Country(CountryID)
		
	--This alters the Sales Table
alter TABLE Sales
add FOREIGN KEY StoreID 
REFERENCES Stores(StoreID)
add FOREIGN KEY ProductID
REFERENCES Products(ProductID)


	--This alters the Stores Table
alter TABLE Stores
add FOREIGN KEY LocationID 
REFERENCES Locations(LocationID)

	--This alters the Locations Table
alter TABLE Locations
ADD CONSTRAINT fk_PerLocations
--add--
FOREIGN KEY (StoreID) 
REFERENCES Stores(StoreID)

--This alters the Orders from customers table
alter TABLE Orders
add	FOREIGN KEY (customerID)
REFERENCES Customers(customerID)


alter TABLE Customers	
add FOREIGN KEY LocationID
REFERENCES Locations(LocationID)
add FOREIGN KEY OrderID
REFERENCES Orders(OrderID)

