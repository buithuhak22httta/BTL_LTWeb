-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2021 lúc 09:26 AM
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
  `mat_khau` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
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
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
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
(1, '<p>Chiáº¿n dá»‹ch \"Em kh&ocirc;ng láº» loi\"</p>', '<p>Chiáº¿n dá»‹ch há»— trá»£ cho tráº» em má»“ c&ocirc;i v&igrave; Covid-19 hÆ°á»›ng Ä‘áº¿n má»¥c ti&ecirc;u k&ecirc;u gá»i á»§ng há»™ tá»« c&aacute;c nguá»“n lá»±c trong x&atilde; há»™i Ä‘á»ƒ cung cáº¥p nhá»¯ng há»— trá»£ kháº©n cáº¥p cÅ©ng nhÆ° d&agrave;i háº¡n cho tráº» em c&oacute; ho&agrave;n cáº£nh kh&oacute; khÄƒn máº¥t cha/máº¹, hoáº·c ngÆ°á»i chÄƒm s&oacute;c ch&iacute;nh v&igrave; dá»‹ch bá»‡nh Covid-19.</p><p>&nbsp;</p>', '2021-11-01', 'Há»“ ChÃ­ Minh', '8:00 - 16:00', 'img/im10.jpg'),
(2, '<p>Gi&uacute;p Ä‘á»¡ tráº» em cÆ¡ nhá»¡ tr&ecirc;n Ä‘á»‹a b&agrave;n H&agrave; Ná»™i</p>', '<p>C&aacute;c hoáº¡t Ä‘á»™ng cá»§a Dá»± &aacute;n gá»“m: Tiáº¿p cáº­n vá»›i tráº» em v&agrave; cung cáº¥p, há»— trá»£ kháº©n cáº¥p ban Ä‘áº§u cho c&aacute;c em nÆ¡i á»Ÿ an to&agrave;n, dinh dÆ°á»¡ng, y táº¿, Äƒn máº·c, trá»‹ liá»‡u t&acirc;m l&yacute;&hellip;; há»— trá»£ há»c ph&iacute; v&agrave; c&aacute;c chi ph&iacute; há»c táº­p cho hÆ¡n 100 tráº» tá»« cáº¥p TH tá»›i THPT (há»c ph&iacute;, b&aacute;n tr&uacute;, Ä‘á»“ng phá»¥c, Ä‘á»“ d&ugrave;ng há»c táº­p&hellip;</p>', '2022-01-15', 'HÃ  Ná»™i', '8:00 - 17:00', 'img/im9.jpg'),
(5, 'Táº·ng quÃ  cho tráº» em nghÃ¨o vÃ¹ng cao tá»‰nh Cao Báº±ng', 'Helpz tá»• chá»©c trao gáº§n 200 xuáº¥t quÃ  gá»“m: chÄƒn, quáº§n Ã¡o, giáº§y dÃ©p, Ä‘á»“ dÃ¹ng há»c táº­p, nhu yáº¿u pháº©m... cho cÃ¡c em trÆ°á»ng tiá»ƒu há»c Báº£n Lung vÃ  trÆ°á»ng tiá»ƒu há»c, máº«u giÃ¡o ÄoÃ i CÃ´n, xÃ£ ÄoÃ i CÃ´n, huyá»‡n TrÃ¹ng KhÃ¡nh, tá»‰nh Cao Báº±ng.', '2022-05-01', 'Cao Báº±ng', '8:00 - 10:00', 'img/im4.jpg'),
(6, 'GiÃºp Ä‘á»¡ tráº» em cÆ¡ nhá»¡ trÃªn Ä‘á»‹a bÃ n HÃ  Ná»™i', 'CÃ¡c hoáº¡t Ä‘á»™ng cá»§a Dá»± Ã¡n gá»“m: Tiáº¿p cáº­n vá»›i tráº» em vÃ  cung cáº¥p, há»— trá»£ kháº©n cáº¥p ban Ä‘áº§u cho cÃ¡c em nÆ¡i á»Ÿ an toÃ n, dinh dÆ°á»¡ng, y táº¿, Äƒn máº·c, trá»‹ liá»‡u tÃ¢m lÃ½â€¦; há»— trá»£ há»c phÃ­ vÃ  cÃ¡c chi phÃ­ há»c táº­p cho hÆ¡n 100 tráº» tá»« cáº¥p TH tá»›i THPT (há»c phÃ­, bÃ¡n trÃº, Ä‘á»“ng phá»¥c, Ä‘á»“ dÃ¹ng há»c táº­pâ€¦', '2022-01-15', 'HÃ  Ná»™i', '8:00 - 17:00', 'img/im9.jpg'),
(7, 'XÃ¢y dá»±ng mÃ¡i trÆ°á»ng má»›i cho tráº» em báº£n Há»‘c Bon, tá»‰nh SÆ¡n La', 'Äá»ƒ táº¡o má»™t mÃ´i trÆ°á»ng há»c táº­p thuáº­n lá»£i cho nhá»¯ng em nhá» hiáº¿u há»c trÆ°á»ng Tiá»ƒu há»c MÆ°á»ng KhiÃªng 2, hÃ£y chung tay cÃ¹ng Helpz quyÃªn gÃ³p  giÃºp cÃ¡c em nhá» báº£n Há»‘c Bon cÃ³ má»™t ngÃ´i trÆ°á»ng má»›i.', '2022-07-30', 'SÆ¡n La', '8:00 - 20:00', 'img/im2.jpg'),
(8, 'Dá»± Ã¡n nuÃ´i em', 'Vá»›i mong muá»‘n cáº£i thiá»‡n bá»¯a trÆ°a cá»§a nhá»¯ng Ä‘á»©a tráº» Ä‘ang â€œtuá»•i Äƒn tuá»•i lá»›nâ€, thÃ¡ng 3/2022, Helpv káº¿t há»£p vá»›i Há»™i Phá»¥ ná»¯ (CÃ´ng an huyá»‡n Má»™c ChÃ¢u) Ä‘Ã£ Ä‘á» xuáº¥t Ã½ tÆ°á»Ÿng, quyáº¿t Ä‘á»‹nh triá»ƒn khai Dá»± Ã¡n â€œNuÃ´i em Má»™c ChÃ¢uâ€ táº¡i TrÆ°á»ng máº§m non LÃ³ng Sáº­p.', '2022-03-01', 'Má»™c ChÃ¢u', '10:00 - 18:00', 'img/im8.jpg'),
(9, 'Dá»± Ã¡n \"BÆ°á»›c chÃ¢n Ä‘i, niá»m vui á»Ÿ láº¡i\"', 'ÄoÃ n tÃ¬nh nguyá»‡n sáº½ tá»›i 10 Ä‘iá»ƒm trÆ°á»ng cá»§a xÃ£ MÆ°á»ng Toong thuá»™c cÃ¡c Báº£n Náº­m Pan 1,2,3,4,5,6,7,8,9,10. Táº¡i Ä‘Ã¢y Ä‘oÃ n sáº½ tá»• chá»©c giao lÆ°u vÄƒn nghá»‡, giÃºp Ä‘á»¡ bÃ  cÃ²n dá»n dáº¹p thÃ´n báº£n, phÃ¡t quÃ  cho tráº» em vÃ  cÃ¡c há»™ gia Ä‘Ã¬nh cÃ²n khÃ³ khÄƒn. ', '2022-07-15', 'Äiá»‡n BiÃªn', '8:00 - 20:00', 'img/im1.jpg');

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
  MODIFY `id_su_kien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
