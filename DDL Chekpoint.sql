CREATE DATABASE gmcdb;  /* This file was created on MySQL Workbench */ 
use gmcdb;

CREATE TABLE Product (
Product_Id INT NOT NULL AUTO_INCREMENT,
Product_Name VARCHAR(20) NOT NULL,
Price INT UNSIGNED NOT NULL ,
PRIMARY KEY (Product_Id)
);

CREATE TABLE Customer (
Customer_Id INT NOT NULL AUTO_INCREMENT,
Customer_Name VARCHAR(20) NOT NULL,
Customer_Tel INT NOT NULL UNIQUE,
PRIMARY KEY (Customer_Id)
);

CREATE TABLE Orders (
Order_Id INT NOT NULL AUTO_INCREMENT,
Customer_Id INT NOT NULL,
Product_Id INT NOT NULL,
Quantity INT,
Total_amount INT,
PRIMARY KEY (Order_Id),
FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);

ALTER TABLE Product
ADD Category VARCHAR(20);

ALTER TABLE Orders
ADD OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP;