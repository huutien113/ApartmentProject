-- File SQL tạo database cho ApartmentProject
-- Chạy file này trong phpMyAdmin hoặc qua setup.php

-- Tạo database
CREATE DATABASE IF NOT EXISTS webchungcu CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE webchungcu;

-- Bảng 1: Dự án
CREATE TABLE IF NOT EXISTS du_an (
    id_du_an INT AUTO_INCREMENT PRIMARY KEY,
    ten_du_an VARCHAR(255) NOT NULL,
    dia_chi VARCHAR(255),
    gia_tu DECIMAL(15,2),
    dien_tich VARCHAR(100),
    mo_ta TEXT,
    anh_dai_dien VARCHAR(255),
    ngay_tao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng 2: Liên hệ
CREATE TABLE IF NOT EXISTS lien_he (
    id_lien_he INT AUTO_INCREMENT PRIMARY KEY,
    ho_va_ten VARCHAR(100) NOT NULL,
    so_dien_thoai VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    loi_nhan TEXT,
    ngay_gui TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    trang_thai ENUM('chua_xem', 'da_xem') DEFAULT 'chua_xem'
);

-- Bảng 3: Admin
CREATE TABLE IF NOT EXISTS admin (
    id_admin INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(50) UNIQUE NOT NULL,
    mat_khau VARCHAR(255) NOT NULL,
    ho_ten VARCHAR(100),
    ngay_tao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng 4: Hình ảnh
CREATE TABLE IF NOT EXISTS hinh_anh (
    id_hinh_anh INT AUTO_INCREMENT PRIMARY KEY,
    id_du_an INT NOT NULL,
    duong_dan_anh VARCHAR(255) NOT NULL,
    thu_tu INT DEFAULT 0,
    FOREIGN KEY (id_du_an) REFERENCES du_an(id_du_an) ON DELETE CASCADE
);

-- Thêm admin mẫu (user: admin, pass: admin123)
INSERT INTO admin (ten_dang_nhap, mat_khau, ho_ten) 
VALUES ('admin', MD5('admin123'), 'Quản trị viên');

-- Thêm dự án mẫu
INSERT INTO du_an (ten_du_an, dia_chi, gia_tu, dien_tich, mo_ta, anh_dai_dien) VALUES
('Vinhomes Grand Park', 'Quận 9, TP.HCM', 2500000000, '50-150m²', 'Khu đô thị hiện đại bậc nhất Việt Nam với đầy đủ tiện ích', 'vinhomes.jpg'),
('Masteri Thảo Điền', 'Quận 2, TP.HCM', 3000000000, '60-120m²', 'Căn hộ cao cấp view sông Sài Gòn', 'masteri.jpg'),
('The Sun Avenue', 'Quận 2, TP.HCM', 2200000000, '45-100m²', 'Chung cư hiện đại gần trung tâm', 'sunavenue.jpg');
