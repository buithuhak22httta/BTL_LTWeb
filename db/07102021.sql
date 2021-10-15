-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2021 lúc 04:50 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `helpv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` text COLLATE utf8_vietnamese_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `image` text COLLATE utf8_vietnamese_ci NOT NULL,
  `dia_chi` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id_blog` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `noi_dung` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chia_se_user`
--

CREATE TABLE `tbl_chia_se_user` (
  `id_chia_se` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` text COLLATE utf8_vietnamese_ci NOT NULL,
  `nghe_nghiep` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `loi_nhan` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_su_kien`
--

CREATE TABLE `tbl_su_kien` (
  `id_su_kien` int(11) NOT NULL,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_to_chuc` date NOT NULL,
  `dia_diem` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thoi_gian` text COLLATE utf8_vietnamese_ci NOT NULL,
  `image` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_su_kien`
--

INSERT INTO `tbl_su_kien` (`id_su_kien`, `ten`, `noi_dung`, `ngay_to_chuc`, `dia_diem`, `thoi_gian`, `image`) VALUES
(1, 'Chiến dịch \"Em không lẻ loi\"', 'Chiến dịch hỗ trợ cho trẻ em mồ côi vì Covid-19 hướng đến mục tiêu kêu gọi ủng hộ từ các nguồn lực trong xã hội để cung cấp những hỗ trợ khẩn cấp cũng như dài hạn cho trẻ em có hoàn cảnh khó khăn mất cha/mẹ, hoặc người chăm sóc chính vì dịch bệnh Covid-19.\r\n\r\n', '2021-11-01', 'Hồ Chí Minh', '8:00 - 16:00', 'img/im10.jpg'),
(2, 'Giúp đỡ trẻ em cơ nhỡ trên địa bàn Hà Nội', 'Các hoạt động của Dự án gồm: Tiếp cận với trẻ em và cung cấp, hỗ trợ khẩn cấp ban đầu cho các em nơi ở an toàn, dinh dưỡng, y tế, ăn mặc, trị liệu tâm lý…; hỗ trợ học phí và các chi phí học tập cho hơn 100 trẻ từ cấp TH tới THPT (học phí, bán trú, đồng phục, đồ dùng học tập…', '2022-01-15', 'Hà Nội', '8:00 - 17:00', 'img/im9.jpg'),
(3, 'hà', 'nd', '0000-00-00', 'tn', '8h', 'anh1'),
(4, 'Táº·ng quÃ  cho tráº» em nghÃ¨o vÃ¹ng cao tá»‰nh C', 'Helpz tá»• chá»©c trao gáº§n 200 xuáº¥t quÃ  gá»“m: chÄƒn, quáº§n Ã¡o, giáº§y dÃ©p, Ä‘á»“ dÃ¹ng há»c táº­p, nhu yáº¿u pháº©m... cho cÃ¡c em trÆ°á»ng tiá»ƒu há»c Báº£n Lung vÃ  trÆ°á»ng tiá»ƒu há»c, máº«u giÃ¡o ÄoÃ i CÃ´n, xÃ£ ÄoÃ i CÃ´n, huyá»‡n TrÃ¹ng KhÃ¡nh, tá»‰nh Cao Báº±ng.', '2022-05-01', 'Cao Báº±ng', '8:00 - 10:00', 'img/im4.jpg'),
(5, 'Táº·ng quÃ  cho tráº» em nghÃ¨o vÃ¹ng cao tá»‰nh Cao Báº±ng', 'Helpz tá»• chá»©c trao gáº§n 200 xuáº¥t quÃ  gá»“m: chÄƒn, quáº§n Ã¡o, giáº§y dÃ©p, Ä‘á»“ dÃ¹ng há»c táº­p, nhu yáº¿u pháº©m... cho cÃ¡c em trÆ°á»ng tiá»ƒu há»c Báº£n Lung vÃ  trÆ°á»ng tiá»ƒu há»c, máº«u giÃ¡o ÄoÃ i CÃ´n, xÃ£ ÄoÃ i CÃ´n, huyá»‡n TrÃ¹ng KhÃ¡nh, tá»‰nh Cao Báº±ng.', '2022-05-01', 'Cao Báº±ng', '8:00 - 10:00', 'img/im4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tinh_nguyen_vien`
--

CREATE TABLE `tbl_tinh_nguyen_vien` (
  `id_tnv` int(11) NOT NULL,
  `ten_nv` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` text COLLATE utf8_vietnamese_ci NOT NULL,
  `ghi_chu` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ung_ho`
--

CREATE TABLE `tbl_ung_ho` (
  `id_ung_ho` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` text COLLATE utf8_vietnamese_ci NOT NULL,
  `so_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Chỉ mục cho bảng `tbl_chia_se_user`
--
ALTER TABLE `tbl_chia_se_user`
  ADD PRIMARY KEY (`id_chia_se`);

--
-- Chỉ mục cho bảng `tbl_su_kien`
--
ALTER TABLE `tbl_su_kien`
  ADD PRIMARY KEY (`id_su_kien`);

--
-- Chỉ mục cho bảng `tbl_tinh_nguyen_vien`
--
ALTER TABLE `tbl_tinh_nguyen_vien`
  ADD PRIMARY KEY (`id_tnv`);

--
-- Chỉ mục cho bảng `tbl_ung_ho`
--
ALTER TABLE `tbl_ung_ho`
  ADD PRIMARY KEY (`id_ung_ho`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_chia_se_user`
--
ALTER TABLE `tbl_chia_se_user`
  MODIFY `id_chia_se` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_su_kien`
--
ALTER TABLE `tbl_su_kien`
  MODIFY `id_su_kien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_tinh_nguyen_vien`
--
ALTER TABLE `tbl_tinh_nguyen_vien`
  MODIFY `id_tnv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_ung_ho`
--
ALTER TABLE `tbl_ung_ho`
  MODIFY `id_ung_ho` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
