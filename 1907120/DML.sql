-- Insert data into the Products table
INSERT INTO Products VALUES (1, 'Product A', 'Description A', 'Category A', 9.99, 'image_a.jpg', 10, 5);
INSERT INTO Products VALUES (2, 'Product B', 'Description B', 'Category B', 19.99, 'image_b.jpg', 15, 8);
INSERT INTO Products VALUES (3, 'Product C', 'Description C', 'Category A', 14.99, 'image_c.jpg', 5, 2);
INSERT INTO Products VALUES (4, 'Product D', 'Description D', 'Category C', 24.99, 'image_d.jpg', 20, 10); 
INSERT INTO Products VALUES (5, 'Product E', 'Description E', 'Category B', 12.99, 'image_e.jpg', 12, 6);

-- Insert data into the Customers table
INSERT INTO Customers VALUES (1, 'John', 'Doe', 'john@example.com', '1234567890', '123 Shipping St', '123 Billing St');
INSERT INTO Customers VALUES       (2, 'Jane', 'Smith', 'jane@example.com', '9876543210', '456 Shipping St', '456 Billing St');
 INSERT INTO Customers VALUES      (3, 'Michael', 'Johnson', 'michael@example.com', '5555555555', '789 Shipping St', '789 Billing St');
INSERT INTO Customers VALUES       (4, 'Emily', 'Brown', 'emily@example.com', '1111111111', '987 Shipping St', '987 Billing St');
 INSERT INTO Customers VALUES      (5, 'David', 'Davis', 'david@example.com', '2222222222', '654 Shipping St', '654 Billing St');

-- Insert data into the Orders table
INSERT INTO Orders VALUES (1, 1,TO_DATE('2023-03-10', 'YYYY-MM-DD'), 29.99);
INSERT INTO Orders VALUES  (2, 2,TO_DATE('2023-01-02', 'YYYY-MM-DD'), 45.99);
 INSERT INTO Orders VALUES (3, 3,TO_DATE('2023-04-20', 'YYYY-MM-DD'), 19.99);
 INSERT INTO Orders VALUES (4, 4, TO_DATE('2023-03-13', 'YYYY-MM-DD'), 32.99);
 INSERT INTO Orders VALUES (5, 5, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 27.99);

-- Insert data into the OrderDetails table
INSERT INTO OrderDetails VALUES (1, 1, 1, 2, 9.99);
INSERT INTO OrderDetails VALUES  (2, 1, 3, 1, 14.99);
INSERT INTO OrderDetails VALUES  (3, 2, 2, 3, 19.99);
 INSERT INTO OrderDetails VALUES (4, 3, 5, 1, 12.99);
 INSERT INTO OrderDetails VALUES (5, 4, 4, 2, 24.99);

-- Insert data into the Inventory table
INSERT INTO Inventory VALUES (1, 1, 8, 'Dhaka');

INSERT INTO Inventory VALUES       (2, 1, 12, 'Chittagong');

 INSERT INTO Inventory VALUES      (3, 1, 5, 'rajshahi');

 INSERT INTO Inventory VALUES      (4, 1, 18, 'Khulna');

 INSERT INTO Inventory VALUES      (5, 1, 10, 'Barisal');
 

--join
SELECT i.ProductID, p.ProductName, i.QuantityInStock
FROM Inventory i
JOIN Products p ON i.ProductID = p.ProductID;

--aggregation
SELECT ProductID, SUM(QuantityInStock) AS TotalQuantity
FROM Inventory
GROUP BY ProductID;

--retrieve the total quantity of a product in stock:
SELECT ProductID, SUM(QuantityInStock) AS TotalQuantity
FROM Inventory
GROUP BY ProductID;
