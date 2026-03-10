<?php
require_once 'includes/config.php';
require_once 'includes/header.php';

$sql = "SELECT * FROM du_an";
$result = $conn->query($sql);
?>

<div class="hero">
    <h1>Chào Mừng Đến Hệ Thống Quản Lý Chung Cư</h1>
    <p>Hệ thống quản lý chung cư giúp bạn quản lý cư dân, căn hộ và các dịch vụ một cách dễ dàng và hiệu quả.</p>
</div>

<div class="container">
    <h2 class="section-title">Dự Án Nổi Bật</h2>
    
    <div class="grid">
        <?php while($row = $result->fetch_assoc()) { ?>
        <div class="card">
            <div class="card-img"></div>
            <div class="card-body">
                <h3 class="card-title"><?php echo $row['ten_du_an']; ?></h3>
                <a href="chitiet.php?id=<?php echo $row['id_du_an']; ?>" class="btn">Xem chi tiết</a>
            </div>
        </div>
        <?php } ?>
    </div>
</div>

<?php require_once 'includes/footer.php'; ?>