<?php
// Cấu hình kết nối cơ sở dữ liệu.
// Thay các giá trị dưới đây bằng thông tin thực tế của bạn trước khi triển khai.
$host     = getenv('DB_HOST')     ?: "localhost";
$dbname   = getenv('DB_NAME')     ?: "apartment_db";
$username = getenv('DB_USER')     ?: "root";
$password = getenv('DB_PASSWORD') ?: "";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Kết nối thất bại: " . $e->getMessage());
}
?>
