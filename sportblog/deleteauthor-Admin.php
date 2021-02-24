<?php 
    require_once('connection.php');

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

if (isset($_REQUEST['id'])) {
    $id = trim($_REQUEST['id']);
    
    $id = stripslashes($id);
    $id = htmlspecialchars($id);

    $sql = "DELETE 
        FROM authors
        WHERE id =?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("s", $id);
    $stmt->execute();

    echo "<script> alert('ลบ User ความแล้ว') </script>";
    header("Refresh:0; url=Admin-edituser.php");
}else {
    header("location: Admin-edituser.php");
}
?>