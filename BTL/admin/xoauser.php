<?php
    $conn = mysqli_connect('localhost','root','','niit');
    $id = $_GET["id"];
    echo $id;
    $query = "DELETE FROM user WHERE ID=$id";
    $result = mysqli_query($conn, $query);
    header ("location: quanlyuser.php");
?>