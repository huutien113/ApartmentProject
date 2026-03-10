# ApartmentProject

Hệ thống quản lý chung cư xây dựng bằng PHP và MySQL.

## Cấu trúc thư mục

```
ApartmentProject/
├── admin/              # Trang quản trị hệ thống
│   └── index.php
├── asset/              # Tài nguyên tĩnh (CSS, JS, hình ảnh)
│   ├── css/
│   │   └── style.css
│   ├── js/
│   │   └── script.js
│   └── images/
├── database/           # Kết nối và cấu hình cơ sở dữ liệu
│   └── connect.php
├── includes/           # Các file dùng chung (header, footer)
│   ├── header.php
│   └── footer.php
├── index.php           # Trang chủ
└── README.md
```

## Yêu cầu hệ thống

- PHP >= 7.4
- MySQL >= 5.7
- Web server (Apache hoặc Nginx)

## Cài đặt

1. Clone repository về máy:
   ```bash
   git clone https://github.com/huutien113/ApartmentProject.git
   ```
2. Tạo database `apartment_db` trong MySQL.
3. Cấu hình kết nối cơ sở dữ liệu qua biến môi trường hoặc chỉnh sửa `database/connect.php`:
   - `DB_HOST` – host của MySQL (mặc định: `localhost`)
   - `DB_NAME` – tên database (mặc định: `apartment_db`)
   - `DB_USER` – tên người dùng (mặc định: `root`)
   - `DB_PASSWORD` – mật khẩu
4. Trỏ web server tới thư mục gốc của project.
5. Mở trình duyệt và truy cập `http://localhost/`.

## Tính năng

- Quản lý cư dân
- Quản lý căn hộ
- Quản lý phí dịch vụ
- Báo cáo thống kê
