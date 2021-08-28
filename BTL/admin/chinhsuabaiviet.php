<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chỉnh sửa bài viết- NIIT ICT Hà Nội</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <link rel="stylesheet" href="css/baiviet.css">
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

  <div class="content" style="display: flex;">
    <div class="content-left">
      <ul>
        <li class="nav-item1">
          <a href="index.php">
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
            <a class="dropdown-item" href="quanlyuser.html">Quản lý user</a>
            <a class="dropdown-item" href="danhsachquyen.php">Danh sách quyền</a>
          </div>
        </li>
      </ul>

    </div>
            <div class="content-right">
                <form method="post" action="">
                    <h3 id="result"></h3>
                    <h2 style="color: rgb(56, 221, 84)">Chỉnh sửa bài viết</h2>
                    <div class="form-group">
                        <label>ID bài viết</label>
                        <input type="text" id="name" placeholder="ID" class="form-control" value="">
                    </div>
                    <div class="form-group">
                        <label>Chỉnh sửa tên bài viết</label>
                        <input type="text" id="name" placeholder="Tên bài viết" class="form-control" value="">
                    </div>
                    <div class="form-group">
                        <label>Tên bài viết tiếng anh</label>
                        <input type="text" id="name_eng" placeholder="Tên bài viết tiếng anh" class="form-control" value="">
                    </div>
                    <div class="form-group">
                        <label>Nội dung chỉnh sửa</label>
                        <textarea id="content" class="form-control" style="height: 150px;"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Nội dung tiếng anh</label>
                        <textarea id="content_eng" class="form-control" style="height: 150px;"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Ảnh</label><br>
                        <input type="file" name="img">
                    </div>

                    <input type="button" value="Lưu lại" name="submit"></a><input type="reset" value="Reset">

                </form>


            </div>

        </div>






        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


</body>

</html>