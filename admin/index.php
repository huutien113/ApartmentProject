<?php
session_start();

if (empty($_SESSION['admin_logged_in'])) {
    header('Location: ../index.php');
    exit;
}

require_once '../includes/header.php';
?>

<h1>Trang Quản Trị Viên</h1>
<p>Chào mừng đến trang quản trị hệ thống quản lý chung cư.</p>

<ul>
    <li><a href="#">Quản Lý Cư Dân</a></li>
    <li><a href="#">Quản Lý Căn Hộ</a></li>
    <li><a href="#">Quản Lý Phí Dịch Vụ</a></li>
    <li><a href="#">Báo Cáo</a></li>
</ul>

<?php
require_once '../includes/footer.php';
?>
