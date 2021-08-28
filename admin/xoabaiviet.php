<?php
    session_start();
    $conn = mysqli_connect('localhost','root','','niit');
    $id = $_GET["id"];

   
        $query = "DELETE FROM posts WHERE postid=$id";
        $result = mysqli_query($conn, $query);
        header ("location: dsbaiviet.php");
    
?>