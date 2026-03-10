<?php
$host = "localhost";
$username = "root";
$password = "";

// Kết nối không cần chọn database
$conn = mysqli_connect($host, $username, $password);

if (!$conn) {
    die("Lỗi kết nối: " . mysqli_connect_error());
}

// Đọc file SQL và thực thi
$sql_file = file_get_contents('webchungcu.sql');
$queries = explode(';', $sql_file);

foreach ($queries as $query) {
    if (trim($query) != '') {
        mysqli_query($conn, $query);
    }
}

echo "✅ Cài đặt database thành công!";
?>