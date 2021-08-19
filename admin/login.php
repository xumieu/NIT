<?php
$conn = mysqli_connect('localhost','root','','niit');
if(!$conn){
	die('Khong the ket noi DB');
	};
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ĐĂNG NHẬP</title>
    <link rel="stylesheet" href="css/login.css">
    
</head>
<body style="background-image: url(image/dangnhap.jpg); ">
    <div class="menu" >
        <div class="login" >
            <h2>ĐĂNG NHẬP</h2>
            <input type="text" placeholder="Username" name="username" class="username" type="username" required="">
            <input type="password" placeholder="Password" name="password" class="password" type="password" required="">
            <button name="login" id="login" value="Login"> Login</button> 
            <br>
            <a href="#"> Đăng ký</a>  &nbsp &nbsp  &nbsp &nbsp 
            <a href="#">Quên mật khẩu?</a>

        </div>
    </div> 

    <?php
$conn = mysqli_connect('localhost','root','','niit');
if(!$conn){
	die('Khong the ket noi DB');
	};
if (isset($_POST['username'])){
	$username = mysqli_real_escape_string($conn,$_POST['username']);
	
}
if (isset($_POST['password'])){
	$password = mysqli_real_escape_string($conn,$_POST['password']);
}
if(isset($_POST['login'])){
	$sql="SELECT * from tb-admin where username='$username'";
	
		$result=mysqli_query($conn,$sql);
		$row = mysqli_fetch_assoc($result);
		if(password_verify($password, $row['password'])){
			$_SESSION['username']=$row['username'];
			
		
			header('location:quantri.php');// đúng thì vào trang admin
		}
		else{
			echo 'mat khau sai';
			 header('location:login.php');
		}


}
?>    
</body>
</html>