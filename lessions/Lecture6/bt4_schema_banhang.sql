-- CREATE DATABASE nếu cần
CREATE DATABASE IF NOT EXISTS banhang;
USE banhang;

-- Khách hàng
CREATE TABLE Customer (
  CustomerID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(150) NOT NULL,
  Email VARCHAR(150) UNIQUE NOT NULL,
  Phone VARCHAR(20)
);

-- Địa chỉ (một khách có thể có nhiều địa chỉ)
CREATE TABLE Address (
  AddressID INT AUTO_INCREMENT PRIMARY KEY,
  CustomerID INT NOT NULL,
  Street VARCHAR(255),
  City VARCHAR(100),
  PostalCode VARCHAR(20),
  Country VARCHAR(50) DEFAULT 'Vietnam',
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Danh mục sản phẩm
CREATE TABLE Category (
  CategoryID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL
);

-- Sản phẩm
CREATE TABLE Product (
  ProductID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(200) NOT NULL,
  CategoryID INT,
  Price DECIMAL(10,2) NOT NULL,
  Description TEXT,
  FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Kho (tồn kho)
CREATE TABLE Inventory (
  ProductID INT PRIMARY KEY,
  Quantity INT NOT NULL DEFAULT 0,
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Đơn hàng
CREATE TABLE `Order` (
  OrderID INT AUTO_INCREMENT PRIMARY KEY,
  CustomerID INT NOT NULL,
  OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
  ShipAddressID INT,
  PaymentID INT,
  Status VARCHAR(50) DEFAULT 'NEW',
  TotalAmount DECIMAL(12,2) DEFAULT 0,
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY (ShipAddressID) REFERENCES Address(AddressID)
  -- PaymentID thỉnh thoảng là NULL ban đầu; FK có thể thêm sau nếu muốn
);

-- Chi tiết đơn hàng
CREATE TABLE OrderItem (
  OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
  OrderID INT NOT NULL,
  ProductID INT NOT NULL,
  Quantity INT NOT NULL,
  UnitPrice DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Thanh toán
CREATE TABLE Payment (
  PaymentID INT AUTO_INCREMENT PRIMARY KEY,
  OrderID INT NOT NULL,
  PaymentMethod VARCHAR(50),
  Amount DECIMAL(12,2),
  PaymentDate DATETIME DEFAULT CURRENT_TIMESTAMP,
  Status VARCHAR(50) DEFAULT 'PENDING',
  FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)
);
