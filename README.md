# ApartmentProject

Hệ thống quản lý chung cư xây dựng bằng PHP và MySQL.

## Yêu cầu hệ thống

- PHP >= 7.0
- MySQL >= 5.7
- WAMP/XAMPP Server

## Cài đặt nhanh

### Cách 1: Tự động (Khuyên dùng)
1. Copy folder vào `C:\wamp64\www\` (hoặc `htdocs` với XAMPP)
2. Truy cập: `http://localhost/ApartmentProject/database/setup.php`
3. Thấy "✅ Cài đặt database thành công!" là xong!

### Cách 2: Thủ công
1. Mở phpMyAdmin: `http://localhost/phpmyadmin`
2. Import file: `database/webchungcu.sql`
3. Truy cập: `http://localhost/ApartmentProject/`

## Thông tin đăng nhập

**Admin:**
- Username: `admin`
- Password: `admin123`

## Cấu hình Database

File: `database/connect.php`
```php
$dbname = "webchungcu";  // Tên database
$username = "root";
$password = "";  // WAMP mặc định để trống
```

## Cấu trúc thư mục

```
ApartmentProject/
├── admin/              # Trang quản trị
│   ├── index.php
│   └── contact.php
├── asset/              # CSS, JS, Images
│   └── css/
│       ├── style.css
│       └── contact.css
├── database/           # Database files
│   ├── connect.php     # Kết nối DB
│   ├── webchungcu.sql  # File SQL import
│   └── setup.php       # Tự động cài đặt
├── includes/           # Header, Footer
├── index.php           # Trang chủ
├── contact.php         # Trang liên hệ
└── README.md
```

## Tính năng

- ✅ Form liên hệ (lưu vào database)
- ✅ Quản lý dự án chung cư
- ✅ Hệ thống admin
- ✅ Upload hình ảnh dự án
- 🔄 Quản lý căn hộ (đang phát triển)
- 🔄 Tìm kiếm căn hộ (đang phát triển)

## Database Structure

### Bảng `du_an`
Lưu thông tin dự án chung cư: tên, địa chỉ, giá, diện tích...

### Bảng `lien_he`
Lưu thông tin từ form liên hệ

### Bảng `admin`
Tài khoản quản trị viên

### Bảng `hinh_anh`
Hình ảnh của các dự án

## Hỗ trợ

Xem thêm: [HUONG_DAN.md](HUONG_DAN.md) để biết chi tiết và troubleshooting.

---
Tên biến tiếng Việt - Dễ học, dễ nhớ! 🇻🇳
- Quản lý phí dịch vụ
- Báo cáo thống kê
