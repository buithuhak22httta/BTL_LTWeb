-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 31, 2021 lúc 03:27 AM
-- Phiên bản máy phục vụ: 10.5.12-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id17854617_helpv_db`
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
  `thoi_gian` datetime NOT NULL DEFAULT current_timestamp(),
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`id_blog`, `ten`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `thoi_gian`, `id_admin`) VALUES
(1, '<p>&Aacute;o ấm cho em</p> ', '<p>Quy&ecirc;n g&oacute;p quần &aacute;o ấm v&agrave; đồ d&ugrave;ng thiết yếu cho trẻ em x&atilde; B&igrave;nh Trung, huyện Chợ Đồn, tỉnh Bắc Kạn.</p>', '<p>Với tinh thần tương th&acirc;n tương &aacute;i đ&oacute;, HELPV tổ chức chương tr&igrave;nh &ldquo;&Aacute;o ấm kết nối y&ecirc;u thương&rdquo; để mang niềm vui cho c&aacute;c em học sinh x&atilde; B&igrave;nh Trung, huyện Chợ Đồn , tỉnh Bắc Cạn. Những m&oacute;n qu&agrave; tuy nhỏ nhưng chứa đựng nghĩa t&igrave;nh, tiếp th&ecirc;m sức mạnh, nghị lực sống, vượt qua kh&oacute; khăn cho học sinh v&ugrave;ng cao để cập bến đến bến bờ tri thức; đồng thời, phần n&agrave;o xua tan đi c&aacute;i lạnh của m&ugrave;a đ&ocirc;ng băng gi&aacute;, mang đến cho c&aacute;c em một c&aacute;i Tết cổ truyền ấm &aacute;p, y&ecirc;u thương. Theo Ban tổ chức, x&atilde; B&igrave;nh Trung nằm c&aacute;ch trung t&acirc;m th&agrave;nh phố H&agrave; Nội 160km. Ng&agrave;y 23/11/2020, c&aacute;c t&igrave;nh nguyện vi&ecirc;n của sự kiện &ldquo;&Aacute;o ấm cho em&rdquo;&nbsp; đ&atilde; chọn 3 th&ocirc;n kh&oacute; khăn trong x&atilde; gồm: Bản P&egrave;o, Vằng Dọc, Khuổi Đẩy để tặng quần &aacute;o, s&aacute;ch vở tới học sinh tại c&aacute;c điểm trường. Cuộc sống người d&acirc;n ở đ&acirc;y rất kh&oacute; khăn, tr&ecirc;n 50% hộ ngh&egrave;o hoặc cận ngh&egrave;o. B&ecirc;n cạnh đ&oacute;, điều kiện gi&aacute;o dục c&ograve;n nhiều hạn chế. C&aacute;c em phải học gh&eacute;p nhiều độ tuổi trong c&ugrave;ng một lớp. Con đường đến trường xa x&ocirc;i đất đ&aacute; lầy lội. Tuy vậy, kh&aacute;t khao được cắp s&aacute;ch tới trường vẫn lu&ocirc;n ch&aacute;y bỏng trong c&aacute;c em. Ngo&agrave;i ra, c&aacute;c em ở đ&acirc;y thiếu thốn quần &aacute;o ấm, trời lạnh kh&ocirc;ng c&oacute; tất đeo, ngủ trưa phải nằm tr&ecirc;n nền nh&agrave; lạnh.</p><p>Đ&acirc;y l&agrave; hoạt động mang &yacute; nghĩa thiết thực, thể hiện sự quan t&acirc;m, gi&uacute;p đỡ của Helpv chia sẻ kh&oacute; khăn trong cuộc sống với trẻ em nghèo , kh&oacute; khăn của đồng b&agrave;o d&acirc;n tộc tr&ecirc;n địa b&agrave;n x&atilde;, hướng đến một c&aacute;i T&ecirc;́t cổ truyền vui tươi, đầm ấm. Nh&oacute;m t&igrave;nh nguyện \"&Aacute;o ấm cho em\" được th&agrave;nh lập hầu hết l&agrave; sinh vi&ecirc;n c&aacute;c trường đại học tr&ecirc;n địa b&agrave;n th&agrave;nh phố H&agrave; Nội. Nh&oacute;m mong muốn tạo n&ecirc;n những phong tr&agrave;o quy&ecirc;n g&oacute;p, chia sẻ trong cộng đồng sinh vi&ecirc;n n&oacute;i ri&ecirc;ng v&agrave; to&agrave;n thể x&atilde; hội n&oacute;i chung. Đối tượng nh&oacute;m hướng tới l&agrave; những trẻ em kh&oacute; khăn tr&ecirc;n địa b&agrave;n cả nước như: T&acirc;y Bắc, Đ&ocirc;ng Bắc, c&aacute;c v&ugrave;ng đồng b&agrave;o d&acirc;n tộc thiểu số.</p><p>&nbsp;</p>', 'img/blog1.jfif', '2021-10-29 15:21:16', 1),
(2, '<p>Bữa ăn dinh dưỡng cho trẻ</p> ', '<p>Cung cấp 205 bữa ăn l&agrave;nh mạnh cho c&aacute;c em nhỏ tại Trung t&acirc;m Nh&acirc;n đạo Qu&ecirc; Hương (B&igrave;nh Dương).</p>', '<p>Đ&atilde; hai tuần nay, cuộc sống của 205 em nhỏ tại Trung t&acirc;m Nh&acirc;n đạo Qu&ecirc; Hương (Dĩ An, B&igrave;nh Dương) được duy tr&igrave; bằng nguồn thức ăn dự trữ &iacute;t ỏi c&ograve;n lại do c&aacute;c mạnh thường qu&acirc;n hỗ trợ từ đầu th&aacute;ng 7. Mỗi ng&agrave;y c&aacute;c em vẫn được duy tr&igrave; đủ 2 bữa ch&iacute;nh nhưng với nguồn thực phẩm vơi dần, bữa ăn cũng được g&oacute;i gh&eacute;m gọn g&agrave;ng v&agrave; đơn giản nhất, c&oacute; bữa l&agrave; cơm với &iacute;t thịt, c&oacute; bữa l&agrave; cơm v&agrave; rau.</p><p>Anh Trần Xu&acirc;n Chinh, Phụ tr&aacute;ch h&agrave;nh ch&iacute;nh tại Trung t&acirc;m Nh&acirc;n đạo Qu&ecirc; Hương cho biết: \"Hầu hết mạnh thường qu&acirc;n hỗ trợ lương thực cho ch&uacute;ng t&ocirc;i l&agrave; c&aacute;c c&ocirc; ch&uacute; tiểu thương tại chợ đầu mối B&igrave;nh Điền, H&oacute;c M&ocirc;n v&agrave; Thủ Đức, nhưng từ l&uacute;c c&aacute;c chợ bị đ&oacute;ng cửa để chống dịch, nguồn hỗ trợ thức ăn bị ngưng đột ngột n&ecirc;n ch&uacute;ng t&ocirc;i phải tự xoay sở\". Sự \"tự xoay sở\" m&agrave; anh T&iacute;nh kể l&agrave; việc Trung t&acirc;m mua gối đầu (mua trước, trả tiền sau) một số mặt h&agrave;ng thiết yếu để duy tr&igrave; bữa ăn cho c&aacute;c em</p><p>Để ph&ograve;ng chống dịch Covid-19, Trung t&acirc;m Nu&ocirc;i dưỡng Trẻ mồ c&ocirc;i v&agrave; Người cao tuổi c&ocirc; đơn Bồ Đề (Thuận An, B&igrave;nh Dương) đ&atilde; đ&oacute;ng cửa hai th&aacute;ng nay. Biết rằng ai cũng kh&oacute; khăn giai đoạn n&agrave;y n&ecirc;n c&aacute;c sư c&ocirc; đ&atilde; chủ động c&aacute;c bữa cơm chay đơn giản cho 50 em nhỏ. Ni sư Từ Thảo, quản l&yacute; Trung t&acirc;m Bồ Đề cho biết: \"Cũng c&oacute; một hai lần ch&uacute;ng t&ocirc;i được hỗ trợ thực phẩm, c&ograve;n lại th&igrave; vẫn l&agrave; trồng g&igrave; ăn nấy, chủ yếu l&agrave; c&aacute;c ch&aacute;u ăn chay c&ugrave;ng c&aacute;c sư c&ocirc;, khi th&igrave; rau luộc, khi th&igrave; đậu hủ chi&ecirc;n...\".</p><p>Trung t&acirc;m Nh&acirc;n đạo Qu&ecirc; Hương hay Trung t&acirc;m Nu&ocirc;i dưỡng Trẻ mồ c&ocirc;i v&agrave; Người cao tuổi c&ocirc; đơn Bồ Đề l&agrave; hai trong số nhiều m&aacute;i ấm x&atilde; hội gặp kh&oacute; khăn trong giai đoạn Covid-19 lần thứ 4 khi nguồn hỗ trợ từ mạnh thường qu&acirc;n giảm đi. Thầy Hải, quản l&lrm;&yacute; Cơ sở Bảo trợ X&atilde; hội ch&ugrave;a Kỳ Quang (quận G&ograve; Vấp, TP HCM) cho biết: \"Đợt dịch n&agrave;y kh&ocirc;ng c&oacute; người đến thăm n&ecirc;n nguồn hỗ trợ từ mạnh thường qu&acirc;n ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute;. Mọi chi ph&iacute; đều sử dụng từ nguồn tiết kiệm của ch&ugrave;a. May mắn l&agrave; vẫn c&oacute; hai, ba lần ch&uacute;ng t&ocirc;i được c&aacute;c nh&oacute;m t&igrave;nh nguyện hỗ trợ rau củ\".</p><p>Triệu bữa ăn dinh dưỡng - ấm l&ograve;ng m&ugrave;a dịch</p><p>Trước diễn biến phức tạp của dịch bệnh v&agrave; ho&agrave;n cảnh kh&oacute; khăn của c&aacute;c em mồ c&ocirc;i, khuyết tật, Quỹ&nbsp; hỗ trợ trẻ em khăn HELPV thực hiện chương tr&igrave;nh &ldquo; BỮA ĂN DINH DƯỠNG CHO TRẺ EM \" ngay giai đoạn cao điểm của dịch Covid-19. Đ&acirc;y l&agrave; những sản phẩm đ&atilde; được HELPV chọn lọc kỹ lưỡng nhằm bổ sung nguồn dinh dưỡng mỗi ng&agrave;y cho c&aacute;c em.</p><p>&nbsp;</p>', 'img/b2.jpg', '2021-10-29 15:20:18', 1),
(3, '<p>Hỗ trợ học trực tuyến</p> ', '<p>Ủng hộ 40 chiếc điện thoại gi&uacute;p c&aacute;c em nhỏ tại B&igrave;nh Dương đủ điều kiện học tập.</p>', '<p>nd</p>', 'img/causes-4.jpg', '2021-10-29 15:19:03', 1),
(4, '<p>Thắp s&aacute;ng ước mơ&nbsp;</p> ', '<p>Tại Y&ecirc;n Vui Pleiku &ndash; Gia Lai, Help đ&atilde; hỗ trợ cho c&aacute;c em 100 bộ s&aacute;ch gi&aacute;o khoa, 300 quyển vở v&agrave; h&agrave;ng trăm chiếc b&uacute;t hỗ trợ học tập.</p>', '<p>nd</p>', 'img/b3.jpg', '2021-10-29 15:18:25', 1),
(5, '<p>Tết Trung Thu thời Covid</p> ', '<p>Helpv đ&atilde; tổ chức tiệc trung thu v&agrave; tặng qu&agrave; cho c&aacute;c em nhỏ tại l&agrave;ng trẻ SOS tại Quảng Ng&atilde;i để gi&uacute;p c&aacute;c em c&oacute; một c&aacute;i tết to&agrave;n vi&ecirc;n thật đầm ấm .</p>', '<p>nd</p>', 'img/b22.jpg', '2021-10-29 15:17:16', 1),
(6, '<p>Nụ cười trẻ</p> ', '<p>Heplv t&agrave;i trợ cho 10 em nhỏ bị hở h&agrave;m ếch tại t&igrave;nh H&agrave; Giang c&oacute; ho&agrave;n cảnh kh&oacute; khăn được phẫu thuật t&igrave;m lại nụ cười .</p>', '<p>nd</p>', 'img/b4.jpg', '2021-10-29 15:16:22', 1),
(7, '<p>Tấm gương s&aacute;ng</p> ', '<p>Em L&ugrave;i Thị M&iacute;a một học sinh ngh&egrave;o tại khu vực miền n&uacute;i kh&oacute; khăn nhất tỉnh Sơn La. Đ&atilde; xuất sắc đỗ trường Học viện Ng&acirc;n H&agrave;ng nhưng ho&agrave;n cảnh kh&oacute; khăn, em kh&ocirc;ng đủ điều kiện tới trường. Nhờ sự gi&uacute;p đỡ của quỹ học bổng HELPV em đ&atilde; c&oacute; cơ hội tiếp tục con đường học tập v&agrave; gi&agrave;nh nhiều th&agrave;nh t&iacute;ch cao trong học tập.</p>', '<p>nd</p>', 'img/blog-1.jpg', '2021-10-29 15:14:11', 1),
(8, '<p>Tr&aacute;i tim trở lại</p> ', '<p>Em La Pu S&aacute; bị mắc bệnh tim bẩm sinh, gia đ&igrave;nh ho&agrave;n cảnh kh&oacute; khăn kh&ocirc;ng đủ điều kiện chữa trị cho em. C&aacute;c nh&agrave; hảo t&acirc;m v&agrave; t&igrave;nh nguyện vi&ecirc;n của HELPV đ&atilde; t&agrave;i trợ v&agrave; gi&uacute;p đỡ tạo điều kiện cho em được phẫu thuật th&agrave;nh c&ocirc;ng. Hiện tại, em đ&atilde; ho&agrave;n to&agrave;n b&igrave;nh phục.</p>', '<p>nd</p>', 'img/blog-2.jpg', '2021-10-29 15:13:27', 2),
(9, '<p>Ng&ocirc;i nh&agrave; mới</p> ', '<p>Hai anh em Vũ Văn An v&agrave; Vũ Văn B&igrave;nh mất đi cả người th&acirc;n lẫn ng&ocirc;i nh&agrave; gắn b&oacute; hơn 10 năm sau trận lũ lụt năm 2020. Nhờ quỹ M&aacute;i ấm cho em của HELPV, th&aacute;ng 12 năm 2020 c&aacute;c em đ&atilde; c&oacute; một ng&ocirc;i nh&agrave; mới.</p>', '<p>nd</p>', 'img/blog-3.jpg', '2021-10-29 15:12:13', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chia_se_user`
--

