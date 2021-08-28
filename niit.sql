-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 28, 2021 lúc 05:20 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `niit`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `postid` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `import` varchar(255) DEFAULT NULL,
  `writer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`postid`, `title`, `image`, `import`, `writer`) VALUES
(5, 'Khai giảng khóa Begin Robot cho các Kỹ sư Robot tương lai', 'tintuc_sukien_KhaiGiang.jpg', 'Ngày 01/07 vừa qua NIIT ICT Hà Nội đã khai giảng khóa học Begin Robot dành cho các kỹ sư Robot tương lai...', 'LH'),
(6, 'Khóa học Lập trình web với HTML5, CSS3 - FREE 28, 29/06', 'tintuc_sukien_Laptrinhweb.jpg', 'Ngày 28, 29/06 vừa qua NIIT - ICT Hà Nội đã triển khai thành công khóa học HTML5, CSS3 cho các bạn học viên, sinh viên.', 'LH'),
(7, 'Bảo vệ cuối khóa lớp Tester & QA - Tháng 06/2018', 'tintuc_sukien_Tester.jpg', 'Ngày 28/6 vừa qua là buổi học cuối cùng của lớp Tester & QA và cũng là buổi bảo và sản phẩm cuối khóa.', 'LH'),
(8, 'Thực hành', 'khoahoc_android.jpg', 'Thực hành', 'LH');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `name` varchar(10) DEFAULT NULL,
  `lv` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`name`, `lv`) VALUES
('admin', 1),
('user', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khoahoc`
--

CREATE TABLE `tbl_khoahoc` (
  `Id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `mota` text NOT NULL,
  `thoigian` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khoahoc`
--

INSERT INTO `tbl_khoahoc` (`Id`, `name`, `mota`, `thoigian`, `thumbnail`) VALUES
(0, 'Lập trình quốc tế', 'Chương trình đào tạo quốc tế', '12 tháng', 'https://niithanoi.edu.vn/pic/Product/gioi-thieu-khoa-hoc-lap-trinh-vien-quoc-te-diginxt-mms-se.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tintuc`
--

CREATE TABLE `tbl_tintuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `thumbnail` text NOT NULL,
  `tieude` text NOT NULL,
  `mota` text NOT NULL,
  `thoigian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_tintuc`
--

INSERT INTO `tbl_tintuc` (`id`, `thumbnail`, `tieude`, `mota`, `thoigian`) VALUES
(0, 'https://bizweb.dktcdn.net/thumb/large/100/278/960/articles/lich-nghi-tet-nguyen-dan-2020-niit-ict-ha-noi.jpg?v=1579510876163', 'Thông báo : Lịch nghỉ Tết Nguyên Đán 2020', 'NIT thông báo lịch nghỉ lễ', '2020-01-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `ID` int(10) NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID`, `username`, `password`, `email`, `fullname`, `role`) VALUES
(20, 'admin', '123456', 'admin@gmail.com', 'Hoàng Loan', 'admin'),
(21, '0824', '123456', 'lv@gmail.com', 'Lưu Vũ', 'user'),
(22, '0909', '123456', 'duong@gmail.com', 'Hoàng Dương', 'user'),
(23, '0302', '123456', 'hientk@gmai.com', 'Triệu Hiền', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postid`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `postid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
