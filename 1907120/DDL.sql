drop TABLE OrderDetails;
drop table Orders;

drop TABLE Inventory;
drop table Customers;
drop table Products;


-- Create the Products table
CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(25),
  ProductDescription VARCHAR(25),
  ProductCategory VARCHAR(25),
  ProductPrice DECIMAL(10, 2),
  ProductImage VARCHAR(25),
  QuantityInStock INT,
  ReorderThreshold INT
);

-- Create the Customers table
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  FirstName VARCHAR(25),
  LastName VARCHAR(25),
  EmailAddress VARCHAR(25),
  PhoneNumber VARCHAR(20),
  ShippingAddress VARCHAR(25),
  BillingAddress VARCHAR(25)
);

-- Create the Orders table
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  OrderTotal DECIMAL(10, 2),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create the OrderDetails table
CREATE TABLE OrderDetails (
  OrderDetailID INT PRIMARY KEY,
  OrderID INT,
  ProductID INT,
  Quantity INT,
  Price DECIMAL(10, 2),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create the Inventory table
CREATE TABLE Inventory (
  ProductID INT,
  WarehouseID INT,
  QuantityInStock INT,
  PRIMARY KEY (ProductID, WarehouseID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


select * from OrderDetails;
select * from Inventory;

alter table Inventory add location char(20);
alter table Inventory modify location varchar(23);
alter table Inventory rename column location to location2;