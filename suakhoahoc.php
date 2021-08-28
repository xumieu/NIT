<!DOCTYPE html>
<html>
<head>
<title>Sửa Khóa Học</title>
<link rel="stylesheet" href="style.css"/>
</head>
<body>
<?php
// Kết nối Database
include ('connect.php');
$id=$_GET['id'];
$query=mysqli_query($conn,"select * from `tbl_khoahoc` where id='$id'");
$row=mysqli_fetch_assoc($query);
?>
<form method="POST" class="form">
<h2>Update</h2>
<label>Tên Khóa Học: <input type="text" value="<?php echo $row['tenkhoahoc']; ?>" name="tenkhoahoc"></label><br/>
<label>Ngày Khai Giảng: <input type="text" value="<?php echo $row['ngaykhaigiang']; ?>" name="ngaykhaigiang"></label><br/>
<label>Thời Lượng: <input type="text" value="<?php echo $row['thoiluong']; ?>" name="thoiluong"></label><br/>
<label>Thời Gian: <input type="text" value="<?php echo $row['thoigian']; ?>" name="thoigian"></label><br/>
<label>Lịch Học: <input type="text" value="<?php echo $row['lichhoc']; ?>" name="lichhoc"></label><br/>
<label>Hình Ảnh: <input type="text" value="<?php echo $row['hinhanh']; ?>" name="hinhanh"></label><br/>
<input type="submit" value="Update" name="update_khoahoc">
<?php
if (isset($_POST['update_khoahoc'])){
$id=$_GET['id'];
$tenkhoahoc=$_POST['tenkhoahoc'];
$ngaykhaigiang=$_POST['ngaykhaigiang'];
$thoiluong=$_POST['thoiluong'];
$thoigian=$_POST['thoigian'];
$lichhoc=$_POST['lichhoc'];
$hinhanh=$_POST['hinhanh'];


// Create connection
$conn = mysqli_connect('localhost','root','','dhtl','3306');
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE tbl_khoahoc SET tenkhoahoc='$tenkhoahoc', ngaykhaigiang='$ngaykhaigiang', thoiluong='$thoiluong', thoigian='$thoigian', lichhoc='$lichhoc', hinhanh='$hinhanh' WHERE id='$id'";

if ($conn->query($sql) === TRUE) {
echo "Record updated successfully";
} else {
echo "Error updating record: " . $conn->error;
}

$conn->close();
}
?>
?>
</form>
</body>
</html>