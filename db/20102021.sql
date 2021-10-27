-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2021 lúc 10:27 AM
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
  `sdt` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `image` text COLLATE utf8_vietnamese_ci NOT NULL,
  `dia_chi` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `ten`, `email`, `mat_khau`, `sdt`, `image`, `dia_chi`) VALUES
(1, 'BÃ¹i Thu HÃ ', 'thuhak22ba@gmail.com', '123', '0367997052', 'img/team-1.jpg', 'ThÃ¡i NguyÃªn'),
(2, 'Táº¡ Thá»‹ Kim Oanh', 'takimoanhmis@gmail.com', '123', '0886630883', 'img/team-2.jpg', 'Ninh BÃ¬nh'),
(3, 'Tráº§n XuÃ¢n ChÃ­nh', 'tranxuanchinhxt2001@gmail.com', '123', '096741632', 'img/team-3.jpg', 'Nam Äá»‹nh'),
(4, 'HoÃ ng Thá»‹ Ngá»c HÃ ', 'hanaha02012001@gmail.com', '123', '0947345237', 'img/team-4.jpg', 'Nghá»‡ An'),
(5, 'Tráº§n Äá»©c Tuáº¥n', 'tuantranduc2006@gmail.com', '123', '0906235350', 'img/team-3.jpg', 'HÃ  Ná»™i');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id_blog` int(11) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `noi_dung` text COLLATE utf8_vietnamese_ci NOT NULL,
  `anh_minh_hoa` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`id_blog`, `ten`, `noi_dung`, `anh_minh_hoa`) VALUES
(1, '<p>&Aacute;o áº¥m cho em</p> ', '<p>Quy&ecirc;n g&oacute;p quáº§n &aacute;o áº¥m v&agrave; Ä‘á»“ d&ugrave;ng thiáº¿t yáº¿u cho tráº» em x&atilde; B&igrave;nh Trung, huyá»‡n Chá»£ Äá»“n, tá»‰nh Báº¯c Káº¡n.</p>', 'img/blog1.jfif'),
(2, '<p>Bá»¯a Äƒn dinh dÆ°á»¡ng cho tráº»</p> ', '<p>Cung cáº¥p 205 bá»¯a Äƒn l&agrave;nh máº¡nh cho c&aacute;c em nhá» táº¡i Trung t&acirc;m Nh&acirc;n Ä‘áº¡o Qu&ecirc; HÆ°Æ¡ng (B&igrave;nh DÆ°Æ¡ng).</p>', 'img/b2.jpg'),
(3, '<p>Há»— trá»£ há»c trá»±c tuyáº¿n</p> ', '<p>á»¦ng há»™ 40 chiáº¿c Ä‘iá»‡n thoáº¡i gi&uacute;p c&aacute;c em nhá» táº¡i B&igrave;nh DÆ°Æ¡ng Ä‘á»§ Ä‘iá»u kiá»‡n há»c táº­p.</p>', 'img/causes-4.jpg'),
(4, '<p>Tháº¯p s&aacute;ng Æ°á»›c mÆ¡</p> ', '<p>Táº¡i Y&ecirc;n Vui Pleiku &ndash; Gia Lai, Help Ä‘&atilde; há»— trá»£ cho c&aacute;c em 100 bá»™ s&aacute;ch gi&aacute;o khoa, 300 quyá»ƒn vá»Ÿ v&agrave; h&agrave;ng trÄƒm chiáº¿c b&uacute;t há»— trá»£ há»c táº­p.</p>', 'img/b3.jpg'),
(5, '<p>Táº¿t Trung Thu thá»i Covid</p> ', '<p>Helpv Ä‘&atilde; tá»• chá»©c tiá»‡c trung thu v&agrave; táº·ng qu&agrave; cho c&aacute;c em nhá» táº¡i l&agrave;ng tráº» SOS táº¡i Quáº£ng Ng&atilde;i Ä‘á»ƒ gi&uacute;p c&aacute;c em c&oacute; má»™t c&aacute;i táº¿t to&agrave;n vi&ecirc;n tháº­t Ä‘áº§m áº¥m.</p>', 'img/b22.jpg'),
(6, '<p>Ná»¥ cÆ°á»i tráº»</p> ', '<p>Heplv t&agrave;i trá»£ cho 10 em nhá» bá»‹ há»Ÿ h&agrave;m áº¿ch táº¡i t&igrave;nh H&agrave; Giang c&oacute; ho&agrave;n cáº£nh kh&oacute; khÄƒn Ä‘Æ°á»£c pháº«u thuáº­t t&igrave;m láº¡i ná»¥ cÆ°á»i.</p>', 'img/b4.jpg');

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

--
-- Đang đổ dữ liệu cho bảng `tbl_chia_se_user`
--

INSERT INTO `tbl_chia_se_user` (`id_chia_se`, `ten`, `email`, `nghe_nghiep`, `loi_nhan`) VALUES
(1, '<p>Tráº§n Thá»‹ Thá»§y Ti&ecirc;n</p>', '<p>thuytienn2210@gmail.com</p>', '<p>Ca sÄ©</p>', '<p>Ä&acirc;y l&agrave; má»™t tá»• chá»©c ráº¥t &yacute; nghÄ©a, cáº£m Æ¡n Ä‘á»™i ngÅ© Ä‘&atilde; thá»±c hiá»‡n nhá»¯ng chÆ°Æ¡ng tr&igrave;nh gi&uacute;p Ä‘á»¡ tráº» em.</p>'),
(2, '<p>Nguyá»…n PhÆ°Æ¡ng Háº±ng</p>', '<p>ntphuonghang@gmail.com</p>', '<p>Doanh nh&acirc;n</p>', '<p>HELPV l&agrave; má»™t tá»• chá»©c tuyá»‡t vá»i. Cáº£m Æ¡n táº¥t cáº£ c&aacute;c báº¡n.</p>'),
(3, '<p>V&otilde; Ho&agrave;i Linh</p>', '<p>vohlinh@gmail.com</p>', '<p>Nghá»‡ sÄ©</p>', '<p>Tháº­t tuyá»‡t vá»i , c&aacute;c báº¡n Ä‘&atilde; tháº¯p s&aacute;ng th&ecirc;m cho tÆ°Æ¡ng lai cá»§a nhá»¯ng máº§n non Ä‘áº¥t nÆ°á»›c.</p>'),
(4, '<p>LÆ°u Máº¡nh Tháº¯ng</p>', '<p>manhthangqnsoft@gmail.com</p>', '<p>Gi&aacute;o vi&ecirc;n</p>', '<p>T&ocirc;i Ä‘&atilde; trao Ä‘á»•i vá»›i ngÆ°á»i Ä‘á»©ng Ä‘áº§u v&agrave; t&ocirc;i c&oacute; niá»m tin ráº±ng t&ocirc;i c&oacute; thá»ƒ y&ecirc;n t&acirc;m Ä‘áº§u tÆ° tá»« thiá»‡n v&agrave;o nÆ¡i ');

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
  `image` text COLLATE utf8_vietnamese_ci,
  `so_tien_ung_ho` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_su_kien`
