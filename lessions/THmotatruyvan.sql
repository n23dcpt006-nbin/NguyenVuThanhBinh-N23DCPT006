SELECT productCode, SUM(quantityOrdered)
FROM orderdetails
GROUP BY productCode
ORDER BY SUM(quantityOrdered) DESC
LIMIT 3 ;
/*1. Lấy ra 3 sản phẩm có số lượng bán nhiều nhất, sắp xếp giảm dần theo tổng số lượng đặt hàng*/

SELECT productCode,
       COUNT(quantityOrdered) AS tongDonHang
FROM orderdetails
WHERE productCode = 'S18_1749' ;
/*2. Đếm tổng số đơn hàng của sản phẩm có mã 'S18_1749'.*/

SELECT * FROM orderdetails
WHERE priceEach BETWEEN '50' AND '100' ;
/*3. Lấy ra tất cả các chi tiết đơn hàng có giá mỗi đơn vị từ 50 đến 100.*/

SELECT * FROM orders
WHERE status = 'Disputed' ;
/*4. Lấy ra tất cả các đơn hàng có trạng thái “Disputed”.*/

SELECT country, AVG(creditLimit)
FROM customers
WHERE country = 'USA' ;
/*5. Tính giá trị trung bình hạn mức tín dụng của khách hàng tại Mỹ (USA).*/

SELECT country,
       COUNT(customerNumber) AS soKhachHangQuocTe
FROM customers
WHERE NOT country = 'USA'
GROUP BY country ;
/*6. Đếm số lượng khách hàng ở từng quốc gia khác Mỹ, và nhóm theo từng quốc gia.*/

SELECT DISTINCT jobTitle
FROM employees ;
/*7. Lấy ra danh sách các chức danh công việc khác nhau của nhân viên trong bảng 'employees'.*/