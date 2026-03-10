<?php
require_once 'includes/config.php';
require_once 'includes/header.php';

if (!isset($_GET['id'])) {
    echo "Không tìm thấy dự án";
    exit;
}

$id = $_GET['id'];

$sql = "SELECT * FROM du_an WHERE id_du_an = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();

$result = $stmt->get_result();
$duan = $result->fetch_assoc();

if (!$duan) {
    echo "Dự án không tồn tại";
    exit;
}
?>

<div class="container">

    <div class="detail">

        <div class="detail-img">
            <img src="<?php echo $duan['anh_dai_dien']; ?>" alt="">
        </div>

        <div class="detail-info">

            <h1><?php echo $duan['ten_du_an']; ?></h1>

            <p class="address">
                📍 <?php echo $duan['dia_chi']; ?>
            </p>

            <div class="info-grid">

                <div class="info-box">
                    <strong>Giá</strong>
                    <p><?php echo number_format($duan['gia_tu']); ?> VNĐ</p>
                </div>

                <div class="info-box">
                    <strong>Diện tích</strong>
                    <p><?php echo $duan['dien_tich']; ?></p>
                </div>

            </div>

        </div>

    </div>


    <div class="description">

        <h2>Thông tin căn hộ</h2>

        <p>
            <?php echo nl2br($duan['mo_ta']); ?>
        </p>

    </div>

</div>

<?php require_once 'includes/footer.php'; ?>