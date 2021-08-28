    <table border="1">
                <tr>
                <td>ID</td>
                <td>Tên Khóa Học</td>
                <td>Ngày Khai Giảng</td>
                <td>Thời Lượng</td>
                <td>Thời Gian</td>
                <td>Lịch Học</td>
                <td>Hình Ảnh</td>
                </tr>
            <?php           
                $conn = mysqli_connect('localhost','root','','hanoiict','3306');
                if(!$conn){
                    die("Không thể kết nối");
                }
                $sql    = "SELECT * FROM tbl_khoahoc ";
                $result = mysqli_query($conn,$sql);
                //Bước 03: Xử lý Dữ liệu trả về
                if(mysqli_num_rows($result) > 0){
                //Lặp để lấy về từng bản ghi thông qua phương thức: mysqli_fetch_assoc
                while($row = mysqli_fetch_array($result)){
            ?>
                <tr>
                <td><?php echo $row['Id']; ?></td>
                <td><?php echo $row['tenkhoahoc']; ?></td>
                <td><?php echo $row['ngaykhaigiang']; ?></td>
                <td><?php echo $row['thoiluong']; ?></td>
                <td><?php echo $row['thoigian']; ?></td>
                <td><?php echo $row['lichhoc']; ?></td>
                <td><?php echo $row['hinhanh']; ?></td>
                <td><a href="suakhoahoc.php?id=<?php echo $row['id']; ?>">Edit</a></td>
                <td><a href="suakhoahoc.php?id=<?php echo $row['id']; ?>">Delete</a></td>
                </tr>
                <?php
                }
            }
                ?>
    </table>
       