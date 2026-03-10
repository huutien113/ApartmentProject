<?php
require_once 'includes/config.php';
require_once 'includes/header.php';

$sql = "SELECT * FROM du_an";
$result = $conn->query($sql);
?>

<div class="hero">
    <h1>Khám Phá Không Gian Sống Đẳng Cấp</h1>
    <p>Hệ thống giới thiệu và quản lý chung cư hàng đầu, mang đến cho bạn những lựa chọn an cư lý tưởng với tiện ích vượt trội và vị trí đắc địa nhất.</p>
</div>

<div class="container">
    <h2 class="section-title">Dự Án Nổi Bật</h2>
    
    <div class="grid">
        <?php while($row = $result->fetch_assoc()) { ?>
        <div class="card">
            <div class="card-img">
                <img src="" alt="Dự án 1">
            </div>
            <div class="card-body">
                <h3 class="card-title"><?php echo $row['ten_du_an']; ?></h3>
                <a href="chitiet.php?id=<?php echo $row['id_du_an']; ?>" class="btn">Xem chi tiết</a>
            </div>
        </div>
        <?php } ?>
    </div>
</div>

<?php require_once 'includes/footer.php'; ?>