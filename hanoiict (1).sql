-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 29, 2021 lúc 01:17 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hanoiict`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `Id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`Id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'admin', '123', 'admin123@gmail.com', '012345');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khoahoc`
--

CREATE TABLE `tbl_khoahoc` (
  `Id` int(10) UNSIGNED NOT NULL,
  `tenkhoahoc` text NOT NULL,
  `hinhanh` text NOT NULL,
  `ngaykhaigiang` varchar(255) NOT NULL,
  `thoiluong` varchar(255) NOT NULL,
  `thoigian` varchar(255) NOT NULL,
  `lichhoc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khoahoc`
--

INSERT INTO `tbl_khoahoc` (`Id`, `tenkhoahoc`, `hinhanh`, `ngaykhaigiang`, `thoiluong`, `thoigian`, `lichhoc`) VALUES
(1, 'Khóa học lập trình Web nâng cao', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/products/khoa-hoc-lap-trinh-java-web-nang-cao.jpg?v=1528453057077', 'Liên Hệ', '50 giờ', 'Buổi tối', '3 buổi/tuần'),
(2, 'Khóa học Lập trình web ASP.NET\r\n', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/products/asp-net.jpg?v=1527655754890', 'Liên hệ', '42 giờ', '18:00 - 20:00', '3 buổi/tuần'),
(3, 'Khóa học Internet of Things với Raspberry Pi', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/products/iot-b1da8b2b-9fc8-42bf-b83e-414c4b1acd82.jpg?v=1527655636053', 'Liên hệ', '36 giờ', '18:00 - 21:00', 'Thứ 2 - 4 hoặc 3 -5'),
(4, 'Khóa học Automation Testing với Selenium', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/products/auto.jpg?v=1527655593303', 'Liên hệ', '42 giờ', '18:00 - 20:00', '3 buổi/tuần'),
(5, 'Khóa học Tester & QA', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/products/tester.jpg?v=1527655518577', 'Liên hệ', '44 giờ', '18:00 - 20:00', 'Thứ 3 -5'),
(6, 'Khóa đào tạo Java web 4.0', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/products/java.jpg?v=1527655492913', 'Liên hệ', '92 giờ', '18:00 - 21:00', 'Thứ 2 - 6 hoặc 3 - 5'),
(7, 'Khoá học Lập trình PHP Doanh nghiệp 4.0', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/products/php.jpg?v=1527655473077', 'Liên hệ', '93 giờ', '18:00 - 21:00', 'Thứ 2 - 6 hoặc 3 - 5'),
(8, 'Khoá học Lập trình Android với ứng dụng thực tế  ', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/products/android.jpg?v=1527655384857', 'Liên hệ', '56 giờ', '19:30 - 21:30', 'Thứ 3 - 5 - 7 ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongtin`
--

CREATE TABLE `tbl_thongtin` (
  `Id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tintuc`
--

CREATE TABLE `tbl_tintuc` (
  `Id` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `hinhanh` text NOT NULL,
  `thoigian` date NOT NULL,
  `tacgia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_tintuc`
--

INSERT INTO `tbl_tintuc` (`Id`, `tieude`, `mota`, `hinhanh`, `thoigian`, `tacgia`) VALUES
(1, 'Khai giảng khóa Begin Robot cho các Kỹ sư Robot tương lai', 'Ngày 01/07 vừa qua NIIT ICT Hà Nội đã khai giảng khóa học Begin Robot dành cho các kỹ sư Robot tương lai...', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/articles/khai-giang-khoa-dao-tao-begin-robot-cho-tre-nho.jpg?v=1530524948010', '2018-02-07', 'NIIT - ICT HANO'),
(2, 'Bảo vệ cuối khóa lớp Tester & QA - Tháng 06/2018', 'Ngày 28/06 vừa qua là buổi học cuối cùng của lớp Tester & QA và cũng là buổi bảo vệ sản phẩm cuối khóa...', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/articles/bao-ve-cuoi-khoa-lop-tester-qa.jpg?v=1530518202343', '2018-02-07', 'NIIT-NIC HANOI'),
(3, 'Khóa học Lập trình web với HTML5, CSS3 - FREE 28, 29/06', 'Ngày 28, 29/06 vừa qua NIIT - ICT Hà Nội đã triển khai thành công khóa học HTML5, CSS3 cho các bạn học viên, sinh viên...', 'https://bizweb.dktcdn.net/thumb/large/100/278/960/articles/chuong-trinh-html5-css3-free-02.jpg?v=1530335762870', '2018-02-07', 'NIIT-NIC HANOI');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbl_khoahoc`
--
ALTER TABLE `tbl_khoahoc`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbl_thongtin`
--
ALTER TABLE `tbl_thongtin`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_khoahoc`
--
ALTER TABLE `tbl_khoahoc`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_thongtin`
--
ALTER TABLE `tbl_thongtin`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
