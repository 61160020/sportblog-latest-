<?php 
    $id = $_GET['id'];
    // echo $id;
    require_once('connection.php');

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

    $sql = "DELETE 
        FROM articles
        WHERE id =?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("s", $id);
    $stmt->execute();

    header("location: index-Admin.php");
?>