<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> ĐĂNG KÝ NGƯỜI DÙNG </title>
    <link rel="stylesheet" href="css/dangky.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body style="background-image: url(image/dangnhap.jpg);">
<?php
//Khai báo sử dụng session
session_start();
 
//Khai báo utf-8 để hiển thị được tiếng việt
header('Content-Type: text/html; charset=UTF-8');
 
//Xử lý đăng nhập
if (isset($_POST['login'])) 
{
    //Kết nối tới database
    include('ketnoi.php');
     
    //Lấy dữ liệu nhập vào
    $username = addslashes($_POST['username']);
    $password = addslashes($_POST['password']);
    $email    = addslashes($_POST['email']);
    $fullname= addslashes($_POST['fullname']);
     
    //Kiểm tra đã nhập đủ tên đăng nhập với mật khẩu chưa
    if (!$username || !$password || !$email ||!$fullname ) {
        echo "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu. <a href='javascript: history.go(-1)'>Trở lại</a>";
        exit;
    }
     
    // mã hóa pasword
    $password = md5($password);
     
    //Kiểm tra tên đăng nhập có tồn tại không
    $query = mysql_query("SELECT username, password FROM user WHERE username='$username'");
    if (mysql_num_rows($query) == 0) {
        echo "Tên đăng nhập này không tồn tại. Vui lòng kiểm tra lại. <a href='javascript: history.go(-1)'>Trở lại</a>";
        exit;
    }
     
    //Lấy mật khẩu trong database ra
    $row = mysql_fetch_array($query);
     
    //So sánh 2 mật khẩu có trùng khớp hay không
    if ($password != $row['password']) {
        echo "Mật khẩu không đúng. Vui lòng nhập lại. <a href='javascript: history.go(-1)'>Trở lại</a>";
        exit;
    }
     
    //Lưu tên đăng nhập
    $_SESSION['username'] = $username;
    echo "Xin chào " . $username . ". Bạn đã đăng nhập thành công. <a href='/'>Về trang chủ</a>";
    die();
}
?>
        <h1>ĐĂNG KÝ </h1>
         <form action="" method="post">
         <div class="pom-agile">
         <input placeholder="Username" name="username"  type="username" required="">  
         </div> <br>
        
         <div class="pom-agile">
         <input placeholder="Password" name="password"  class="pass" type="password" required="">  
         </div><br>
         
         <div class="pom-agile">
         <input placeholder="E-mail" name="email"  type="email" required="">  
         </div><br>
         
         <div class="pom-agile">
         <input placeholder="Fullname" name="fullname"  type="fullname" required="">  
         </div><br>
         
       
         <div class="right-w3l">
                     <input type="submit" name="submit"  value=" Đăng ký">
                 </div>
         </form>
    
</body>
</html>