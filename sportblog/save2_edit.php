<?php
session_start();
    // connect database 
    require_once('connection.php');

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

if(isset($_POST['editsubmit'])){

        $arid = trim($_POST['atriclesID']);
        $title = trim($_POST['title']);
        $body = trim($_POST['body']);
        $updatetime=trim($_POST['updatetime']);


        $sql = "UPDATE articles
                SET
                title = ?,
                body = ?,
                updatetime = ?
                WHERE id = ?";
            
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("ssss", $title,$body,$updatetime,$arid);
    $stmt->execute();

    echo "<script> alert('แก้บทความเรียบร้อยแล้ว') </script>";
    header("Refresh:0; url=index2.php");
}else {
    header("location: editarticle.php");
}
?>

    
