<?php
session_start();
// Xóa đi một biến Session
if (isset($_SESSION['email']) && isset($_SESSION['lv'])){
    unset($_SESSION['email']);
    unset($_SESSION['lv']);
    header('location:login.php') ;
}
//Xóa toàn bộ Session
session_destroy();
?>