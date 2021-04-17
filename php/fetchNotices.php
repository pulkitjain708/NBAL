<?php
include 'db.php';
$for=$_POST['for'];
$by=$_POST['by'];
$category=$_POST['category'];
$title=$_POST['title'];
$from = $_POST['from'];
$to=$_POST['to'];
$expiry=$_POST['expiry'];
$where='';
$page=$_POST['page'];
$first='select * from notifs where ';
if(isset($for) && !empty($for))
$where=$where.'forName = "'.$for.'"';
if(isset($by) && !empty($by) && $by!='undefined')
$where=$where.' and teacher_id = "'.$by.'"';
if(isset($category) && !empty($category))
$where=$where.' and category = "'.$category.'"';
if(isset($title) && !empty($title))
$where=$where.' and title like "%'.$title.'%"';
if(isset($from) && isset($to) && !empty($from) && !empty($to))
$where=$where.' and expiry between "'.$from.'" and "'.$to.'"';
else
$where=$where.' and expiry = "'.$expiry.'"';
$final=$first.$where;
// echo $final;
$show_page=3;
$count_query='SELECT count(*) from notifs';
$result_count = $conn->query($count_query);
$total_page = $result_count->fetch_assoc()['count(*)'];
$divided_pages = ceil($total_page / $show_page);
$first_display = ($page - 1) * $show_page;
$final=$final . ' limit ' . $first_display . ', ' . $show_page . ";"; 
// FINAL QUERY
$result = mysqli_query($conn, $final);
$json;
if($page>$divided_pages){
  echo json_encode(array("message"=>"Limit Exceeded"));  
}
else{
if (mysqli_num_rows($result) > 0) {
  while($row = mysqli_fetch_assoc($result)) {
    $json[]= $row; 
  }
  echo json_encode($json);
} else {
  echo json_encode(0);
}
// echo $final;
}
mysqli_close($conn);
?>