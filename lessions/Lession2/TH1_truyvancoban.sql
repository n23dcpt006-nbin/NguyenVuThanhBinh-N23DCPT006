SELECT DISTINCT status
FROM orders ;

SELECT COUNT(orderNumber) AS tongDonHang
FROM orders
WHERE orderDate
BETWEEN '2005-05-01' AND '2005-05-31' ;

SELECT DISTINCT country
FROM customers
WHERE salesRepEmployeeNumber IS NULL ;

SELECT productName,
(quantityInStock) AS tongXe
FROM products
GROUP BY productName
ORDER BY tongXe DESC
LIMIT 5 ;

SELECT productName,
ABS(MSRP - buyPrice) AS chenhLechGia
FROM products
ORDER BY chenhLechGia DESC
LIMIT 5 ;

SELECT productName,
buyPrice AS giaBanNamNay,
buyPrice * 1.2 AS giaBanNamSau
FROM products ;

SELECT productCode,
SUM( quantityOrdered ) * priceEach AS tongTien
FROM orderdetails
WHERE productCode = 'S18_1749' ;

SELECT customerNumber, SUM(amount) AS tongChiTieu
FROM payments
GROUP BY customerNumber
ORDER BY tongChiTieu DESC
LIMIT 5 ;