--

INSERT INTO `tbl_su_kien` (`id_su_kien`, `ten`, `noi_dung`, `ngay_to_chuc`, `dia_diem`, `thoi_gian`, `image`, `so_tien_ung_ho`) VALUES
(1, '<p>Chiáº¿n dá»‹ch \"Em kh&ocirc;ng láº» loi\"</p>', '<p>Chiáº¿n dá»‹ch há»— trá»£ cho tráº» em má»“ c&ocirc;i v&igrave; Covid-19 hÆ°á»›ng Ä‘áº¿n má»¥c ti&ecirc;u k&ecirc;u gá»i á»§ng há»™ tá»« c&aacute;c nguá»“n lá»±c trong x&atilde; há»™i Ä‘á»ƒ cung cáº¥p nhá»¯ng há»— trá»£ kháº©n cáº¥p cÅ©ng nhÆ° d&agrave;i háº¡n cho tráº» em c&oacute; ho&agrave;n cáº£nh kh&oacute; khÄƒn máº¥t cha/máº¹, hoáº·c ngÆ°á»i chÄƒm s&oacute;c ch&iacute;nh v&igrave; dá»‹ch bá»‡nh Covid-19.</p><p>&nbsp;</p>', '2021-11-01', 'Há»“ ChÃ­ Minh', '8:00 - 16:00', 'img/im10.jpg', 0),
(2, '<p>Gi&uacute;p Ä‘á»¡ tráº» em cÆ¡ nhá»¡ tr&ecirc;n Ä‘á»‹a b&agrave;n H&agrave; Ná»™i</p>', '<p>C&aacute;c hoáº¡t Ä‘á»™ng cá»§a Dá»± &aacute;n gá»“m: Tiáº¿p cáº­n vá»›i tráº» em v&agrave; cung cáº¥p, há»— trá»£ kháº©n cáº¥p ban Ä‘áº§u cho c&aacute;c em nÆ¡i á»Ÿ an to&agrave;n, dinh dÆ°á»¡ng, y táº¿, Äƒn máº·c, trá»‹ liá»‡u t&acirc;m l&yacute;&hellip;; há»— trá»£ há»c ph&iacute; v&agrave; c&aacute;c chi ph&iacute; há»c táº­p cho hÆ¡n 100 tráº» tá»« cáº¥p TH tá»›i THPT (há»c ph&iacute;, b&aacute;n tr&uacute;, Ä‘á»“ng phá»¥c, Ä‘á»“ d&ugrave;ng há»c táº­p&hellip;</p>', '2022-01-15', 'HÃ  Ná»™i', '8:00 - 17:00', 'img/im9.jpg', 0),
(5, 'Táº·ng quÃ  cho tráº» em nghÃ¨o vÃ¹ng cao tá»‰nh Cao Báº±ng', 'Helpz tá»• chá»©c trao gáº§n 200 xuáº¥t quÃ  gá»“m: chÄƒn, quáº§n Ã¡o, giáº§y dÃ©p, Ä‘á»“ dÃ¹ng há»c táº­p, nhu yáº¿u pháº©m... cho cÃ¡c em trÆ°á»ng tiá»ƒu há»c Báº£n Lung vÃ  trÆ°á»ng tiá»ƒu há»c, máº«u giÃ¡o ÄoÃ i CÃ´n, xÃ£ ÄoÃ i CÃ´n, huyá»‡n TrÃ¹ng KhÃ¡nh, tá»‰nh Cao Báº±ng.', '2022-05-01', 'Cao Báº±ng', '8:00 - 10:00', 'img/im4.jpg', 0),
(6, 'GiÃºp Ä‘á»¡ tráº» em cÆ¡ nhá»¡ trÃªn Ä‘á»‹a bÃ n HÃ  Ná»™i', 'CÃ¡c hoáº¡t Ä‘á»™ng cá»§a Dá»± Ã¡n gá»“m: Tiáº¿p cáº­n vá»›i tráº» em vÃ  cung cáº¥p, há»— trá»£ kháº©n cáº¥p ban Ä‘áº§u cho cÃ¡c em nÆ¡i á»Ÿ an toÃ n, dinh dÆ°á»¡ng, y táº¿, Äƒn máº·c, trá»‹ liá»‡u tÃ¢m lÃ½â€¦; há»— trá»£ há»c phÃ­ vÃ  cÃ¡c chi phÃ­ há»c táº­p cho hÆ¡n 100 tráº» tá»« cáº¥p TH tá»›i THPT (há»c phÃ­, bÃ¡n trÃº, Ä‘á»“ng phá»¥c, Ä‘á»“ dÃ¹ng há»c táº­pâ€¦', '2022-01-15', 'HÃ  Ná»™i', '8:00 - 17:00', 'img/im9.jpg', 0),
(7, 'XÃ¢y dá»±ng mÃ¡i trÆ°á»ng má»›i cho tráº» em báº£n Há»‘c Bon, tá»‰nh SÆ¡n La', 'Äá»ƒ táº¡o má»™t mÃ´i trÆ°á»ng há»c táº­p thuáº­n lá»£i cho nhá»¯ng em nhá» hiáº¿u há»c trÆ°á»ng Tiá»ƒu há»c MÆ°á»ng KhiÃªng 2, hÃ£y chung tay cÃ¹ng Helpz quyÃªn gÃ³p  giÃºp cÃ¡c em nhá» báº£n Há»‘c Bon cÃ³ má»™t ngÃ´i trÆ°á»ng má»›i.', '2022-07-30', 'SÆ¡n La', '8:00 - 20:00', 'img/im2.jpg', 0),
(8, 'Dá»± Ã¡n nuÃ´i em', 'Vá»›i mong muá»‘n cáº£i thiá»‡n bá»¯a trÆ°a cá»§a nhá»¯ng Ä‘á»©a tráº» Ä‘ang â€œtuá»•i Äƒn tuá»•i lá»›nâ€, thÃ¡ng 3/2022, Helpv káº¿t há»£p vá»›i Há»™i Phá»¥ ná»¯ (CÃ´ng an huyá»‡n Má»™c ChÃ¢u) Ä‘Ã£ Ä‘á» xuáº¥t Ã½ tÆ°á»Ÿng, quyáº¿t Ä‘á»‹nh triá»ƒn khai Dá»± Ã¡n â€œNuÃ´i em Má»™c ChÃ¢uâ€ táº¡i TrÆ°á»ng máº§m non LÃ³ng Sáº­p.', '2022-03-01', 'Má»™c ChÃ¢u', '10:00 - 18:00', 'img/im8.jpg', 0),
(9, '<p>Dá»± &aacute;n \"BÆ°á»›c ch&acirc;n Ä‘i, niá»m vui á»Ÿ láº¡i\"</p>', '<p>Äo&agrave;n t&igrave;nh nguyá»‡n sáº½ tá»›i 10 Ä‘iá»ƒm trÆ°á»ng cá»§a x&atilde; MÆ°á»ng Toong thuá»™c c&aacute;c Báº£n Náº­m Pan 1,2,3,4,5,6,7,8,9,10. Táº¡i Ä‘&acirc;y Ä‘o&agrave;n sáº½ tá»• chá»©c giao lÆ°u vÄƒn nghá»‡, gi&uacute;p Ä‘á»¡ b&agrave; c&ograve;n dá»n dáº¹p th&ocirc;n báº£n, ph&aacute;t qu&agrave; cho tráº» em v&agrave; c&aacute;c há»™ gia Ä‘&igrave;nh c&ograve;n kh&oacute; khÄƒn.</p>', '2022-07-15', 'Äiá»‡n BiÃªn', '8:00 - 20:00', 'img/im1.jpg', 0),
(10, '<p>Em Ä‘áº¿n trÆ°á»ng</p>', '<p>á»¦ng há»™ s&aacute;ch vá»Ÿ, Ä‘á»“ d&ugrave;ng há»c táº­p cho tráº» em bá»‹ áº£nh hÆ°á»Ÿng bá»Ÿi lÅ© lá»¥t táº¡i Quáº£ng Trá»‹.</p>', '2021-02-15', 'Quáº£ng Trá»‹', '8:00 - 11:00', 'img/causes-1.jpg', 20000000),
(11, '<p>&Aacute;o áº¥m cho em</p>', '<p>Quy&ecirc;n g&oacute;p quáº§n &aacute;o áº¥m v&agrave; Ä‘á»“ d&ugrave;ng thiáº¿t yáº¿u cho tráº» em x&atilde; B&igrave;nh Trung, huyá»‡n Chá»£ Äá»“n, tá»‰nh Báº¯c Káº¡n.</p>', '2021-01-05', 'Báº¯c Káº¡n', '8:00 - 11:00', 'img/causes-2.jpg', 12000000),
(12, '<p>Bá»¯a Äƒn dinh dÆ°á»¡ng cho tráº»</p>', '<p>Cung cáº¥p 205 bá»¯a Äƒn l&agrave;nh máº¡nh cho c&aacute;c em nhá» táº¡i Trung t&acirc;m Nh&acirc;n Ä‘áº¡o Qu&ecirc; HÆ°Æ¡ng (B&igrave;nh DÆ°Æ¡ng).</p>', '2021-03-27', 'BÃ¬nh DÆ°Æ¡ng', '10:00 - 13:00', 'img/causes-3.jpg', 8000000),
(13, '<p>Há»— trá»£ há»c trá»±c tuyáº¿n</p>', '<p>á»¦ng há»™ 40 chiáº¿c Ä‘iá»‡n thoáº¡i gi&uacute;p c&aacute;c em nhá» táº¡i B&igrave;nh DÆ°Æ¡ng Ä‘á»§ Ä‘iá»u kiá»‡n há»c táº­p.</p>', '2021-09-15', 'BÃ¬nh DÆ°Æ¡ng', '14:00 - 17:00', 'img/causes-4.jpg', 20000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tinh_nguyen_vien`
--

CREATE TABLE `tbl_tinh_nguyen_vien` (
  `id_tnv` int(11) NOT NULL,
  `ten_nv` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `gioi_tinh` varchar(5) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sdt` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` text COLLATE utf8_vietnamese_ci NOT NULL,
  `ghi_chu` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tinh_nguyen_vien`
--

INSERT INTO `tbl_tinh_nguyen_vien` (`id_tnv`, `ten_nv`, `gioi_tinh`, `sdt`, `email`, `ghi_chu`) VALUES
(1, 'Đặng Tuấn Anh', 'Nam', '0982349121', 'tuananh@gmail.com', NULL),
(2, 'Lưu Trang Anh', 'Nữ', '0887765543', 'trangluu@gmail.com', NULL),
(3, 'Trần Thị Minh Châu', 'Nữ', '0665534343', 'couchou@gmail.com', NULL),
(4, 'Trần An Dương', 'Nam', '0982376121', 'anduong@gmail.com', NULL),
(5, 'Nguyễn Lê Hiếu', 'Nam', '0634534343', 'hiuhiu@gmail.com', NULL),
(6, 'Bùi Phương Thảo', 'Nữ', '0934349221', 'thaopthuonggg@gmail.com', NULL),
(7, 'Lê Khánh Vy', 'Nữ', '0998334445', 'vyvovo@gmail.com', NULL),
(8, 'Phạm Bảo Liên', 'Nữ', '0666778997', 'baoliennnnn@gmail.com', NULL),
(9, 'Đỗ Văn Tấn', 'Nam', '0875432132', 'tantataann@gmail.com', NULL),
(10, 'Trần Kim Ngân', 'Nữ', '0445566267', 'kimngannn@gmail.com', NULL),
(11, 'Trần Uyên Nhi', 'Nữ', '0435672913', 'uyennhiiiii@gmail.com', NULL),
(12, 'Nguyễn Hùng Anh', 'Nam', '0999993334', 'hunganhhh@gmail.com', 'Tạm ngừng hoạt động'),
(13, 'Nguyễn Ngọc Anh', 'Nữ', '0496813738', 'ngocaaaa@gmail.com', NULL),
(14, 'Mai Tùng Bách', 'Nam', '066677776', 'bachtungggggn@gmail.com', NULL),
(15, 'Nguyễn Trần Bình', 'Nam', '0877882132', 'tranbinnnn@gmail.com', NULL),
(16, 'Vũ Điệp Chi', 'Nữ', '0666733442', 'diepchiiib@gmail.com', NULL),
(17, 'Phạm Văn Đạt', 'Nam', '0809992132', 'datttvanpham@gmail.com', NULL),
(18, 'Hoàng An Đông', 'Nam', '0933445121', 'andong@gmail.com', NULL),
(19, 'Đặng Gia Hân', 'Nữ', '0634577788', 'hangiadang@gmail.com', NULL),
(20, 'Lưu Ngọc Hiền', 'Nữ', '0922564121', 'ngohienjg@gmail.com', NULL),
(21, 'Phạm Phương Hoa', 'Nữ', '0889577788', 'phunhoaoa@gmail.com', NULL),
(22, 'Vũ Đức Huy', 'Nam', '0922522441', 'huyducucccg@gmail.com', NULL),
(23, 'Vũ Thanh Huyền', 'Nữ', '0887677788', 'thanhhuyeenna@gmail.com', NULL),
(24, 'Phạm Thu Huyền', 'Nữ', '0667782441', 'thuuyennnnncg@gmail.com', NULL),
(25, 'Nguyễn Tuấn Hưng', 'Nam', '0833446588', 'tuanhungggg@gmail.com', NULL),
(26, 'Lê Hoàng Anh', 'Nam', '0887730884', 'hoanganhh@gmail.com', NULL),
(27, 'Trần An An', 'Nữ', '0988899977', 'anaann@gmail.com', NULL),
(29, 'Nguyễn Quốc Huy', 'Nam', '0977403304', 'huynguyen@gmail.com', 'chỉ sự kiện ở Hà Nội');

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
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_chia_se_user`
--
ALTER TABLE `tbl_chia_se_user`
  MODIFY `id_chia_se` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_su_kien`
--
ALTER TABLE `tbl_su_kien`
  MODIFY `id_su_kien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_tinh_nguyen_vien`
--
ALTER TABLE `tbl_tinh_nguyen_vien`
  MODIFY `id_tnv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_ung_ho`
--
ALTER TABLE `tbl_ung_ho`
  MODIFY `id_ung_ho` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
