<?php
// Thông tin kết nối database
$host = "localhost";
$dbname = "webchungcu";  // Tên database vừa tạo
$username = "root";
$password = "";  // WAMP mặc định không có password

// Kết nối MySQL
$conn = mysqli_connect($host, $username, $password, $dbname);

// Kiểm tra kết nối
if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
}

// Set utf8 cho tiếng Việt
mysqli_set_charset($conn, "utf8mb4");
?><?php

