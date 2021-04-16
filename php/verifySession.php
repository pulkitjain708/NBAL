<?php
session_start();
$page=$_POST['page'];
if(!isset($_SESSION['user'])){
    echo json_encode(array("message"=>"Please Login First"));
    // header("location:/noticeboard");
}
else if($page!=$_SESSION['user']){
    echo json_encode(array("message"=>"You are not authorized to view this Page"));
}
// echo $_SESSION['user'].' '.$page;
?>