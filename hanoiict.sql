-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 26, 2021 lúc 12:34 PM
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
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`Id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'loan', '1', 'loan@tlu.edu.vn', '123456'),
(2, 'truong', '1', 'truong@tlu.edu.vn', '789456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khaigiang`
--

CREATE TABLE `tbl_khaigiang` (
  `Id` int(10) UNSIGNED NOT NULL,
  `tenkhoahoc` varchar(255) NOT NULL,
  `ngaykhaigiang` date NOT NULL,
  `lichhoc` varchar(255) NOT NULL,
  `cahoc` varchar(255) NOT NULL,
  `thoiluong` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khaigiang`
--

INSERT INTO `tbl_khaigiang` (`Id`, `tenkhoahoc`, `ngaykhaigiang`, `lichhoc`, `cahoc`, `thoiluong`) VALUES
(0, 'Khóa học tester & QA', '2021-08-03', 'Thứ 2, CN', '19h-22h', '35 buổi');

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

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbl_khaigiang`
--
ALTER TABLE `tbl_khaigiang`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbl_khoahoc`
--
ALTER TABLE `tbl_khoahoc`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
