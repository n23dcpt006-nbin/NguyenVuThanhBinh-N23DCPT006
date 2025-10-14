/*Câu 1*/
SELECT productName, productLine, buyPrice
FROM products
WHERE productLine = 'Motorcycles';

/*Câu 2 -> Kết quả bị lỗi do:
- Thừa dấu phẩy sau products
- So sánh số nhưng lại để trong dấu nháy đơn ' ' → '20' và '90' trở thành chuỗi ký tự, không phải số. 
Sửa lại:*/
SELECT productName, productLine, buyPrice
FROM products
WHERE buyPrice < 20 OR buyPrice > 90;

/*Câu 3.1*/
SELECT DISTINCT status
FROM orders;

/*Câu 3.2*/
SELECT COUNT(orderNumber) AS soDonHang
FROM orders
WHERE status = 'Shipped'
AND orderDate BETWEEN '2003-04-01' AND '2003-04-30';

/*Câu 4*/
SELECT country, COUNT(customerNumber) AS soKhachHang
FROM customers
WHERE state IS NULL
GROUP BY country;

/*Câu 5*/
SELECT orderNumber, orderDate
FROM orders
WHERE orderDate BETWEEN '2003-02-01' AND '2003-02-28';

/*Câu 6 -> Kết quả bị lỗi do:
- Cú pháp COUNT customerNumber sai → phải là COUNT(customerNumber).
- Sau AS 'soKhachHang' không được có dấu phẩy.
Sửa lại:*/
SELECT city, COUNT(customerNumber) AS 'soKhachHang'
FROM customers
GROUP BY city
ORDER BY soKhachHang DESC

/*Câu 7*/
SELECT customerName, phone, addressLine1, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;

/*Câu 8*/
SELECT productName, productDescription, quantityInStock
FROM products
WHERE productLine = 'Classic Cars'
ORDER BY productName ASC;

/*Câu 9*/
SELECT od.orderNumber,
       SUM(od.quantityOrdered * od.priceEach) AS tongTien,
       SUM(od.quantityOrdered) AS tongSoLuong
FROM orderdetails od
GROUP BY od.orderNumber
HAVING tongTien > 1000 AND tongSoLuong > 500
ORDER BY tongTien DESC;

/*Câu 10*/
SELECT c.customerName,
       SUM(od.quantityOrdered * od.priceEach) AS tongGiaTriDonHang
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE c.phone = '6505555787'
GROUP BY c.customerName;

/*Câu 10.2*/
SELECT customerNumber, SUM(amount) AS tongThanhToan
FROM payments
WHERE customerNumber = 129
GROUP BY customerNumber;

/*Câu 11*/
SELECT c.customerNumber,
       SUM(od.quantityOrdered * od.priceEach) AS tongGiaTriDonHang
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE c.customerNumber = 119
GROUP BY c.customerNumber;

/*Câu 11.2*/
SELECT customerNumber, SUM(amount) AS tongThanhToan
FROM payments
WHERE customerNumber = 119
GROUP BY customerNumber;

/*Câu 12: 
- KH 119 có đơn hàng tổng giá trị rất lớn (158k+) nhưng mới trả 117k, còn nợ một phần đáng kể.
- KH 129 đã thanh toán 66k+, đã thanh toán đầy đủ.*/
