<?php

$host = "localhost";
$user = "root";
$password = "";
$database = "webchungcu";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Kết nối database thất bại: " . $conn->connect_error);
}

?>