CREATE TABLE `tbl_chia_se_user` (
  `id_chia_se` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nghe_nghiep` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loi_nhan` text COLLATE utf8_unicode_ci NOT NULL,
  `id_admin` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chia_se_user`
--

INSERT INTO `tbl_chia_se_user` (`id_chia_se`, `ten`, `email`, `nghe_nghiep`, `loi_nhan`, `id_admin`) VALUES
(1, 'Trần Thị Thủy Tiên', '', 'Ca sĩ', 'Đây là một tổ chức rất ý nghĩa, cảm ơn đội ngũ đã thực hiện những chương trình giúp đỡ trẻ em.', 1),
(2, 'Nguyễn Phương Hằng', '', 'Doanh nhân', 'HELPV là một tổ chức tuyệt vời. Cảm ơn tất cả các bạn.', 1),
(3, 'Võ Hoài Linh', '', 'Nghệ sĩ', 'Thật tuyệt vời , các bạn đã thắp sáng thêm cho tương lai của những mần non đất nước.', 1),
(4, 'Lưu Mạnh Thắng', '', 'Giáo viên', 'Tôi đã trao đổi với người đứng đầu và tôi có niềm tin rằng tôi có thể yên tâm đầu tư từ thiện vào nơi đây.', 1),
(5, 'Bùi Thu Hà', 'thuhak22ba@gmail.com', 'sinh viên', 'Cảm ơn các bạn', 1),
(7, 'Bùi Thu Hà', '', 'sinh viên', 'thanks', 1);

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
(2, '<p>Chiến dịch em kh&ocirc;ng lẻ loi</p>', '<p>Chiến dịch hỗ trợ cho trẻ em mồ c&ocirc;i v&igrave; Covid-19 hướng đến mục ti&ecirc;u k&ecirc;u gọi ủng hộ từ c&aacute;c nguồn lực trong x&atilde; hội để cung cấp những hỗ trợ khẩn cấp cũng như d&agrave;i hạn cho trẻ em c&oacute; ho&agrave;n cảnh kh&oacute; khăn mất cha/mẹ, hoặc người chăm s&oacute;c ch&iacute;nh v&igrave; dịch bệnh Covid-19.</p>', '<p class=\"MsoNormal\">&nbsp;</p><p class=\"MsoNormal\"><span lang=\"EN-US\">Chương tr&igrave;nh hướng đến mục ti&ecirc;u k&ecirc;u gọi ủng hộ từ c&aacute;c nguồn lực trong x&atilde; hội để cung cấp những hỗ trợ khẩn cấp cũng như d&agrave;i hạn cho trẻ em c&oacute; ho&agrave;n cảnh kh&oacute; khăn mất cha/mẹ, hoặc người chăm s&oacute;c ch&iacute;nh v&igrave; dịch bệnh Covid-19.</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">Ba tổ chức tham gia sự kiện n&agrave;y c&oacute; Saigon Children&rsquo;s Charity (Saigonchildren), Viện Nghi&ecirc;n cứu quản l&yacute; ph&aacute;t triển bền vững (MSD), v&agrave; Trung t&acirc;m N&acirc;ng cao năng lực, hỗ trợ phụ nữ v&agrave; trẻ em (CSWC).</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">Theo ước t&iacute;nh của ng&agrave;nh gi&aacute;o dục, chỉ ri&ecirc;ng TP Hồ Ch&iacute; Minh đ&atilde; c&oacute; 1.517 trẻ em ở c&aacute;c cấp học rơi v&agrave;o cảnh mồ c&ocirc;i v&igrave; Covid-19 trong v&ograve;ng v&agrave;i th&aacute;ng qua. C&oacute; thể, con số n&agrave;y c&ograve;n lớn hơn nhiều nếu t&iacute;nh cả c&aacute;c em kh&ocirc;ng nằm trong hệ thống gi&aacute;o dục v&agrave; tại c&aacute;c tỉnh, th&agrave;nh phố kh&aacute;c của đất nước.</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">B&ecirc;n cạnh sự hỗ trợ của ch&iacute;nh quyền, việc tham gia của c&aacute;c tổ chức phi ch&iacute;nh phủ chuy&ecirc;n hỗ trợ trẻ em l&agrave; v&ocirc; c&ugrave;ng cần thiết trong việc tập trung nguồn lực để ph&acirc;n bổ một c&aacute;ch minh bạch v&agrave; hiệu quả...</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">Chiến dịch n&agrave;y hướng tới hỗ trợ trẻ em c&oacute; ho&agrave;n cảnh kh&oacute; khăn mồ c&ocirc;i do Covid-19 trong mạng lưới của c&aacute;c tổ chức tham gia. Đồng thời, mở đơn đăng k&yacute; để cộng đồng c&oacute; thể gửi th&ocirc;ng tin về c&aacute;c ho&agrave;n cảnh mồ c&ocirc;i cần gi&uacute;p đỡ tại trang web https://emkhongleloi.com.</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">&ldquo;Em kh&ocirc;ng lẻ loi&rdquo; đặt mục ti&ecirc;u kh&ocirc;ng chỉ tập trung v&agrave;o hỗ trợ trẻ về mặt t&agrave;i ch&iacute;nh, m&agrave; c&ograve;n chăm s&oacute;c trẻ về mặt tinh thần.</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">Với kinh nghiệm đa dạng v&agrave; chuy&ecirc;n m&ocirc;n về c&ocirc;ng t&aacute;c x&atilde; hội, c&aacute;c tổ chức tham gia c&oacute; thể gi&uacute;p trẻ giảm nhẹ những sang chấn sau khi mất người th&acirc;n, tư vấn một c&aacute;ch c&oacute; tr&aacute;ch nhiệm về c&aacute;c vấn đề xoay quanh cuộc sống v&agrave; gi&aacute;o dục, kh&iacute;ch lệ v&agrave; hỗ trợ trẻ ph&aacute;t triển bản th&acirc;n, cũng như tạo ra một tấm lưới an to&agrave;n n&acirc;ng đỡ trẻ khi cha hoặc mẹ kh&ocirc;ng c&ograve;n. Sự phối hợp của c&aacute;c tổ chức gi&uacute;p trẻ vượt qua c&uacute; sốc về t&acirc;m l&yacute; của việc mất đi cha mẹ, v&agrave; ngăn chặn bi kịch n&agrave;y ảnh hưởng đến tiềm năng của trẻ.</span></p>', '2021-11-15', 'Hồ Chí Minh', '8:00 - 16:00', 'img/im10.jpg', 10000000),
(4, '<p>Gi&uacute;p đỡ trẻ em cơ nhỡ tr&ecirc;n địa b&agrave;n H&agrave; Nội</p>', '<p>C&aacute;c hoạt động của Dự &aacute;n gồm: Tiếp cận với trẻ em v&agrave; cung cấp, hỗ trợ khẩn cấp ban đầu cho c&aacute;c em nơi ở an to&agrave;n, dinh dưỡng, y tế, ăn mặc, trị liệu t&acirc;m l&yacute;&hellip;; hỗ trợ học ph&iacute; v&agrave; c&aacute;c chi ph&iacute; học tập cho hơn 100 trẻ từ cấp TH tới THPT (học ph&iacute;, b&aacute;n tr&uacute;, đồng phục, đồ d&ugrave;ng học tập&hellip;</p>', '<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\"><span lang=\"EN-US\">C&aacute;c hoạt động của Dự &aacute;n gồm: Tiếp cận với trẻ em v&agrave; cung cấp, hỗ trợ khẩn cấp ban đầu cho c&aacute;c em nơi ở an to&agrave;n, dinh dưỡng, y tế, ăn mặc, trị liệu t&acirc;m l&yacute;&hellip;; hỗ trợ học ph&iacute; v&agrave; c&aacute;c chi ph&iacute; học tập cho hơn 100 trẻ từ cấp TH tới THPT (học ph&iacute;, b&aacute;n tr&uacute;, đồng phục, đồ d&ugrave;ng học tập&hellip; </span></p><p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\"><span lang=\"EN-US\">Nh&agrave; nước v&agrave; nh&acirc;n d&acirc;n Việt Nam lu&ocirc;n coi trọng việc bảo vệ, chăm s&oacute;c v&agrave; gi&aacute;o dục trẻ em, trong đ&oacute; c&oacute; những trẻ em c&oacute; ho&agrave;n cảnh kh&oacute; khăn, trẻ em lang thang cơ nhỡ. Đ&acirc;y l&agrave; tr&aacute;ch nhiệm của Nh&agrave; nước, x&atilde; hội cũng như của từng gia đ&igrave;nh. Đồng thời, đ&acirc;y cũng l&agrave; một truyền thống đạo l&yacute; của d&acirc;n tộc Việt Nam.</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">Để gi&uacute;p c&aacute;c trẻ em c&oacute; ho&agrave;n cảnh kh&oacute; khăn, lang thang cơ nhỡ, Ch&iacute;nh phủ đ&atilde; ban h&agrave;nh nhiều ch&iacute;nh s&aacute;ch cụ thể về chăm s&oacute;c sức khỏe, gi&aacute;o dục&hellip; đối với trẻ em; đề ra những biện ph&aacute;p nhằm bảo vệ c&aacute;c em khỏi nguy cơ bị lạm dụng sức lao động; ph&ograve;ng ngừa trẻ em bị x&acirc;m hại nh&acirc;n phẩm, danh dự, bị x&acirc;m hại t&igrave;nh dục; ph&ograve;ng chống tệ nạn sử dụng ma t&uacute;y trong trẻ em...</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">C&aacute;c ng&agrave;nh v&agrave; địa phương, trong đ&oacute; c&oacute; th&agrave;nh phố H&agrave; Nội, đ&atilde; triển khai nhiều dự &aacute;n gi&uacute;p đỡ trẻ em lang thang cơ nhỡ, đưa c&aacute;c em trở về đo&agrave;n tụ gia đ&igrave;nh. Đối với những em kh&ocirc;ng thể trở về gia đ&igrave;nh th&igrave; được chăm s&oacute;c sức khoẻ, tư vấn, dạy nghề. Tất cả c&aacute;c biện ph&aacute;p đều nhằm tạo điều kiện để c&aacute;c trẻ em c&oacute; ho&agrave;n cảnh kh&oacute; khăn, lang thang cơ nhỡ được bảo vệ, chăm s&oacute;c, gi&aacute;o dục v&agrave; ph&aacute;t triển to&agrave;n diện, c&oacute; cuộc sống ng&agrave;y c&agrave;ng tốt đẹp hơn.</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">Việt Nam l&agrave; một trong những nước đầu ti&ecirc;n tr&ecirc;n thế giới k&yacute; v&agrave; ph&ecirc; chuẩn C&ocirc;ng ước Quốc tế về Quyền trẻ em v&agrave; đ&atilde; t&iacute;ch cực thực hiện cam kết v&agrave; hợp t&aacute;c với cộng đồng quốc tế nhằm cải thiện ph&uacute;c lợi trẻ em trong điều kiện thu nhập b&igrave;nh qu&acirc;n đầu người c&ograve;n thấp. Những nỗ lực của Việt Nam trong việc chăm s&oacute;c v&agrave; bảo vệ trẻ em đ&atilde; được Li&ecirc;n Hợp Quốc, trong đ&oacute; c&oacute; tổ chức UNICEF, ghi nhận v&agrave; đ&aacute;nh gi&aacute; cao.</span></p>', '2022-01-15', 'Hà Nội', '8:00 - 17:00', 'img/im9.jpg', 10000000),
(5, '<p>Tặng qu&agrave; cho trẻ em ngh&egrave;o v&ugrave;ng cao tỉnh Cao Bằng</p>', '<p>Helpz tổ chức trao gần 200 xuất qu&agrave; gồm: chăn, quần &aacute;o, giầy d&eacute;p, đồ d&ugrave;ng học tập, nhu yếu phẩm... cho c&aacute;c em trường tiểu học Bản Lung v&agrave; trường tiểu học, mẫu gi&aacute;o Đo&agrave;i C&ocirc;n, x&atilde; Đo&agrave;i C&ocirc;n, huyện Tr&ugrave;ng Kh&aacute;nh, tỉnh Cao Bằng.</p>', '<p>nd</p>', '2022-05-01', 'Cao Bằng', '8:00 - 10:00', 'img/im4.jpg', 4000000),
(6, '<p>X&acirc;y dựng m&aacute;i trường mới cho trẻ em bản Hốc Bon, tỉnh Sơn La</p>', '<p>Để tạo một m&ocirc;i trường học tập thuận lợi cho những em nhỏ hiếu học trường Tiểu học Mường Khi&ecirc;ng 2, h&atilde;y chung tay c&ugrave;ng Helpv quy&ecirc;n g&oacute;p&nbsp; gi&uacute;p c&aacute;c em nhỏ bản Hốc Bon c&oacute; một ng&ocirc;i trường mới.</p>', '<p>nd</p>', '2022-07-30', 'Sơn La', '8:00 - 20:00', 'img/im2.jpg', 500000),
(7, '<p>\"Dự &aacute;n nu&ocirc;i em\"</p>', '<p>Với mong muốn cải thiện bữa trưa của những đứa trẻ đang &ldquo;tuổi ăn tuổi lớn&rdquo;, th&aacute;ng 3/2022, Helpv kết hợp với Hội Phụ nữ (C&ocirc;ng an huyện Mộc Ch&acirc;u) đ&atilde; đề xuất &yacute; tưởng, quyết định triển khai Dự &aacute;n &ldquo;Nu&ocirc;i em Mộc Ch&acirc;u&rdquo; tại Trường mầm non L&oacute;ng Sập.</p>', '<p>nd</p>', '2022-03-01', 'Mộc Châu', '10:00 - 18:00', 'img/im8.jpg', 300000),
(8, '<p>Dự &aacute;n \"Bước ch&acirc;n đi, niềm vui ở lại\"</p>', '<p>Đo&agrave;n t&igrave;nh nguyện sẽ tới 10 điểm trường của x&atilde; Mường Toong thuộc c&aacute;c Bản Nậm Pan 1,2,3,4,5,6,7,8,9,10. Tại đ&acirc;y đo&agrave;n sẽ tổ chức giao lưu văn nghệ, gi&uacute;p đỡ b&agrave; c&ograve;n dọn dẹp th&ocirc;n bản, ph&aacute;t qu&agrave; cho trẻ em v&agrave; c&aacute;c hộ gia đ&igrave;nh c&ograve;n kh&oacute; khăn.</p>', '<p>nd</p>', '2022-07-15', 'Điện Biên', '8:00 - 20:00', 'img/im1.jpg', 10000000),
(9, '<p>&Aacute;o ấm cho em</p>', '<p>Quy&ecirc;n g&oacute;p quần &aacute;o ấm v&agrave; đồ d&ugrave;ng thiết yếu cho trẻ em x&atilde; B&igrave;nh Trung, huyện Chợ Đồn, tỉnh Bắc Kạn.</p>', '<p>nd</p>', '2021-09-01', 'Bắc Kạn', '8:00 - 11:00', 'img/causes-2.jpg', 10000000),
(10, '<p>Bữa ăn dinh dưỡng cho trẻ</p>', '<p>Cung cấp 205 bữa ăn l&agrave;nh mạnh cho c&aacute;c em nhỏ tại Trung t&acirc;m Nh&acirc;n đạo Qu&ecirc; Hương (B&igrave;nh Dương).</p>', '<p>nd</p>', '2021-06-08', 'Bình Dương', '8:00 - 19:00', 'img/causes-3.jpg', 8000000),
(11, '<p>Hỗ trợ học trực tuyến</p>', '<p>Ủng hộ 40 chiếc điện thoại gi&uacute;p c&aacute;c em nhỏ tại B&igrave;nh Dương đủ điều kiện học tập.</p>', '<p>nd</p>', '2021-08-28', 'Bình Dương', '14:00 - 17:00', 'img/causes-4.jpg', 120000000),
(12, '<p>Thắp s&aacute;ng ước mơ</p>', '<p>Tại Y&ecirc;n Vui Pleiku &ndash; Gia Lai, Help đ&atilde; hỗ trợ cho c&aacute;c em 100 bộ s&aacute;ch gi&aacute;o khoa, 300 quyển vở v&agrave; h&agrave;ng trăm chiếc b&uacute;t hỗ trợ học tập.</p><p>&nbsp;</p>', '<p>nd</p>', '2021-09-16', 'Gia Lai', '8:00 - 11:00', 'img/b3.jpg', 20000000);

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
(30, 29, 11),
(31, 30, 4);

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
(1, 'Hoàng Tuấn Anh', 'Nam', '0982349121', 'tuananh@gmail.com'),
(2, 'Lê Trang Anh', 'Nữ', '0887765543', 'trangluu@gmail.com'),
(3, 'Trần Minh Châu', 'Nữ', '0665534343', 'couchou@gmail.com'),
(4, 'Trần An Dương', 'Nam', '0982376121', 'anduong@gmail.com'),
(5, 'Nguyễn Lê Hiếu', 'Nam', '0634534343', 'hiuhiu@gmail.com'),
(6, 'Bùi Phương Thảo', 'Nữ', '0934349221', 'thaopthuonggg@gmail.com'),
(7, 'Lâm Khánh Vy', 'Nữ', '0998334445', 'vyvovo@gmail.com'),
(8, 'Phạm Bách Liên', 'Nữ', '0666778997', 'baoliennnnn@gmail.com'),
(9, 'Trần Tấn Minh', 'Nam', '0875432132', 'tantataann@gmail.com'),
(10, 'Trần Kim Ngân', 'Nữ', '0445566267', 'kimngannn@gmail.com'),
(11, 'Trần Uyên Nhi', 'Nữ', '0435672913', 'uyennhiiiii@gmail.com'),
(12, 'Nguyễn Hoàng Anh', 'Nam', '0999993334', 'hunganhhh@gmail.com'),
(13, 'Nguyễn Ngọc Anh', 'Nữ', '0496813738', 'ngocaaaa@gmail.com'),
(14, 'Mai Bách Tùng', 'Nam', '066677776', 'bachtungggggn@gmail.com'),
(15, 'Nguyễn Trần Bình', 'Nam', '0877882132', 'tranbinnnn@gmail.com'),
(16, 'Vũ An Chi', 'Nữ', '0666733442', 'diepchiiib@gmail.com'),
(17, 'Phạm Văn Đạt', 'Nam', '0809992132', 'datttvanpham@gmail.com'),
(18, 'Hoàng Anh Tú', 'Nam', '0933445121', 'andong@gmail.com'),
(19, 'Đặng Gia Hân', 'Nữ', '0634577788', 'hangiadang@gmail.com'),
(20, 'Lê Ngọc Anh', 'Nữ', '0922564121', 'ngohienjg@gmail.com'),
(21, 'Phạm Phương Hoa', 'Nữ', '0889577788', 'phunhoaoa@gmail.com'),
(22, 'Vũ Văn Huy', 'Nam', '0922522441', 'huyducucccg@gmail.com'),
(23, 'Vũ Thanh Huyền', 'Nữ', '0887677788', 'thanhhuyeenna@gmail.com'),
(24, 'Phạm  Thu Huyền', 'Nữ', '0667782441', 'thuuyennnnncg@gmail.com'),
(25, 'Nguyễn Tuấn Hùng', 'Nam', '0833446588', 'tuanhungggg@gmail.com'),
(26, 'Lê Hoàng Anh', 'Nam', '0887730884', 'hoanganhh@gmail.com'),
(27, 'Trần An An', 'Nữ', '0988899977', 'anaann@gmail.com'),
(29, 'Nguyễn Quang Huy', 'Nam', '0977403304', 'huynguyen@gmail.com'),
(30, 'Trần Xuân Bo', 'Nam', '0365789456', 'ngungoc@gmail.com'),
(31, '', '', '', '');

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
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `trang_thai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_su_kien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ungho_vatchat`
--

INSERT INTO `tbl_ungho_vatchat` (`id_vat_chat`, `ten`, `sdt`, `email`, `phanloai`, `time`, `trang_thai`, `id_su_kien`) VALUES
(6, 'Oanh Hà Nam', '0123456789', 'vp@gmail.com', 'quần áo mua ở quán thì đẹp mang về lại thấy xấu nên ko mặc, có lòng quyên góp', '2021-10-08 00:00:00', 'Công khai', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ung_ho_da_xn`
--

CREATE TABLE `tbl_ung_ho_da_xn` (
  `id_xn` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_tien` bigint(50) NOT NULL,
  `anh_xac_nhan` text COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_su_kien` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ung_ho_da_xn`
--

INSERT INTO `tbl_ung_ho_da_xn` (`id_xn`, `time`, `ten`, `dien_thoai`, `email`, `so_tien`, `anh_xac_nhan`, `trang_thai`, `id_su_kien`, `id_admin`) VALUES
(18, '2021-10-30 00:00:00', 'Trần Xuân Bo', '0988665667', 'booo@gmail.com', 300000, 'img/anhxn/da.jpg', 'Công khai', 7, 1),
(19, '2021-10-29 00:00:00', 'Huỳnh Thảo Ly', '0998877761', 'lyyyyy@gmail.com', 4000000, 'img/anhxn/da.jpg', 'Công khai', 5, 1),
(20, '2021-10-28 00:00:00', 'Bùi Thu Hà', '0367997052', 'thuhak22ba@gmail.com', 10000000, 'img/anhxn/17.jpg', 'Công khai', 2, 1),
(21, '2021-10-29 00:00:00', '', '0998877761', 'takimoanhmis@gmail.com', 10000000, 'img/anhxn/nguyen-tac-chup-hinh.jpg', 'Không', 4, 1),
(22, '2021-10-29 00:00:00', 'Tống Thị Hương', '0973844569', 'huongtongthi78@gmail.com', 10000000, 'img/anhxn/FB_IMG_1635389914306.jpg', 'Công khai', 8, 1),
(23, '2021-10-30 00:00:00', '', '', '', 500000, 'img/anhxn/kq3.jpg', 'Không', 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ung_ho_tien`
--

CREATE TABLE `tbl_ung_ho_tien` (
  `id_ung_ho` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_tien` bigint(50) NOT NULL,
  `anh_xac_nhan` text COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_su_kien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ung_ho_tien`
--

INSERT INTO `tbl_ung_ho_tien` (`id_ung_ho`, `time`, `ten`, `dien_thoai`, `email`, `so_tien`, `anh_xac_nhan`, `trang_thai`, `id_su_kien`) VALUES
(10, '2021-10-30 00:00:00', 'Bùi Thu Hà', '', '', 1500000, 'img/anhxn/kq3.jpg', 'Công khai', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ung_ho_vatchat_da_xn`
--

CREATE TABLE `tbl_ung_ho_vatchat_da_xn` (
  `id_vc_xn` int(11) NOT NULL,
  `time` date NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `phanloai` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_su_kien` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ung_ho_vatchat_da_xn`
--

INSERT INTO `tbl_ung_ho_vatchat_da_xn` (`id_vc_xn`, `time`, `ten`, `dien_thoai`, `email`, `phanloai`, `trang_thai`, `id_su_kien`, `id_admin`) VALUES
(10, '2021-10-31', 'Trần Xuân Bo', '0988327333', 'tranxuanchinhxt20012@gmail.com', 'Đồ dùng học tập', 'Công khai', 5, 1),
(11, '2021-10-29', 'Nguyễn Quốc Huy', '0977403309', 'quy@gmailcom', 'Thiết bị điện tử', 'Công khai', 6, 1),
(12, '2021-10-30', 'Trần Xuân Bo', '0998877761', 'booo@gmail.com', 'Đồ dùng học tập', 'Công khai', 5, 1),
(13, '2021-10-30', 'Bùi Thu Hà', '', '', 'Quần áo, giày dép', 'Công khai', 2, 1);

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
-- Chỉ mục cho bảng `tbl_ung_ho_vatchat_da_xn`
--
ALTER TABLE `tbl_ung_ho_vatchat_da_xn`
  ADD PRIMARY KEY (`id_vc_xn`),
  ADD KEY `tbl_ung_ho_vatchat_da_xn1` (`id_su_kien`),
  ADD KEY `tbl_ung_ho_vatchat_da_xn2` (`id_admin`);

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
  MODIFY `id_chia_se` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_su_kien`
--
ALTER TABLE `tbl_su_kien`
  MODIFY `id_su_kien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_tham_gia`
--
ALTER TABLE `tbl_tham_gia`
  MODIFY `id_tham_gia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_tinh_nguyen_vien`
--
ALTER TABLE `tbl_tinh_nguyen_vien`
  MODIFY `id_tnv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tbl_ungho_vatchat`
--
ALTER TABLE `tbl_ungho_vatchat`
  MODIFY `id_vat_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_ung_ho_da_xn`
--
ALTER TABLE `tbl_ung_ho_da_xn`
  MODIFY `id_xn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_ung_ho_tien`
--
ALTER TABLE `tbl_ung_ho_tien`
  MODIFY `id_ung_ho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_ung_ho_vatchat_da_xn`
--
ALTER TABLE `tbl_ung_ho_vatchat_da_xn`
  MODIFY `id_vc_xn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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

--
-- Các ràng buộc cho bảng `tbl_ung_ho_vatchat_da_xn`
--
ALTER TABLE `tbl_ung_ho_vatchat_da_xn`
  ADD CONSTRAINT `tbl_ung_ho_vatchat_da_xn1` FOREIGN KEY (`id_su_kien`) REFERENCES `tbl_su_kien` (`id_su_kien`),
  ADD CONSTRAINT `tbl_ung_ho_vatchat_da_xn2` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
