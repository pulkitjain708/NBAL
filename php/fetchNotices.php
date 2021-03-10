<?php
include 'db.php';
$for=$_POST['for'];
$by=$_POST['by'];
$category=$_POST['category'];
$title=$_POST['title'];
$expiry=$_POST['expiry'];
$where='';
$first='select * from notifs where';
if(isset($for) && !empty($for))
$where=$where.'forName = "'.$for.'" and';
if(isset($by) && !empty($by))
$where=$where.'byName = "'.$for.'" and';
if(isset($category) && !empty($category))
$where=$where.'category = "'.$category.'" and';
if(isset($title) && !empty($title))
$where=$where.'title like "%'.$category.'%" and';
// if(isset($expiry) && !empty($expiry))
//$where=$where.'title like "%'.$category.'%" and';
$final=$first.$where.';';
echo $final;
?>