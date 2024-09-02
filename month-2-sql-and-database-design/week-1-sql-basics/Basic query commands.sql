-- Active: 1725279039453@@127.0.0.1@5432@month2_week1@public
SELECT * FROM customers

CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    OrderDate DATE NOT NULL,
    CustomerID INT REFERENCES Customers(CustomerID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
);

CREATE TABLE OrderDetails (
    OrderDetailID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    ProductID INT REFERENCES Products(ProductID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    Quantity INT NOT NULL
);

INSERT INTO Products (ProductName, Price) 
VALUES ('Laptop', 899.99)
        ('Smartphone', 799.99)
        ('Tablet', 599.99)
;

INSERT INTO Orders (OrderDate, CustomerID)
VALUES ('2024-09-03', 1)
        ('2024-09-03', 1)
        ('2024-09-03', 1)
;

INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES (1, 1, 2)
        (1, 2, 1)
        (1, 3, 3)
;

INSERT INTO Customers (CustomerId, FirstName, LastName, Email)
VALUES (1,'John', 'Doe', 'johndoe@example.com')
        (2,'Jane', 'Smith', 'janesmith@example.com')
        (3,'Michael', 'Johnson', 'michaeljohnson@example.com')
;


SELECT Customers.FirstName, Customer.LastName, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
;

