-- Active: 1725279039453@@127.0.0.1@5432@Month2-week2
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR (100),
    LastName VARCHAR (100),
    Email VARCHAR (100),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Products(
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders(
    OrderID SERIAL PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails(
    OrderDetailID SERIAL PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers (FirstName, LastName, Email)
VALUES('John','Maina','maishjohn@gmail.com'),
('Mary','Mane','manemary@gmail.com'),
('Quavo','Huncho','huncho@gmail.com')
;

INSERT INTO Products (ProductName, Price)  
VALUES('Lenovo Ideapad', 2000.00),
('Samsung Galaxy', 990.00),
('Airpods pro', 299.99),
('Dual monitor', 566.00)
;

INSERT INTO Orders(OrderDate, CustomerID)
VALUES('2024-09-10', 1),
('2024-09-11', 2),
('2024-09-12', 3)
;

INSERT INTO OrderDetails(OrderID, ProductID, Quantity)
VALUES(1, 1, 2),
(1, 2, 1),
(2, 3, 1)
;

SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;

SELECT Customers.FirstNAme, Customers.LastName, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


SELECT Customers.FirstName, Customers.LastName, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
;


SELECT FirstName, LastName
FROM Customers
WHERE CustomerID iN (
    SELECT Orders.CustomerID
    FROM Orders
    INNER JOIN OrderDetails on Orders.OrderID = OrderDetails.OrderID
    INNER JOIN Products on OrderDetails.ProductID = Products.ProductID
    GROUP BY Orders.CustomerID
    HAVING SUM(Products.Price*OrderDetails.Quantity) > 500
    )
;

