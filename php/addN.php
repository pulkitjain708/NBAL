
<?php
    include 'db.php';
        $by=$_POST['by'];
        $forSt=$_POST['forSt'];
        $category=$_POST['cats'];
        $title=$_POST['title'];
        $description=$_POST['desc'];
        $expiry=$_POST['expiry'];
        $title = str_replace("<","",$title);
        $description = str_replace("<","",$description);
    if(isset($by) && isset($forSt) && isset($category) &&
    isset($title) && isset($description) &&
    isset($expiry) 
    ){
      if(!empty($by) && !empty($forSt)  && !empty($category) && !empty($title) && !empty($description) && !empty($by) &&  !empty($expiry)){
      $arr=explode('-',$expiry);
      $valid_date=checkdate($arr[1],$arr[2],$arr[0]);
      if($valid_date==1){
        $today=strtotime(date('Y-m-d'));  
        $after= strtotime($expiry);
        if ($today<=$after){ 
         $sql="INSERT INTO notifs VALUES(NULL,$by,'$forSt','$category','$title','$description','$expiry')";
         if ($conn->query($sql) === TRUE){
          echo json_encode(array("message"=>"Record Saved !!"));  
         }
         else{
        echo json_encode(array("message"=>"Error Saving Record"));
         }
          

}
else{
  echo json_encode(array("message"=>"Date must be after Today"));
}
}
else{
  echo json_encode(array("message"=>"Enter Valid Date"));
}
      }
else{
  echo json_encode(array("message"=>"Fields Cant be Empty"));
}
  }
    
    $conn->close();
?>