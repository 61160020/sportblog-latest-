<!-- <meta charset="UTF-8">
Save emp
<pre> -->
<?php
//print_r($_POST);
// connect database 
require_once('connection.php');

$mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
$mysqli->set_charset("utf8");
//  echo "<pre>";
//      print_r($_POST);
//      echo"</pre>";

$uname = $_POST['username'];
$passwd = md5($_POST['passwd']);
$cpass = md5($_POST['cpasswd']);
$name = $_POST['name'];
$penname = $_POST['penname'];
$email = $_POST['email'];
$images = $_POST['file'];
$user_group = $_POST['user_group'];

$sql = "INSERT 
            INTO authors (username,passwd,name,penname,email,images,user_group) 
            VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("sssssss", $uname,$passwd, $name,$penname,$email,$images,$user_group);
   
    $stmt->execute();
    // echo $stmt->affected_rows . " row inserted. ";

    header("location: login2.php");
    