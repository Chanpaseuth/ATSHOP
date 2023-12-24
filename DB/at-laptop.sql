-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 29, 2023 at 10:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `at-laptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` int(11) NOT NULL,
  `MaDonDatHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `MaDonDatHang`, `MaSanPham`, `SoLuong`, `GiaBan`) VALUES
(19, 25, 6, 1, 21000000),
(20, 26, 5, 1, 1999999);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `NgayDatHang` datetime NOT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `MaNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `MaKhachHang`, `NgayDatHang`, `TongThanhTien`, `MaTinhTrangDonDatHang`, `MaNhanVien`) VALUES
(25, 22, '2023-11-29 00:00:00', 21000000, 3, 1),
(26, 22, '2023-11-29 00:00:00', 1999999, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `HoTen` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `HoTen`, `DiaChi`, `SoDienThoai`, `BiXoa`) VALUES
(22, 'arty', '459 ton duc thang', '12343655', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(4) NOT NULL DEFAULT 0,
  `GioiThieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`, `GioiThieu`, `HinhURL`) VALUES
(25, 'Asus', 0, NULL, NULL),
(26, 'Acer', 0, NULL, NULL),
(27, 'Hp', 0, NULL, NULL),
(28, 'Dell', 0, NULL, NULL),
(29, 'Lenovo', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `TenDangNhap` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `TenDangNhap`, `MatKhau`, `HoTen`, `Email`, `SoDienThoai`, `BiXoa`) VALUES
(1, 'admin', '123', 'Arty', 'arty@gmail.com', '0829576961', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoaiSanPham` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT 0,
  `SoLuotXem` int(11) DEFAULT 0,
  `NgayNhap` datetime DEFAULT NULL,
  `BiXoa` tinyint(4) NOT NULL DEFAULT 0,
  `GioiThieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MoTa` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MaLoaiSanPham`, `Gia`, `SoLuongTon`, `SoLuongBan`, `SoLuotXem`, `NgayNhap`, `BiXoa`, `GioiThieu`, `MoTa`, `HinhURL`, `HinhURL2`) VALUES
(1, 'ASUS Zenbook Pro 14 Duo OLED (UX8402)', 25, 19999999, 23, 0, 38, '2023-11-29 09:36:18', 0, '- Windows 11 Pro - ASUS recommends Windows 11 Pro for business - Up to 13th Gen Intel® Core™ i9 processor - Up to NVIDIA® GeForce RTX™ 4060 - Up to 32 GB memory - Up to 2 TB SSD storage', NULL, 'asus_zenbook.jpg', 'asus_zenbook.jpg'),
(2, 'Laptop Dell Inspiron 3530 - N5I5791W1 ', 28, 15000000, 24, 0, 0, '2023-11-29 09:36:18', 0, '- CPU: Intel Core i5-1335U - Màn hình: 15.6\" WVA (1920 x 1080),120Hz - RAM: 2 x 8GB DDR4 2666MHz - Đồ họa: Onboard Intel Iris Xe  ', '', 'dell-inspiron-3530.jpg', 'dell-inspiron-3530.jpg'),
(3, 'Laptop Lenovo IdeaPad Slim 3 ', 29, 15999999, 23, 0, 0, '2023-11-29 09:36:18', 0, '- CPU: Intel Core i5-12450H - Màn hình: 14\" IPS (1920 x 1080) - RAM: 16GB Onboard LPDDR5 4800MHz - Đồ họa: Onboard Intel UHD ', '', 'lenovo-ideapad-slim.jpg', 'lenovo-ideapad-slim.jpg'),
(4, 'Asus ProArt Studiobook Pro 16 OLED (W7604)', 25, 19999999, 45, 34, 127, '2023-11-29 09:54:12', 0, '- Windows 11 Pro - ASUS recommends Windows 11 Pro for business - Intel® Core™ i9-13980HX processor - NVIDIA RTX™ 3000 Ada Generation Laptop GPU', NULL, 'asus_ProArt_Studiobook.jpg', 'asus_ProArt_Studiobook.jpg'),
(5, 'Laptop HP Pavilion 14-dv2033TU', 27, 1999999, 32, 12, 46, '2023-11-29 09:54:12', 0, '- CPU: Intel Core i5-1235U - Màn hình: 14\" IPS (1920 x 1080) - RAM: 2 x 4GB DDR4 3200MHz - Đồ họa: Onboard Intel Iris Xe Graphics', NULL, 'hp-pavilion-14.jpg', 'hp-pavilion-14.jpg'),
(6, 'Laptop ACER Aspire 7 A715-42G-R05G', 26, 21000000, 123, 58, 244, '2023-11-29 09:58:50', 0, '- CPU: AMD Ryzen 5 5500U - Màn hình: 15.6\" IPS (1920 x 1080),144Hz - RAM: 1 x 8GB DDR4 3200MHz - Đồ họa: GTX 1650 4GB GDDR6 ', NULL, 'acer-aspire-7.jpg', 'acer-aspire-7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrangdondathang`
--

CREATE TABLE `tinhtrangdondathang` (
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `TenTinhTrangDonDatHang` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinhtrangdondathang`
--

INSERT INTO `tinhtrangdondathang` (`MaTinhTrangDonDatHang`, `TenTinhTrangDonDatHang`) VALUES
(1, 'Mới đặt hàng'),
(2, 'Đang xử lý'),
(3, 'Đang giao hàng'),
(4, 'Đã thanh toán'),
(5, 'Đã hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_KhachHang1_idx` (`MaKhachHang`),
  ADD KEY `fk_DonDatHang_TinhTrangDonDatHang1_idx` (`MaTinhTrangDonDatHang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `fk_SanPham_LoaiSanPham_idx` (`MaLoaiSanPham`);

--
-- Indexes for table `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  ADD PRIMARY KEY (`MaTinhTrangDonDatHang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  MODIFY `MaChiTietDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `MaDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  MODIFY `MaTinhTrangDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_ChiTietDonDatHang_DonDatHang1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ChiTietDonDatHang_SanPham1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_DonDatHang_KhachHang1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_TinhTrangDonDatHang1` FOREIGN KEY (`MaTinhTrangDonDatHang`) REFERENCES `tinhtrangdondathang` (`MaTinhTrangDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_SanPham_LoaiSanPham` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
