-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2021 lúc 06:57 PM
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
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `ten`, `email`, `mat_khau`, `sdt`, `image`, `dia_chi`) VALUES
(1, 'Bùi Thu Hà', 'thuhak22ba@gmail.com', '123', '0367997052', 'img/team-1.jpg', 'Thái Nguyên'),
(2, 'Tạ Thị Kim Oanh', 'takimoanhmis@gmail.com', '123', '0886630883', 'img/team-2.jpg', 'Ninh Bình'),
(3, 'Trần Xuân Chính', 'tranxuanchinhxt2001@gmail.com', '123', '096741632', 'img/team-3.jpg', 'Nam Định'),
(4, 'Hoàng Thị Ngọc Hà', 'hanaha02012001@gmail.com', '123', '0947345237', 'img/team-4.jpg', 'Nghệ An'),
(5, 'Trần Đức Tuấn', 'tuantranduc2006@gmail.com', '123', '0906235350', 'img/team-3.jpg', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id_blog` int(11) NOT NULL,
  `ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `anh_minh_hoa` text COLLATE utf8_unicode_ci NOT NULL,
  `thoi_gian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`id_blog`, `ten`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `thoi_gian`, `id_admin`) VALUES
(1, 'Áo ấm cho em', ' Quyên góp quần áo ấm và đồ dùng thiết yếu cho trẻ em xã Bình Trung, huyện Chợ Đồn, tỉnh Bắc Kạn.', 'nd', 'img/blog1.jfif', '2021-10-25 16:06:17', 1),
(2, 'Bữa ăn dinh dưỡng cho trẻ', 'Cung cấp 205 bữa ăn lành mạnh cho các em nhỏ tại Trung tâm Nhân đạo Quê Hương (Bình Dương).', 'nd', 'img/b2.jpg', '2021-10-25 16:06:17', 1),
(3, 'Hỗ trợ học trực tuyến', ' Ủng hộ 40 chiếc điện thoại giúp các em nhỏ tại Bình Dương đủ điều kiện học tập.', 'nd', 'img/causes-4.jpg', '2021-10-25 16:06:17', 1),
(4, 'Thắp sáng ước mơ ', 'Tại Yên Vui Pleiku – Gia Lai, Help đã hỗ trợ cho các em 100 bộ sách giáo khoa, 300 quyển vở và hàng trăm chiếc bút hỗ trợ học tập.', 'nd', 'img/b3.jpg', '2021-10-25 16:06:17', 1),
(5, 'Tết Trung Thu thời Covid', 'Helpv đã tổ chức tiệc trung thu và tặng quà cho các em nhỏ tại làng trẻ SOS tại Quảng Ngãi để giúp các em có một cái tết toàn viên thật đầm ấm .', 'nd', 'img/b22.jpg', '2021-10-25 16:06:17', 1),
(6, 'Nụ cười trẻ ', 'Heplv tài trợ cho 10 em nhỏ bị hở hàm ếch tại tình Hà Giang có hoàn cảnh khó khăn được phẫu thuật tìm lại nụ cười . ', 'nd', 'img/b4.jpg', '2021-10-25 16:06:17', 1),
(7, 'Tấm gương sáng', 'Em Lùi Thị Mía một học sinh nghèo tại khu vực miền núi khó khăn nhất tỉnh Sơn La. Đã xuất sắc đỗ trường Học viện Ngân Hàng nhưng hoàn cảnh khó khăn, em không đủ điều kiện tới trường. Nhờ sự giúp đỡ của quỹ học bổng HELPV em đã có cơ hội tiếp tục con đường học tập và giành nhiều thành tích cao trong học tập. ', 'nd', 'img/blog-1.jpg', '2021-10-25 16:25:45', 1),
(8, 'Trái tim trở lại', 'Em La Pu Sá bị mắc bệnh tim bẩm sinh, gia đình hoàn cảnh khó khăn không đủ điều kiện chữa trị cho em. Các nhà hảo tâm và tình nguyện viên của HELPV đã tài trợ và giúp đỡ tạo điều kiện cho em được phẫu thuật thành công. Hiện tại, em đã hoàn toàn bình phục.', 'nd', 'img/blog-2.jpg', '2021-10-25 16:25:45', 2),
(9, 'Ngôi nhà mới', 'Hai anh em Vũ Văn An và Vũ Văn Bình mất đi cả người thân lẫn ngôi nhà gắn bó hơn 10 năm sau trận lũ lụt năm 2020. Nhờ quỹ Mái ấm cho em của HELPV, tháng 12 năm 2020 các em đã có một ngôi nhà mới. ', 'nd', 'img/blog-3.jpg', '2021-10-25 16:26:36', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chia_se_user`
--

CREATE TABLE `tbl_chia_se_user` (
  `id_chia_se` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `nghe_nghiep` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loi_nhan` text COLLATE utf8_unicode_ci NOT NULL,
  `id_admin` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chia_se_user`
--

INSERT INTO `tbl_chia_se_user` (`id_chia_se`, `ten`, `email`, `nghe_nghiep`, `loi_nhan`, `id_admin`) VALUES
(1, 'Trần Thị Thủy Tiên', NULL, 'Ca sĩ', 'Đây là một tổ chức rất ý nghĩa, cảm ơn đội ngũ đã thực hiện những chương trình giúp đỡ trẻ em.', 1),
(2, 'Nguyễn Phương Hằng', NULL, 'Doanh nhân', 'HELPV là một tổ chức tuyệt vời. Cảm ơn tất cả các bạn.', 1),
(3, 'Võ Hoài Linh', '', 'Nghệ sĩ', 'Thật tuyệt vời , các bạn đã thắp sáng thêm cho tương lai của những mần non đất nước.', 1),
(4, 'Lưu Mạnh Thắng', NULL, 'Giáo viên', 'Tôi đã trao đổi với người đứng đầu và tôi có niềm tin rằng tôi có thể yên tâm đầu tư từ thiện vào nơi đây.', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_su_kien`
--

CREATE TABLE `tbl_su_kien` (
  `id_su_kien` int(11) NOT NULL,
  `ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_to_chuc` date NOT NULL,
  `dia_diem` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thoi_gian` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `so_tien_ung_ho` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_su_kien`
--

INSERT INTO `tbl_su_kien` (`id_su_kien`, `ten`, `mo_ta`, `noi_dung`, `ngay_to_chuc`, `dia_diem`, `thoi_gian`, `image`, `so_tien_ung_ho`) VALUES
(2, 'Chiến dịch \"Em không lẻ loi\"', 'Chiến dịch hỗ trợ cho trẻ em mồ côi vì Covid-19 hướng đến mục tiêu kêu gọi ủng hộ từ các nguồn lực trong xã hội để cung cấp những hỗ trợ khẩn cấp cũng như dài hạn cho trẻ em có hoàn cảnh khó khăn mất cha/mẹ, hoặc người chăm sóc chính vì dịch bệnh Covid-19.', 'nội dung', '2021-11-15', 'Hồ Chí Minh', '8:00 - 16:00', 'img/im10.jpg', 0),
(4, 'Giúp đỡ trẻ em cơ nhỡ trên địa bàn Hà Nội', 'Các hoạt động của Dự án gồm: Tiếp cận với trẻ em và cung cấp, hỗ trợ khẩn cấp ban đầu cho các em nơi ở an toàn, dinh dưỡng, y tế, ăn mặc, trị liệu tâm lý…; hỗ trợ học phí và các chi phí học tập cho hơn 100 trẻ từ cấp TH tới THPT (học phí, bán trú, đồng phục, đồ dùng học tập…', 'nội dung', '2022-01-15', 'Hà Nội', '8:00 - 17:00', 'img/im9.jpg', 0),
(5, 'Tặng quà cho trẻ em nghèo vùng cao tỉnh Cao Bằng', 'Helpz tổ chức trao gần 200 xuất quà gồm: chăn, quần áo, giầy dép, đồ dùng học tập, nhu yếu phẩm... cho các em trường tiểu học Bản Lung và trường tiểu học, mẫu giáo Đoài Côn, xã Đoài Côn, huyện Trùng Khánh, tỉnh Cao Bằng.', '', '2022-05-01', 'Cao Bằng', '8:00 - 10:00', 'img/im4.jpg', 0),
(6, 'Xây dựng mái trường mới cho trẻ em bản Hốc Bon, tỉnh Sơn La', 'Để tạo một môi trường học tập thuận lợi cho những em nhỏ hiếu học trường Tiểu học Mường Khiêng 2, hãy chung tay cùng Helpv quyên góp  giúp các em nhỏ bản Hốc Bon có một ngôi trường mới.', 'nd', '2022-07-30', 'Sơn La', '8:00 - 20:00', 'img/im2.jpg', 0),
(7, '\"Dự án nuôi em\"', 'Với mong muốn cải thiện bữa trưa của những đứa trẻ đang “tuổi ăn tuổi lớn”, tháng 3/2022, Helpv kết hợp với Hội Phụ nữ (Công an huyện Mộc Châu) đã đề xuất ý tưởng, quyết định triển khai Dự án “Nuôi em Mộc Châu” tại Trường mầm non Lóng Sập.', 'nd', '2022-03-01', 'Mộc Châu', '10:00 - 18:00', 'img/im8.jpg', 0),
(8, 'Dự án \"Bước chân đi, niềm vui ở lại\"', 'Đoàn tình nguyện sẽ tới 10 điểm trường của xã Mường Toong thuộc các Bản Nậm Pan 1,2,3,4,5,6,7,8,9,10. Tại đây đoàn sẽ tổ chức giao lưu văn nghệ, giúp đỡ bà còn dọn dẹp thôn bản, phát quà cho trẻ em và các hộ gia đình còn khó khăn. ', 'nd', '2022-07-15', 'Điện Biên', '8:00 - 20:00', 'img/im1.jpg', 0),
(9, 'Áo ấm cho em', 'Quyên góp quần áo ấm và đồ dùng thiết yếu cho trẻ em xã Bình Trung, huyện Chợ Đồn, tỉnh Bắc Kạn.', 'nd', '2021-09-01', 'Bắc Kạn', '8:00 - 11:00', 'img/causes-2.jpg', 10000000),
(10, 'Bữa ăn dinh dưỡng cho trẻ', 'Cung cấp 205 bữa ăn lành mạnh cho các em nhỏ tại Trung tâm Nhân đạo Quê Hương (Bình Dương).', 'nd', '2021-06-08', 'Bình Dương', '8:00 - 19:00', 'img/causes-3.jpg', 8000000),
(11, 'Hỗ trợ học trực tuyến', 'Ủng hộ 40 chiếc điện thoại giúp các em nhỏ tại Bình Dương đủ điều kiện học tập.', 'nd', '2021-08-28', 'Bình Dương', '14:00 - 17:00', 'img/causes-4.jpg', 120000000),
(12, 'Thắp sáng ước mơ', 'Tại Yên Vui Pleiku – Gia Lai, Help đã hỗ trợ cho các em 100 bộ sách giáo khoa, 300 quyển vở và hàng trăm chiếc bút hỗ trợ học tập.', 'nd', '2021-09-16', 'Gia Lai', '8:00 - 11:00', 'img/b3.jpg', 20000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tham_gia`
--

CREATE TABLE `tbl_tham_gia` (
  `id_tham_gia` int(11) NOT NULL,
  `id_tnv` int(11) NOT NULL,
  `id_su_kien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tham_gia`
--

INSERT INTO `tbl_tham_gia` (`id_tham_gia`, `id_tnv`, `id_su_kien`) VALUES
(1, 1, 2),
(2, 2, 4),
(3, 3, 5),
(4, 4, 6),
(5, 5, 7),
(6, 6, 8),
(7, 7, 9),
(8, 8, 10),
(9, 9, 11),
(10, 10, 12),
(11, 11, 8),
(12, 12, 11),
(13, 13, 7),
(14, 13, 2),
(15, 15, 8),
(16, 16, 11),
(17, 17, 8),
(18, 18, 4),
(19, 19, 12),
(20, 20, 9),
(21, 19, 6),
(22, 20, 5),
(23, 21, 8),
(24, 22, 10),
(25, 23, 4),
(26, 24, 10),
(27, 25, 2),
(28, 26, 4),
(29, 27, 8),
(30, 29, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tinh_nguyen_vien`
--

CREATE TABLE `tbl_tinh_nguyen_vien` (
  `id_tnv` int(11) NOT NULL,
  `ten_nv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gioi_tinh` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tinh_nguyen_vien`
--

INSERT INTO `tbl_tinh_nguyen_vien` (`id_tnv`, `ten_nv`, `gioi_tinh`, `sdt`, `email`) VALUES
(1, 'Đặng Tuấn Anh', 'Nam', '0982349121', 'tuananh@gmail.com'),
(2, 'Lưu Trang Anh', 'Nữ', '0887765543', 'trangluu@gmail.com'),
(3, 'Trần Thị Minh Châu', 'Nữ', '0665534343', 'couchou@gmail.com'),
(4, 'Trần An Dương', 'Nam', '0982376121', 'anduong@gmail.com'),
(5, 'Nguyễn Lê Hiếu', 'Nam', '0634534343', 'hiuhiu@gmail.com'),
(6, 'Bùi Phương Thảo', 'Nữ', '0934349221', 'thaopthuonggg@gmail.com'),
(7, 'Lê Khánh Vy', 'Nữ', '0998334445', 'vyvovo@gmail.com'),
(8, 'Phạm Bảo Liên', 'Nữ', '0666778997', 'baoliennnnn@gmail.com'),
(9, 'Đỗ Văn Tấn', 'Nam', '0875432132', 'tantataann@gmail.com'),
(10, 'Trần Kim Ngân', 'Nữ', '0445566267', 'kimngannn@gmail.com'),
(11, 'Trần Uyên Nhi', 'Nữ', '0435672913', 'uyennhiiiii@gmail.com'),
(12, 'Nguyễn Hùng Anh', 'Nam', '0999993334', 'hunganhhh@gmail.com'),
(13, 'Nguyễn Ngọc Anh', 'Nữ', '0496813738', 'ngocaaaa@gmail.com'),
(14, 'Mai Tùng Bách', 'Nam', '066677776', 'bachtungggggn@gmail.com'),
(15, 'Nguyễn Trần Bình', 'Nam', '0877882132', 'tranbinnnn@gmail.com'),
(16, 'Vũ Điệp Chi', 'Nữ', '0666733442', 'diepchiiib@gmail.com'),
(17, 'Phạm Văn Đạt', 'Nam', '0809992132', 'datttvanpham@gmail.com'),
(18, 'Hoàng An Đông', 'Nam', '0933445121', 'andong@gmail.com'),
(19, 'Đặng Gia Hân', 'Nữ', '0634577788', 'hangiadang@gmail.com'),
(20, 'Lưu Ngọc Hiền', 'Nữ', '0922564121', 'ngohienjg@gmail.com'),
(21, 'Phạm Phương Hoa', 'Nữ', '0889577788', 'phunhoaoa@gmail.com'),
(22, 'Vũ Đức Huy', 'Nam', '0922522441', 'huyducucccg@gmail.com'),
(23, 'Vũ Thanh Huyền', 'Nữ', '0887677788', 'thanhhuyeenna@gmail.com'),
(24, 'Phạm Thu Huyền', 'Nữ', '0667782441', 'thuuyennnnncg@gmail.com'),
(25, 'Nguyễn Tuấn Hưng', 'Nam', '0833446588', 'tuanhungggg@gmail.com'),
(26, 'Lê Hoàng Anh', 'Nam', '0887730884', 'hoanganhh@gmail.com'),
(27, 'Trần An An', 'Nữ', '0988899977', 'anaann@gmail.com'),
(29, 'Nguyễn Quốc Huy', 'Nam', '0977403304', 'huynguyen@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ungho_vatchat`
--

CREATE TABLE `tbl_ungho_vatchat` (
  `id_vat_chat` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `phanloai` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_su_kien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ung_ho_da_xn`
--

CREATE TABLE `tbl_ung_ho_da_xn` (
  `id_xn` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `so_tien` bigint(50) NOT NULL,
  `anh_xac_nhan` text COLLATE utf8_unicode_ci NOT NULL,
  `id_su_kien` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ung_ho_tien`
--

CREATE TABLE `tbl_ung_ho_tien` (
  `id_ung_ho` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `so_tien` bigint(50) NOT NULL,
  `anh_xac_nhan` text COLLATE utf8_unicode_ci NOT NULL,
  `id_su_kien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  ADD PRIMARY KEY (`id_blog`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_chia_se_user`
--
ALTER TABLE `tbl_chia_se_user`
  ADD PRIMARY KEY (`id_chia_se`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_su_kien`
--
ALTER TABLE `tbl_su_kien`
  ADD PRIMARY KEY (`id_su_kien`);

--
-- Chỉ mục cho bảng `tbl_tham_gia`
--
ALTER TABLE `tbl_tham_gia`
  ADD PRIMARY KEY (`id_tnv`,`id_su_kien`),
  ADD UNIQUE KEY `id_tham_gia` (`id_tham_gia`),
  ADD KEY `id_su_kien` (`id_su_kien`);

--
-- Chỉ mục cho bảng `tbl_tinh_nguyen_vien`
--
ALTER TABLE `tbl_tinh_nguyen_vien`
  ADD PRIMARY KEY (`id_tnv`);

--
-- Chỉ mục cho bảng `tbl_ungho_vatchat`
--
ALTER TABLE `tbl_ungho_vatchat`
  ADD PRIMARY KEY (`id_vat_chat`),
  ADD KEY `id_su_kien` (`id_su_kien`);

--
-- Chỉ mục cho bảng `tbl_ung_ho_da_xn`
--
ALTER TABLE `tbl_ung_ho_da_xn`
  ADD PRIMARY KEY (`id_xn`),
  ADD KEY `id_su_kien` (`id_su_kien`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_ung_ho_tien`
--
ALTER TABLE `tbl_ung_ho_tien`
  ADD PRIMARY KEY (`id_ung_ho`),
  ADD KEY `id_su_kien` (`id_su_kien`);

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
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_chia_se_user`
--
ALTER TABLE `tbl_chia_se_user`
  MODIFY `id_chia_se` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_su_kien`
--
ALTER TABLE `tbl_su_kien`
  MODIFY `id_su_kien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_tham_gia`
--
ALTER TABLE `tbl_tham_gia`
  MODIFY `id_tham_gia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tbl_tinh_nguyen_vien`
--
ALTER TABLE `tbl_tinh_nguyen_vien`
  MODIFY `id_tnv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_ungho_vatchat`
--
ALTER TABLE `tbl_ungho_vatchat`
  MODIFY `id_vat_chat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_ung_ho_da_xn`
--
ALTER TABLE `tbl_ung_ho_da_xn`
  MODIFY `id_xn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_ung_ho_tien`
--
ALTER TABLE `tbl_ung_ho_tien`
  MODIFY `id_ung_ho` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD CONSTRAINT `tbl_blog_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id_admin`);

--
-- Các ràng buộc cho bảng `tbl_chia_se_user`
--
ALTER TABLE `tbl_chia_se_user`
  ADD CONSTRAINT `tbl_chia_se_user_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id_admin`);

--
-- Các ràng buộc cho bảng `tbl_tham_gia`
--
ALTER TABLE `tbl_tham_gia`
  ADD CONSTRAINT `tbl_tham_gia_ibfk_1` FOREIGN KEY (`id_su_kien`) REFERENCES `tbl_su_kien` (`id_su_kien`),
  ADD CONSTRAINT `tbl_tham_gia_ibfk_2` FOREIGN KEY (`id_tnv`) REFERENCES `tbl_tinh_nguyen_vien` (`id_tnv`);

--
-- Các ràng buộc cho bảng `tbl_ungho_vatchat`
--
ALTER TABLE `tbl_ungho_vatchat`
  ADD CONSTRAINT `tbl_ungho_vatchat_ibfk_1` FOREIGN KEY (`id_su_kien`) REFERENCES `tbl_su_kien` (`id_su_kien`);

--
-- Các ràng buộc cho bảng `tbl_ung_ho_da_xn`
--
ALTER TABLE `tbl_ung_ho_da_xn`
  ADD CONSTRAINT `tbl_ung_ho_da_xn_ibfk_1` FOREIGN KEY (`id_su_kien`) REFERENCES `tbl_su_kien` (`id_su_kien`),
  ADD CONSTRAINT `tbl_ung_ho_da_xn_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id_admin`);

--
-- Các ràng buộc cho bảng `tbl_ung_ho_tien`
--
ALTER TABLE `tbl_ung_ho_tien`
  ADD CONSTRAINT `tbl_ung_ho_tien_ibfk_1` FOREIGN KEY (`id_su_kien`) REFERENCES `tbl_su_kien` (`id_su_kien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
