<?php
include 'db.php';
$for=$_POST['for'];
$query='select id,category,title,description,expiry from notifs where forName = "'.$for.'";';

$result = mysqli_query($conn, $query);
$json;
if (mysqli_num_rows($result) > 0) {
  while($row = mysqli_fetch_assoc($result)) {
    $json[]= $row; 
  }
  echo json_encode($json);
} else {
  echo "0 results";
}
?>