# TỔNG HỢP LINK GITHUB CÁC LABS

## 1. LAB01 ATM MINI PROJECT 🏧: 
📖 **Github LAB01:** https://github.com/n23dcpt006-nbin/NMCNPM-ATM

⚙️ **Chức năng chính:**
- 🔐 *Đăng nhập*: Xác thực người dùng từ cơ sở dữ liệu  
- 💸 *Rút tiền (Withdraw)*: Cập nhật số dư và lưu lịch sử giao dịch  
- 📊 *Xem số dư / Giao dịch*: Truy vấn dữ liệu người dùng  
- 🧪 *Kiểm thử tự động*:  
  - Unit Test (Python)  
  - Selenium Test (Login & Withdraw)  
- 📅 *Quản lý dự án với Jira* theo mô hình **Scrum**

🧩 **Công nghệ sử dụng:**
| Thành phần | Công nghệ |
|-------------|------------|
| Giao diện | HTML, CSS, JavaScript |
| Xử lý logic | Python |
| Cơ sở dữ liệu | SQLite |
| Kiểm thử | Selenium, UnitTest |
| Quản lý dự án | Jira, GitHub |
| Báo cáo | Markdown, PowerPoint |

🚀 **Cách chạy dự án**
```bash
- Cài đặt thư viện
pip install selenium
pip install pytest
- Chạy kiểm thử
python Lab08/selenium_test_login.py
python Lab08/test_withdraw.py
```

## 2. LAB02 HOTEL BOOKING SYSTEM 🏨
📋 **Github LAB02:** https://github.com/n23dcpt006-nbin/LAB02-HOTEL-BOOKING-SYSTEM   
🔗 **Liên kết Jira:** [Hotel Booking System – Jira Board](https://congnghephanmem123.atlassian.net/jira/software/projects/SCRUM/boards/1/backlog)

🎯 **Mục tiêu**
Thiết kế **Use Case Diagram**, **Sequence Diagram** và **ERD** cho hệ thống quản lý đặt phòng khách sạn — bao quát toàn bộ quy trình từ tìm phòng, đặt phòng, đến check-in/check-out.

📁 **Nội dung chính**
- *Use Case* → `usecase-diagram.puml / .png`, `usecase-descriptions.md`  
- *Sequence Diagram* → `sequence_booking.puml`, `sequence_checkin_checkout.puml`  
- *ERD & Database* → `erd.puml`, `schema.sql`  
- *Jira Backlog & Commit log* → `jira-backlog.md`, `README.md`

🧾 **Commit mẫu** (trích)
| STT | User Story | Jira Key | Mô tả |
|:--:|:--|:--|:--|
| 1 | Search Rooms | HOTEL-01 | Tìm phòng theo ngày & sức chứa |
| 2 | View Room Details | HOTEL-02 | Hiển thị thông tin chi tiết phòng |
| 3 | Book Room & Pay Online | HOTEL-03 | Đặt phòng & thanh toán trực tuyến |
| 4 | Check-in / Check-out | HOTEL-04 | Quy trình lễ tân xử lý khách |
| 5 | Manage Rooms & Prices | HOTEL-05 | Quản lý giá và thông tin phòng |
| 6 | Revenue Reports | HOTEL-06 | Báo cáo doanh thu |
| 7 | Housekeeping Tasks | HOTEL-07 | Quản lý dọn phòng |

## 3. LAB03 LOGIN FORM:
📘 **Github LAB03:** https://github.com/n23dcpt006-nbin/LAB03-LOGIN-FORM

⚙️ **Cách chạy**
1. Mở terminal trong thư mục dự án.  
2. (Nếu dùng Flask) cài đặt:
   ```bash
   pip install flask
   python app.py
Mở trình duyệt và truy cập:
👉 http://localhost:5000/login

🧩 **Chức năng**
- Đăng nhập thành công / thất bại
- Cảnh báo khi bỏ trống username hoặc password
- Chuyển trang khi nhấn Forgot password, Sign Up, hoặc Social Login
