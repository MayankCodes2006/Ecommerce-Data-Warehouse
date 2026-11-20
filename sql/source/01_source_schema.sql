/*
===========================================================
Project : E-commerce Data Warehouse
File    : 01_source_schema.sql
Author  : Mayank
Day     : 3
Purpose : Create Source Database Schema
===========================================================
*/

-- Create Database
CREATE DATABASE EcommerceDW;
GO

USE EcommerceDW;
GO

-----------------------------------------------------------
-- Categories
-----------------------------------------------------------
CREATE TABLE Categories
(
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

-----------------------------------------------------------
-- Suppliers
-----------------------------------------------------------
CREATE TABLE Suppliers
(
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(150),
    ContactEmail VARCHAR(150),
    Phone VARCHAR(20)
);

-----------------------------------------------------------
-- Products
-----------------------------------------------------------
CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(150),
    CategoryID INT,
    SupplierID INT,
    Price DECIMAL(10,2),

    FOREIGN KEY (CategoryID)
        REFERENCES Categories(CategoryID),

    FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID)
);

-----------------------------------------------------------
-- Customers
-----------------------------------------------------------
CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(150),
    City VARCHAR(100),
    Country VARCHAR(100)
);

-----------------------------------------------------------
-- Orders
-----------------------------------------------------------
CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderStatus VARCHAR(30),

    FOREIGN KEY(CustomerID)
        REFERENCES Customers(CustomerID)
);

-----------------------------------------------------------
-- Order Items
-----------------------------------------------------------
CREATE TABLE OrderItems
(
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),

    FOREIGN KEY(OrderID)
        REFERENCES Orders(OrderID),

    FOREIGN KEY(ProductID)
        REFERENCES Products(ProductID)
);

-----------------------------------------------------------
-- Payments
-----------------------------------------------------------
CREATE TABLE Payments
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    PaymentStatus VARCHAR(30),

    FOREIGN KEY(OrderID)
        REFERENCES Orders(OrderID)
);