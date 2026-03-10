<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên Hệ Với Chúng Tôi</title>
    <link rel="stylesheet" href="asset/css/contact.css">
</head>
<body>
    <nav class="thanh_dieu_huong">
        <div class="container_thanh_dieu_huong">
            <a href="index.php" class="logo_trang">CityApartment</a>
            <ul class="menu_dieu_huong">
                <li><a href="index.php">Trang chủ</a></li>
                <li><a href="#">Dự án</a></li>
                <li><a href="contact.php">Liên hệ</a></li>
                <li><a href="#">Admin</a></li>
            </ul>
        </div>
    </nav>
    
    <div class="bang_lien_he">
        <h1 class="tieu_de_lien_he">Liên Hệ Với Chúng Tôi</h1>
        
        <form class="form_lien_he" method="POST" action="">
            <div class="nhom_input">
                <label for="ho_va_ten" class="nhan_input">Họ và tên:</label>
                <input type="text" id="ho_va_ten" name="ho_va_ten" class="o_nhap_lieu" required>
            </div>
            
            <div class="nhom_input">
                <label for="so_dien_thoai" class="nhan_input">Số điện thoại:</label>
                <input type="tel" id="so_dien_thoai" name="so_dien_thoai" class="o_nhap_lieu" required>
            </div>
            
            <div class="nhom_input">
                <label for="email" class="nhan_input">Email:</label>
                <input type="email" id="email" name="email" class="o_nhap_lieu" required>
            </div>
            
            <div class="nhom_input">
                <label for="loi_nhan" class="nhan_input">Lời nhận:</label>
                <textarea id="loi_nhan" name="loi_nhan" class="o_nhap_lieu o_textarea" rows="6" required></textarea>
            </div>
            
            <button type="submit" class="nut_gui">Gửi Thông Tin</button>
        </form>
    </div>
</body>
</html>