<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
    header("location: login.php");
    } 
require_once('connection.php');

$mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
$mysqli->set_charset("utf8");

if(isset($_POST['submit'])){

    $checktype = $_FILES["file"]["type"];
    $checksize = $_FILES["file"]["size"];
    
    if($checktype == "image/jpg" || $checktype == "image/png" || $checktype == "image/jpeg"){
        if ($checksize < 1000000) { // check file size 1MB
            $dir = "upload/";
            $fileImage = $dir . basename($_FILES["file"]["name"]);

            if (move_uploaded_file($_FILES["file"]["tmp_name"], $fileImage)){
            $images = $_FILES["file"]["name"];
            $id = $_SESSION['authors_id'];

            $sql = "UPDATE authors
                    SET images = ?
                    WHERE id  = ?";
            $stmt = $mysqli->prepare($sql);
            $stmt->bind_param("ss", $images, $id);
        
            $stmt->execute();
                echo "<script> alert('อัพโหลดไฟล์ภาพเสร็จแล้ว') </script>";
                header("Refresh:0; url=editauthor.php");
        }
        } else {
            echo "<script> alert('ไฟล์ภาพของคุณมีขนาดใหญ่เกิน 1 MB') </script>";
            header("Refresh:0;editauthor.php");
        }
    } else {
        echo "<script> alert('โปรดอัพโหลดเป็นไฟล์ภาพ png และ jpg เท่านั้น') </script>";
        header("Refresh:0;editauthor.php");
    }  
}else {
    header("location: editauthor.php");
}



?>