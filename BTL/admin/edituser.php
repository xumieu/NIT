<?php
$conn = mysqli_connect('localhost', 'root', '', 'niit');
$id = $_GET["id"];
$sql = "select *  from user  where ID=$id  ";
$q = mysqli_query($conn, $sql);

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Chỉnh sửa người dùng - NIIT ICT Hà Nội</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

  <link rel="stylesheet" href="css/edituser.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
  <div class="title ">
    <div class="title-left">
      <a href=""><img src="image/logo.png" alt=""></a>
    </div>
    <div class="ad_logout title-right">
      <ul class="navbar-nav">

        <!-- Dropdown -->
        <li class="nav-item " style="margin-left: 70%">
          <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white;">
            Admin
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" ">
                    <a class=" dropdown-item" href="">Profile</a>
            <hr>
            <a class="dropdown-item" href="">Help</a>
            <a class="dropdown-item" href="">Setting</a>
            <a class="dropdown-item" href="logout.php">Log out</a>
          </div>
        </li>
      </ul>
    </div>
    <div class="center">
      <a class="" href="index.php" style="color: white;  "> <b>QUẢN TRỊ TRƯỜNG NIIT-ICT HÀ NỘI</b> </a>

    </div>
  </div>

  <div class="content">
    <div class="content-left">
      <ul>
        <li class="nav-item1">
          <a href="../index.php">
            <i class="fa fa-home"> Trang chủ </i>
          </a>

        </li>
        <hr>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-list"> Quản trị danh mục</i>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="Thembaiviet.php">Thêm bài viết</a>
            <a class="dropdown-item" href="Chinhbaiviet.php">Chỉnh sửa bài viết</a>
            <a class="dropdown-item" href="baivietdang.php">Bài viết đã đăng</a>
          </div>
        </li>
        <hr>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-image"> Quản trị giao diện</i>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item  " href="image.php"> Hình ảnh</a>
            <a class="dropdown-item" href="#">Hỗ trợ trực tuyến</a>
          </div>
        </li>
        <hr>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-users"> User</i>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="quanlyuser.php">Quản lý user</a>
            <a class="dropdown-item" href="danhsachquyen.php">Danh sách quyền</a>
          </div>
        </li>
      </ul>

    </div>
    <div class="content-right">
      <h3>Edit Users</h3>
      <form method="post">
        <div class="form-group">

          <input type="text" placeholder="Username" name="username" class="form-control">

        </div>
        <div class="form-group">

          <input type="text" placeholder="Email" name="email" class="form-control">

        </div>
        <div class="form-group">

          <input type="text" placeholder="Fullname" name="fullname" class="form-control">

        </div>
        <!-- <div class="form-group">
          <select name="level" class="form-control">
            <option selected value="1">Admin</option>
            <option value="2">Giảng viên</option>
          </select> -->

    </div>
    <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">Update </button>

    </form>

    <?php
    if (isset($_POST["submit"])) {
      $username = $_POST["username"];
      $email    = $_POST["email"];
      $fullname = $_POST["fullname"];

      $query2 = "UPDATE user SET username = '$username', email = '$email', fullname = '$fullname' WHERE ID=$id";
      mysqli_query($conn, $query2);
      // header("location: quanlyuser.php");
    }
    ?>
  </div>
  </div>

  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>