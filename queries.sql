-- Insert a new order
INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES (101, 5, GETDATE());

-- Update a customer's email
UPDATE Customers
SET Email = 'newemail@example.com'
WHERE CustomerID = 5;

-- Select order details
SELECT * FROM Orders
WHERE OrderID = 101;

-- Total orders per customer
SELECT CustomerID, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID;

-- Average quantity per product
SELECT ProductID, AVG(Quantity) AS AverageQuantity
FROM OrderDetails
GROUP BY ProductID;

-- Delete a product
DELETE FROM Products
WHERE ProductID = 15;

-- Update order status
UPDATE Orders
SET Status = 'Shipped'
WHERE OrderID = 1023;

-- Total orders per customer (again)
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID;

-- Number of employees per department
SELECT Department, COUNT(EmployeeID) AS NumberOfEmployees
FROM Employees
GROUP BY Department;

-- Average product rating per category
SELECT Category, AVG(Rating) AS AverageRating
FROM Products
GROUP BY Category;
