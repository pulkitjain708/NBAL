<?php
include 'db.php';
$query='SELECT  id from notifs';
$stmt=$conn->prepare($query);
$stmt->execute();
$result = $stmt->get_result();
$data = $result->fetch_all(MYSQLI_ASSOC);
echo json_encode($data);
?>
