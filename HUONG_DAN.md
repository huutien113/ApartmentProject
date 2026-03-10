# Hướng Dẫn Cài Đặt - ApartmentProject

## Yêu Cầu
- WAMP/XAMPP Server
- PHP 7.0+
- MySQL

## Cách Cài Đặt

### Phương pháp 1: Tự động (Nhanh)
1. Copy folder `ApartmentProject` vào `C:\wamp64\www\` (hoặc `htdocs` nếu dùng XAMPP)
2. Mở trình duyệt, truy cập: `http://localhost/ApartmentProject/database/setup.php`
3. Thấy "✅ Cài đặt database thành công!" là xong!

### Phương pháp 2: Thủ công
1. Copy folder `ApartmentProject` vào thư mục web server
2. Mở phpMyAdmin: `http://localhost/phpmyadmin`
3. Click tab **Import**
4. Chọn file: `database/webchungcu.sql`
5. Click **Go**

## Thông Tin Đăng Nhập Admin
- **Username:** admin
- **Password:** admin123

## Cấu Hình Database
File: `database/connect.php`
```php
$host = "localhost";
$dbname = "webchungcu";
$username = "root";
$password = ""; // WAMP mặc định để trống
```

## Cấu Trúc Database

### Bảng `du_an` (Dự án chung cư)
- Lưu thông tin các dự án: tên, địa chỉ, giá, diện tích, mô tả

### Bảng `lien_he` (Liên hệ)
- Lưu thông tin từ form liên hệ trên website

### Bảng `admin` (Quản trị viên)
- Tài khoản admin quản lý website

### Bảng `hinh_anh` (Hình ảnh dự án)
- Lưu ảnh của từng dự án

## Các Trang Chính
- Trang chủ: `index.php`
- Liên hệ: `contact.php`
- Admin: `admin/index.php`

## Lưu Ý
- Đảm bảo WAMP/XAMPP đang chạy
- Apache và MySQL service phải được bật
- Database tự động tạo 3 dự án mẫu và 1 tài khoản admin

## Troubleshooting
**Lỗi kết nối database:**
- Kiểm tra MySQL service đã chạy chưa
- Xem lại thông tin trong `database/connect.php`

**Form liên hệ không gửi được:**
- Kiểm tra database đã import chưa
- Xem có lỗi PHP không (bật display_errors)
