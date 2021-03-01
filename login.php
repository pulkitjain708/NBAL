<?php
    include 'db.php';
        $email=$_POST['email'];
        $password=$_POST['password'];
    if(isset($email) && isset($password)){
    $login_query='select type from users where email= "'.$email.'" and password="'.$password.'";';
    if($result=$conn->query($login_query)){
        if($result->num_rows==0){
        echo "<script>alert('No such users found');window.location.href='index.html';</script>";
                                }
        else{
        $user_type=$result->fetch_assoc()['type'];
        switch($user_type){
            case 0: echo 'WELCOME DEP HEAD'; break;
            case 1 : echo "<script>window.location.href='teacher.html';</script>"; break;
            case 2 : echo "<script>window.location.href='student.html';</script>"; break;
        }
        $result->free_result();
            }
                                        }
                                        }
   
    // close mysql connection
    $conn->close();
?>