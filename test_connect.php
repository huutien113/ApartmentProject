<?php
require_once 'database/connect.php';

if ($conn) {
    echo "✅ Kết nối database thành công!<br>";
    echo "Database: " . $dbname;
} else {
    echo "❌ Kết nối thất bại!";
}
?>