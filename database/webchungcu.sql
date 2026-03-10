-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 10, 2026 lúc 09:40 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25
CREATE DATABASE IF NOT EXISTS webchungcu CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE webchungcu;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webchungcu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `ten_dang_nhap` varchar(50) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ho_ten` varchar(100) DEFAULT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `ngay_tao`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Quản trị viên', '2026-03-10 08:10:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `du_an`
--

CREATE TABLE `du_an` (
  `id_du_an` int(11) NOT NULL,
  `ten_du_an` varchar(255) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `gia_tu` decimal(15,2) DEFAULT NULL,
  `dien_tich` varchar(100) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `anh_dai_dien` varchar(255) DEFAULT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `du_an`
--

INSERT INTO `du_an` (`id_du_an`, `ten_du_an`, `dia_chi`, `gia_tu`, `dien_tich`, `mo_ta`, `anh_dai_dien`, `ngay_tao`) VALUES
(1, 'Cần bán căn hộ TSQ Mỗ lao Hà đông, diện tích 192m2', 'Mộ Lao, Hà Đông, Hà Nội\r\n', 8280000000.00, '192m²', '- CẦN BÁN CĂN TSQ Mỗ lao Hà đông\r\n\r\n- Diện tích: 192m2\r\n\r\n-Thiết kế: 4N-2W\r\n\r\n- Cửa Nam, ban công ĐN\r\n\r\n- Giá 8,28tỷ , Sổ Hồng trao tay\r\n\r\n- Cam kết không qua môi giới', 'https://chungcu.net/photo/_5J6byD6tJqhckkzffob1q/03c5b83fd5eae29b79972080e465adce.jpg', '2026-03-10 08:10:51'),
(2, 'Bán căn hộ B6 Nam Trung Yên 80m2', 'B6 Nam Trung yên, Cầu Giấy, Hà Nộ', 6000000000.00, '90m²', 'Bán căn hộ B6 Nam Trung Yên 80m2 3PN 2WC nhà đẹp đủ đồ giá 6.* tỷ có thương lương liên hệ 0349627688\r\n\r\nDiện tích căn hộ 80m2 thiết kế 3 phòng ngủ, 2 vệ sinh, nhà mới sửa thoáng đẹp, nội thất cao cấp.\r\n\r\nPhòng khách sang trọng có sofa, kệ ti vi. Ti vi cao cấp, trần thạch cao, sàn gỗ, thiết kế thoáng.\r\n\r\n3 phòng ngủ có ánh sáng tự nhiên, sàn gỗ, trần thạch cao, có tủ quần áo, bàn trang điểm rất đẹp.\r\n\r\nPhòng bếp có hệ thống tủ bếp cao cấp, bếp từ,bàn ăn bố trí thuận tiện phù hợp cho mọi gia đình.\r\n\r\nCó 2 phòng vệ sinh thiết kế thoáng, ốp lát đá cao cấp, thiết bị vệ sinh nhập khẩu.\r\n\r\nSổ đỏ chính chủ, giá 6.* tỷ có thương lượng.\r\n\r\nLiên hệ: 0349627688 xem nhà 24/7.', 'https://chungcu.net/photo/-vd4k2VML1rp981bJVuHv_/03f9eec513958be8fb44cbfc3d71eee3.jpg', '2026-03-10 08:10:51'),
(3, 'Bán gấp 3pn giá tốt - vinhomes d capitale trần duy hưng', 'Chung Cư Vinhomes Trần Duy Hưng, Phường Trung Hòa, Nam Từ Liêm, Hà Nội', 11000000000.00, '85m²', '\r\nBán căn hộ 3PN - 2VS tại Vinhomes D capitale Trần Duy Hưng\r\n\r\n- Diện tích sử dụng: 85m2\r\n\r\n- Full nội thất, nhận nahf ở ngay trước tết\r\n\r\n- Sổ hồng chính chủ, giao dịch ngay\r\n\r\n- Giá: 11,5 tỷ\r\n\r\nLiên Hệ: 0973.250.266', 'https://chungcu.net/photo/5booZw9yrrGMWUHWaoFdjz/c67ad51f645fdcc5093198ec8895cc3d.jpg', '2026-03-10 08:10:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh`
--

CREATE TABLE `hinh_anh` (
  `id_hinh_anh` int(11) NOT NULL,
  `id_du_an` int(11) NOT NULL,
  `duong_dan_anh` varchar(255) NOT NULL,
  `thu_tu` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id_lien_he` int(11) NOT NULL,
  `ho_va_ten` varchar(100) NOT NULL,
  `so_dien_thoai` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `loi_nhan` text DEFAULT NULL,
  `ngay_gui` timestamp NOT NULL DEFAULT current_timestamp(),
  `trang_thai` enum('chua_xem','da_xem') DEFAULT 'chua_xem'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `ten_dang_nhap` (`ten_dang_nhap`);

--
-- Chỉ mục cho bảng `du_an`
--
ALTER TABLE `du_an`
  ADD PRIMARY KEY (`id_du_an`);

--
-- Chỉ mục cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD PRIMARY KEY (`id_hinh_anh`),
  ADD KEY `id_du_an` (`id_du_an`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id_lien_he`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `du_an`
--
ALTER TABLE `du_an`
  MODIFY `id_du_an` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  MODIFY `id_hinh_anh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id_lien_he` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD CONSTRAINT `hinh_anh_ibfk_1` FOREIGN KEY (`id_du_an`) REFERENCES `du_an` (`id_du_an`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
