-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2019 lúc 06:02 AM
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
-- Cơ sở dữ liệu: `duhoc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_action`
--

CREATE TABLE `coupons_action` (
  `action_id` smallint(5) NOT NULL,
  `module_id` smallint(5) NOT NULL,
  `parent` smallint(5) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `action_views` tinyint(4) NOT NULL,
  `action_insert` tinyint(4) NOT NULL,
  `action_edit` tinyint(4) NOT NULL,
  `action_delete` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_action`
--

INSERT INTO `coupons_action` (`action_id`, `module_id`, `parent`, `userid`, `name`, `content`, `link`, `icon`, `action_views`, `action_insert`, `action_edit`, `action_delete`, `status`, `pos`, `language`) VALUES
(1, 29, 0, 1, 'System', 'system', '', 'fa-cog', 0, 0, 0, 0, 1, 1, 1),
(2, 30, 29, 1, 'List Functions', 'Functions', 'modules', 'fa-arrows', 1, 1, 1, 1, 1, 1, 1),
(3, 31, 29, 1, 'List of Customers', 'Customers', 'users', 'fa-group', 1, 1, 1, 1, 1, 2, 1),
(4, 32, 29, 1, 'Configure Website', 'configure', 'configs', 'fa-cog', 1, 1, 1, 1, 1, 3, 1),
(5, 33, 0, 1, 'Manager Jobs', 'product', '', 'fa-th-list', 0, 0, 0, 0, 0, 2, 1),
(6, 34, 33, 1, 'List jobs', 'products', 'products', 'fa-th-large', 0, 0, 0, 0, 0, 1, 1),
(7, 35, 33, 1, 'List suppliers', 'suppliers', 'shops', 'fa-apple', 0, 0, 0, 0, 0, 2, 1),
(8, 36, 33, 1, 'List propertys', 'propertys', 'propertys', 'fa-adn', 0, 0, 0, 0, 0, 3, 1),
(9, 37, 33, 1, 'List comments', 'comments', 'comments', 'fa-comment', 0, 0, 0, 0, 0, 4, 1),
(10, 38, 59, 1, 'Customer Orders', 'Customer Orders', 'porders', 'fa-suitcase', 1, 1, 1, 1, 1, 3, 1),
(11, 39, 59, 1, 'List apply jobseekers', 'order', 'purchases', 'fa-suitcase', 0, 0, 0, 0, 0, 2, 1),
(12, 41, 0, 1, 'List banners', 'banner', 'banners', 'fa-picture-o', 0, 0, 0, 0, 0, 6, 1),
(13, 42, 0, 1, 'List categories', 'categorie', 'categorys', 'fa-th-large', 1, 1, 1, 1, 1, 5, 1),
(14, 43, 0, 1, 'List contents', 'content', 'news', 'fa-hacker-news', 1, 1, 1, 1, 1, 8, 1),
(15, 44, 0, 1, 'List keywords', 'keyword', 'keywords', 'fa-google-plus-square', 0, 0, 0, 0, 0, 9, 1),
(16, 45, 0, 1, 'Filter products', 'filter', '', 'fa-share-alt-square', 0, 0, 0, 0, 0, 10, 1),
(17, 46, 45, 1, 'Filter one', 'one', 'filterones', 'fa-share-square', 1, 1, 1, 1, 1, 1, 1),
(18, 47, 45, 1, 'Filter two', 'two', 'filtertwos', 'fa-share-square', 1, 1, 1, 1, 1, 2, 1),
(19, 48, 45, 1, 'Filter three', 'three', 'filterthrees', 'fa-share-square', 1, 1, 1, 1, 1, 3, 1),
(20, 49, 45, 1, 'Filter four', 'four', 'filterfours', 'fa-share-square', 1, 1, 1, 1, 1, 4, 1),
(21, 50, 0, 1, 'Advisory and support', 'support', '', 'fa-reddit-square', 0, 0, 0, 0, 0, 11, 1),
(22, 51, 50, 1, 'Online advisory ', 'advisory', 'onlines', 'fa-share', 1, 0, 0, 0, 0, 1, 1),
(23, 52, 50, 1, 'List supports', 'support', 'supports', 'fa-share', 1, 1, 1, 1, 1, 2, 1),
(24, 53, 50, 1, 'List faqs', 'faq', 'faqs', 'fa-share', 0, 0, 0, 0, 0, 3, 1),
(25, 54, 0, 1, 'Manager location', 'location', '', 'fa-map-marker', 0, 0, 0, 0, 0, 12, 1),
(26, 55, 54, 1, 'List cities', 'city', 'cities', 'fa-map-marker', 1, 1, 1, 1, 1, 1, 1),
(27, 56, 54, 1, 'List districts', 'district', 'districts', 'fa-map-marker', 1, 1, 1, 1, 1, 2, 1),
(28, 59, 0, 1, 'Order Management', 'Orders', '', 'fa-suitcase', 0, 0, 0, 0, 1, 3, 1),
(29, 61, 59, 1, 'Manager import', 'import', 'imports', 'fa-globe', 0, 0, 0, 0, 0, 4, 1),
(30, 62, 59, 1, 'Manager stores', 'warehouse', 'manages', 'fa-globe', 0, 0, 0, 0, 0, 3, 1),
(31, 1, 0, 1, 'Hệ thống', 'Hệ thống', '', 'fa-cog', 0, 0, 0, 0, 1, 1, 0),
(32, 2, 1, 1, 'Danh sách chức năng', 'Chức năng', 'modules', 'fa-arrows', 1, 1, 1, 1, 1, 1, 0),
(33, 3, 1, 1, 'Danh sách khách hàng', 'Khách hàng', 'users', 'fa-group', 1, 1, 1, 1, 1, 2, 0),
(34, 4, 0, 1, 'Danh sách danh mục', 'danh mục', 'categorys', 'fa-th-large', 1, 1, 1, 1, 1, 3, 0),
(35, 5, 0, 1, 'Danh sách banner', 'Banner', 'banners', 'fa-picture-o', 1, 1, 1, 1, 1, 6, 0),
(36, 6, 0, 1, 'Bộ lọc vị trí', 'Bộ lọc', '', 'fa-share-alt-square', 0, 0, 0, 0, 0, 10, 0),
(37, 7, 6, 1, 'Bộ lọc thời gian', 'bộ lọc', 'filterones', 'fa-share-square', 1, 1, 1, 1, 1, 1, 0),
(38, 8, 6, 1, 'Bộ lọc loại việc', 'bộ lọc', 'filtertwos', 'fa-share-square', 1, 1, 1, 1, 1, 2, 0),
(39, 9, 6, 1, 'Bộ lọc hôn nhân', 'bộ lọc', 'filterthrees', 'fa-share-square', 1, 1, 1, 1, 1, 3, 0),
(40, 10, 6, 1, 'Bộ lọc mức giá', 'bộ lọc', 'filterfours', 'fa-share-square', 1, 1, 1, 1, 1, 4, 0),
(41, 11, 22, 1, 'Thuộc tính nhân viên', 'thuộc tính', 'propertys', 'fa-adn', 0, 0, 0, 0, 0, 2, 0),
(42, 12, 23, 1, 'Danh sách tỉnh thành', 'tỉnh thành', 'cities', 'fa-map-marker', 1, 1, 1, 1, 1, 20, 0),
(43, 13, 23, 1, 'Danh sách quận huyện', 'quận huyện', 'districts', 'fa-map-marker', 1, 1, 1, 1, 1, 20, 0),
(44, 14, 22, 1, 'Danh sách nhà cung cấp', 'nhà cung cấp', 'shops', 'fa-apple', 0, 0, 0, 0, 0, 1, 0),
(45, 15, 0, 1, 'Tư vấn và hỗ trợ', 'hỗ trợ', '', 'fa-reddit-square', 0, 0, 0, 0, 0, 11, 0),
(46, 16, 15, 1, 'Hỗ trợ online', 'hỗ trợ', 'onlines', 'fa-share', 1, 1, 1, 1, 1, 1, 0),
(47, 17, 15, 1, 'Danh sách tư vấn', 'tư vấn', 'supports', 'fa-share', 1, 1, 1, 1, 1, 2, 0),
(48, 18, 15, 1, 'Danh sách hỏi đáp', 'hỏi đáp', 'faqs', 'fa-share', 1, 1, 1, 1, 1, 3, 0),
(49, 19, 0, 1, 'Danh sách từ khóa', 'từ khóa', 'keywords', 'fa-google-plus-square', 0, 0, 0, 0, 0, 9, 0),
(50, 20, 22, 1, 'Danh sách thảo luận', 'thảo luận', 'comments', 'fa-comment', 0, 0, 0, 0, 0, 3, 0),
(51, 21, 0, 1, 'Quản lý nội dung', 'nội dung', 'news', 'fa-hacker-news', 1, 1, 1, 1, 1, 8, 0),
(52, 22, 0, 1, 'Quản lý nhân viên', 'nhân viên', '', 'fa-th-list', 0, 0, 0, 0, 0, 2, 0),
(53, 23, 0, 1, 'Quản lý địa điểm', 'địa điểm', '', 'fa-map-marker', 0, 0, 0, 0, 0, 15, 0),
(54, 24, 22, 1, 'Danh sách nhân viên', 'Nhân viên', 'products', 'fa-th-large', 0, 0, 0, 0, 0, 0, 0),
(55, 25, 1, 1, 'Cấu hình website', 'cấu hình', 'configs', 'fa-cog', 1, 1, 1, 1, 1, 3, 0),
(58, 28, 57, 1, 'Quản lý kho hàng', 'quản lý kho', 'manages', 'fa-globe', 0, 0, 0, 0, 0, 3, 0),
(60, 58, 57, 1, 'Thống kê nhập kho', 'nhập kho', 'imports', 'fa-globe', 0, 0, 0, 0, 0, 4, 0),
(192, 71, 70, 1, 'Danh sách du học', 'Danh sách du học', 'software', 'fa-th-list', 1, 1, 1, 1, 1, 0, 0),
(214, 73, 0, 1, 'Quản lý trường học', 'trường học', 'schools', 'fa-th-list', 1, 1, 1, 1, 1, 6, 0),
(215, 74, 0, 1, 'Quản lý học viên du học', 'Học viên du học', 'student', 'fa-th-list', 1, 1, 1, 1, 1, 7, 0),
(216, 72, 0, 1, 'Câu hỏi thường gặp', 'câu hỏi', 'question', 'fa-th-list', 1, 1, 1, 1, 1, 4, 0),
(217, 75, 29, 1, 'List of Translators', 'List of Translators', 'users_cv', 'fa-th-list', 1, 1, 1, 1, 1, 2, 1),
(218, 76, 0, 1, 'Software Translation', 'Software Translation', '', 'fa-th-large', 0, 0, 0, 0, 1, 3, 1),
(219, 77, 76, 1, 'List of Software', 'List of Software', 'software', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(220, 78, 0, 1, 'Online Translators-Map', 'Online Translators-Map', '', 'fa-th-large', 0, 0, 0, 0, 1, 4, 1),
(221, 79, 78, 1, 'List of Translators', 'List of Translators', 'translater', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(222, 80, 0, 1, 'Price-Language', 'Price-Language', '', 'fa-th-large', 0, 0, 0, 0, 1, 5, 1),
(223, 81, 80, 1, 'Price List', 'Price List', 'language', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(224, 82, 0, 1, 'Manage Country', 'Manage Country', 'country', 'fa-th-list', 1, 1, 1, 1, 1, 6, 1),
(225, 83, 0, 1, 'Manage Specialized', 'Manage Specialized', '', 'fa-th-large', 0, 0, 0, 0, 1, 7, 1),
(226, 84, 83, 1, 'List Specialized', 'List Specialized', 'special', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(227, 85, 0, 1, 'Manage Area Code', 'Manage Area Code', 'area_code', 'fa-th-list', 1, 1, 1, 1, 1, 8, 1),
(228, 86, 0, 1, 'Manage language', 'Manage language', 'list_language', 'fa-th-list', 1, 1, 1, 1, 1, 9, 1),
(229, 87, 0, 1, 'Manage Service', 'Manage Service', 'service', 'fa-th-list', 1, 1, 1, 1, 1, 8, 1),
(230, 88, 59, 1, 'Translator Orders', 'Translator\'s Orders', 'trans_order', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(231, 89, 0, 1, 'Experience', 'Experience', 'kinhnghiem', 'fa-th-list', 1, 1, 1, 1, 1, 8, 1),
(232, 91, 0, 1, 'Quản lý học bổng', 'học bổng', 'hocbong', 'fa-th-list', 1, 1, 1, 1, 1, 8, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_banner`
--

CREATE TABLE `coupons_banner` (
  `banner_id` smallint(5) NOT NULL,
  `banner_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner_content` varchar(900) COLLATE utf8_unicode_ci NOT NULL,
  `banner_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner_category` smallint(5) NOT NULL,
  `banner_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner_bg` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_banner`
--

INSERT INTO `coupons_banner` (`banner_id`, `banner_name`, `banner_content`, `banner_img`, `banner_category`, `banner_link`, `banner_bg`, `pos`, `status`, `category_id`, `language`) VALUES
(1, 'banner 1', '', '1053-slide3.jpg', 1, '', '', 1, 1, 1, 0),
(2, 'banner 2', '', '1001-slide2.jpg', 1, '', '', 0, 1, 1, 0),
(3, 'banner 3', '', '1009-slide1.jpg', 1, '', '', 0, 1, 1, 0),
(4, 'banner du học mỹ 1', '', '0227-slide1.jpg', 0, '', '', 0, 1, 99, 0),
(5, 'Banner du học mỹ 2', '', '0208-slide3.jpg', 0, '', '', 1, 1, 98, 0),
(6, 'Banner học bổng', '', '1010-img_3.jpg', 0, '', '', 1, 1, 108, 0),
(7, 'Banner THPT', '', '0251-skyline-calgary-866032_1920.jpg', 0, '', '', 0, 1, 107, 0),
(8, 'Banner Thạc sỹ', '', '0624-banner-1008448_1920.jpg', 0, '', '', 0, 0, 109, 0),
(9, 'Học bổng thạc sỹ', '', '0602-banner-1008448_1920.jpg', 0, '', '', 0, 1, 109, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_category`
--

CREATE TABLE `coupons_category` (
  `category_id` smallint(5) NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` smallint(5) NOT NULL,
  `category_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL,
  `category_content` text COLLATE utf8_unicode_ci NOT NULL,
  `category_info_news` text COLLATE utf8_unicode_ci NOT NULL,
  `category_info_student` text COLLATE utf8_unicode_ci NOT NULL,
  `category_info_schools` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total_percent` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_category`
--

INSERT INTO `coupons_category` (`category_id`, `category_name`, `category_url`, `parent_id`, `category_img`, `pos`, `status`, `color`, `link`, `layout`, `language`, `category_content`, `category_info_news`, `category_info_student`, `category_info_schools`, `seo_title`, `seo_desc`, `seo_key`, `news_url`, `total_percent`) VALUES
(1, 'Trang chủ', 'trang-chu', 0, '', 0, 1, '', '', '', 0, '', '', '', '', 'Trang chủ', '', 'Trang chủ', '', 1),
(2, 'Home', 'home', 0, '', 0, 0, '', '', '', 1, '', '', '', '', '', '', '', 'menu/', 0),
(3, 'Giới thiệu', 've-chung-toi', 0, '', 3, 1, '', '', '', 0, '', '', '', '', 'Về chúng tôi', '', 'Về chúng tôi', 'menu/', 1),
(4, 'About us', 'about-us', 0, '', 0, 0, '', '', '', 1, '', '', '', '', '', '', '', 'menu/', 0),
(5, 'Đại học top', 'danh-muc', 0, '', 2, 1, '', '', '', 0, '', '', '', '', 'Đại học top', '', 'Đại học top', '', 0),
(6, 'Hot jobs', 'hot-jobs', 0, '', 0, 0, '', '', '', 1, '', '', '', '', 'Hot jobs', '', 'Hot jobs', '', 20),
(7, 'Liên hệ', 'lien-he', 0, '', 4, 1, '', 'http://localhost/ditacom/contact.html', '', 0, '', '', '', '', 'Liên hệ', '', 'Liên hệ', 'menu/', 1),
(8, 'Contact us', 'contact-us', 0, '', 0, 0, '', '', '', 1, '', '', '', '', '', '', '', 'menu/', 0),
(9, 'Dịch vụ', 'dich-vu', 0, '', 5, 1, '', '', '', 0, '', '', '', '', 'Dịch vụ', '', 'Dịch vụ', 'menu/', 1),
(10, 'Service', 'service', 0, '', 0, 0, '', '', '', 1, '', '', '', '', '', '', '', 'menu/', 0),
(11, 'Những điều thú vị', 'ho-tro', 0, '', 6, 1, '', '', '', 0, '<p>Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn h&oacute;a, b&ugrave;ng nổ th&ocirc;ng tin, kiến thức v&agrave; c&ocirc;ng nghệ cao... Những tiến bộ x&atilde; hội đ&oacute; đ&atilde; v&agrave; đang mang lại những cơ hội đi k&egrave;m những th&aacute;ch thức, tạo ra sức &eacute;p phải c&oacute; sự thay đổi trong đội ngũ lao động tr&iacute; thức. Nguồn nh&acirc;n lực trẻ phải c&oacute; khả năng l&agrave;m việc theo nh&oacute;m, năng động, s&aacute;ng tạo, l&atilde;nh đạo&hellip;, ph&ugrave; hợp với y&ecirc;u cầu của x&atilde; hội hiện đại. Việc học tập của sinh vi&ecirc;n kh&ocirc;ng thể l&agrave; thụ động tiếp thu b&agrave;i giảng m&agrave; phải tham gia t&iacute;ch cực v&agrave;o b&agrave;i giảng, hoạt động tập thể, dự &aacute;n để c&oacute; thể tham gia một c&aacute;ch hiệu quả v&agrave;o c&aacute;c hoạt động nghề nghiệp v&agrave; hoạt động x&atilde; hội sau n&agrave;y.</p>\r\n', '', '', '', 'Những điều thú vị', 'Những điều thú vị', 'Những điều thú vị', 'menu/', 1),
(13, 'Thông tin du học', 'thong-tin-du-hoc', 0, '', 7, 1, '', '', '', 0, '<p>Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn h&oacute;a, b&ugrave;ng nổ th&ocirc;ng tin, kiến thức v&agrave; c&ocirc;ng nghệ cao... Những tiến bộ x&atilde; hội đ&oacute; đ&atilde; v&agrave; đang mang lại những cơ hội đi k&egrave;m những th&aacute;ch thức, tạo ra sức &eacute;p phải c&oacute; sự thay đổi trong đội ngũ lao động tr&iacute; thức. Nguồn nh&acirc;n lực trẻ phải c&oacute; khả năng l&agrave;m việc theo nh&oacute;m, năng động, s&aacute;ng tạo, l&atilde;nh đạo&hellip;, ph&ugrave; hợp với y&ecirc;u cầu của x&atilde; hội hiện đại. Việc học tập của sinh vi&ecirc;n kh&ocirc;ng thể l&agrave; thụ động tiếp thu b&agrave;i giảng m&agrave; phải tham gia t&iacute;ch cực v&agrave;o b&agrave;i giảng, hoạt động tập thể, dự &aacute;n để c&oacute; thể tham gia một c&aacute;ch hiệu quả v&agrave;o c&aacute;c hoạt động nghề nghiệp v&agrave; hoạt động x&atilde; hội sau n&agrave;y.</p>\r\n', '', '', '', 'Thông tin du học', 'Thông tin du học', 'Thông tin du học', '', 1),
(14, 'News & shared', 'news', 0, '', 0, 1, '', '', '', 1, '', '', '', '', 'News', '', 'News', 'menu/', 0),
(23, 'Accounting / Finance', 'home-appliances', 6, '', 1, 1, 'fa-line-chart ', '', '', 1, '', '', '', '', 'Our Maid', '', 'Our Maid', '', 20),
(24, 'Automotive Jobs', 'home-living', 6, '', 2, 1, 'fa-wrench', '', '', 1, '', '', '', '', 'Our Nanny', '', 'Our Nanny', '', 20),
(82, 'Construction / Facilities', 'construction-/-facilities', 6, '', 3, 1, 'fa-building-o', '', '', 1, '', '', '', '', 'Construction / Facilities', '', 'Construction / Facilities', '', 0),
(83, 'Education Training', 'education-training', 6, '', 4, 1, 'fa-graduation-cap', '', '', 1, '', '', '', '', 'Education Training', '', 'Education Training', '', 0),
(84, 'Healthcare', 'healthcare', 6, '', 5, 1, 'fa-medkit', '', '', 1, '', '', '', '', 'Healthcare', '', 'Healthcare', '', 0),
(85, 'Restaurant / Food Service', 'restaurant-/-food-service', 6, '', 6, 1, 'fa-cutlery', '', '', 1, '', '', '', '', 'Restaurant / Food Service', '', 'Restaurant / Food Service', '', 0),
(86, 'Transportation / Logistics', 'transportation-/-logistics', 6, '', 7, 1, 'fa-globe', '', '', 1, '', '', '', '', 'Transportation / Logistics', '', 'Transportation / Logistics', '', 0),
(87, 'IT / Software', 'telecommunications', 6, '', 0, 1, 'fa-laptop', '', '', 1, '', '', '', '', 'Telecommunications', '', 'Telecommunications', '', 0),
(88, 'Comments', 'comments', 0, '', 0, 0, '', '', '', 1, '', '', '', '', 'comments', '', 'comments', 'menu/', 0),
(89, 'Part-time', 'part-time', 6, '', 0, 1, '', '', '', 1, '', '', '', '', 'Part-time', 'Part-time', 'Part-time', '', 0),
(90, 'Full-Time', 'full-time', 6, '', 0, 1, '', '', '', 1, '', '', '', '', 'Full-Time', 'Full-Time', 'Full-Time', '', 0),
(93, 'News home', 'news-home', 14, '', 0, 1, '', '', '', 1, '', '', '', '', 'News home', '', 'News home', 'menu/', 0),
(94, 'News right', 'news-right', 14, '', 0, 1, '', '', '', 1, '', '', '', '', 'News right', '', 'News right', 'menu/', 0),
(95, 'Du học các nước', 'du-hoc-cac-nuoc', 0, '', 0, 1, '', '', '', 0, '<p>Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn h&oacute;a, b&ugrave;ng nổ th&ocirc;ng tin, kiến thức v&agrave; c&ocirc;ng nghệ cao... Những tiến bộ x&atilde; hội đ&oacute; đ&atilde; v&agrave; đang mang lại những cơ hội đi k&egrave;m những th&aacute;ch thức, tạo ra sức &eacute;p phải c&oacute; sự thay đổi trong đội ngũ lao động tr&iacute; thức. Nguồn nh&acirc;n lực trẻ phải c&oacute; khả năng l&agrave;m việc theo nh&oacute;m, năng động, s&aacute;ng tạo, l&atilde;nh đạo&hellip;, ph&ugrave; hợp với y&ecirc;u cầu của x&atilde; hội hiện đại. Việc học tập của sinh vi&ecirc;n kh&ocirc;ng thể l&agrave; thụ động tiếp thu b&agrave;i giảng m&agrave; phải tham gia t&iacute;ch cực v&agrave;o b&agrave;i giảng, hoạt động tập thể, dự &aacute;n để c&oacute; thể tham gia một c&aacute;ch hiệu quả v&agrave;o c&aacute;c hoạt động nghề nghiệp v&agrave; hoạt động x&atilde; hội sau n&agrave;y.</p>\r\n', '', '', '', 'Du học các nước', 'Du học các nước', 'Du học các nước', '', 0),
(96, 'Du học châu mỹ', 'du-hoc-chau-my', 95, '', 1, 1, '', '', '', 0, 'Du học châu mỹ', '', '', '', 'Du học châu mỹ', 'Du học châu mỹ', 'Du học châu mỹ', '', 0),
(97, 'Du học châu úc', 'du-hoc-chau-uc', 95, '', 2, 1, '', '', '', 0, 'Du học châu úc', '', '', '', 'Du học châu úc', 'Du học châu úc', 'Du học châu úc', '', 0),
(98, 'Du học mỹ', 'du-hoc-my', 96, '0218-mountain-2.jpg', 3, 1, '', '', '', 0, '<p>Du học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹDu học mỹ</p>\r\n', '<p>th&ocirc;ng tin du học mỹ</p>\r\n', '<p>content du hoc vi&ecirc;n</p>\r\n', '<p>Content m&ocirc; tả trường</p>\r\n', 'Du học mỹ', 'Du học mỹ', 'Du học mỹ', '', 0),
(99, 'Du học Canada', 'du-hoc-canada', 96, '0231-mountain-4.jpg', 3, 1, '', '', '', 0, '<p>Du học Canada</p>\r\n', '', '', '', 'Du học Canada', 'Du học Canada', 'Du học Canada', '', 0),
(100, 'Du học Úc', 'du-hoc-uc', 97, '0240-mountain-5.jpg', 4, 1, '', '', '', 0, '<p>Du học &Uacute;c</p>\r\n', '', '', '', 'Du học Úc', 'Du học Úc', 'Du học Úc', '', 0),
(101, 'Du Học New Zealand', 'du-hoc-new-zealand', 97, '0248-mountain-6.jpg', 5, 1, '', '', '', 0, '<p>Du Học New Zealand</p>\r\n', '', '', '', 'Du Học New Zealand', 'Du Học New Zealand', 'Du Học New Zealand', '', 0),
(102, 'Có thể bạn quan tâm', 'hoc-bong', 0, '', 6, 1, '', '', '', 0, '<p>Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn h&oacute;a, b&ugrave;ng nổ th&ocirc;ng tin, kiến thức v&agrave; c&ocirc;ng nghệ cao... Những tiến bộ x&atilde; hội đ&oacute; đ&atilde; v&agrave; đang mang lại những cơ hội đi k&egrave;m những th&aacute;ch thức, tạo ra sức &eacute;p phải c&oacute; sự thay đổi trong đội ngũ lao động tr&iacute; thức. Nguồn nh&acirc;n lực trẻ phải c&oacute; khả năng l&agrave;m việc theo nh&oacute;m, năng động, s&aacute;ng tạo, l&atilde;nh đạo&hellip;, ph&ugrave; hợp với y&ecirc;u cầu của x&atilde; hội hiện đại. Việc học tập của sinh vi&ecirc;n kh&ocirc;ng thể l&agrave; thụ động tiếp thu b&agrave;i giảng m&agrave; phải tham gia t&iacute;ch cực v&agrave;o b&agrave;i giảng, hoạt động tập thể, dự &aacute;n để c&oacute; thể tham gia một c&aacute;ch hiệu quả v&agrave;o c&aacute;c hoạt động nghề nghiệp v&agrave; hoạt động x&atilde; hội sau n&agrave;y.</p>\r\n', '', '', '', 'Có thể bạn quan tâm', 'Có thể bạn quan tâm', 'Có thể bạn quan tâm', 'menu/', 0),
(103, 'Học bổng', 'hoc-bong', 0, '', 1, 1, '', '', '', 0, '<p>content học bổng</p>\r\n', '<p>content học bổng</p>\r\n', '', '', 'Học bổng', 'Học bổng', 'Học bổng', '', 0),
(104, 'Đường đến đại học mơ ước', 'duong-den-dai-hoc-mo-uoc', 0, '', 8, 1, '', '', '', 0, '<p>Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn h&oacute;a, b&ugrave;ng nổ th&ocirc;ng tin, kiến thức v&agrave; c&ocirc;ng nghệ cao... Những tiến bộ x&atilde; hội đ&oacute; đ&atilde; v&agrave; đang mang lại những cơ hội đi k&egrave;m những th&aacute;ch thức, tạo ra sức &eacute;p phải c&oacute; sự thay đổi trong đội ngũ lao động tr&iacute; thức. Nguồn nh&acirc;n lực trẻ phải c&oacute; khả năng l&agrave;m việc theo nh&oacute;m, năng động, s&aacute;ng tạo, l&atilde;nh đạo&hellip;, ph&ugrave; hợp với y&ecirc;u cầu của x&atilde; hội hiện đại. Việc học tập của sinh vi&ecirc;n kh&ocirc;ng thể l&agrave; thụ động tiếp thu b&agrave;i giảng m&agrave; phải tham gia t&iacute;ch cực v&agrave;o b&agrave;i giảng, hoạt động tập thể, dự &aacute;n để c&oacute; thể tham gia một c&aacute;ch hiệu quả v&agrave;o c&aacute;c hoạt động nghề nghiệp v&agrave; hoạt động x&atilde; hội sau n&agrave;y.</p>\r\n', '', '', '', 'ĐƯỜNG ĐẾN ĐẠI HỌC MƠ ƯỚC', 'ĐƯỜNG ĐẾN ĐẠI HỌC MƠ ƯỚC', 'ĐƯỜNG ĐẾN ĐẠI HỌC MƠ ƯỚC', 'menu/', 0),
(105, 'Đại học top', 'dai-hoc-top', 0, '', 9, 1, '', '', '', 0, '<p>Đại học top</p>\r\n', '', '', '', 'Đại học top', 'Đại học top', 'Đại học top', 'menu/', 0),
(106, 'MỞ CỬA THẾ GIỚI THÔNG QUA GIÁO DỤC', 'mo-cua-the-gioi-thong-qua-giao-duc', 0, '', 9, 1, '', '', '', 0, '<p>Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn h&oacute;a, b&ugrave;ng nổ th&ocirc;ng tin, kiến thức v&agrave; c&ocirc;ng nghệ cao... Những tiến bộ x&atilde; hội đ&oacute; đ&atilde; v&agrave; đang mang lại những cơ hội đi k&egrave;m những th&aacute;ch thức, tạo ra sức &eacute;p phải c&oacute; sự thay đổi trong đội ngũ lao động tr&iacute; thức. Nguồn nh&acirc;n lực trẻ phải c&oacute; khả năng l&agrave;m việc theo nh&oacute;m, năng động, s&aacute;ng tạo, l&atilde;nh đạo&hellip;, ph&ugrave; hợp với y&ecirc;u cầu của x&atilde; hội hiện đại. Việc học tập của sinh vi&ecirc;n kh&ocirc;ng thể l&agrave; thụ động tiếp thu b&agrave;i giảng m&agrave; phải tham gia t&iacute;ch cực v&agrave;o b&agrave;i giảng, hoạt động tập thể, dự &aacute;n để c&oacute; thể tham gia một c&aacute;ch hiệu quả v&agrave;o c&aacute;c hoạt động nghề nghiệp v&agrave; hoạt động x&atilde; hội sau n&agrave;y.</p>\r\n', '', '', '', 'MỞ CỬA THẾ GIỚI THÔNG QUA GIÁO DỤC', 'MỞ CỬA THẾ GIỚI THÔNG QUA GIÁO DỤC', 'MỞ CỬA THẾ GIỚI THÔNG QUA GIÁO DỤC', 'menu/', 0),
(107, 'Học bổng THPT', 'hoc-bong-thpt', 103, '', 0, 1, '', '', '', 0, '<p>Học bổng THPTHọc bổng THPTHọc bổng THPTHọc bổng THPTHọc bổng THPTHọc bổng THPTHọc bổng THPT</p>\r\n', '', '', '', 'Học bổng THPT', '<p>Học bổng THPTHọc bổng THPTHọc bổng THPTHọc bổng THPTHọc bổng THPTHọc bổng THPTHọc bổng THPT</p>\r\n', 'Học bổng THPT', '', 0),
(108, 'Học bổng Đại học', 'hoc-bong-dai-hoc', 103, '', 1, 1, '', '', '', 0, '<p>content học bổng đại học</p>\r\n', '', '', '', 'Học bổng Đại học', '<p>content học bổng đại học</p>\r\n', 'Học bổng Đại học', '', 0),
(109, 'Học bổng Thạc sỹ', 'hoc-bong-thac-sy', 103, '', 2, 1, '', '', '', 0, '<p>Học bổng Thạc sỹHọc bổng Thạc sỹHọc bổng Thạc sỹHọc bổng Thạc sỹHọc bổng Thạc sỹHọc bổng Thạc sỹ</p>\r\n', '', '', '', 'Học bổng Thạc sỹ', '<p>Học bổng Thạc sỹHọc bổng Thạc sỹHọc bổng Thạc sỹHọc bổng Thạc sỹHọc bổng Thạc sỹHọc bổng Thạc sỹ</p>\r\n', 'Học bổng Thạc sỹ', '', 0),
(110, 'Tuyển sinh', 'tuyen-sinh', 13, '', 0, 1, '', '', '', 0, '', '', '', '', 'Tuyển sinh', '', 'Tuyển sinh', '', 0),
(111, 'Hội thảo', 'hoi-thao', 13, '', 1, 1, '', '', '', 0, '', '', '', '', 'Hội thảo', '', 'Hội thảo', '', 0),
(112, 'Tin tức', 'tin-tuc', 13, '', 2, 1, '', '', '', 0, '', '', '', '', 'Tin tức', '', 'Tin tức', '', 0),
(113, 'Kinh nghiệm', 'kinh-nghiem', 13, '', 4, 1, '', '', '', 0, '', '', '', '', 'Kinh nghiệm', '', 'Kinh nghiệm', '', 0),
(114, 'Sự kiện', 'su-kien', 13, '', 6, 1, '', '', '', 0, '', '', '', '', 'Sự kiện', '', 'Sự kiện', '', 0),
(115, 'Học bổng Đại học Mỹ', 'hoc-bong-dai-hoc-my', 108, '1109-img_4.jpg', 0, 1, '', '', '', 0, '<p>Học bổng Đại học Mỹ</p>\r\n', '<p>Học bổng Đại học Mỹ</p>\r\n', '<p>Học bổng Đại học Mỹ</p>\r\n', '<p>Học bổng Đại học Mỹ</p>\r\n', 'Học bổng Đại học Mỹ', '<p>Học bổng Đại học Mỹ</p>\r\n', 'Học bổng Đại học Mỹ', '', 0),
(116, 'Học bổng Đại học Canada', 'hoc-bong-dai-hoc-canada', 108, '1127-img_2.jpg', 1, 1, '', '', '', 0, '<p>Học bổng Đại học Canada</p>\r\n', '', '', '', 'Học bổng Đại học Canada', '<p>Học bổng Đại học Canada</p>\r\n', 'Học bổng Đại học Canada', '', 0),
(117, 'Học bổng Đại học Úc', 'hoc-bong-dai-hoc-uc', 108, '1121-img_4.jpg', 2, 1, '', '', '', 0, '<p>Học bổng Đại học &Uacute;c</p>\r\n', '', '', '', 'Học bổng Đại học Úc', '<p>Học bổng Đại học Úc</p>\r\n', 'Học bổng Đại học Úc', '', 0),
(118, 'Học bổng Đại học New Zealand', 'hoc-bong-dai-hoc-new-zealand', 108, '1127-img1.jpg', 3, 1, '', '', '', 0, '<p>Học bổng Đại học New Zealand</p>\r\n', '', '', '', 'Học bổng Đại học New Zealand', '<p>Học bổng Đại học New Zealand</p>\r\n', 'Học bổng Đại học New Zealand', '', 0),
(119, 'Tuyển sinh', 'tuyen-sinh', 98, '', 0, 1, '', '', '', 0, '', '', '', '', 'Tuyển sinh', '', 'Tuyển sinh', '', 0),
(120, 'Hội thảo', 'hoi-thao', 98, '', 0, 1, '', '', '', 0, '', '', '', '', 'Hội thảo', '', 'Hội thảo', '', 0),
(121, 'Tin tức', 'tin-tuc', 98, '', 0, 1, '', '', '', 0, '', '', '', '', 'Tin tức', '', 'Tin tức', '', 0),
(122, 'Kinh nghiệm', 'kinh-nghiem', 98, '', 0, 1, '', '', '', 0, '', '', '', '', 'Kinh nghiệm', '', 'Kinh nghiệm', '', 0),
(123, 'Sự kiện', 'su-kien', 98, '', 0, 1, '', '', '', 0, '', '', '', '', 'Sự kiện', '', 'Sự kiện', '', 0),
(124, 'Học bổng THPT Mỹ', 'hoc-bong-thpt-my', 107, '0625-canada-2262774_1920.jpg', 0, 1, '', '', '', 0, '', '', '', '', 'Học bổng THPT Mỹ', '', 'Học bổng THPT Mỹ', '', 0),
(125, 'Học bổng THPT Canada', 'hoc-bong-thpt-canada', 107, '0656-statue-of-liberty-267948_1920.jpg', 1, 1, '', '', '', 0, '', '', '', '', 'Học bổng THPT Canada', '', 'Học bổng THPT Canada', '', 0),
(126, 'Học bổng THPT Úc', 'hoc-bong-thpt-uc', 107, '0629-statue-of-liberty-267948_1920.jpg', 2, 1, '', '', '', 0, '', '', '', '', 'Học bổng THPT Úc', '', 'Học bổng THPT Úc', '', 0),
(127, 'Học bổng Thạc sỹ Mỹ', 'hoc-bong-thac-sy-my', 109, '0658-statue-of-liberty-267948_1920.jpg', 0, 1, '', '', '', 0, '', '', '', '', 'Học bổng Thạc sỹ Mỹ', '', 'Học bổng Thạc sỹ Mỹ', '', 0),
(128, 'Tuyển sinh', 'tuyen-sinh', 99, '', 0, 1, '', '', '', 0, '', '', '', '', 'Tuyển sinh', '', 'Tuyển sinh', '', 0),
(129, 'Hội thảo', 'hoi-thao', 99, '', 1, 1, '', '', '', 0, '', '', '', '', 'Hội thảo', '', 'Hội thảo', '', 0),
(130, 'Tin tức', 'tin-tuc', 99, '', 2, 1, '', '', '', 0, '', '', '', '', 'Tin tức', '', 'Tin tức', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_cities`
--

CREATE TABLE `coupons_cities` (
  `cityid` smallint(5) NOT NULL,
  `cityname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `countryid` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `priority` smallint(5) NOT NULL,
  `shipping` smallint(5) NOT NULL,
  `language` tinyint(4) NOT NULL,
  `pos` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_cities`
--

INSERT INTO `coupons_cities` (`cityid`, `cityname`, `countryid`, `status`, `priority`, `shipping`, `language`, `pos`) VALUES
(1, 'Hồ Chí Minh', 1, 1, 0, 0, 0, 63),
(2, 'Hà Nội', 1, 1, 0, 400, 0, 0),
(3, 'Đồng Nai', 1, 1, 0, 100, 0, 0),
(4, 'Bình Dương', 1, 1, 0, 100, 0, 0),
(5, 'Tây Ninh', 1, 1, 0, 100, 0, 0),
(6, 'Long An', 1, 1, 0, 100, 0, 0),
(7, 'Tiền Giang', 1, 1, 0, 100, 0, 0),
(8, 'Cần Thơ', 1, 1, 0, 300, 0, 0),
(9, 'An Giang', 1, 1, 0, 300, 0, 0),
(10, 'Sóc Trăng', 1, 1, 0, 300, 0, 0),
(11, 'Kiên Giang', 1, 1, 0, 300, 0, 0),
(12, 'Vĩnh Long', 1, 1, 0, 300, 0, 0),
(13, 'Bạc Liêu', 1, 1, 0, 300, 0, 0),
(14, 'Đồng Tháp', 1, 1, 0, 300, 0, 0),
(15, 'Hậu Giang', 1, 1, 0, 300, 0, 0),
(16, 'Bình Thuận', 1, 1, 0, 300, 0, 0),
(17, 'Vũng Tàu', 1, 1, 0, 300, 0, 0),
(18, 'Trà Vinh', 1, 1, 0, 300, 0, 0),
(19, 'Bình Phước', 1, 1, 0, 300, 0, 0),
(20, 'Bến Tre', 1, 1, 0, 300, 0, 0),
(21, 'Cà Mau', 1, 1, 0, 400, 0, 0),
(22, 'Khánh Hoà', 1, 1, 0, 400, 0, 0),
(23, 'Ninh Thuận', 1, 1, 0, 400, 0, 0),
(24, 'Đắk Lắk', 1, 1, 0, 400, 0, 0),
(25, 'Đắk Nông', 1, 1, 0, 400, 0, 0),
(26, 'Gia Lai', 1, 1, 0, 400, 0, 0),
(27, 'Kon Tum', 1, 1, 0, 400, 0, 0),
(28, 'Lâm Đồng', 1, 1, 0, 400, 0, 0),
(29, 'Quảng Bình', 1, 1, 0, 400, 0, 0),
(30, 'Quảng Trị', 1, 1, 0, 400, 0, 0),
(31, 'Huế', 1, 1, 0, 400, 0, 0),
(32, 'Đà Nẵng', 1, 1, 0, 400, 0, 0),
(33, 'Quảng Nam', 1, 1, 0, 400, 0, 0),
(34, 'Quảng Ngãi', 1, 1, 0, 400, 0, 0),
(35, 'Bình Định', 1, 1, 0, 400, 0, 0),
(36, 'Phú Yên', 1, 1, 0, 400, 0, 0),
(37, 'Hưng Yên', 1, 1, 0, 400, 0, 0),
(38, 'Hải Dương', 1, 1, 0, 400, 0, 0),
(39, 'Hải Phòng', 1, 1, 0, 400, 0, 0),
(40, 'Quảng Ninh', 1, 1, 0, 400, 0, 0),
(41, 'Bắc Ninh', 1, 1, 0, 400, 0, 0),
(42, 'Bắc Giang', 1, 1, 0, 400, 0, 0),
(43, 'Vĩnh Phúc', 1, 1, 0, 400, 0, 0),
(44, 'Phú Thọ', 1, 1, 0, 400, 0, 0),
(45, 'Hà Nam', 1, 1, 0, 400, 0, 0),
(46, 'Nam Định', 1, 1, 0, 400, 0, 0),
(47, 'Thái Bình', 1, 1, 0, 400, 0, 0),
(48, 'Ninh Bình', 1, 1, 0, 400, 0, 0),
(49, 'Thanh Hoá', 1, 1, 0, 400, 0, 0),
(50, 'Nghệ An', 1, 1, 0, 400, 0, 0),
(51, 'Hà Tĩnh', 1, 1, 0, 400, 0, 0),
(52, 'Bắc Kạn', 1, 1, 0, 400, 0, 0),
(53, 'Cao Bằng', 1, 1, 0, 400, 0, 0),
(54, 'Hà Giang', 1, 1, 0, 400, 0, 0),
(55, 'Tuyên Quang', 1, 1, 0, 400, 0, 0),
(56, 'Sơn La', 1, 1, 0, 400, 0, 0),
(57, 'Lai Châu', 1, 1, 0, 400, 0, 0),
(58, 'Điện Biên', 1, 1, 0, 400, 0, 0),
(59, 'Lào Cai', 1, 1, 0, 400, 0, 0),
(60, 'Yên Bái', 1, 1, 0, 400, 0, 0),
(61, 'Hoà Bình', 1, 1, 0, 400, 0, 0),
(62, 'Thái Nguyên', 1, 1, 0, 400, 0, 0),
(63, 'Lạng Sơn', 1, 1, 0, 400, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_comment`
--

CREATE TABLE `coupons_comment` (
  `id` smallint(5) NOT NULL,
  `news_id` int(11) NOT NULL,
  `nickname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` smallint(5) NOT NULL,
  `language` tinyint(4) NOT NULL,
  `date` int(11) NOT NULL,
  `parent_id` smallint(5) NOT NULL,
  `like_cm` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_config`
--

CREATE TABLE `coupons_config` (
  `id` smallint(5) NOT NULL,
  `config_website` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_hotline` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_fax` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_tilte` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_keywords` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `config_bank` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `config_time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_config`
--

INSERT INTO `coupons_config` (`id`, `config_website`, `config_phone`, `config_hotline`, `config_fax`, `config_email`, `config_company`, `config_address`, `config_tilte`, `config_keywords`, `config_description`, `config_bank`, `config_time`, `status`, `pos`, `language`) VALUES
(1, 'Amvstudy ', '0973185125', '0973185125', '0973185125', 'ngothehientg@gmail.com', 'Amvstudy ', 'ngothehientg@gmail.com', 'Amvstudy - Đại diện tuyển sinh trực tiếp các trường danh tiếng tại các nước Mỹ, Úc, Canada, Newzeala', 'Amvstudy - Đại diện tuyển sinh trực tiếp các trường danh tiếng tại các nước Mỹ, Úc, Canada, Newzeala', 'Amvstudy - Đại diện tuyển sinh trực tiếp các trường danh tiếng tại các nước Mỹ, Úc, Canada, Newzeala', '', 'Amvstudy - Đại diện tuyển sinh trực tiếp các trường danh tiếng tại các nước Mỹ, Úc, Canada, Newzeala', 1, 1, 0),
(2, 'AMV ', '0973185125', '0973185125', '0973185125', 'ngothehientg@gmail.com', 'AMV ', '', 'Amvstudy - Đại diện tuyển sinh trực tiếp các trường danh tiếng tại các nước Mỹ, Úc, Canada, Newzeala', 'Amvstudy - Đại diện tuyển sinh trực tiếp các trường danh tiếng tại các nước Mỹ, Úc, Canada, Newzeala', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_contents`
--

CREATE TABLE `coupons_contents` (
  `news_id` smallint(5) NOT NULL,
  `news_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_search` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_category` smallint(5) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `news_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) NOT NULL,
  `views` smallint(5) NOT NULL,
  `created_date` int(11) NOT NULL,
  `price` double NOT NULL,
  `price_new` double NOT NULL,
  `filename_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_description`
--

CREATE TABLE `coupons_description` (
  `id` int(10) NOT NULL,
  `news_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_district`
--

CREATE TABLE `coupons_district` (
  `district_id` smallint(5) NOT NULL,
  `district_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cityid` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `shipping` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ma_quan` smallint(5) NOT NULL,
  `language` tinyint(4) NOT NULL,
  `pos` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_district`
--

INSERT INTO `coupons_district` (`district_id`, `district_name`, `cityid`, `status`, `shipping`, `ma_quan`, `language`, `pos`) VALUES
(1, 'Quận 1', 1, 1, '10', 7100, 0, 0),
(2, 'Quận 2', 1, 1, '10', 7130, 0, 0),
(3, 'Quận 3', 1, 1, '10', 7220, 0, 0),
(4, 'Quận 4', 1, 1, '10', 7540, 0, 0),
(5, 'Quận 5', 1, 1, '10', 7480, 0, 0),
(6, 'Quận 6', 1, 1, '10', 7460, 0, 0),
(7, 'Quận 7', 1, 1, '10', 7560, 0, 0),
(8, 'Quận 8', 1, 1, '10', 7510, 0, 0),
(9, 'Quận 9', 1, 1, '10', 7150, 0, 0),
(10, 'Quận 10', 1, 1, '10', 7400, 0, 0),
(11, 'Quận 11', 1, 1, '10', 7430, 0, 0),
(12, 'Quận 12', 1, 1, '10', 7290, 0, 0),
(13, 'Quận Thủ Đức', 1, 1, '10', 7200, 0, 0),
(14, 'Quận Tân Phú', 1, 1, '10', 7600, 0, 0),
(15, 'Quận Tân Bình', 1, 1, '10', 7360, 0, 0),
(16, 'Quận Phú Nhuận', 1, 1, '10', 7250, 0, 0),
(17, 'Quận Gò Vấp', 1, 1, '10', 7270, 0, 0),
(18, 'Quận Bình Thạnh', 1, 1, '10', 7170, 0, 0),
(19, 'Quận Bình Tân', 1, 1, '10', 7620, 0, 0),
(20, 'Huyện Bình Chánh', 1, 1, '20', 7380, 0, 0),
(21, 'Huyện Cần Giờ', 1, 1, '20', 7590, 0, 0),
(22, 'Huyện Củ Chi', 1, 1, '20', 7330, 0, 0),
(23, 'Huyện Hóc Môn', 1, 1, '20', 7310, 0, 0),
(24, 'Huyện Nhà Bè', 2, 1, '400', 7580, 0, 0),
(25, 'Quận Ba Đình', 2, 1, '400', 1180, 0, 0),
(26, 'Quận Hoàn Kiếm', 2, 1, '400', 1100, 0, 0),
(27, 'Quận Tây Hồ', 2, 1, '400', 1240, 0, 0),
(28, 'Quận Long Biên', 2, 1, '400', 1250, 0, 0),
(29, 'Quận Cầu Giấy', 2, 1, '400', 1220, 0, 0),
(30, 'Quận Đống Đa', 2, 1, '400', 1150, 0, 0),
(31, 'Quận Hai Bà Trưng', 2, 1, '400', 1120, 0, 0),
(32, 'Quận Hoàng Mai', 2, 1, '400', 1270, 0, 0),
(33, 'Quận Thanh Xuân', 2, 1, '400', 1200, 0, 0),
(34, 'Thành phố Hà Đông', 2, 1, '400', 1510, 0, 0),
(35, 'Thị xã Sơn Tây', 2, 1, '400', 1540, 0, 0),
(36, 'Huyện Ba Vì', 2, 1, '400', 1547, 0, 0),
(37, 'Huyện Chương Mỹ', 2, 1, '400', 1561, 0, 0),
(38, 'Huyện Đan Phượng', 2, 1, '400', 1533, 0, 0),
(39, 'Huyện Đông Anh', 2, 1, '400', 1360, 0, 0),
(40, 'Huyện Gia Lâm', 2, 1, '400', 1310, 0, 0),
(41, 'Huyện Hoài Đức', 2, 1, '400', 1529, 0, 0),
(42, 'Huyện Mê Linh', 2, 1, '400', 1420, 0, 0),
(43, 'Huyện Mỹ Đức', 2, 1, '400', 1576, 0, 0),
(44, 'Huyện Phú Xuyên', 2, 1, '400', 1580, 0, 0),
(45, 'Huyện Phúc Thọ', 2, 1, '400', 1536, 0, 0),
(46, 'Huyện Quốc Oai', 2, 1, '400', 1557, 0, 0),
(47, 'Huyện Sóc Sơn', 2, 1, '400', 1390, 0, 0),
(48, 'Huyện Thạch Thất', 2, 1, '400', 1553, 0, 0),
(49, 'Huyện Thanh Oai', 2, 1, '400', 1567, 0, 0),
(50, 'Huyện Thanh Trì', 2, 1, '400', 1340, 0, 0),
(51, 'Huyện Thường Tín', 2, 1, '400', 1585, 0, 0),
(52, 'Huyện Từ Liêm', 2, 1, '400', 1290, 0, 0),
(53, 'Huyện Ứng Hòa', 2, 1, '400', 0, 0, 0),
(54, 'Huyện Cẩm Mỹ', 3, 1, '300', 8161, 0, 0),
(55, 'Huyện Định Quán', 3, 1, '300', 8142, 0, 0),
(56, 'Huyện Long Thành', 3, 1, '300', 8153, 0, 0),
(57, 'Huyện Nhơn Trạch', 3, 1, '300', 8158, 0, 0),
(58, 'Huyện Tân Phú', 3, 1, '300', 8146, 0, 0),
(59, 'Huyện Thống Nhất', 3, 1, '300', 8137, 0, 0),
(60, 'Huyện Trảng Bom', 3, 1, '300', 8164, 0, 0),
(61, 'Huyện Vĩnh Cửu', 3, 1, '300', 8150, 0, 0),
(62, 'Huyện Xuân Lộc', 3, 1, '300', 8139, 0, 0),
(63, 'Thành phố Biên Hòa', 3, 1, '300', 8110, 0, 0),
(64, 'Thị xã Long Khánh', 3, 1, '300', 8132, 0, 0),
(65, 'Thành phố Thủ Dầu Một', 4, 1, '100', 8210, 0, 0),
(66, 'Thị xã Thuận An', 4, 1, '100', 8239, 0, 0),
(67, 'Thị xã Dĩ An', 4, 1, '100', 8246, 0, 0),
(68, 'Huyện Tân Uyên', 4, 1, '100', 0, 0, 0),
(69, 'Huyện Phú Giáo', 4, 1, '100', 8228, 0, 0),
(70, 'Huyện Bến Cát', 4, 1, '100', 8231, 0, 0),
(71, 'Huyện Dầu Tiếng', 4, 1, '100', 8236, 0, 0),
(72, 'Thị xã Tây Ninh', 5, 1, '100', 8410, 0, 0),
(73, 'Huyện Tân Biên', 5, 1, '100', 8422, 0, 0),
(74, 'Huyện Tân Châu', 5, 1, '100', 8419, 0, 0),
(75, 'Huyện Dương Minh Châu', 5, 1, '100', 8417, 0, 0),
(76, 'Huyện Châu Thành', 5, 1, '100', 8424, 0, 0),
(77, 'Huyện Hòa Thành', 5, 1, '100', 8427, 0, 0),
(78, 'Huyện Bến Cầu', 5, 1, '100', 8429, 0, 0),
(79, 'Huyện Gò Dầu', 5, 1, '100', 8431, 0, 0),
(80, 'Huyện Trảng Bàng', 5, 1, '100', 8433, 0, 0),
(81, 'Thành phố Tân An', 6, 1, '100', 8510, 0, 0),
(82, 'Thị xã Kiến Tường', 6, 1, '100', 0, 0, 0),
(83, 'Huyện Bến Lức', 6, 1, '100', 8523, 0, 0),
(84, 'Huyện Cần Đước', 6, 1, '100', 8527, 0, 0),
(85, 'Huyện Cần Giuộc', 6, 1, '100', 8531, 0, 0),
(86, 'Huyện Châu Thành', 6, 1, '100', 8518, 0, 0),
(87, 'Huyện Đức Hòa', 6, 1, '100', 8537, 0, 0),
(88, 'Huyện Đức Huệ', 6, 1, '100', 8542, 0, 0),
(89, 'Huyện Mộc Hóa', 6, 1, '100', 8548, 0, 0),
(90, 'Huyện Tân Hưng', 6, 1, '100', 8553, 0, 0),
(91, 'Huyện Tân Thạnh', 6, 1, '100', 8546, 0, 0),
(92, 'Huyện Tân Trụ', 6, 1, '100', 8521, 0, 0),
(93, 'Huyện Thạnh Hóa', 6, 1, '100', 8544, 0, 0),
(94, 'Huyện Thủ Thừa', 6, 1, '100', 8534, 0, 0),
(95, 'Huyện Vĩnh Hưng', 6, 1, '100', 8551, 0, 0),
(96, 'Thành phố Mỹ Tho', 7, 1, '100', 8610, 0, 0),
(97, 'Thị xã Gò Công', 7, 1, '100', 8627, 0, 0),
(98, 'Huyện Cái Bè', 7, 1, '100', 8647, 0, 0),
(99, 'Huyện Cai Lậy', 7, 1, '100', 8641, 0, 0),
(100, 'Huyện Châu Thành', 7, 1, '100', 8634, 0, 0),
(101, 'Huyện Chợ Gạo', 7, 1, '100', 8620, 0, 0),
(102, 'Huyện Gò Công Đông', 7, 1, '100', 8630, 0, 0),
(103, 'Huyện Gò Công Tây', 7, 1, '100', 8624, 0, 0),
(104, 'Huyện Tân Phước', 7, 1, '100', 8639, 0, 0),
(105, 'Huyện Tân Phú Đông', 7, 1, '100', 8648, 0, 0),
(106, 'Quận Ninh Kiều', 8, 1, '300', 9010, 0, 0),
(107, 'Quận Bình Thủy', 8, 1, '300', 9028, 0, 0),
(108, 'Quận Cái Răng', 8, 1, '300', 9036, 0, 0),
(109, 'Quận Ô Môn', 8, 1, '300', 9040, 0, 0),
(110, 'Quận Thốt Nốt', 7, 1, '300', 9042, 0, 0),
(111, 'Huyện Phong Điền', 8, 1, '300', 5349, 0, 0),
(112, 'Huyện Cờ Đỏ', 8, 1, '300', 9046, 0, 0),
(113, 'Huyện Thới Lai', 8, 1, '300', 9060, 0, 0),
(114, 'Huyện Vĩnh Thạnh', 8, 1, '300', 9050, 0, 0),
(115, 'Thành phố Long Xuyên', 9, 1, '300', 8810, 0, 0),
(116, 'Thành phố Châu Đốc', 9, 1, '300', 8830, 0, 0),
(117, 'Thị xã Tân Châu', 9, 1, '300', 8834, 0, 0),
(118, 'Huyện An Phú', 9, 1, '300', 8837, 0, 0),
(119, 'Huyện Châu Phú', 9, 1, '300', 8828, 0, 0),
(120, 'Huyện Châu Thành', 9, 1, '300', 8822, 0, 0),
(121, 'Huyện Chợ Mới', 9, 1, '300', 2638, 0, 0),
(122, 'Huyện Phú Tân', 9, 1, '300', 8825, 0, 0),
(123, 'Huyện Thoại Sơn', 9, 1, '300', 8846, 0, 0),
(124, 'Huyện Tịnh Biên', 9, 1, '300', 8840, 0, 0),
(125, 'Huyện Tri Tôn', 9, 1, '300', 8843, 0, 0),
(126, 'Thành phố Sóc Trăng', 10, 1, '300', 9510, 0, 0),
(127, 'Thị xã Vĩnh Châu', 10, 1, '300', 9535, 0, 0),
(128, 'Huyện Châu Thành', 9, 1, '300', 0, 0, 0),
(129, 'Cù Lao Dung', 10, 1, '300', 9538, 0, 0),
(130, 'Huyện Kế Sách', 10, 1, '300', 9520, 0, 0),
(131, 'Huyện Long Phú', 10, 1, '300', 9517, 0, 0),
(132, 'Huyện Mỹ Tú', 10, 1, '300', 9523, 0, 0),
(133, 'Huyện Mỹ Xuyên', 10, 1, '300', 9530, 0, 0),
(134, 'Huyện Ngã Năm', 10, 1, '300', 9540, 0, 0),
(135, 'Huyện Thạnh Trị', 10, 1, '300', 9527, 0, 0),
(136, 'Huyện Trần Đề', 10, 1, '300', 0, 0, 0),
(137, 'Thành phố Rạch Giá', 11, 1, '300', 9210, 0, 0),
(138, 'Thị xã Hà Tiên', 11, 1, '300', 9220, 0, 0),
(139, 'Huyện An Biên', 11, 1, '300', 9224, 0, 0),
(140, 'Huyện An Minh', 11, 1, '300', 9227, 0, 0),
(141, 'Huyện Châu Thành', 11, 1, '300', 9230, 0, 0),
(142, 'Huyện Giồng Riềng', 11, 1, '300', 9238, 0, 0),
(143, 'Huyện Giang Thành', 11, 1, '300', 9250, 0, 0),
(144, 'Huyện Gò Quao', 11, 1, '300', 9235, 0, 0),
(145, 'Huyện Hòn Đất', 11, 1, '300', 9216, 0, 0),
(146, 'Huyện U Minh Thượng', 11, 1, '300', 9246, 0, 0),
(147, 'Huyện Kiên Lương', 11, 1, '300', 9218, 0, 0),
(148, 'Huyện Tân Hiệp', 11, 1, '300', 9214, 0, 0),
(149, 'Huyện Vĩnh Thuận', 11, 1, '300', 9232, 0, 0),
(150, 'Huyện Kiên Hải', 11, 1, '300', 9241, 0, 0),
(151, 'Huyện Phú Quốc', 11, 1, '300', 9222, 0, 0),
(152, 'Thành phố Vĩnh Long', 12, 1, '300', 8910, 0, 0),
(153, 'Thị xã Bình Minh', 12, 1, '300', 8921, 0, 0),
(154, 'Huyện Bình Tân', 12, 1, '300', 8938, 0, 0),
(155, 'Huyện Long Hồ', 12, 1, '300', 8913, 0, 0),
(156, 'Huyện Mang Thít', 12, 1, '300', 8934, 0, 0),
(157, 'Huyện Tam Bình', 12, 1, '300', 8917, 0, 0),
(158, 'Huyện Trà Ôn', 12, 1, '300', 8925, 0, 0),
(159, 'Huyện Vũng Liêm', 12, 1, '300', 8929, 0, 0),
(160, 'Thành phố Bạc Liêu', 13, 1, '300', 9610, 0, 0),
(161, 'Huyện Hồng Dân', 13, 1, '300', 9624, 0, 0),
(162, 'Huyện Hòa Bình', 13, 1, '300', 9632, 0, 0),
(163, 'Huyện Giá Rai', 13, 1, '300', 9626, 0, 0),
(164, 'Huyện Phước Long', 13, 1, '300', 9621, 0, 0),
(165, 'Huyện Vĩnh Lợi', 13, 1, '300', 9615, 0, 0),
(166, 'Huyện Đông Hải', 13, 1, '300', 9629, 0, 0),
(167, 'Thành phố Cao Lãnh', 14, 1, '300', 8710, 0, 0),
(168, 'Thị xã Sa Đéc', 14, 1, '300', 8731, 0, 0),
(169, 'Thị xã Hồng Ngự', 14, 1, '300', 8721, 0, 0),
(170, 'Huyện Cao Lãnh', 14, 1, '300', 8740, 0, 0),
(171, 'Huyện Châu Thành', 14, 1, '300', 8738, 0, 0),
(172, 'Huyện Hồng Ngự', 14, 1, '300', 0, 0, 0),
(173, 'Huyện Lai Vung', 14, 1, '300', 8728, 0, 0),
(174, 'Huyện Lấp Vò', 14, 1, '300', 8726, 0, 0),
(175, 'Huyện Tam Nông', 14, 1, '300', 8717, 0, 0),
(176, 'Huyện Tân Hồng', 14, 1, '300', 8719, 0, 0),
(177, 'Huyện Thanh Bình', 14, 1, '300', 8724, 0, 0),
(178, 'Huyện Tháp Mười', 14, 1, '300', 8714, 0, 0),
(179, 'Thành phố Vị Thanh', 15, 1, '300', 9110, 0, 0),
(180, 'Thị xã Ngã Bảy', 15, 1, '300', 9129, 0, 0),
(181, 'Huyện Châu Thành', 15, 1, '300', 9127, 0, 0),
(182, 'Huyện Châu Thành A', 15, 1, '300', 9125, 0, 0),
(183, 'Huyện Long Mỹ', 15, 1, '300', 9115, 0, 0),
(184, 'Huyện Phụng Hiệp', 15, 1, '300', 9091, 0, 0),
(185, 'Huyện Vị Thủy', 15, 1, '300', 9122, 0, 0),
(186, 'Thành phố Phan Thiết', 16, 1, '300', 8010, 0, 0),
(187, 'Thị xã La Gi', 16, 1, '300', 8046, 0, 0),
(188, 'Huyện Tuy Phong', 16, 1, '300', 8023, 0, 0),
(189, 'Huyện Bắc Bình', 16, 1, '300', 8019, 0, 0),
(190, 'Huyện Hàm Thuận Bắc', 16, 1, '300', 8028, 0, 0),
(191, 'Huyện Hàm Thuận Nam', 16, 1, '300', 8031, 0, 0),
(192, 'Huyện Tánh Linh', 16, 1, '300', 8034, 0, 0),
(193, 'Huyện Hàm Tân', 16, 1, '300', 8040, 0, 0),
(194, 'Huyện Đức Linh', 16, 1, '300', 8037, 0, 0),
(195, 'Huyện Phú Quý', 16, 1, '300', 8044, 0, 0),
(196, 'Thành phố Vũng Tàu', 17, 1, '300', 7910, 0, 0),
(197, 'Thành phố Bà Rịa', 17, 1, '300', 7951, 0, 0),
(198, 'Huyện Long Điền', 17, 1, '300', 7944, 0, 0),
(199, 'Huyện Đất Đỏ', 17, 1, '300', 7946, 0, 0),
(200, 'Huyện Châu Đức', 17, 1, '300', 7953, 0, 0),
(201, 'Huyện Tân Thành', 17, 1, '300', 7956, 0, 0),
(202, 'Huyện Côn Đảo', 17, 1, '300', 7943, 0, 0),
(203, 'Huyện Xuyên Mộc', 17, 1, '300', 7948, 0, 0),
(204, 'Thành phố Trà Vinh', 18, 1, '300', 9410, 0, 0),
(205, 'Huyện Càng Long', 18, 1, '300', 9417, 0, 0),
(206, 'Huyện Cầu Kè', 18, 1, '300', 9421, 0, 0),
(207, 'Huyện Tiểu Cần', 18, 1, '300', 9423, 0, 0),
(208, 'Huyện Châu Thành', 18, 1, '300', 9426, 0, 0),
(209, 'Huyện Cầu Ngang', 18, 1, '300', 9435, 0, 0),
(210, 'Huyện Trà Cú', 18, 1, '300', 9430, 0, 0),
(211, 'Huyện Duyên Hải', 18, 1, '300', 9439, 0, 0),
(212, 'Thị xã Đồng Xoài', 19, 1, '300', 8310, 0, 0),
(213, 'Thị xã Bình Long', 19, 1, '300', 8329, 0, 0),
(214, 'Thị xã Phước Long', 19, 1, '300', 8339, 0, 0),
(215, 'Huyện Bù Đăng', 19, 1, '300', 8317, 0, 0),
(216, 'Huyện Bù Đốp', 19, 1, '300', 8336, 0, 0),
(217, 'Huyện Bù Gia Mập', 19, 1, '300', 8340, 0, 0),
(218, 'Huyện Chơn Thành', 19, 1, '300', 8333, 0, 0),
(219, 'Huyện Đồng Phú', 19, 1, '300', 8315, 0, 0),
(220, 'Huyện Hớn Quản', 19, 1, '300', 8341, 0, 0),
(221, 'Huyện Lộc Ninh', 19, 1, '300', 8325, 0, 0),
(222, 'Thành phố Bến Tre', 20, 1, '300', 9310, 0, 0),
(223, 'Huyện Ba Tri', 20, 1, '300', 9333, 0, 0),
(224, 'Huyện Bình Đại', 20, 1, '300', 9337, 0, 0),
(225, 'Huyện Châu Thành', 20, 1, '300', 9313, 0, 0),
(226, 'Huyện Chợ Lách', 20, 1, '300', 9317, 0, 0),
(227, 'Huyện Giồng Trôm', 20, 1, '300', 9326, 0, 0),
(228, 'Huyện Mỏ Cày Bắc', 20, 1, '300', 9320, 0, 0),
(229, 'Huyện Mỏ Cày Nam', 20, 1, '300', 9321, 0, 0),
(230, 'Huyện Thạnh Phú', 20, 1, '300', 9330, 0, 0),
(231, 'Thành phố Cà Mau', 21, 1, '400', 9710, 0, 0),
(232, 'Huyện Đầm Dơi', 21, 1, '400', 9730, 0, 0),
(233, 'Huyện Ngọc Hiển', 21, 1, '400', 9734, 0, 0),
(234, 'Huyện Cái Nước', 21, 1, '400', 9727, 0, 0),
(235, 'Huyện Trần Văn Thời', 21, 1, '400', 9723, 0, 0),
(236, 'Huyện U Minh', 21, 1, '400', 9721, 0, 0),
(237, 'Huyện Thới Bình', 21, 1, '400', 9718, 0, 0),
(238, 'Huyện Năm Căn', 21, 1, '400', 9739, 0, 0),
(239, 'Huyện Phú Tân', 21, 1, '400', 9736, 0, 0),
(240, 'Thành phố Nha Trang', 22, 1, '400', 6510, 0, 0),
(241, 'Thành phố Cam Ranh', 22, 1, '400', 6544, 0, 0),
(242, 'Thị xã Ninh Hòa', 22, 1, '400', 6529, 0, 0),
(243, 'Huyện Vạn Ninh', 22, 1, '400', 6535, 0, 0),
(244, 'Huyện Diên Khánh', 22, 1, '400', 6537, 0, 0),
(245, 'Huyện Khánh Vĩnh', 22, 1, '400', 6540, 0, 0),
(246, 'Huyện Khánh Sơn', 22, 1, '400', 6542, 0, 0),
(247, 'Huyện Cam Lâm', 22, 1, '400', 6552, 0, 0),
(248, 'Huyện đảo Trường Sa', 22, 1, '400', 6548, 0, 0),
(249, 'Thành phố Phan Rang - Tháp Chàm', 23, 1, '400', 6610, 0, 0),
(250, 'Huyện Bác Ái', 23, 1, '400', 6629, 0, 0),
(251, 'Huyện Ninh Hải', 23, 1, '400', 6626, 0, 0),
(252, 'Huyện Ninh Phước', 23, 1, '400', 6633, 0, 0),
(253, 'Huyện Ninh Sơn', 23, 1, '400', 6631, 0, 0),
(254, 'Huyện Thuận Bắc', 23, 1, '400', 6636, 0, 0),
(255, 'Huyện Thuận Nam', 23, 1, '400', 6630, 0, 0),
(256, 'Thành phố Buôn Ma Thuột', 24, 1, '400', 6310, 0, 0),
(257, 'Thị xã Buôn Hồ', 24, 1, '400', 6390, 0, 0),
(258, 'Huyện Ea Súp', 24, 1, '400', 6363, 0, 0),
(259, 'Huyện Krông Bông', 24, 1, '400', 6370, 0, 0),
(260, 'Huyện Krông Buk', 24, 1, '400', 6347, 0, 0),
(261, 'Huyện Krông Pak', 24, 1, '400', 6327, 0, 0),
(262, 'Huyện Krông Năng', 24, 1, '400', 6352, 0, 0),
(263, 'Huyện Krông Ana', 24, 1, '400', 6366, 0, 0),
(264, 'Huyện MDrăk', 24, 1, '400', 0, 0, 0),
(265, 'Huyện Lắk', 24, 1, '400', 6374, 0, 0),
(266, 'Huyện Ea Kar', 24, 1, '400', 6334, 0, 0),
(267, 'Huyện Ea Hleo', 24, 1, '400', 0, 0, 0),
(268, 'Huyện Cư Mgar', 24, 1, '400', 0, 0, 0),
(269, 'Huyện Cư Kuin', 24, 1, '400', 6380, 0, 0),
(270, 'Huyện Buôn Đôn', 24, 1, '400', 6360, 0, 0),
(271, 'Thị xã Gia Nghĩa', 25, 1, '400', 6410, 0, 0),
(272, 'Huyện Cư Jút', 25, 1, '400', 6424, 0, 0),
(273, 'Huyện Đắk Glong', 25, 1, '400', 6427, 0, 0),
(274, 'Huyện Đắk Mil', 25, 1, '400', 6418, 0, 0),
(275, 'Huyện Đắk RLấp', 25, 1, '400', 6413, 0, 0),
(276, 'Huyện Đắk Song', 25, 1, '400', 6416, 0, 0),
(277, 'Huyện Krông Nô', 25, 1, '400', 6421, 0, 0),
(278, 'Huyện Tuy Đức', 25, 1, '400', 6430, 0, 0),
(279, 'Thành phố Pleiku', 26, 1, '400', 6010, 0, 0),
(280, 'Thị xã An Khê', 26, 1, '400', 6024, 0, 0),
(281, 'Thị xã Ayun Pa', 26, 1, '400', 6053, 0, 0),
(282, 'Huyện Chư Păh', 26, 1, '400', 6030, 0, 0),
(283, 'Huyện Chư Prông', 26, 1, '400', 6042, 0, 0),
(284, 'Huyện Chư Sê', 26, 1, '400', 6047, 0, 0),
(285, 'Huyện Đắk Đoa', 26, 1, '400', 6017, 0, 0),
(286, 'Huyện Chư Pưh', 26, 1, '400', 6067, 0, 0),
(287, 'Huyện Phú Thiện', 26, 1, '400', 6069, 0, 0),
(288, 'Huyện Mang Yang', 26, 1, '400', 6021, 0, 0),
(289, 'Huyện Krông Pa', 26, 1, '400', 6060, 0, 0),
(290, 'Huyện Kông Chro', 26, 1, '400', 6057, 0, 0),
(291, 'Huyện KBang', 26, 1, '400', 6026, 0, 0),
(292, 'Huyện Ia Pa', 26, 1, '400', 6066, 0, 0),
(293, 'Huyện Ia Grai', 26, 1, '400', 6034, 0, 0),
(294, 'Huyện Đức Cơ', 26, 1, '400', 6038, 0, 0),
(295, 'Huyện Đak Pơ', 26, 1, '400', 0, 0, 0),
(296, 'Thành phố Kon Tum', 27, 1, '400', 5810, 0, 0),
(297, 'Huyện Đắk Glei', 27, 1, '400', 5832, 0, 0),
(298, 'Huyện Đắk Hà', 27, 1, '400', 5822, 0, 0),
(299, 'Huyện Đắk Tô', 27, 1, '400', 5825, 0, 0),
(300, 'Huyện Kon Plông', 27, 1, '400', 5820, 0, 0),
(301, 'Huyện Kon Rẫy', 27, 1, '400', 5818, 0, 0),
(302, 'Huyện Ngọc Hồi', 27, 1, '400', 5830, 0, 0),
(303, 'Huyện Sa Thầy', 27, 1, '400', 5835, 0, 0),
(304, 'Huyện Tu Mơ Rông', 27, 1, '400', 5837, 0, 0),
(305, 'Thành phố Đà Lạt', 28, 1, '400', 6710, 0, 0),
(306, 'Thành phố Bảo Lộc', 28, 1, '400', 6747, 0, 0),
(307, 'Huyện Bảo Lâm', 28, 1, '400', 0, 0, 0),
(308, 'Huyện Cát Tiên', 28, 1, '400', 6755, 0, 0),
(309, 'Huyện Di Linh', 28, 1, '400', 6737, 0, 0),
(310, 'Huyện Đam Rông', 28, 1, '400', 6760, 0, 0),
(311, 'Huyện Đạ Huoai', 28, 1, '400', 6758, 0, 0),
(312, 'Huyện Đạ Tẻh', 28, 1, '400', 6752, 0, 0),
(313, 'Huyện Đơn Dương', 28, 1, '400', 6725, 0, 0),
(314, 'Huyện Lạc Dương', 28, 1, '400', 6727, 0, 0),
(315, 'Huyện Lâm Hà', 28, 1, '400', 6728, 0, 0),
(316, 'Huyện Đức Trọng', 28, 1, '400', 6733, 0, 0),
(317, 'Thành phố Đồng Hới', 29, 1, '400', 5110, 0, 0),
(318, 'Huyện Lệ Thủy', 29, 1, '400', 5139, 0, 0),
(319, 'Huyện Minh Hóa', 29, 1, '400', 5132, 0, 0),
(320, 'Huyện Tuyên Hóa', 29, 1, '400', 5128, 0, 0),
(321, 'Huyện Quảng Trạch', 29, 1, '400', 5122, 0, 0),
(322, 'Huyện Bố Trạch', 29, 1, '400', 5115, 0, 0),
(323, 'Huyện Quảng Ninh', 29, 1, '400', 5136, 0, 0),
(324, 'Thành phố Đông Hà', 30, 1, '400', 5210, 0, 0),
(325, 'Thị xã Quảng Trị', 30, 1, '400', 5237, 0, 0),
(326, 'Huyện Cam Lộ', 30, 1, '400', 5223, 0, 0),
(327, 'Huyện Cồn Cỏ', 30, 1, '400', 5244, 0, 0),
(328, 'Huyện Đa Krông', 30, 1, '400', 5230, 0, 0),
(329, 'Huyện Gio Linh', 30, 1, '400', 5214, 0, 0),
(330, 'Huyện Hải Lăng', 30, 1, '400', 5238, 0, 0),
(331, 'Huyện Hướng Hóa', 30, 1, '400', 5226, 0, 0),
(332, 'Huyện Triệu Phong', 30, 1, '400', 5233, 0, 0),
(333, 'Huyện Vĩnh Linh', 30, 1, '400', 5218, 0, 0),
(334, 'Thành phố Thành phố Huế', 31, 1, '400', 5310, 0, 0),
(335, 'Thị xã Hương Thủy', 31, 1, '400', 5361, 0, 0),
(336, 'Huyện Hương Trà', 31, 1, '400', 5353, 0, 0),
(337, 'Huyện Phú Vang', 31, 1, '400', 5367, 0, 0),
(338, 'Huyện Quảng Điền', 31, 1, '400', 5346, 0, 0),
(339, 'Huyện A Lưới', 31, 1, '400', 5357, 0, 0),
(340, 'Huyện Nam Đông', 31, 1, '400', 5364, 0, 0),
(341, 'Huyện Phong Điền', 31, 1, '400', 5349, 0, 0),
(342, 'Huyện Phú Lộc', 31, 1, '400', 5371, 0, 0),
(343, 'Thành phố Tam Kỳ', 33, 1, '400', 5610, 0, 0),
(344, 'Thành phố Hội An', 33, 1, '400', 5638, 0, 0),
(345, 'Huyện Điện Bàn', 33, 1, '400', 5642, 0, 0),
(346, 'Huyện Thăng Bình', 33, 1, '400', 5616, 0, 0),
(347, 'Huyện Bắc Trà My', 33, 1, '400', 5636, 0, 0),
(348, 'Huyện Nam Trà My', 33, 1, '400', 5653, 0, 0),
(349, 'Huyện Núi Thành', 33, 1, '400', 5623, 0, 0),
(350, 'Huyện Phước Sơn', 33, 1, '400', 5651, 0, 0),
(351, 'Huyện Tiên Phước', 33, 1, '400', 5620, 0, 0),
(352, 'Huyện Hiệp Đức', 33, 1, '400', 5634, 0, 0),
(353, 'Huyện Nông Sơn', 33, 1, '400', 5611, 0, 0),
(354, 'Huyện Đông Giang', 33, 1, '400', 5655, 0, 0),
(355, 'Huyện Nam Giang', 33, 1, '400', 5660, 0, 0),
(356, 'Huyện Đại Lộc', 33, 1, '400', 5647, 0, 0),
(357, 'Huyện Phú Ninh', 33, 1, '400', 5662, 0, 0),
(358, 'Huyện Tây Giang', 33, 1, '400', 5658, 0, 0),
(359, 'Huyện Duy Xuyên', 33, 1, '400', 5627, 0, 0),
(360, 'Huyện Quế Sơn', 33, 1, '400', 5630, 0, 0),
(361, 'Thành phố Quảng Ngãi', 34, 1, '400', 5710, 0, 0),
(362, 'Huyện Ba Tơ', 34, 1, '400', 5732, 0, 0),
(363, 'Huyện Bình Sơn', 34, 1, '400', 5718, 0, 0),
(364, 'Huyện Đức Phổ', 34, 1, '400', 5735, 0, 0),
(365, 'Huyện Minh Long', 34, 1, '400', 5731, 0, 0),
(366, 'Huyện Mộ Đức', 34, 1, '400', 5738, 0, 0),
(367, 'Huyện Lý Sơn', 34, 1, '400', 5714, 0, 0),
(368, 'Huyện Tư Nghĩa', 34, 1, '400', 5740, 0, 0),
(369, 'Huyện Trà Bồng', 34, 1, '400', 5722, 0, 0),
(370, 'Huyện Tây Trà', 34, 1, '400', 5724, 0, 0),
(371, 'Huyện Sơn Tịnh', 34, 1, '400', 5715, 0, 0),
(372, 'Huyện Sơn Tây', 34, 1, '400', 5728, 0, 0),
(373, 'Huyện Sơn Hà', 34, 1, '400', 5726, 0, 0),
(374, 'Huyện Nghĩa Hành', 34, 1, '400', 5729, 0, 0),
(375, 'Thành phố Quy Nhơn', 35, 1, '400', 5910, 0, 0),
(376, 'Huyện An Nhơn', 35, 1, '400', 5920, 0, 0),
(377, 'Huyện An Lão', 35, 1, '400', 5938, 0, 0),
(378, 'Huyện Hoài Ân', 35, 1, '400', 5936, 0, 0),
(379, 'Huyện Hoài Nhơn', 35, 1, '400', 5932, 0, 0),
(380, 'Huyện Phù Cát', 35, 1, '400', 5924, 0, 0),
(381, 'Huyện Phù Mỹ', 35, 1, '400', 5928, 0, 0),
(382, 'Huyện Tuy Phước', 35, 1, '400', 5917, 0, 0),
(383, 'Huyện Tây Sơn', 35, 1, '400', 5942, 0, 0),
(384, 'Huyện Vân Canh', 35, 1, '400', 5945, 0, 0),
(385, 'Huyện Vĩnh Thạnh', 35, 1, '400', 5940, 0, 0),
(386, 'Thành phố Tuy Hòa', 36, 1, '400', 6210, 0, 0),
(387, 'Thị xã Sông Cầu', 36, 1, '400', 6219, 0, 0),
(388, 'Huyện Đông Hòa', 36, 1, '400', 6230, 0, 0),
(389, 'Huyện Đồng Xuân', 36, 1, '400', 6222, 0, 0),
(390, 'Huyện Phú Hòa', 36, 1, '400', 6234, 0, 0),
(391, 'Huyện Sơn Hòa', 36, 1, '400', 6224, 0, 0),
(392, 'Huyện Sông Hinh', 36, 1, '400', 6227, 0, 0),
(393, 'Huyện Tuy An', 36, 1, '400', 6216, 0, 0),
(394, 'Huyện Tây Hòa', 36, 1, '400', 6232, 0, 0),
(395, 'Thị xã Hưng Yên', 37, 1, '400', 1610, 0, 0),
(396, 'Huyện Ân Thi', 37, 1, '400', 1618, 0, 0),
(397, 'Huyện Khoái Châu', 37, 1, '400', 1625, 0, 0),
(398, 'Huyện Kim Động', 37, 1, '400', 1622, 0, 0),
(399, 'Huyện Mỹ Hào', 37, 1, '400', 1632, 0, 0),
(400, 'Huyện Phù Cừ', 37, 1, '400', 1616, 0, 0),
(401, 'Huyện Tiên Lữ', 37, 1, '400', 1613, 0, 0),
(402, 'Huyện Văn Giang', 37, 1, '400', 1638, 0, 0),
(403, 'Huyện Văn Lâm', 37, 1, '400', 1635, 0, 0),
(404, 'Huyện Yên Mỹ', 37, 1, '400', 1629, 0, 0),
(405, 'Thành phố Hải Dương', 38, 1, '400', 1710, 0, 0),
(406, 'Huyện Chí Linh', 38, 1, '400', 1742, 0, 0),
(407, 'Huyện Nam Sách', 38, 1, '400', 1734, 0, 0),
(408, 'Huyện Kinh Môn', 38, 1, '400', 1738, 0, 0),
(409, 'Huyện Kim Thành', 38, 1, '400', 1731, 0, 0),
(410, 'Huyện Thanh Hà', 38, 1, '400', 1727, 0, 0),
(411, 'Huyện Cẩm Giàng', 38, 1, '400', 1747, 0, 0),
(412, 'Huyện Bình Giang', 38, 1, '400', 1751, 0, 0),
(413, 'Huyện Gia Lộc', 38, 1, '400', 1754, 0, 0),
(414, 'Huyện Tứ Kỳ', 38, 1, '400', 1765, 0, 0),
(415, 'Huyện Ninh Giang', 38, 1, '400', 1761, 0, 0),
(416, 'Huyện Thanh Miện', 38, 1, '400', 1758, 0, 0),
(417, 'Quận Dương Kinh', 39, 1, '400', 1890, 0, 0),
(418, 'Quận Đồ Sơn', 39, 1, '400', 1871, 0, 0),
(419, 'Quận Hải An', 39, 1, '400', 1875, 0, 0),
(420, 'Quận Kiến An', 39, 1, '400', 1851, 0, 0),
(421, 'Quận Hồng Bàng', 39, 1, '400', 1810, 0, 0),
(422, 'Quận Ngô Quyền', 39, 1, '400', 1818, 0, 0),
(423, 'Quận Lê Chân', 39, 1, '400', 1836, 0, 0),
(424, 'Huyện An Dương', 39, 1, '400', 1848, 0, 0),
(425, 'Huyện An Lão', 39, 1, '400', 1853, 0, 0),
(426, 'Huyện Bạch Long Vĩ', 39, 1, '400', 1872, 0, 0),
(427, 'Huyện Cát Hải', 39, 1, '400', 1891, 0, 0),
(428, 'Huyện Kiến Thụy', 39, 1, '400', 1867, 0, 0),
(429, 'Huyện Tiên Lãng', 39, 1, '400', 1856, 0, 0),
(430, 'Huyện Vĩnh Bảo', 39, 1, '400', 1862, 0, 0),
(431, 'Huyện Thủy Nguyên', 39, 1, '400', 1830, 0, 0),
(432, 'Thành phố Hạ Long', 40, 1, '400', 2010, 0, 0),
(433, 'Thành phố Móng Cái', 40, 1, '400', 2068, 0, 0),
(434, 'Thành phố Uông Bí', 40, 1, '400', 2079, 0, 0),
(435, 'Thành phố Cẩm Phả', 40, 1, '400', 2032, 0, 0),
(436, 'Thị xã Quảng Yên', 40, 1, '400', 0, 0, 0),
(437, 'Huyện Vân Đồn', 40, 1, '400', 2053, 0, 0),
(438, 'Huyện Hoành Bồ', 40, 1, '400', 2072, 0, 0),
(439, 'Huyện Đầm Hà', 40, 1, '400', 2063, 0, 0),
(440, 'Huyện Cô Tô', 40, 1, '400', 2055, 0, 0),
(441, 'Huyện Đông Triều', 40, 1, '400', 2086, 0, 0),
(442, 'Huyện Tiên Yên', 40, 1, '400', 2056, 0, 0),
(443, 'Huyện Hải Hà', 40, 1, '400', 2065, 0, 0),
(444, 'Huyện Bình Liêu', 40, 1, '400', 2061, 0, 0),
(445, 'Huyện Ba Chẽ', 40, 1, '400', 2059, 0, 0),
(446, 'Thành phố Bắc Ninh', 41, 1, '400', 2210, 0, 0),
(447, 'Thị xã Từ Sơn', 41, 1, '400', 2221, 0, 0),
(448, 'Huyện Gia Bình', 41, 1, '400', 2232, 0, 0),
(449, 'Huyện Lương Tài', 41, 1, '400', 2235, 0, 0),
(450, 'Huyện Quế Võ', 41, 1, '400', 2228, 0, 0),
(451, 'Huyện Thuận Thành', 41, 1, '400', 2224, 0, 3),
(452, 'Huyện Tiên Du', 41, 1, '400', 2218, 0, 2),
(453, 'Huyện Yên Phong', 63, 1, '400', 2214, 0, 1),
(454, 'Thành phố Bắc Giang', 42, 1, '400', 2310, 0, 0),
(455, 'Huyện Yên Thế', 42, 1, '400', 2347, 0, 0),
(456, 'Huyện Tân Yên', 42, 1, '400', 2353, 0, 0),
(457, 'Huyện Lục Ngạn', 42, 1, '400', 2330, 0, 0),
(458, 'Huyện Hiệp Hoà', 42, 1, '400', 2366, 0, 0),
(459, 'Huyện Lạng Giang', 42, 1, '400', 2340, 0, 0),
(460, 'Huyện Sơn Động', 42, 1, '400', 2325, 0, 0),
(461, 'Huyện Lục Nam', 42, 1, '400', 2318, 0, 0),
(462, 'Huyện Việt Yên', 42, 1, '400', 2361, 0, 0),
(463, 'Huyện Yên Dũng', 42, 1, '400', 2372, 0, 0),
(464, 'Thành phố Vĩnh Yên', 43, 1, '400', 2810, 0, 0),
(465, 'Thị xã Phúc Yên', 43, 1, '400', 2834, 0, 0),
(466, 'Huyện Bình Xuyên', 43, 1, '400', 2812, 0, 0),
(467, 'Huyện Lập Thạch', 43, 1, '400', 2818, 0, 0),
(468, 'Huyện Sông Lô', 43, 1, '400', 2838, 0, 0),
(469, 'Huyện Tam Dương', 43, 1, '400', 2815, 0, 0),
(470, 'Huyện Tam Đảo', 43, 1, '400', 2836, 0, 0),
(471, 'Huyện Vĩnh Tường', 43, 1, '400', 2823, 0, 0),
(472, 'Huyện Yên Lạc', 43, 1, '400', 2828, 0, 0),
(473, 'Thành phố Việt Trì', 44, 1, '400', 2910, 0, 0),
(474, 'Thị xã Phú Thọ', 44, 1, '400', 2935, 0, 0),
(475, 'Huyện Cẩm Khê', 44, 1, '400', 2970, 0, 0),
(476, 'Huyện Đoan Hùng', 44, 1, '400', 2949, 0, 0),
(477, 'Huyện Hạ Hòa', 44, 1, '400', 2962, 0, 0),
(478, 'Huyện Lâm Thao', 44, 1, '400', 2929, 0, 0),
(479, 'Huyện Phù Ninh', 44, 1, '400', 2923, 0, 0),
(480, 'Huyện Tam Nông', 44, 1, '400', 8717, 0, 0),
(481, 'Huyện Tân Sơn', 44, 1, '400', 2994, 0, 0),
(482, 'Huyện Thanh Ba', 44, 1, '400', 2956, 0, 0),
(483, 'Huyện Thanh Sơn', 44, 1, '400', 2982, 0, 0),
(484, 'Huyện Thanh Thủy', 44, 1, '400', 2945, 0, 0),
(485, 'Huyện Yên Lập', 44, 1, '400', 2976, 0, 0),
(486, 'Thành phố Phủ Lý', 45, 1, '400', 4010, 0, 0),
(487, 'Huyện Duy Tiên', 45, 1, '400', 4023, 0, 0),
(488, 'Huyện Kim Bảng', 45, 1, '400', 4027, 0, 0),
(489, 'Huyện Lý Nhân', 45, 1, '400', 4015, 0, 0),
(490, 'Huyện Thanh Liêm', 45, 1, '400', 4033, 0, 0),
(491, 'Huyện Bình Lục', 45, 1, '400', 4038, 0, 0),
(492, 'Thành phố Nam Định', 46, 1, '400', 4210, 0, 0),
(493, 'Huyện Giao Thủy', 46, 1, '400', 4278, 0, 0),
(494, 'Huyện Hải Hậu', 46, 1, '400', 4282, 0, 0),
(495, 'Huyện Mỹ Lộc', 46, 1, '400', 4239, 0, 0),
(496, 'Huyện Nam Trực', 46, 1, '400', 4246, 0, 0),
(497, 'Huyện Nghĩa Hưng', 46, 1, '400', 4265, 0, 0),
(498, 'Huyện Trực Ninh', 46, 1, '400', 4251, 0, 0),
(499, 'Huyện Vụ Bản', 46, 1, '400', 4242, 0, 0),
(500, 'Huyện Xuân Trường', 46, 1, '400', 4271, 0, 0),
(501, 'Huyện Ý Yên', 46, 1, '400', 4346, 0, 0),
(502, 'Thành phố Thái Bình', 47, 1, '400', 4110, 0, 0),
(503, 'Huyện Đông Hưng', 47, 1, '400', 4121, 0, 0),
(504, 'Huyện Hưng Hà', 47, 1, '400', 4142, 0, 0),
(505, 'Huyện Kiến Xươn', 47, 1, '400', 4155, 0, 0),
(506, 'Huyện Quỳnh Phụ', 47, 1, '400', 4136, 0, 0),
(507, 'Huyện Thái Thụy', 47, 1, '400', 4128, 0, 0),
(508, 'Huyện Tiền Hải', 47, 1, '400', 4162, 0, 0),
(509, 'Huyện Vũ Thư', 47, 1, '400', 4149, 0, 0),
(510, 'Thành phố Ninh Bình', 48, 1, '400', 4310, 0, 0),
(511, 'Thị xã Tam Điệp', 48, 1, '400', 4333, 0, 0),
(512, 'Huyện Nho Quan', 48, 1, '400', 4326, 0, 0),
(513, 'Huyện Gia Viễn', 48, 1, '400', 4322, 0, 0),
(514, 'Huyện Hoa L­ư', 48, 1, '400', 0, 0, 0),
(515, 'Huyện Yên Khánh', 48, 1, '400', 4345, 0, 0),
(516, 'Huyện Kim Sơn', 48, 1, '400', 4339, 0, 0),
(517, 'Huyện Yên Mô', 48, 1, '400', 4336, 0, 0),
(518, 'Thành phố Thanh Hóa', 49, 1, '400', 4410, 0, 0),
(519, 'Thị xã Bỉm Sơn', 49, 1, '400', 4449, 0, 0),
(520, 'Thị xã Sầm Sơn', 49, 1, '400', 4420, 0, 0),
(521, 'Huyện Bá Thước', 49, 1, '400', 4481, 0, 0),
(522, 'Huyện Cẩm Thủy', 49, 1, '400', 4476, 0, 0),
(523, 'Huyện Đông Sơn', 49, 1, '400', 4452, 0, 0),
(524, 'Huyện Hà Trung', 49, 1, '400', 4444, 0, 0),
(525, 'Huyện Hậu Lộc', 49, 1, '400', 4431, 0, 0),
(526, 'Huyện Hoằng Hóa', 49, 1, '400', 4422, 0, 0),
(527, 'Huyện Lang Chánh', 49, 1, '400', 4523, 0, 0),
(528, 'Huyện Mường Lát', 49, 1, '400', 4532, 0, 0),
(529, 'Huyện Nga Sơn', 49, 1, '400', 4437, 0, 0),
(530, 'Huyện Ngọc Lặc', 49, 1, '400', 4516, 0, 0),
(531, 'Huyện Như Thanh', 49, 1, '400', 4546, 0, 0),
(532, 'Huyện Như Xuân', 49, 1, '400', 4551, 0, 0),
(533, 'Huyện Nông Cống', 49, 1, '400', 4538, 0, 0),
(534, 'Huyện Quan Hóa', 49, 1, '400', 4526, 0, 0),
(535, 'Huyện Quan Sơn', 49, 1, '400', 4529, 0, 0),
(536, 'Huyện Quảng Xương', 49, 1, '400', 4555, 0, 0),
(537, 'Huyện Thạch Thành', 49, 1, '400', 4470, 0, 0),
(538, 'Huyện Thiệu Hóa', 49, 1, '400', 4456, 0, 0),
(539, 'Huyện Thọ Xuân', 49, 1, '400', 4497, 0, 0),
(540, 'Thường Xuân', 49, 1, '400', 4534, 0, 0),
(541, 'Huyện Tĩnh Gia', 49, 1, '400', 4564, 0, 0),
(542, 'Huyện Triệu Sơn', 49, 1, '400', 4487, 0, 0),
(543, 'Huyện Vĩnh Lộc', 49, 1, '400', 4467, 0, 0),
(544, 'Yên Định', 49, 1, '400', 4462, 0, 0),
(545, 'Thành phố Vinh', 50, 1, '400', 4610, 0, 0),
(546, 'Thị xã Cửa Lò', 50, 1, '400', 4624, 0, 0),
(547, 'Thị xã Hoàng Mai', 50, 1, '400', 0, 0, 0),
(548, 'Thị xã Thái Hòa', 50, 1, '400', 4716, 0, 0),
(549, 'Huyện Anh Sơn', 50, 1, '400', 4724, 0, 0),
(550, 'Huyện Con Cuông', 50, 1, '400', 4730, 0, 0),
(551, 'Huyện Diễn Châu', 50, 1, '400', 4638, 0, 0),
(552, 'Huyện Đô Lươn', 50, 1, '400', 4714, 0, 0),
(553, 'Huyện Hưng Nguyên', 50, 1, '400', 4743, 0, 0),
(554, 'Huyện Quỳ Châu', 50, 1, '400', 4697, 0, 0),
(555, 'Huyện Kỳ Sơn', 50, 1, '400', 0, 0, 0),
(556, 'Huyện Nam Đàn', 50, 1, '400', 4749, 0, 0),
(557, 'Huyện Nghi Lộc', 50, 1, '400', 4626, 0, 0),
(558, 'Huyện Nghĩa Đàn', 50, 1, '400', 4674, 0, 0),
(559, 'Huyện Quế Phong', 50, 1, '400', 4711, 0, 0),
(560, 'Huyện Quỳ Hợp', 50, 1, '400', 4690, 0, 0),
(561, 'Huyện Quỳnh Lưu', 50, 1, '400', 4649, 0, 0),
(562, 'Huyện Tân Kỳ', 50, 1, '400', 4684, 0, 0),
(563, 'Huyện Thanh Chương', 50, 1, '400', 4757, 0, 0),
(564, 'Huyện Tương Dương', 50, 1, '400', 4733, 0, 0),
(565, 'Huyện Yên Thành', 50, 1, '400', 4662, 0, 0),
(566, 'Thành phố Hà Tĩnh', 51, 1, '400', 4810, 0, 0),
(567, 'Thị xã Hồng Lĩnh', 51, 1, '400', 4837, 0, 0),
(568, 'Huyện Cẩm Xuyê', 51, 1, '400', 4876, 0, 0),
(569, 'Huyện Can Lộc', 51, 1, '400', 4829, 0, 0),
(570, 'Huyện Đức Thọ', 51, 1, '400', 4849, 0, 0),
(571, 'Huyện Hương Khê', 51, 1, '400', 4869, 0, 0),
(572, 'Huyện Hương Sơn', 51, 1, '400', 4856, 0, 0),
(573, 'Huyện Kỳ Anh', 51, 1, '400', 4884, 0, 0),
(574, 'Huyện Nghi Xuân', 51, 1, '400', 4844, 0, 0),
(575, 'Huyện Thạch Hà', 51, 1, '400', 4819, 0, 0),
(576, 'Huyện Vũ Quang', 51, 1, '400', 4866, 0, 0),
(577, 'Huyện Lộc Hà', 51, 1, '400', 4891, 0, 0),
(578, 'Thị xã Bắc Kạn', 52, 1, '400', 2610, 0, 0),
(579, 'Huyện Ba Bể', 52, 1, '400', 2627, 0, 0),
(580, 'Huyện Bạch Thông', 52, 1, '400', 2619, 0, 0),
(581, 'Huyện Chợ Đồn', 52, 1, '400', 2632, 0, 0),
(582, 'Huyện Chợ Mới', 52, 1, '400', 8816, 0, 0),
(583, 'Huyện Na Rì', 52, 1, '400', 2613, 0, 0),
(584, 'Huyện Ngân Sơn', 52, 1, '400', 2623, 0, 0),
(585, 'Huyện Pác Nặm', 52, 1, '400', 2643, 0, 0),
(586, 'Thành phố Cao Bằng', 53, 1, '400', 0, 0, 0),
(587, 'Huyện Bảo Lạc', 53, 1, '400', 2762, 0, 0),
(588, 'Huyện Bảo Lâm', 53, 1, '400', 6743, 0, 0),
(589, 'Huyện Hạ Lang', 53, 1, '400', 2722, 0, 0),
(590, 'Huyện Hà Quảng', 53, 1, '400', 2746, 0, 0),
(591, 'Huyện Hòa An', 53, 1, '400', 2738, 0, 0),
(592, 'Huyện Nguyên Bình', 53, 1, '400', 2756, 0, 0),
(593, 'Huyện Phục Hòa', 53, 1, '400', 2778, 0, 0),
(594, 'Huyện Quảng Uyên', 53, 1, '400', 2715, 0, 0),
(595, 'Huyện Thạch An', 53, 1, '400', 2771, 0, 0),
(596, 'Huyện Thông Nông', 53, 1, '400', 2752, 0, 0),
(597, 'Huyện Trà Lĩnh', 53, 1, '400', 2734, 0, 0),
(598, 'Huyện Trùng Khánh', 53, 1, '400', 2727, 0, 0),
(599, 'Thành phố Hà Giang', 54, 1, '400', 0, 0, 0),
(600, 'Huyện Bắc Mê', 54, 1, '400', 3112, 0, 0),
(601, 'Huyện Bắc Quang', 54, 1, '400', 3148, 0, 0),
(602, 'Huyện Đồng Văn', 54, 1, '400', 3126, 0, 0),
(603, 'Huyện Hoàng Su Phì', 54, 1, '400', 3139, 0, 0),
(604, 'Huyện Mèo Vạc', 54, 1, '400', 3121, 0, 0),
(605, 'Huyện Quản Bạ', 54, 1, '400', 3131, 0, 0),
(606, 'Huyện Quang Bình', 54, 1, '400', 3152, 0, 0),
(607, 'Huyện Vị Xuyên', 54, 1, '400', 3134, 0, 0),
(608, 'Huyện Xín Mần', 54, 1, '400', 3144, 0, 0),
(609, 'Huyện Yên Minh', 54, 1, '400', 3115, 0, 0),
(610, 'Thành phố Tuyên Quang', 55, 1, '400', 0, 0, 0),
(611, 'Huyện Chiêm Hóa', 55, 1, '400', 3038, 0, 0),
(612, 'Huyện Hàm Yên', 55, 1, '400', 3055, 0, 0),
(613, 'Huyện Na Hang', 55, 1, '400', 3048, 0, 0),
(614, 'Huyện Sơn Dương', 55, 1, '400', 3028, 0, 0),
(615, 'Huyện Yên Sơn', 55, 1, '400', 3015, 0, 0),
(616, 'Huyện Lâm Bình', 55, 1, '400', 3056, 0, 0),
(617, 'Thành phố Sơn La', 56, 1, '400', 0, 0, 0),
(618, 'Huyện Quỳnh Nhai', 56, 1, '400', 3653, 0, 0),
(619, 'Huyện Mường La', 56, 1, '400', 3647, 0, 0),
(620, 'Huyện Thuận Châu', 56, 1, '400', 3657, 0, 0),
(621, 'Huyện Phù Yên', 56, 1, '400', 3636, 0, 0),
(622, 'Huyện Bắc Yên', 56, 1, '400', 3643, 0, 0),
(623, 'Huyện Mai Sơn', 56, 1, '400', 3615, 0, 0),
(624, 'Huyện Sông Mã', 56, 1, '400', 3668, 0, 0),
(625, 'Huyện Yên Châu', 56, 1, '400', 3624, 0, 0),
(626, 'Huyện Mộc Châu', 56, 1, '400', 3628, 0, 0),
(627, 'Huyện Sốp Cộp', 56, 1, '400', 3677, 0, 0),
(628, 'Huyện Vân Hồ', 56, 1, '400', 0, 0, 0),
(629, 'Thị xã Lai Châu', 57, 1, '400', 3910, 0, 0),
(630, 'Huyện Mường Tè', 57, 1, '400', 3919, 0, 0),
(631, 'Huyện Phong Thổ', 57, 1, '3915', 0, 0, 0),
(632, 'Huyện Sìn Hồ', 57, 1, '400', 3923, 0, 0),
(633, 'Huyện Tam Đường', 57, 1, '400', 3911, 0, 0),
(634, 'Huyện Than Uyên', 57, 1, '400', 3929, 0, 0),
(635, 'Huyện Tân Uyên', 57, 1, '400', 3940, 0, 0),
(636, 'Huyện Nậm Nhùn', 57, 1, '400', 0, 0, 0),
(637, 'Thành phố Điện Biên Phủ', 58, 1, '400', 3810, 0, 0),
(638, 'Thị xã Mường Lay', 58, 1, '400', 3839, 0, 0),
(639, 'Huyện Điện Biên', 58, 1, '400', 8837, 0, 0),
(640, 'Huyện Điện Biên Đông', 58, 1, '400', 3820, 0, 0),
(641, 'Huyện Mường Ảng', 58, 1, '400', 3848, 0, 0),
(642, 'Huyện Mường Chà', 58, 1, '400', 3833, 0, 0),
(643, 'Huyện Mường Nhé', 58, 1, '400', 3840, 0, 0),
(644, 'Huyện Tủa Chùa', 58, 1, '400', 3836, 0, 0),
(645, 'Huyện Tuần Giáo', 58, 1, '400', 3825, 0, 0),
(646, 'Huyện Nậm Pồ', 58, 1, '400', 0, 0, 0),
(647, 'Thành phố Lào Cai', 59, 1, '400', 3334, 0, 0),
(648, 'Huyện Bảo Thắng', 59, 1, '400', 3341, 0, 0),
(649, 'Huyện Bảo Yên', 59, 1, '400', 3353, 0, 0),
(650, 'Huyện Bát Xát', 59, 1, '400', 3325, 0, 0),
(651, 'Huyện Bắc Hà', 59, 1, '400', 3310, 0, 0),
(652, 'Huyện Mường Khương', 59, 1, '400', 3319, 0, 0),
(653, 'Huyện Sa Pa', 59, 1, '400', 3331, 0, 0),
(654, 'Huyện Si Ma Cai', 59, 1, '400', 3316, 0, 0),
(655, 'Huyện Văn Bàn', 59, 1, '400', 3347, 0, 0),
(656, 'Thành phố Yên Bái', 60, 1, '400', 3210, 0, 0),
(657, 'Thị xã Nghĩa Lộ', 60, 1, '400', 3256, 0, 0),
(658, 'Huyện Lục Yên', 60, 1, '400', 3226, 0, 0),
(659, 'Huyện Mù Cang Chải', 60, 1, '400', 3261, 0, 0),
(660, 'Huyện Trấn Yên', 60, 1, '400', 3233, 0, 0),
(661, 'Huyện Trạm Tấu', 60, 1, '400', 3259, 0, 0),
(662, 'Huyện Văn Chấn', 60, 1, '400', 3247, 0, 0),
(663, 'Huyện Văn Yên', 60, 1, '400', 3240, 0, 0),
(664, 'Huyện Yên Bình', 60, 1, '400', 3219, 0, 0),
(665, 'Thành phố Hòa Bình', 61, 1, '400', 0, 0, 0),
(666, 'Huyện Lương Sơn', 61, 1, '400', 3517, 0, 0),
(667, 'Huyện Cao Phong', 61, 1, '400', 3537, 0, 0),
(668, 'Huyện Đà Bắc', 61, 1, '400', 3522, 0, 0),
(669, 'Huyện Kim Bôi', 61, 1, '400', 3551, 0, 0),
(670, 'Huyện Kỳ Sơn', 61, 1, '400', 4738, 0, 0),
(671, 'Huyện Lạc Sơn', 61, 1, '400', 3539, 0, 0),
(672, 'Huyện Lạc Thủy', 61, 1, '400', 3558, 0, 0),
(673, 'Huyện Mai Châ', 61, 1, '400', 3533, 0, 0),
(674, 'Huyện Tân Lạc', 61, 1, '400', 3527, 0, 0),
(675, 'Huyện Yên Thủy', 61, 1, '400', 3548, 0, 0),
(676, 'Thành phố Thái Nguyên', 62, 1, '400', 2510, 0, 0),
(677, 'Thị xã Sông Công', 62, 1, '400', 2564, 0, 0),
(678, 'Huyện Đại Từ', 62, 1, '400', 2553, 0, 0),
(679, 'Huyện Định Hóa', 62, 1, '400', 2544, 0, 0),
(680, 'Huyện Đồng Hỷ', 62, 1, '400', 2525, 0, 0),
(681, 'Huyện Phổ Yên', 62, 1, '400', 2568, 0, 0),
(682, 'Huyện Phú Bình', 62, 1, '400', 2575, 0, 0),
(683, 'Huyện Phú Lương', 62, 1, '400', 2538, 0, 0),
(684, 'Huyện Võ Nhai', 62, 1, '400', 2532, 0, 0),
(685, 'Huyện Tràng Định', 63, 1, '400', 2410, 0, 0),
(686, 'Huyện Tràng Định', 63, 1, '400', 2431, 0, 0),
(687, 'Huyện Văn Lãng', 63, 1, '400', 2425, 0, 0),
(688, 'Huyện Văn Quan', 63, 1, '400', 2439, 0, 0),
(689, 'Huyện Bình Gia', 63, 1, '400', 2445, 0, 0),
(690, 'Huyện Bắc Sơn', 63, 1, '400', 2450, 0, 0),
(691, 'Huyện Hữu Lũng', 63, 1, '400', 2461, 0, 0),
(692, 'Huyện Chi Lăng', 63, 1, '400', 2456, 0, 0),
(693, 'Huyện Cao Lộc', 63, 1, '400', 2418, 0, 0),
(694, 'Huyện Lộc Bình', 63, 1, '400', 2468, 0, 0),
(695, 'Huyện Đình Lập', 63, 1, '400', 2475, 0, 0),
(696, 'Thành phố Đà Nẵng', 32, 1, '400', 0, 0, 0),
(697, 'Quận Hải Châu', 32, 1, '400', 5510, 0, 0),
(698, 'Quận Thanh Khê', 32, 1, '400', 5542, 0, 0),
(699, 'Quận Sơn Trà', 32, 1, '400', 5533, 0, 0),
(700, 'Quận Ngũ Hành Sơn', 32, 1, '400', 5568, 0, 0),
(701, 'Quận Liên Chiểu', 32, 1, '400', 5557, 0, 0),
(702, 'Quận Cẩm Lệ', 32, 1, '400', 5574, 0, 0),
(703, 'Huyện Hòa Vang', 32, 1, '400', 5564, 0, 0),
(704, 'Huyện Hoàng Sa', 32, 1, '400', 5573, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_faqs`
--

CREATE TABLE `coupons_faqs` (
  `news_id` smallint(5) NOT NULL,
  `news_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_search` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_category` smallint(5) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `news_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) NOT NULL,
  `views` smallint(5) NOT NULL,
  `created_date` int(11) NOT NULL,
  `price` double NOT NULL,
  `price_new` double NOT NULL,
  `filename_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_faqs`
--

INSERT INTO `coupons_faqs` (`news_id`, `news_name`, `news_search`, `news_url`, `news_content`, `news_img`, `news_category`, `description`, `news_link`, `pos`, `status`, `userid`, `views`, `created_date`, `price`, `price_new`, `filename_file`, `language`, `seo_title`, `seo_desc`, `seo_key`) VALUES
(1, 'câu hỏi 1', '', 'cau-hoi-1', 'câu hỏi 1', '', 98, 'Detail câu hỏi 1', '', 0, 1, 1, 0, 1553078811, 0, 0, '', 0, 'câu hỏi 1', 'câu hỏi 1', 'câu hỏi 1'),
(2, 'Câu hỏi 2', '', 'cau-hoi-2', 'Câu hỏi 2', '', 98, 'nội dung câu hỏi 2', '', 0, 1, 1, 0, 1553078832, 0, 0, '', 0, 'Câu hỏi 2', 'Câu hỏi 2', 'Câu hỏi 2'),
(3, 'Câu hỏi 3', '', 'cau-hoi-3', 'Nội dung câu hỏi 3', '', 98, 'Nội dung câu hỏi 3<br />\r\nNội dung câu hỏi 3<br />\r\nNội dung câu hỏi 3<br />\r\nNội dung câu hỏi 3<br />\r\nNội dung câu hỏi 3', '', 0, 1, 1, 0, 1553078857, 0, 0, '', 0, 'Câu hỏi 3', 'Nội dung câu hỏi 3', 'Câu hỏi 3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_fee_define`
--

CREATE TABLE `coupons_fee_define` (
  `id_fee` smallint(5) NOT NULL,
  `weight1` float(5,1) NOT NULL,
  `weight2` float(5,1) NOT NULL,
  `city_from` smallint(5) NOT NULL,
  `city_to` smallint(5) NOT NULL,
  `fee` double NOT NULL,
  `status` tinyint(4) NOT NULL,
  `other` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_fee_define`
--

INSERT INTO `coupons_fee_define` (`id_fee`, `weight1`, `weight2`, `city_from`, `city_to`, `fee`, `status`, `other`) VALUES
(1, 0.0, 50.0, 0, 20, 8000, 1, 0),
(3, 0.0, 50.0, 21, 100, 8000, 1, 0),
(4, 0.0, 50.0, 101, 300, 8500, 1, 0),
(5, 0.0, 50.0, 301, 2000, 10000, 1, 0),
(6, 0.0, 50.0, 301, 2000, 9000, 1, 1),
(7, 0.0, 50.0, 301, 2000, 9091, 1, 2),
(8, 51.0, 100.0, 0, 20, 8000, 1, 0),
(9, 51.0, 100.0, 21, 100, 11800, 1, 0),
(10, 51.0, 100.0, 101, 300, 12500, 1, 0),
(11, 51.0, 100.0, 301, 2000, 14000, 1, 0),
(12, 51.0, 100.0, 301, 2000, 13000, 1, 1),
(13, 51.0, 100.0, 301, 2000, 13300, 1, 2),
(14, 101.0, 250.0, 0, 20, 12500, 1, 0),
(15, 101.0, 250.0, 21, 100, 23900, 1, 0),
(16, 101.0, 250.0, 101, 300, 25300, 1, 0),
(17, 101.0, 250.0, 301, 2000, 29900, 1, 0),
(18, 101.0, 250.0, 301, 2000, 28000, 1, 1),
(19, 101.0, 250.0, 301, 2000, 28600, 1, 2),
(20, 251.0, 500.0, 0, 20, 12500, 1, 0),
(21, 251.0, 500.0, 21, 100, 23900, 1, 0),
(22, 251.0, 500.0, 101, 300, 25300, 1, 0),
(23, 251.0, 500.0, 301, 2000, 29900, 1, 0),
(24, 251.0, 500.0, 301, 2000, 28000, 1, 1),
(25, 251.0, 500.0, 301, 2000, 28600, 1, 2),
(26, 501.0, 1000.0, 0, 20, 16000, 1, 0),
(27, 501.0, 1000.0, 21, 100, 33200, 1, 0),
(28, 501.0, 1000.0, 101, 300, 34000, 1, 0),
(29, 501.0, 1000.0, 301, 2000, 43700, 1, 0),
(30, 501.0, 1000.0, 301, 2000, 40900, 1, 1),
(31, 501.0, 1000.0, 301, 2000, 41800, 1, 2),
(32, 1001.0, 1500.0, 0, 20, 19000, 1, 0),
(33, 1001.0, 1500.0, 21, 100, 40000, 1, 0),
(34, 1001.0, 1500.0, 101, 300, 41800, 1, 0),
(35, 1001.0, 1500.0, 301, 2000, 56400, 1, 0),
(36, 1001.0, 1500.0, 301, 2000, 52800, 1, 1),
(37, 1001.0, 1500.0, 301, 2000, 53900, 1, 2),
(38, 1501.0, 2000.0, 0, 20, 21000, 1, 0),
(39, 1501.0, 2000.0, 21, 100, 48400, 1, 0),
(40, 1501.0, 2000.0, 101, 300, 51700, 1, 0),
(41, 1501.0, 2000.0, 301, 2000, 68500, 1, 0),
(42, 1501.0, 2000.0, 301, 2000, 64100, 1, 1),
(43, 1501.0, 2000.0, 301, 2000, 65500, 1, 2),
(44, 2001.0, 9999.0, 0, 20, 1700, 1, 0),
(45, 2001.0, 9999.0, 21, 100, 3500, 1, 0),
(46, 2001.0, 9999.0, 101, 300, 4300, 1, 0),
(47, 2001.0, 9999.0, 301, 2000, 8500, 1, 0),
(48, 2001.0, 9999.0, 301, 2000, 7100, 1, 1),
(49, 2001.0, 9999.0, 301, 2000, 8100, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_hocbong`
--

CREATE TABLE `coupons_hocbong` (
  `news_id` smallint(5) NOT NULL,
  `news_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_search` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_category` smallint(5) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `news_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) NOT NULL,
  `views` smallint(5) NOT NULL,
  `created_date` int(11) NOT NULL,
  `price` double NOT NULL,
  `price_new` double NOT NULL,
  `filename_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_hocbong`
--

INSERT INTO `coupons_hocbong` (`news_id`, `news_name`, `news_search`, `news_url`, `news_content`, `news_img`, `news_category`, `description`, `news_link`, `pos`, `status`, `userid`, `views`, `created_date`, `price`, `price_new`, `filename_file`, `language`, `seo_title`, `seo_desc`, `seo_key`) VALUES
(1, 'Học bổng 1', '', 'hoc-bong-1', 'content ngắn', '0446-img_4.jpg', 115, 'content chi tiết', '', 0, 1, 1, 0, 1553179730, 0, 0, '', 0, 'Học bổng 1', 'content ngắn', 'Học bổng 1'),
(2, 'Học bổng 2', '', 'hoc-bong-2', 'Phó thủ tướng đề nghị J Trust nghiên cứu, trao đổi với CB và Ngân hàng Nhà nước về phương án bản chào. Trên cơ sở đó, Ngân hàng Nhà nước sẽ trình Chính phủ, Thủ tướng sớm xem xét, giải quyết.', '0345-img_3.jpg', 115, '<p>Làm việc với Phó thủ tướng Vương Đình Huệ chiều 29/3, ông Nobiru Adachi - Giám đốc điều hành cấp cao của Tập&nbsp;đoàn J Trust cho biết, tập đoàn này đã dành thời gian tìm hiểu và muốn tham gia vào quá trình tái cơ cấu các tổ chức tín dụng, ngân hàng yếu kém tại Việt Nam.</p>\r\n\r\n<p>Trong số 3 ngân hàng yếu kém đã được Chính phủ mua lại với giá 0 đồng, J Trust bày tỏ quan tâm tham gia cơ cấu lại Ngân hàng Xây dựng (CB).&nbsp;</p>\r\n\r\n<p>Ông Nobiru cho biết, tập đoàn này sẽ không chỉ tham gia góp vốn, mà sẽ hỗ trợ CB về mặt công nghệ, nghiệp vụ tài chính.&nbsp;Giám đốc điều hành Tập đoàn J Trust mong muốn được Chính phủ, Ngân hàng Nhà nước tạo điều kiện thuận lợi trong đàm phán mua vốn CB.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"box-sizing:border-box; font-family:arial; font-size:14px; margin:10px auto; max-width:100%; padding:0px; text-rendering:geometricprecision; width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Khách hàng giao dịch tại một chi nhánh của CBBank. Ảnh: NHXD\" src=\"https://i-kinhdoanh.vnecdn.net/2019/03/29/CBBank-3027-1553860260.jpg\" style=\"border:0px; box-sizing:border-box; font-size:0px; image-rendering:pixelated; line-height:0; margin:0px; max-width:100%; padding:0px; text-rendering:geometricprecision\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khách hàng giao dịch tại một chi nhánh của CBBank.&nbsp;<em>Ảnh: NHXD</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Đánh giá cao kinh nghiệm của Tập đoàn J Trust trong cơ cấu lại các ngân hàng, Phó thủ tướng Vương Đình Huệ cho biết, đề xuất của J Trust phù hợp với chủ trương của Chính phủ Việt Nam, là tạo điều kiện cho các nhà đầu tư trong và ngoài nước mua lại và phát triển các ngân hàng yếu kém tại Việt Nam. Với riêng Ngân hàng Xây dựng,&nbsp;Chính phủ muốn tìm đối tác chuyển nhượng hay bán lại ngân hàng này cho các đối tác để cơ cấu lại.</p>\r\n\r\n<p>Phó thủ tướng đề nghị J Trust nghiên cứu, trao đổi với CB và Ngân hàng Nhà nước về phương án bản chào. Trên cơ sở đó, Ngân hàng Nhà nước sẽ trình Chính phủ, Thủ tướng sớm xem xét, giải quyết.</p>\r\n\r\n<p>Ngân hàng Xây dựng tiền thân là Ngân hàng Đại Tín (Trust Bank), được Ngân hàng Nhà nước mua lại bắt buộc toàn bộ cổ phần với giá 0 đồng ngày 2/2/2015. Sau khi được mua lại và chuyển đổi mô hình hoạt động sang ngân hàng TNHH một thành viên kể từ ngày 5/3/2015, ngân hàng được đổi thành CBBank. Năm 2017 ngân hàng này thu hồi được hơn 5.700 tỷ đồng nợ xấu</p>\r\n\r\n<p>Tập đoàn J Trust tham gia vào các dịch vụ ngân hàng thương mại, dịch vụ tài chính bán lẻ và dịch vụ thu nợ trên khắp châu Á. J Trust&nbsp;có kinh nghiệm và chuyên môn sâu trong việc hỗ trợ các tổ chức tài chính đang gặp khó khăn và đã khôi phục thành công một số công ty tài chính tiêu dùng, mua lại và tái cơ cấu thành công một số ngân hàng yếu kém ở Hàn Quốc và Indonesia.</p>\r\n', '', 0, 1, 1, 0, 1553179785, 0, 0, '', 0, 'Học bổng 2', 'fsdf', 'Học bổng 2'),
(3, 'học bổng B', '', 'hoc-bong-b', 'content newcontent newcontent newcontent new<br />\r\ncontent newcontent newcontent new​content new&nbsp;<br />\r\ncontent newcontent newcontent new​content new', '0331-img_1.jpg', 115, '<p>Tiến khóa trái cửa nhà, nhốt bố mẹ bên trong, rồi lấy can xăng hai lít tự đổ vào người và phòng khách dọa sẽ phóng hỏa.</p>\r\n\r\n<p>Ngày 23/3, Cơ quan CSĐT Công an quận Hải An tạm giữ Nguyễn Mạnh Tiến (28 tuổi, trú phường Đằng Lâm, quận Hải An, TP Hải Phòng) để xử lý hành vi gây mất an ninh trật tự.</p>\r\n\r\n<p>Tối 22/3, sau khi xin bố mẹ 100 triệu đồng trả nợ nhưng không được, Tiến khóa trái cửa ngôi nhà, nhốt bố mẹ bên trong, rồi lấy can xăng hai lít đã chuẩn bị từ trước, tự đổ vào người và phòng khách dọa sẽ phóng hỏa thiêu chết cả nhà.</p>\r\n\r\n<p>Cảnh sát phòng cháy chữa cháy và cứu nạn cứu hộ Công an quận Hai An phối hợp cùng Công an phường Đằng Lâm đã sơ tán người, tài sản của các hộ dân lân cận, đồng thời tìm cách giải cứu những người bên trong nhà.</p>\r\n\r\n<p>Do ngôi nhà ba tầng khá kiên cố, đến 22h30 cùng ngày, nhà chức trách mới mở được cửa vào, khống chế Tiến.</p>\r\n\r\n<p>Khai với công an, Tiến thừa nhận hành vi đe dọa phóng hỏa thiêu rụi cả gia đình, đồng thời cam kết không tái phạm.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Tiến khóa trái cửa nhà, nhốt bố mẹ bên trong, rồi lấy can xăng hai lít tự đổ vào người và phòng khách dọa sẽ phóng hỏa.</p>\r\n\r\n<p>Ngày 23/3, Cơ quan CSĐT Công an quận Hải An tạm giữ Nguyễn Mạnh Tiến (28 tuổi, trú phường Đằng Lâm, quận Hải An, TP Hải Phòng) để xử lý hành vi gây mất an ninh trật tự.</p>\r\n\r\n<p>Tối 22/3, sau khi xin bố mẹ 100 triệu đồng trả nợ nhưng không được, Tiến khóa trái cửa ngôi nhà, nhốt bố mẹ bên trong, rồi lấy can xăng hai lít đã chuẩn bị từ trước, tự đổ vào người và phòng khách dọa sẽ phóng hỏa thiêu chết cả nhà.</p>\r\n\r\n<p>Cảnh sát phòng cháy chữa cháy và cứu nạn cứu hộ Công an quận Hai An phối hợp cùng Công an phường Đằng Lâm đã sơ tán người, tài sản của các hộ dân lân cận, đồng thời tìm cách giải cứu những người bên trong nhà.</p>\r\n\r\n<p>Do ngôi nhà ba tầng khá kiên cố, đến 22h30 cùng ngày, nhà chức trách mới mở được cửa vào, khống chế Tiến.</p>\r\n\r\n<p>Khai với công an, Tiến thừa nhận hành vi đe dọa phóng hỏa thiêu rụi cả gia đình, đồng thời cam kết không tái phạm.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Tiến khóa trái cửa nhà, nhốt bố mẹ bên trong, rồi lấy can xăng hai lít tự đổ vào người và phòng khách dọa sẽ phóng hỏa.</p>\r\n\r\n<p>Ngày 23/3, Cơ quan CSĐT Công an quận Hải An tạm giữ Nguyễn Mạnh Tiến (28 tuổi, trú phường Đằng Lâm, quận Hải An, TP Hải Phòng) để xử lý hành vi gây mất an ninh trật tự.</p>\r\n\r\n<p>Tối 22/3, sau khi xin bố mẹ 100 triệu đồng trả nợ nhưng không được, Tiến khóa trái cửa ngôi nhà, nhốt bố mẹ bên trong, rồi lấy can xăng hai lít đã chuẩn bị từ trước, tự đổ vào người và phòng khách dọa sẽ phóng hỏa thiêu chết cả nhà.</p>\r\n\r\n<p>Cảnh sát phòng cháy chữa cháy và cứu nạn cứu hộ Công an quận Hai An phối hợp cùng Công an phường Đằng Lâm đã sơ tán người, tài sản của các hộ dân lân cận, đồng thời tìm cách giải cứu những người bên trong nhà.</p>\r\n\r\n<p>Do ngôi nhà ba tầng khá kiên cố, đến 22h30 cùng ngày, nhà chức trách mới mở được cửa vào, khống chế Tiến.</p>\r\n\r\n<p>Khai với công an, Tiến thừa nhận hành vi đe dọa phóng hỏa thiêu rụi cả gia đình, đồng thời cam kết không tái phạm.</p>\r\n', '', 0, 1, 1, 0, 1553179891, 0, 0, '', 0, 'học bổng B', 'content new', 'học bổng B');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_img`
--

CREATE TABLE `coupons_img` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_import`
--

CREATE TABLE `coupons_import` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `import_date` int(11) NOT NULL,
  `import_quantity` int(11) NOT NULL,
  `import_price` int(11) NOT NULL,
  `import_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_keyword`
--

CREATE TABLE `coupons_keyword` (
  `id` smallint(5) NOT NULL,
  `category_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(900) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hits` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` smallint(5) NOT NULL,
  `time` int(11) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_module`
--

CREATE TABLE `coupons_module` (
  `module_id` smallint(5) NOT NULL,
  `parent` smallint(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `action_views` tinyint(4) NOT NULL,
  `action_insert` tinyint(4) NOT NULL,
  `action_edit` tinyint(4) NOT NULL,
  `action_delete` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_module`
--

INSERT INTO `coupons_module` (`module_id`, `parent`, `name`, `content`, `link`, `icon`, `action_views`, `action_insert`, `action_edit`, `action_delete`, `status`, `pos`, `language`) VALUES
(1, 0, 'Hệ thống', 'Hệ thống', '', 'fa-cog', 1, 1, 1, 1, 1, 1, 0),
(2, 1, 'Danh sách chức năng', 'Chức năng', 'modules', 'fa-arrows', 1, 1, 1, 1, 1, 1, 0),
(4, 0, 'Danh sách danh mục', 'danh mục', 'categorys', 'fa-th-large', 1, 1, 1, 1, 0, 5, 0),
(5, 0, 'Danh sách banner', 'Banner', 'banners', 'fa-picture-o', 1, 1, 1, 1, 0, 6, 0),
(6, 0, 'Bộ lọc vị trí', 'Bộ lọc', '', 'fa-share-alt-square', 1, 1, 1, 1, 0, 10, 0),
(7, 6, 'Bộ lọc thời gian', 'bộ lọc', 'filterones', 'fa-share-square', 1, 1, 1, 1, 0, 1, 0),
(8, 6, 'Bộ lọc loại việc', 'bộ lọc', 'filtertwos', 'fa-share-square', 1, 1, 1, 1, 0, 2, 0),
(9, 6, 'Bộ lọc hôn nhân', 'bộ lọc', 'filterthrees', 'fa-share-square', 1, 1, 1, 1, 0, 3, 0),
(10, 6, 'Bộ lọc mức giá', 'bộ lọc', 'filterfours', 'fa-share-square', 1, 1, 1, 1, 0, 4, 0),
(11, 22, 'Thuộc tính nhân viên', 'thuộc tính', 'propertys', 'fa-adn', 1, 1, 1, 1, 0, 2, 0),
(12, 23, 'Danh sách tỉnh thành', 'tỉnh thành', 'cities', 'fa-map-marker', 1, 1, 1, 1, 1, 20, 0),
(13, 23, 'Danh sách quận huyện', 'quận huyện', 'districts', 'fa-map-marker', 1, 1, 1, 1, 1, 20, 0),
(14, 22, 'Danh sách nhà cung cấp', 'nhà cung cấp', 'shops', 'fa-apple', 1, 1, 1, 1, 0, 1, 0),
(15, 0, 'Tư vấn và hỗ trợ', 'hỗ trợ', '', 'fa-reddit-square', 1, 1, 1, 1, 0, 11, 0),
(16, 15, 'Hỗ trợ online', 'hỗ trợ', 'onlines', 'fa-share', 1, 1, 1, 1, 1, 1, 0),
(17, 15, 'Danh sách tư vấn', 'tư vấn', 'supports', 'fa-share', 1, 1, 1, 1, 1, 2, 0),
(18, 15, 'Danh sách hỏi đáp', 'hỏi đáp', 'faqs', 'fa-share', 1, 1, 1, 1, 1, 3, 0),
(19, 0, 'Danh sách từ khóa', 'từ khóa', 'keywords', 'fa-google-plus-square', 1, 1, 1, 1, 0, 9, 0),
(20, 22, 'Danh sách thảo luận', 'thảo luận', 'comments', 'fa-comment', 1, 1, 1, 1, 0, 3, 0),
(21, 0, 'Danh mục nội dung', 'nội dung', 'news', 'fa-hacker-news', 1, 1, 1, 1, 0, 8, 0),
(22, 0, 'Quản lý nhân viên', 'nhân viên', '', 'fa-th-list', 1, 1, 1, 1, 1, 2, 0),
(23, 0, 'Quản lý địa điểm', 'địa điểm', '', 'fa-map-marker', 1, 1, 1, 1, 0, 15, 0),
(24, 22, 'Danh sách nhân viên', 'Nhân viên', 'products', 'fa-th-large', 1, 1, 1, 1, 1, 0, 0),
(25, 1, 'Cấu hình website', 'cấu hình', 'configs', 'fa-cog', 1, 1, 1, 1, 1, 3, 0),
(28, 57, 'Quản lý kho hàng', 'quản lý kho', 'manages', 'fa-globe', 1, 1, 1, 1, 0, 3, 0),
(29, 0, 'System', 'system', '', 'fa-cog', 1, 1, 1, 1, 1, 1, 1),
(30, 29, 'List Functions', 'Functions', 'modules', 'fa-arrows', 1, 1, 1, 1, 1, 1, 1),
(31, 29, 'List of Customers', 'Customers', 'users', 'fa-group', 1, 1, 1, 1, 1, 2, 1),
(32, 29, 'Configure Website', 'configure', 'configs', 'fa-cog', 1, 1, 1, 1, 1, 3, 1),
(33, 0, 'Manager Jobs', 'product', '', 'fa-th-list', 1, 1, 1, 1, 1, 2, 1),
(34, 33, 'List jobs', 'products', 'products', 'fa-th-large', 1, 1, 1, 1, 1, 1, 1),
(35, 33, 'List suppliers', 'suppliers', 'shops', 'fa-apple', 1, 1, 1, 1, 1, 2, 1),
(36, 33, 'List propertys', 'propertys', 'propertys', 'fa-adn', 1, 1, 1, 1, 1, 3, 1),
(37, 33, 'List comments', 'comments', 'comments', 'fa-comment', 1, 1, 1, 1, 1, 4, 1),
(38, 59, 'Customer Orders', 'Customer Orders', 'porders', 'fa-suitcase', 1, 1, 1, 1, 1, 3, 1),
(39, 59, 'List apply jobseekers', 'order', 'purchases', 'fa-suitcase', 1, 1, 1, 1, 0, 2, 1),
(41, 0, 'List banners', 'banner', 'banners', 'fa-picture-o', 1, 1, 1, 1, 1, 6, 1),
(42, 0, 'List categories', 'categorie', 'categorys', 'fa-th-large', 1, 1, 1, 1, 1, 5, 1),
(43, 0, 'List contents', 'content', 'news', 'fa-hacker-news', 1, 1, 1, 1, 1, 8, 1),
(44, 0, 'List keywords', 'keyword', 'keywords', 'fa-google-plus-square', 1, 1, 1, 1, 1, 9, 1),
(45, 0, 'Filter products', 'filter', '', 'fa-share-alt-square', 1, 1, 1, 1, 1, 10, 1),
(46, 45, 'Filter one', 'one', 'filterones', 'fa-share-square', 1, 1, 1, 1, 1, 1, 1),
(47, 45, 'Filter two', 'two', 'filtertwos', 'fa-share-square', 1, 1, 1, 1, 1, 2, 1),
(48, 45, 'Filter three', 'three', 'filterthrees', 'fa-share-square', 1, 1, 1, 1, 1, 3, 1),
(49, 45, 'Filter four', 'four', 'filterfours', 'fa-share-square', 1, 1, 1, 1, 1, 4, 1),
(50, 0, 'Advisory and support', 'support', '', 'fa-reddit-square', 1, 1, 1, 1, 1, 11, 1),
(51, 50, 'Online advisory ', 'advisory', 'onlines', 'fa-share', 1, 1, 1, 1, 1, 1, 1),
(52, 50, 'List supports', 'support', 'supports', 'fa-share', 1, 1, 1, 1, 1, 2, 1),
(53, 50, 'List faqs', 'faq', 'faqs', 'fa-share', 1, 1, 1, 1, 1, 3, 1),
(54, 0, 'Manager location', 'location', '', 'fa-map-marker', 1, 1, 1, 1, 1, 12, 1),
(55, 54, 'List cities', 'city', 'cities', 'fa-map-marker', 1, 1, 1, 1, 1, 1, 1),
(56, 54, 'List districts', 'district', 'districts', 'fa-map-marker', 1, 1, 1, 1, 1, 2, 1),
(58, 57, 'Thống kê nhập kho', 'nhập kho', 'imports', 'fa-globe', 1, 1, 1, 1, 0, 4, 0),
(59, 0, 'Order Management', 'Orders', '', 'fa-suitcase', 1, 1, 1, 1, 1, 3, 1),
(61, 59, 'Manager import', 'import', 'imports', 'fa-globe', 1, 1, 1, 1, 1, 4, 1),
(62, 59, 'Manager stores', 'warehouse', 'manages', 'fa-globe', 1, 1, 1, 1, 1, 3, 1),
(63, 0, 'Manager jobseeker', 'jobseeker', '', 'fa-th-list', 1, 1, 1, 1, 0, 1, 1),
(64, 63, 'List Jobseekers', 'jobseekers', 'jobseekers', 'fa-th-list', 1, 1, 1, 1, 1, 1, 1),
(75, 29, 'List of Translators', 'List of Translators', 'users_cv', 'fa-th-list', 1, 1, 1, 1, 1, 2, 1),
(76, 0, 'Software Translation', 'Software Translation', '', 'fa-th-large', 1, 1, 1, 1, 1, 3, 1),
(77, 76, 'List of Software', 'List of Software', 'software', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(78, 0, 'Online Translators-Map', 'Online Translators-Map', '', 'fa-th-large', 1, 1, 1, 1, 1, 4, 1),
(79, 78, 'List of Translators', 'List of Translators', 'translater', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(80, 0, 'Price-Language', 'Price-Language', '', 'fa-th-large', 1, 1, 1, 1, 1, 5, 1),
(81, 80, 'Price List', 'Price List', 'language', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(82, 0, 'Manage Country', 'Manage Country', 'country', 'fa-th-list', 1, 1, 1, 1, 1, 6, 1),
(83, 0, 'Manage Specialized', 'Manage Specialized', '', 'fa-th-large', 1, 1, 1, 1, 1, 7, 1),
(84, 83, 'List Specialized', 'List Specialized', 'special', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(85, 0, 'Manage Area Code', 'Manage Area Code', 'area_code', 'fa-th-list', 1, 1, 1, 1, 1, 8, 1),
(86, 0, 'Manage language', 'Manage language', 'list_language', 'fa-th-list', 1, 1, 1, 1, 1, 9, 1),
(87, 0, 'Manage Service', 'Manage Service', 'service', 'fa-th-list', 1, 1, 1, 1, 1, 8, 1),
(88, 59, 'Translator Orders', 'Translator\'s Orders', 'trans_order', 'fa-th-list', 1, 1, 1, 1, 1, 0, 1),
(89, 0, 'Experience', 'Experience', 'kinhnghiem', 'fa-th-list', 1, 1, 1, 1, 1, 8, 1),
(90, 0, 'List new category', 'List new category', 'news_category', 'fa-th-list', 1, 1, 1, 1, 1, 11, 1),
(91, 0, 'Quản lý học bổng', 'học bổng', 'hocbong', 'fa-th-list', 1, 1, 1, 1, 1, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_news`
--

CREATE TABLE `coupons_news` (
  `news_id` smallint(5) NOT NULL,
  `news_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_search` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_category` int(11) NOT NULL,
  `other_category` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `news_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `status_slide` tinyint(4) NOT NULL,
  `status_home` tinyint(4) NOT NULL,
  `userid` int(11) NOT NULL,
  `views` smallint(5) NOT NULL,
  `created_date` int(11) NOT NULL,
  `price` double NOT NULL,
  `price_new` double NOT NULL,
  `filename_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_news`
--

INSERT INTO `coupons_news` (`news_id`, `news_name`, `news_search`, `news_url`, `news_content`, `news_img`, `news_category`, `other_category`, `description`, `news_link`, `pos`, `status`, `status_slide`, `status_home`, `userid`, `views`, `created_date`, `price`, `price_new`, `filename_file`, `language`, `seo_title`, `seo_desc`, `seo_key`) VALUES
(12, 'Đội ngũ sáng lập', '', 'doi-ngu-sang-lap', '<p style=\"text-align:justify\">Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn hóa, bùng nổ thông tin, kiến thức và công nghệ cao... Những tiến bộ xã hội đó đã và đang mang lại những cơ hội đi kèm những thách thức, tạo ra sức ép phải có sự thay đổi trong đội ngũ lao động trí thức. Nguồn nhân lực trẻ phải có khả năng làm việc theo nhóm, năng động, sáng tạo, lãnh đạo…, phù hợp với yêu cầu của xã hội hiện đại. Việc học tập của sinh viên không thể là thụ động tiếp thu bài giảng mà phải tham gia tích cực vào bài giảng, hoạt động tập thể, dự án để có thể tham gia một cách hiệu quả vào các hoạt động nghề nghiệp và hoạt động xã hội sau này.</p>\r\n', '', 3, 0, '<p style=\"text-align:justify\">Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn hóa, bùng nổ thông tin, kiến thức và công nghệ cao... Những tiến bộ xã hội đó đã và đang mang lại những cơ hội đi kèm những thách thức, tạo ra sức ép phải có sự thay đổi trong đội ngũ lao động trí thức. Nguồn nhân lực trẻ phải có khả năng làm việc theo nhóm, năng động, sáng tạo, lãnh đạo…, phù hợp với yêu cầu của xã hội hiện đại. Việc học tập của sinh viên không thể là thụ động tiếp thu bài giảng mà phải tham gia tích cực vào bài giảng, hoạt động tập thể, dự án để có thể tham gia một cách hiệu quả vào các hoạt động nghề nghiệp và hoạt động xã hội sau này.</p>\r\n\r\n<p style=\"text-align:justify\">Bạn muốn trải nghiệm môi trường học tập và ăn ở tại một ngôi trường nổi tiếng thế giới đó là Harvard University. Bạn cùng chúng tôi tham dự học luyện SAT, ESL , được giảng dạy và tham gia các dự án nghiên cứu cùng giáo sư Harvard University, Yale University, Princeton University, Boston University, UC Berkeley University&nbsp; trong thời gian học luyện SAT, sau khi kết thúc khóa học bạn được cấp chứng chỉ của tổ chức và thư giới thiệu để làm hành trang xin học bổng các trường danh tiếng Mỹ. Văn phòng AMV độc quyền chương trình học luyện thi SAT tại Harvard University.</p>\r\n', '', 0, 1, 0, 0, 1, 34, 1552483067, 0, 0, '', 0, 'Đội ngũ sáng lập', 'Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn hóa, bùng nổ thông tin, kiến thức và công nghệ cao... Những tiến bộ xã hội đó đã và đang mang lại những cơ hội đi kèm những thách thức, tạo ra sức ép phải có sự thay đổi trong đội ngũ lao động trí thức. Nguồn nhân lực trẻ phải có khả năng làm việc theo nhóm, năng động, sáng tạo, lãnh đạo…, phù hợp với yêu cầu của xã hội hiện đại. Việc học tập của sinh viên không thể là thụ động tiếp thu bài giảng mà', 'Đội ngũ sáng lập'),
(13, 'Chương trình điều phối', '', 'chuong-trinh-dieu-phoi', '<p style=\"text-align:justify\">Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn hóa, bùng nổ thông tin, kiến thức và công nghệ cao... Những tiến bộ xã hội đó đã và đang mang lại những cơ hội đi kèm những thách thức, tạo ra sức ép phải có sự thay đổi trong đội ngũ lao động trí thức. Nguồn nhân lực trẻ phải có khả năng làm việc theo nhóm, năng động, sáng tạo, lãnh đạo…, phù hợp với yêu cầu của xã hội hiện đại. Việc học tập của sinh viên không thể là thụ động tiếp thu bài giảng mà phải tham gia tích cực vào bài giảng, hoạt động tập thể, dự án để có thể tham gia một cách hiệu quả vào các hoạt động nghề nghiệp và hoạt động xã hội sau này.</p>\r\n\r\n<p style=\"text-align:justify\">Bạn muốn trải nghiệm môi trường học tập và ăn ở tại một ngôi trường nổi tiếng thế giới đó là Harvard University. Bạn cùng chúng tôi tham dự học luyện SAT, ESL , được giảng dạy và tham gia các dự án nghiên cứu cùng giáo sư Harvard University, Yale University, Princeton University, Boston University, UC Berkeley University&nbsp; trong thời gian học luyện SAT, sau khi kết thúc khóa học bạn được cấp chứng chỉ của tổ chức và thư giới thiệu để làm hành trang xin học bổng các trường danh tiếng Mỹ. Văn phòng AMV độc quyền chương trình học luyện thi SAT tại Harvard University.</p>\r\n', '', 3, 0, '<p style=\"text-align:justify\">Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn hóa, bùng nổ thông tin, kiến thức và công nghệ cao... Những tiến bộ xã hội đó đã và đang mang lại những cơ hội đi kèm những thách thức, tạo ra sức ép phải có sự thay đổi trong đội ngũ lao động trí thức. Nguồn nhân lực trẻ phải có khả năng làm việc theo nhóm, năng động, sáng tạo, lãnh đạo…, phù hợp với yêu cầu của xã hội hiện đại. Việc học tập của sinh viên không thể là thụ động tiếp thu bài giảng mà phải tham gia tích cực vào bài giảng, hoạt động tập thể, dự án để có thể tham gia một cách hiệu quả vào các hoạt động nghề nghiệp và hoạt động xã hội sau này.</p>\r\n\r\n<p style=\"text-align:justify\">Bạn muốn trải nghiệm môi trường học tập và ăn ở tại một ngôi trường nổi tiếng thế giới đó là Harvard University. Bạn cùng chúng tôi tham dự học luyện SAT, ESL , được giảng dạy và tham gia các dự án nghiên cứu cùng giáo sư Harvard University, Yale University, Princeton University, Boston University, UC Berkeley University&nbsp; trong thời gian học luyện SAT, sau khi kết thúc khóa học bạn được cấp chứng chỉ của tổ chức và thư giới thiệu để làm hành trang xin học bổng các trường danh tiếng Mỹ. Văn phòng AMV độc quyền chương trình học luyện thi SAT tại Harvard University.</p>\r\n', '', 0, 1, 0, 0, 1, 11, 1552483106, 0, 0, '', 0, 'Chương trình điều phối', 'Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn hóa, bùng nổ thông tin, kiến thức và công nghệ cao... Những tiến bộ xã hội đó đã và đang mang lại những cơ hội đi kèm những thách thức, tạo ra sức ép phải có sự thay đổi trong đội ngũ lao động trí thức. Nguồn nhân lực trẻ phải có khả năng làm việc theo nhóm, năng động, sáng tạo, lãnh đạo…, phù hợp với yêu cầu của xã hội hiện đại. Việc học tập của sinh viên không thể là thụ động tiếp thu bài giảng mà', 'Chương trình điều phối'),
(14, 'Triết lý giáo dục', '', 'triet-ly-giao-duc', '<p style=\"text-align:justify\">Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn hóa, bùng nổ thông tin, kiến thức và công nghệ cao... Những tiến bộ xã hội đó đã và đang mang lại những cơ hội đi kèm những thách thức, tạo ra sức ép phải có sự thay đổi trong đội ngũ lao động trí thức. Nguồn nhân lực trẻ phải có khả năng làm việc theo nhóm, năng động, sáng tạo, lãnh đạo…, phù hợp với yêu cầu của xã hội hiện đại. Việc học tập của sinh viên không thể là thụ động tiếp thu bài giảng mà phải tham gia tích cực vào bài giảng, hoạt động tập thể, dự án để có thể tham gia một cách hiệu quả vào các hoạt động nghề nghiệp và hoạt động xã hội sau này.</p>\r\n\r\n<p style=\"text-align:justify\">Bạn muốn trải nghiệm môi trường học tập và ăn ở tại một ngôi trường nổi tiếng thế giới đó là Harvard University. Bạn cùng chúng tôi tham dự học luyện SAT, ESL , được giảng dạy và tham gia các dự án nghiên cứu cùng giáo sư Harvard University, Yale University, Princeton University, Boston University, UC Berkeley University&nbsp; trong thời gian học luyện SAT, sau khi kết thúc khóa học bạn được cấp chứng chỉ của tổ chức và thư giới thiệu để làm hành trang xin học bổng các trường danh tiếng Mỹ. Văn phòng AMV độc quyền chương trình học luyện thi SAT tại Harvard University.</p>\r\n', '', 3, 0, '<p style=\"text-align:justify\">Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn hóa, bùng nổ thông tin, kiến thức và công nghệ cao... Những tiến bộ xã hội đó đã và đang mang lại những cơ hội đi kèm những thách thức, tạo ra sức ép phải có sự thay đổi trong đội ngũ lao động trí thức. Nguồn nhân lực trẻ phải có khả năng làm việc theo nhóm, năng động, sáng tạo, lãnh đạo…, phù hợp với yêu cầu của xã hội hiện đại. Việc học tập của sinh viên không thể là thụ động tiếp thu bài giảng mà phải tham gia tích cực vào bài giảng, hoạt động tập thể, dự án để có thể tham gia một cách hiệu quả vào các hoạt động nghề nghiệp và hoạt động xã hội sau này.</p>\r\n\r\n<p style=\"text-align:justify\">Bạn muốn trải nghiệm môi trường học tập và ăn ở tại một ngôi trường nổi tiếng thế giới đó là Harvard University. Bạn cùng chúng tôi tham dự học luyện SAT, ESL , được giảng dạy và tham gia các dự án nghiên cứu cùng giáo sư Harvard University, Yale University, Princeton University, Boston University, UC Berkeley University&nbsp; trong thời gian học luyện SAT, sau khi kết thúc khóa học bạn được cấp chứng chỉ của tổ chức và thư giới thiệu để làm hành trang xin học bổng các trường danh tiếng Mỹ. Văn phòng AMV độc quyền chương trình học luyện thi SAT tại Harvard University.</p>\r\n', '', 0, 1, 0, 0, 1, 4, 1552483127, 0, 0, '', 0, 'Triết lý giáo dục', 'Thế kỷ XXI đang chứng kiến những thay đổi mạnh mẽ về sự đa dạng văn hóa, bùng nổ thông tin, kiến thức và công nghệ cao... Những tiến bộ xã hội đó đã và đang mang lại những cơ hội đi kèm những thách thức, tạo ra sức ép phải có sự thay đổi trong đội ngũ lao động trí thức. Nguồn nhân lực trẻ phải có khả năng làm việc theo nhóm, năng động, sáng tạo, lãnh đạo…, phù hợp với yêu cầu của xã hội hiện đại. Việc học tập của sinh viên không thể là thụ động tiếp thu bài giảng mà', 'Triết lý giáo dục'),
(15, 'Những điều cần biết về du học Trung Quốc', '', 'content-bai-viet-1', 'Vậy là bạn muốn du học Trung Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Trung Quốc.', '0753-img1.jpg', 119, 0, 'Vậy là bạn muốn du học Trung Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Trung Quốc.Vậy là bạn muốn du học Trung Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Trung Quốc.Vậy là bạn muốn du học Trung Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Trung Quốc.Vậy là bạn muốn du học Trung Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Trung Quốc.Vậy là bạn muốn du học Trung Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Trung Quốc.', '', 0, 1, 0, 0, 1, 0, 1553279513, 0, 0, '', 0, 'Content bài viết 1', 'Content bài viết 1', 'Content bài viết 1'),
(16, 'Với hơn 1.000 chương trình giảng dạy bằng tiếng Anh hiện có trên Hotcourses', '', 'content-bai-viet-2', 'Content bài viết 2', '0716-img_3.jpg', 120, 0, 'Với hơn 1.000 chương trình giảng dạy bằng tiếng Anh hiện có trên Hotcourses, bạn sẽ dễ dàng nhận ra chính phủ Hàn Quốc hiện đang rất quan tâm đến các sinh viên quốc tế và vẫn đang nỗ lực thu hút thêm nhiều sinh viên nước ngoài sang đây du học.<br />\r\n<br />\r\n&nbsp;Những con số biết nói<br />\r\n&nbsp;<br />\r\nCó hơn 370 trường đại học tại Hàn Quốc<br />\r\nTỉ lệ người lớn biết chữ tại Hàn Quốc là hơn 97%', '', 0, 1, 0, 0, 1, 0, 1553279536, 0, 0, '', 0, 'Content bài viết 2', 'Content bài viết 2', 'Content bài viết 2'),
(17, 'Nếu bạn mong muốn được đi học ở Hàn Quốc nhưng chưa hiểu rõ về visa du học cho sinh viên quốc tế', '', 'content-bai-viet-3', 'Content bài viết 3', '1218-img_2.jpg', 119, 0, 'Content bài viết 3<br />\r\nContent bài viết 3<br />\r\nContent bài viết 3<br />\r\n​Content bài viết 3<br />\r\n​<br />\r\n​', '', 0, 1, 0, 0, 1, 0, 1553340198, 0, 0, '', 0, 'Content bài viết 3', 'Content bài viết 3', 'Content bài viết 3'),
(18, 'Những điều cần biết về du học Hàn Quốc', '', 'content-bai-viet-4', 'Vậy là bạn muốn du học Hàn Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Hàn Quốc.', '1255-img_3.jpg', 119, 0, 'Vậy là bạn muốn du học Hàn Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Hàn Quốc.Vậy là bạn muốn du học Hàn Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Hàn Quốc.Vậy là bạn muốn du học Hàn Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Hàn Quốc.Vậy là bạn muốn du học Hàn Quốc? Mục những điều cần biết sẽ giúp bạn có những hiểu biết cơ bản nhất về du học. Nhưng nếu bạn muốn tìm hiểu toàn diện hơn về chặng đường du học thì không nên bỏ lỡ những bước tiếp theo. Những nội dung này sẽ giúp bạn chuẩn bị một cách tốt nhất cho hành trình du học Hàn Quốc.', '', 0, 1, 0, 0, 1, 0, 1553340295, 0, 0, '', 0, 'Content bài viết 4', 'Content bài viết 4', 'Content bài viết 4'),
(19, 'Du học không cần SAT tại trường đại học top 100 ở Mỹ', '', 'content-tin-tuc', 'Học sinh lớp 12 hoặc tốt nghiệp THPT tại Việt Nam đăng ký dự tuyển vào Đại học New Hampshire thông qua chương trình GSSP được miễn IELTS và SAT.&nbsp;', '0636-statue-of-liberty-267948_1920.jpg', 122, 115, '<p>Học sinh lớp 12 hoặc tốt nghiệp THPT tại Việt Nam đăng ký dự tuyển vào Đại học New Hampshire thông qua chương trình GSSP được miễn IELTS và SAT.&nbsp;</p>\r\n\r\n<p>Cô Meredith Faxon - đại diện trường Đại học New Hampshire sẽ có buổi giới thiệu thông tin và tư vấn trực tiếp cho học sinh vào lúc 17h, thứ Tư ngày 27/3, tại WorldLink Education, 12A Phan Kế Bính, phường Đa Kao, quận 1, TP HCM.</p>\r\n\r\n<p>Học sinh, sinh viên mang theo học bạ, bảng điểm và các chứng chỉ tiếng Anh (nếu có) để được tư vấn cụ thể.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" class=\"tplCaption\" style=\"box-sizing:border-box; margin:10px auto; max-width:100%; padding:0px; text-rendering:geometricprecision; width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><img alt=\"Khuôn viên trường Đại học New Hampshire.\" src=\"https://i-vnexpress.vnecdn.net/2019/03/21/20-3-20191-w500-1352-1553136723.png\" style=\"border:0px; box-sizing:border-box; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-rendering:geometricprecision\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khuôn viên trường Đại học New Hampshire.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>University of New Hampshire là một trong những trường đại học công lập nghiên cứu hàng đầu, tọa lạc tại thành phố biển Durham, bang New Hampshire, Mỹ.</p>\r\n\r\n<p>Nằm trong top 100 trường đại học hàng đầu của Mỹ, New Hampshire cung cấp cho sinh viên môi trường học tập với chương trình toàn diện và chất lượng giảng dạy cao.</p>\r\n\r\n<p>Cách thành phố Boston một giờ đi xe, cách New York bốn tiếng, nơi đây vốn dĩ là cái nôi của những phát minh và kỹ thuật tiên tiến trên thế giới. Ngoài ra, tiểu bang New Hampshire còn nằm trong top ba bang an toàn với trình độ dân trí cao nhất nước Mỹ và là một trong 4 bang không bị đánh thuế mua hàng. Những yếu tố này góp phần tạo nên môi trường học tập và sinh hoạt phù hợp cho học sinh quốc tế.</p>\r\n\r\n<p><strong>Điểm cộng của Trường Đại học New Hampshire</strong></p>\r\n\r\n<p>Đại học New Hampshire (UNH) giữ vị trí thứ 103 trên toàn nước Mỹ, đặc biệt đứng thứ hạng 46 về chương trình học xuất sắc ở các lĩnh vực Business, Engineering &amp; Sciences, Liberal Arts.</p>\r\n\r\n<p>Cùng với Đại học Harvard và Học viện công nghệ Massachusetts (MIT), New Hampshire là trường thứ ba nhận được quỹ đầu tư của NASA hàng năm. Ngoài ra, khoa Kinh doanh của trường được hiệp hội AACSB và tổ chức ACPHA công nhận là trường đào tạo kinh doanh xuất sắc (chỉ 5 trường đại học ở Mỹ nhận được chứng nhận của hai tổ chức này). Đại học New Hampshire còn sở hữu chuyên ngành Quản trị nhà hàng khách sạn (Hospitality) được giảng dạy lâu đời thứ hai tại Mỹ, chỉ sau Đại học Cornell.</p>\r\n', '', 0, 1, 1, 0, 1, 0, 1553362536, 0, 0, '', 0, 'content tin tức', 'dsadsd', 'content tin tức'),
(20, 'Danh sách học bổng tới 50% học phí tập đoàn Navitas, Australia', '', 'tin-tuc-new', '<strong>Tập đoàn danh tiếng Navitas, Australia đang cung cấp nhiều suất học bổng tới 50% học phí các khóa phổ thông, cao đẳng, cử nhân và thạc sĩ.</strong>', '0655-statue-of-liberty-267948_1920.jpg', 123, 115, '<h1 style=\"margin-left:0px; margin-right:0px\">Danh sách học bổng tới 50% học phí tập đoàn Navitas, Australia</h1>\r\n\r\n<p>Tập đoàn danh tiếng Navitas, Australia đang cung cấp nhiều suất học bổng tới 50% học phí các khóa phổ thông, cao đẳng, cử nhân và thạc sĩ.</p>\r\n\r\n<p><em>Danh sách học bổng:</em></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" style=\"box-sizing:border-box; margin:10px auto; max-width:100%; padding:0px; text-rendering:geometricprecision\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Trường</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Học bổng cao nhất (AUD)</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Địa điểm</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đại học Curtin</td>\r\n			<td>10% học phí khóa cử nhân năm đầu tiên, lên tới 4.000 AUD</td>\r\n			<td>Perth</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Edith Cowan College</td>\r\n			<td>4.300 AUD khóa tiếng anh 10 tuần</td>\r\n			<td>Perth</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đại học&nbsp; Edith Cowan</td>\r\n			<td>20% học phí khóa cử nhân và thạc sĩ</td>\r\n			<td>Perth</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://visco.edu.vn/truong-cao-dang-eynesbury-639.html\" style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricprecision; color: rgb(0, 79, 139); text-decoration-line: none;\">Eynesbury College</a></td>\r\n			<td>Học bổng 30%, 50% học phí vào lớp 10 (yêu cầu GPA từ 7.0),\r\n			<p>30% học phí vào lớp 11 và dự bị đại học Foundation (yêu cầu GPA từ 8.0),</p>\r\n\r\n			<p>20% học phí vào cao đẳng (Diploma) Đại học Adelaide (yêu cầu GPA từ 6.0)</p>\r\n\r\n			<p>4.000 AUD khóa tiếng anh 10 tuần</p>\r\n			</td>\r\n			<td>Adelaide</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đại học Nam Australia&nbsp;(UniSA)</td>\r\n			<td>Học bổng 25% học phí cho năm đầu tiên và tới 50% học phí&nbsp;cho 4 năm cử nhân (dành riêng cho học sinh xuất sắc khóa Foundation của Eynesbury)</td>\r\n			<td>&nbsp;Adelaide</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đại học Newcastle</td>\r\n			<td>5.000 AUD / năm cho khóa cử nhân</td>\r\n			<td>&nbsp;Newcastle</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đại học Adelaide</td>\r\n			<td>Học bổng 25% học phí (dành cho học sinh hoàn thành chương trình phổ thông của Eynesbury)\r\n			<p>Học bổng 10% học phí dành cho sinh viên chốt hồ sơ và đặt cọc trong vòng 1 tuần sau khi có offer letter</p>\r\n			</td>\r\n			<td>&nbsp;Adelaide</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đại học Western Sydney (WSU) khu học xá Sydney</td>\r\n			<td>Học bổng 3.000 AUD cho tất cả các chương trình\r\n			<p>5.000 hoặc 10.000 AUD dành cho chương trình Cử nhân</p>\r\n\r\n			<p>5.000 hoặc 7.500 AUD dành cho chương trình Thạc sĩ</p>\r\n\r\n			<p>2.000 AUD cho chương trình Foundation hoặc Diploma</p>\r\n			</td>\r\n			<td>Sydney</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao đẳng Canberra</td>\r\n			<td>10% học phí cho khóa Cử nhân</td>\r\n			<td>Canberra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao đẳng Deakin</td>\r\n			<td>3.000 AUD khóa Foudation + Cử nhân hoặc Cao đẳng + Cử nhân\r\n			<p>4.500 AUD khóa Foudation + Diploma + Cử nhân</p>\r\n\r\n			<p>20% học phí khóa Foundation hoặc Diploma (yêu cầu GPA từ 8.0)</p>\r\n			</td>\r\n			<td>Melbourne</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đại học Deakin</td>\r\n			<td>20% học phí khóa cử nhân</td>\r\n			<td>Melbourne</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đại học La Trobe Sydney</td>\r\n			<td>15% - 25% khóa cử nhân, thạc sĩ (GPA từ 7.5 cho khóa cử nhần và 6.5 cho khóa thạc sĩ)</td>\r\n			<td>Sydney</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em>Hội thảo học bổng tập đoàn Navitas, Australia:</em></p>\r\n\r\n<p>Hà Nội: 17h thứ Tư, ngày 27/3 tại Văn phòng Visco, tầng 5, sảnh B, tòa D2, Giảng Võ</p>\r\n\r\n<p>TP HCM: 17h thứ Ba, ngày 2/4 tại Văn phòng Visco, 101 Điện Biên Phủ, Đa Kao, quận 1.</p>\r\n\r\n<p>Tham dự hội thảo, học sinh sẽ có cơ hội nhận voucher tới 8 triệu đồng từ du học Visco.</p>\r\n\r\n<p>Đăng ký tham dự miễn phí&nbsp;<a href=\"https://goo.gl/forms/gLTZ5ybqalSyyUJm2\" style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: geometricprecision; color: rgb(0, 79, 139); text-decoration-line: none;\" target=\"_blank\">tại đây</a>.</p>\r\n', '', 0, 1, 1, 1, 1, 0, 1553362555, 0, 0, '', 0, 'tin tức new', 'dsad', 'tin tức new'),
(21, '5 chi phí Du học Canada 2019 quan trọng mà bạn cần phải biết!', '', '5-chi-phi-du-hoc-canada-2019-quan-trong-ma-ban-can-phai-biet-', 'Canada là địa điểm du học đáng tin cậy hàng đầu thế giới nhờ những đãi ngộ cao cho sinh viên quốc tế cùng với những chính sách mở hết sức thân thiện. Nếu bạn có dự định du học tại xứ sở lá phong và đang có những lo lắng về chi phí du học tại Canada 2018 thì đây là bài viết dành riêng cho bạn để giải đáp câu hỏi này.', '0518-canada-2262774_1920.jpg', 128, 115, '<p>Canada là địa điểm du học đáng tin cậy hàng đầu thế giới nhờ những đãi ngộ cao cho sinh viên quốc tế cùng với những chính sách mở hết sức thân thiện. Nếu bạn có dự định du học tại xứ sở lá phong và đang có những lo lắng về chi phí du học tại Canada 2018 thì đây là bài viết dành riêng cho bạn để giải đáp câu hỏi này.</p>\r\n\r\n<p>Canada thu hút du học sinh nhờ chất lượng sống tốt, môi trường an toàn, bằng cấp có giá trị toàn cầu, nhiều cơ hội làm việc – định cư. Điều quan trọng nhất là chi phí&nbsp;<a href=\"https://eduvietglobal.vn/du-hoc-canada\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none;\">du học Canada</a>&nbsp;vô cùng hợp lý, thậm chí phải chăng hơn nhiều quốc gia thuộc&nbsp;<a href=\"https://eduvietglobal.vn/du-hoc-chau-au\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none;\">Tây Âu</a>&nbsp;hay&nbsp;<a href=\"https://eduvietglobal.vn/du-hoc-my\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none;\">Mỹ</a>.</p>\r\n\r\n<p>Nếu bạn đang ấp ủ dự định học tập tại Canada và còn băn khoăn đứng trước câu hỏi “Chi phí du học Canada 2018 cần bao nhiêu tiền?” thì đây sẽ là danh sách những chi phí cần lưu ý dành cho bạn.</p>\r\n\r\n<p>Chi phí du học Canada chủ yếu nằm ở 3 nhóm:</p>\r\n\r\n<p>- Học phí khi du học Canada</p>\r\n\r\n<p>- Chi phí sinh hoạt</p>\r\n\r\n<p>- Chi phí làm thủ tục visa du học&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Tổng chi phí du học Canada 2018</strong></p>\r\n\r\n<p>&nbsp;Tổng chi phí du học Canada trung bình của du học sinh được ước tính ở mức $28,000 đến $35,000 CAD/năm (tương đương 500 triệu đến 600 triệu VNĐ). Mức phí này được chia đều cho các khoản học phí, sinh hoạt phí, lệ phí làm thủ tục du học Canada, cụ thể như sau:</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(245, 242, 242) !important; box-sizing:border-box; color:rgb(48, 48, 48); display:block; font-family:arial,helvetica,sans-serif; font-size:14px; overflow-x:auto; white-space:nowrap; width:779.99px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Loại chi phí</p>\r\n			</td>\r\n			<td>\r\n			<p>Nội dung</p>\r\n			</td>\r\n			<td>\r\n			<p>Giá thành</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"4\">\r\n			<p>Học phí</p>\r\n			</td>\r\n			<td>\r\n			<p>THPT</p>\r\n			</td>\r\n			<td>\r\n			<p>$10,000 – $35,000 CAD/năm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cao đẳng</p>\r\n			</td>\r\n			<td>\r\n			<p>$9,0000 – 15,000 CAD/năm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đại học</p>\r\n			</td>\r\n			<td>\r\n			<p>$25,180 CAD/năm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Sau Đại học</p>\r\n			</td>\r\n			<td>\r\n			<p>$16,252 CAD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"4\">\r\n			<p>Sinh hoạt phí</p>\r\n			</td>\r\n			<td>\r\n			<p>Tiền nhà</p>\r\n			</td>\r\n			<td>\r\n			<p>$600 - $1,600 CAD/tháng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chi phí đi lại</p>\r\n			</td>\r\n			<td>\r\n			<p>$80 - $110 CAD/tháng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhu yếu phẩm</p>\r\n			</td>\r\n			<td>\r\n			<p>$150 – $350 CAD/tháng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Gas, điện, nước, Internet…</p>\r\n			</td>\r\n			<td>\r\n			<p>$212 CAD/tháng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"4\">\r\n			<p>Thủ tục du học Canada</p>\r\n			</td>\r\n			<td>\r\n			<p>Phí khám sức khoẻ</p>\r\n			</td>\r\n			<td>\r\n			<p>3,300,000 VNĐ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Phí xét visa</p>\r\n			</td>\r\n			<td>\r\n			<p>$ 125 CAD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Phí study permit</p>\r\n			</td>\r\n			<td>\r\n			<p>$150 CAD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Phí ghi danh</p>\r\n			</td>\r\n			<td>\r\n			<p>$45 – $200 CAD</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;<strong>2. Học phí du học Canada 2018</strong></p>\r\n\r\n<p>Canada là nước có học phí phải chăng hàng đầu thế giới, giá cả được đánh giá là rẻ hơn nhiều quốc gia nói tiếng Anh khác. Chỉ so sánh riêng với Mỹ, mức tiền học tại Canada rẻ hơn nước Mỹ tới 4 lần. Dù vậy, học phí tại các trường ở Canada có sự dao động giữa trường, chương trình, ngành học và tỉnh bang du học sinh theo học. Theo đó, hệ Cao đẳng thường có mức học phí rẻ nhất (trung bình từ $9,000 – $15,000 CAD/năm), đắt nhất là Đại học ($25,180 CAD/năm). Bậc sau Đại học cũng tăng 5.4%, đạt mức $16,252 CAD/năm.</p>\r\n', '', 0, 1, 1, 1, 1, 0, 1553488698, 0, 0, '', 0, '5 chi phí Du học Canada 2019 quan trọng mà bạn cần phải biết!', 'Canada là địa điểm du học đáng tin cậy hàng đầu thế giới nhờ những đãi ngộ cao cho sinh viên quốc tế cùng với những chính sách mở hết sức thân thiện. Nếu bạn có dự định du học tại xứ sở lá phong và đang có những lo lắng về chi phí du học tại Canada 2018 thì đây là bài viết dành riêng cho bạn để giải đáp câu hỏi này.', '5 chi phí Du học Canada 2019 quan trọng mà bạn cần phải biết!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_notices`
--

CREATE TABLE `coupons_notices` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_readed` int(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `coupons_notices`
--

INSERT INTO `coupons_notices` (`id`, `order_id`, `user_id`, `content`, `is_readed`, `language`) VALUES
(409, '857544', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 857544; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 148;  <strong>Created Date:</strong> 02/02/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 22.2', 1, 1),
(408, '2755433', 42, '<strong>ID Project:</strong> 2755433. Your order has been paid successfully', 1, 1),
(406, '3404236', 42, '<strong>ID Project:</strong> 3404236. Your order has been paid successfully', 1, 1),
(407, '2755433', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 2755433; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 714;  <strong>Created Date:</strong> 28/01/2019; <strong>Estimated Delivery:</strong> 24 (hours); <strong>Amount:</strong> $ 107.1', 1, 1),
(404, '6196595', 42, '<strong>ID Project:</strong> 6196595. Your order has been paid successfully', 1, 1),
(405, '3404236', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 3404236; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 722;  <strong>Created Date:</strong> 28/01/2019; <strong>Estimated Delivery:</strong> 24 (hours); <strong>Amount:</strong> $ 108.3', 1, 1),
(402, '1859437', 42, '<strong>ID Project:</strong> 1859437. Your order has been paid successfully', 1, 1),
(403, '6196595', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 6196595; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 722;  <strong>Created Date:</strong> 28/01/2019; <strong>Estimated Delivery:</strong> 24 (hours); <strong>Amount:</strong> $ 108.3', 1, 1),
(401, '1859437', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 1859437; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 714;  <strong>Created Date:</strong> 28/01/2019; <strong>Estimated Delivery:</strong> 24 (hours); <strong>Amount:</strong> $ 107.1', 1, 1),
(400, '3933411', 42, '<strong>ID Project:</strong> 3933411. Your order has been paid successfully', 1, 1),
(398, '5346985', 42, '<strong>ID Project:</strong> 5346985. Your order has been paid successfully', 1, 1),
(399, '3933411', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 3933411; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 722;  <strong>Created Date:</strong> 28/01/2019; <strong>Estimated Delivery:</strong> 24 (hours); <strong>Amount:</strong> $ 108.3', 1, 1),
(396, '9856873', 42, '<strong>ID Project:</strong> 9856873. Your order has been paid successfully', 1, 1),
(397, '5346985', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 5346985; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 722;  <strong>Created Date:</strong> 28/01/2019; <strong>Estimated Delivery:</strong> 24 (hours); <strong>Amount:</strong> $ 108.3', 1, 1),
(395, '9856873', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 9856873; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 714;  <strong>Created Date:</strong> 28/01/2019; <strong>Estimated Delivery:</strong> 24 (hours); <strong>Amount:</strong> $ 107.1', 1, 1),
(394, '1534119', 42, '<strong>ID Project:</strong> 1534119. Your order has been paid successfully', 1, 1),
(392, '8927002', 42, '<strong>ID Project:</strong> 8927002. Your order has been paid successfully', 1, 1),
(393, '1534119', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 1534119; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 722;  <strong>Created Date:</strong> 28/01/2019; <strong>Estimated Delivery:</strong> 24 (hours); <strong>Amount:</strong> $ 108.3', 1, 1),
(391, '8927002', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 8927002; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 457;  <strong>Created Date:</strong> 27/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 68.55', 1, 1),
(390, '690308', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 690308; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 343;  <strong>Created Date:</strong> 27/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 51.45', 1, 1),
(388, '3383484', 42, '<strong>ID Project:</strong> 3383484. Your order has been paid successfully', 1, 1),
(389, '2858887', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 2858887; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 229;  <strong>Created Date:</strong> 27/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 34.35', 1, 1),
(387, '3383484', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 3383484; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 37;  <strong>Created Date:</strong> 24/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 5.55', 1, 1),
(384, '6988831', 42, '<strong>ID Project:</strong> 6988831. Your order has been paid successfully', 1, 1),
(385, '3240662', 42, '<strong>ID Project:</strong> 3240662. Your order has been paid successfully', 1, 1),
(386, '1870423', 42, '<strong>ID Project:</strong> 1870423. Your order has been paid successfully', 1, 1),
(383, '1870423', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 1870423; <strong>Translate From:</strong>Afrikaans <strong>Translate To:</strong>Amharic  <strong>Words:</strong> 1;  <strong>Created Date:</strong> 24/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 0.155', 1, 1),
(382, '3240662', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 3240662; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 10;  <strong>Created Date:</strong> 24/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 1.5', 1, 1),
(381, '6988831', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 6988831; <strong>Translate From:</strong>Vietnamese  <strong>Translate To:</strong>English, EN  <strong>Words:</strong> 130;  <strong>Created Date:</strong> 24/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 19.5', 1, 1),
(380, '3978577', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 3978577; <strong>Translate From:</strong>Afrikaans Afrikaans Afrikaans <strong>Translate To:</strong>Arabic Amharic Albanian  <strong>Words:</strong> 250;  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 116.25', 1, 1),
(378, '9741517', 42, '<strong>ID Project:</strong> 9741517. Your order has been paid successfully', 1, 1),
(379, '4147645', 42, '<strong>ID Project:</strong> 4147645. Your order has been paid successfully', 1, 1),
(377, '4147645', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 4147645; <strong>Translate From:</strong>Afrikaans Afrikaans Afrikaans <strong>Translate To:</strong>Arabic Amharic Albanian  <strong>Words:</strong> 84;  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 39.06', 1, 1),
(373, '1042176', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 1042176; <strong>Translate From:</strong>Afrikaans Afrikaans Afrikaans Afrikaans <strong>Translate To:</strong>Armenian Arabic Amharic Albanian  <strong>Words:</strong> 250;  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 155', 1, 1),
(374, '854798', 42, '<strong>ID Project:</strong> 854798. Your order has been paid successfully', 1, 1),
(375, '1042176', 42, '<strong>ID Project:</strong> 1042176. Your order has been paid successfully', 1, 1),
(376, '9741517', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 9741517; <strong>Translate From:</strong>Afrikaans Afrikaans <strong>Translate To:</strong>Amharic Albanian  <strong>Words:</strong> 167;  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 51.77', 1, 1),
(367, '1661072', 42, '<strong>ID Project:</strong> 1661072. Your order has been paid successfully', 1, 1),
(368, '4302063', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 4302063; <strong>Translate From:</strong>Afrikaans Afrikaans Afrikaans Afrikaans <strong>Translate To:</strong>Armenian Arabic Amharic Albanian  <strong>Words:</strong> 748;  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 463.76', 1, 1),
(369, '8005066', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 8005066; <strong>Translate From:</strong>Afrikaans Afrikaans <strong>Translate To:</strong>Amharic Albanian  <strong>Words:</strong> 250;  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 77.5', 1, 1),
(370, '4302063', 42, '<strong>ID Project:</strong> 4302063. Your order has been paid successfully', 1, 1),
(371, '8005066', 42, '<strong>ID Project:</strong> 8005066. Your order has been paid successfully', 1, 1),
(372, '854798', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 854798; <strong>Translate From:</strong>Afrikaans Afrikaans Afrikaans Afrikaans <strong>Translate To:</strong>Armenian Arabic Amharic Albanian  <strong>Words:</strong> 416;  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 257.92', 1, 1),
(366, '1661072', 42, 'We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> 1661072; <strong>Translate From:</strong>Afrikaans Afrikaans <strong>Translate To:</strong>Amharic Albanian  <strong>Words:</strong> 333;  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 103.23', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_online`
--

CREATE TABLE `coupons_online` (
  `id` smallint(5) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `office` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_option`
--

CREATE TABLE `coupons_option` (
  `option_id` smallint(5) NOT NULL,
  `option_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  `price_new` double NOT NULL,
  `quality_import` int(11) NOT NULL,
  `quality_output` int(11) NOT NULL,
  `quality_sell` int(11) NOT NULL,
  `quality_new` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_option`
--

INSERT INTO `coupons_option` (`option_id`, `option_name`, `news_id`, `price_new`, `quality_import`, `quality_output`, `quality_sell`, `quality_new`, `status`) VALUES
(27, 'Default', 24, 0, 0, 0, 0, 0, 0),
(60, 'Default', 57, 0, 0, 0, 0, 0, 0),
(71, 'Default', 68, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_orders`
--

CREATE TABLE `coupons_orders` (
  `coupon_purchaseid` int(11) NOT NULL COMMENT 'Purchase ID',
  `coupon_userid` int(11) DEFAULT NULL COMMENT 'Coupon user id',
  `coupon_status` tinyint(4) DEFAULT NULL COMMENT 'Coupons status',
  `translater_id` int(11) DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `accept_status` tinyint(4) NOT NULL DEFAULT '0',
  `order_date` int(11) NOT NULL,
  `coupon_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Code coupon',
  `coupon_date` int(11) DEFAULT NULL COMMENT 'Purchased date',
  `payment` tinyint(4) NOT NULL,
  `total_prices` double NOT NULL,
  `total_words` int(11) NOT NULL,
  `city` smallint(5) NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(10) NOT NULL,
  `district` smallint(5) NOT NULL,
  `isevent` tinyint(4) NOT NULL,
  `shipping` int(11) NOT NULL,
  `cod` int(11) NOT NULL,
  `language` tinyint(4) NOT NULL,
  `data_code` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `time_update` int(11) NOT NULL,
  `voucher_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `voucher_price` int(11) NOT NULL,
  `ship_notes` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ship_from` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ship_service` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ship_bill` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ship_cost` double NOT NULL,
  `code_pay` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `code_banking` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `money_pay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_orders_detail`
--

CREATE TABLE `coupons_orders_detail` (
  `orders_id` int(11) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `translate_id` int(11) NOT NULL,
  `file_translate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file_zip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `count_text` int(11) NOT NULL,
  `translate_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `translate_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estimate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `price_sum` double NOT NULL,
  `special_category` double NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_products`
--

CREATE TABLE `coupons_products` (
  `news_id` int(11) NOT NULL,
  `news_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_search` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_category` smallint(5) NOT NULL,
  `news_salary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_work_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_deadline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_company` text COLLATE utf8_unicode_ci,
  `news_requirements` text COLLATE utf8_unicode_ci,
  `news_benefits` text COLLATE utf8_unicode_ci,
  `news_contact` text COLLATE utf8_unicode_ci,
  `news_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_consultant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) NOT NULL,
  `views` smallint(5) NOT NULL,
  `price` double NOT NULL,
  `filename_file` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL,
  `shop_id` smallint(5) NOT NULL,
  `cityid` smallint(5) DEFAULT NULL,
  `district` smallint(5) DEFAULT NULL,
  `img_file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job_type` tinyint(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_property`
--

CREATE TABLE `coupons_property` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `pos` smallint(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_property` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_purchase`
--

CREATE TABLE `coupons_purchase` (
  `coupon_purchaseid` int(11) NOT NULL COMMENT 'Purchase ID',
  `coupon_id` int(11) DEFAULT NULL COMMENT 'Coupon id',
  `coupon_userid` int(11) DEFAULT NULL COMMENT 'Coupon user id',
  `coupon_status` tinyint(4) DEFAULT NULL COMMENT 'Coupons status',
  `coupon_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Code coupon',
  `coupon_date` int(11) DEFAULT NULL COMMENT 'Purchased date',
  `quality` tinyint(4) NOT NULL,
  `money` int(11) NOT NULL,
  `thanhtoan` tinyint(4) NOT NULL,
  `city` smallint(5) NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_note` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `news_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isevent` tinyint(4) NOT NULL,
  `district` smallint(5) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shipping` int(11) NOT NULL,
  `cod` int(11) NOT NULL,
  `language` tinyint(4) NOT NULL,
  `option_id` smallint(5) NOT NULL,
  `option_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time_update` int(11) NOT NULL,
  `ctv_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ctv_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_schools`
--

CREATE TABLE `coupons_schools` (
  `news_id` smallint(5) NOT NULL,
  `news_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_search` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_category` smallint(5) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `news_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) NOT NULL,
  `views` smallint(5) NOT NULL,
  `created_date` int(11) NOT NULL,
  `price` double NOT NULL,
  `price_new` double NOT NULL,
  `filename_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_schools`
--

INSERT INTO `coupons_schools` (`news_id`, `news_name`, `news_search`, `news_url`, `news_content`, `news_img`, `news_category`, `description`, `news_link`, `pos`, `status`, `userid`, `views`, `created_date`, `price`, `price_new`, `filename_file`, `language`, `seo_title`, `seo_desc`, `seo_key`) VALUES
(1, 'trường học A', '', 'truong-hoc-a', 'Donald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election.&nbsp;', '0722-_8qea7ce_400x400.jpg', 98, 'Donald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.', '', 0, 1, 1, 0, 1552931719, 0, 0, '', 0, 'trường học A', 'content 1', 'trường học A'),
(2, 'trường học B', '', 'truong-hoc-b', 'Donald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election.&nbsp;', '0644-5e6706bac23e4508411229ee46075604.jpg', 98, 'trường học B', '', 0, 1, 1, 0, 1552931924, 0, 0, '', 0, 'trường học B', 'trường học B', 'trường học B'),
(3, 'trường học C', '', 'truong-hoc-c', 'Donald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election.&nbsp;', '0607-850922-06b51306133275bb258158b1d6e611d1-medium_jpg.jpg', 98, 'trường học B', '', 0, 1, 1, 0, 1552931947, 0, 0, '', 0, 'trường học C', 'trường học B', 'trường học C'),
(4, 'trường học D', '', 'truong-hoc-d', 'Donald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election.&nbsp;', '0712-1e77619fb0a358fd01b2.jpg', 98, 'Donald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.<br />\r\nDonald Trump’s Presidency has been mired for months in controversy over reports that the Trump Campaign may have colluded with the Russian Government in an effort to influence the outcome of the 2016 presidential election. Last week the White House was rocked again by information revealing that President Trump had two additional, undisclosed meetings with Russian President Vladimir Putin at the G-20 Summit in Germany. In an interview with New York Times journalist, Maggie Haberman, President Trump expressed that during the Summit dinner, the seating arrangement put him next to Japanese Prime Minister Shinzo Abe’s wife, Akie Abe who Trump said, “doesn’t speak English”. As a result of the “language barrier”, President Trump reportedly decided to move to the opposite side of the dining table to sit next to first lady Malania Trump and Putin, where the three conversed until the completion of the dinner.', '', 0, 1, 1, 0, 1552932000, 0, 0, '', 0, 'trường học D', 'trường học D', 'trường học D'),
(5, 'Trường học E', '', 'truong-hoc-e', 'content du học mỹ', '0348-img_1.jpg', 98, 'content du học mỹ', '', 0, 1, 1, 0, 1553868584, 0, 0, '', 0, 'Trường học E', 'content du học mỹ', 'Trường học E'),
(6, 'TRường học F', '', 'truong-hoc-f', 'TRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học F', '0333-img1.jpg', 98, 'TRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học F', '', 0, 0, 1, 0, 1553868693, 0, 0, '', 0, 'TRường học F', 'TRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học FTRường học F', 'TRường học F');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_session`
--

CREATE TABLE `coupons_session` (
  `id` int(11) NOT NULL,
  `session` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `translate_id` int(11) NOT NULL,
  `translate_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `translate_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estimate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `option_id` smallint(5) NOT NULL,
  `option_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_shop`
--

CREATE TABLE `coupons_shop` (
  `id` smallint(5) NOT NULL,
  `shopname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shop_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `delivery` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `change_pro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `commitment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_shop`
--

INSERT INTO `coupons_shop` (`id`, `shopname`, `status`, `userid`, `content`, `banner`, `shop_url`, `date`, `category_id`, `delivery`, `change_pro`, `commitment`, `payment`, `pos`, `language`) VALUES
(1, 'minhbuy', 1, 0, '', '', '', 0, 5, '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_status`
--

CREATE TABLE `coupons_status` (
  `id` tinyint(4) NOT NULL,
  `coupon_status` tinyint(4) NOT NULL,
  `status_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status_color` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `coupons_status`
--

INSERT INTO `coupons_status` (`id`, `coupon_status`, `status_name`, `status_color`, `language`) VALUES
(6, 1, 'Đơn hàng mới', '8a6d3b', 0),
(10, 2, 'Đã hủy bỏ', 'ff0000', 0),
(11, 1, 'New orders', '8a6d3b', 1),
(15, 2, 'Payment success', 'ff0000', 1),
(18, 2, 'Finalized', '000000', 1),
(17, 1, 'Active', 'ff0000', 1),
(16, 0, 'None', '8a6d3b', 1),
(19, 0, 'Unpaid', '000000', 1),
(20, 1, 'Paid', 'ff0000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_students`
--

CREATE TABLE `coupons_students` (
  `news_id` smallint(5) NOT NULL,
  `news_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_search` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_category` smallint(5) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `news_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) NOT NULL,
  `views` smallint(5) NOT NULL,
  `created_date` int(11) NOT NULL,
  `price` double NOT NULL,
  `price_new` double NOT NULL,
  `filename_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language` tinyint(4) NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_students`
--

INSERT INTO `coupons_students` (`news_id`, `news_name`, `news_search`, `news_url`, `news_content`, `news_img`, `news_category`, `description`, `news_link`, `pos`, `status`, `userid`, `views`, `created_date`, `price`, `price_new`, `filename_file`, `language`, `seo_title`, `seo_desc`, `seo_key`) VALUES
(1, 'Nguyễn văn A', '', 'nguyen-van-a', 'content&nbsp; ngắn', '0644-_8qea7ce_400x400.jpg', 98, 'content&nbsp; chi tiết', '', 0, 1, 1, 0, 1552929229, 0, 0, '', 0, 'Nguyễn văn A', 'content  ngắn', 'Nguyễn văn A'),
(2, 'xzxzX', '', 'xzxzx', 'xZXxxZX', '0607-0.jpg', 98, '', '', 0, 1, 1, 0, 1552929547, 0, 0, '', 0, 'xzxzX', 'xZXxxZX', 'xzxzX'),
(3, 'nguyễn văn B', '', 'nguyen-van-b', 'content ngắn', '0636-2e9d6a026b8d87d3de9c.jpg', 98, 'content chi tiết', '', 0, 1, 1, 0, 1552929805, 0, 0, '', 0, 'nguyễn văn B', 'content ngắn', 'nguyễn văn B'),
(4, 'sdsadsadas', '', 'sdsadsadas', 'dsadsa', '0608-1ccdae9c135ffd01a44e.jpg', 98, 'dasdsa', '', 0, 1, 1, 0, 1552929848, 0, 0, '', 0, 'sdsadsadas', 'dsadsa', 'sdsadsadas'),
(5, 'dsadsad', '', 'dsadsad', 'dasd', '0620-3d270ec2cc6720397976-(1).jpg', 98, 'dasd', '', 0, 1, 1, 0, 1552929860, 0, 0, '', 0, 'dsadsad', 'dasd', 'dsadsad'),
(6, 'fdsfdsf', '', 'fdsfdsf', 'fdsfds', '0601-0105-bo-ngu-sexy-(22).jpg', 98, 'fdsfdsf', '', 0, 1, 1, 0, 1552929869, 0, 0, '', 0, 'fdsfdsf', 'fdsfds', 'fdsfdsf'),
(7, 'dsadaddsadsada', '', 'dsadaddsadsada', 'dasdas', '0624-1e77619fb0a358fd01b2.jpg', 98, 'dasdsa', '', 0, 1, 1, 0, 1552930284, 0, 0, '', 0, 'dsadaddsadsada', 'dasdas', 'dsadaddsadsada'),
(8, 'dsdsdsadsd', '', 'dsdsdsadsd', 'dsadsadas', '0642-6ae33ceb22a1c8ff91b0.jpg', 98, 'Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019Real Betis vs Barcelona 1-4 - All goals &amp; Full Highlights - 17/3/2019', '', 0, 1, 1, 0, 1552930302, 0, 0, '', 0, 'dsdsdsadsd', 'dsadsadas', 'dsdsdsadsd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_support`
--

CREATE TABLE `coupons_support` (
  `id` int(11) NOT NULL,
  `txt_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `txt_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `txt_tel` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `txt_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `txt_content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` smallint(5) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_users`
--

CREATE TABLE `coupons_users` (
  `userid` int(11) NOT NULL COMMENT 'Coupons user Id',
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Coupons user Name',
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Coupons user Password',
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Coupons user email',
  `sub_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `point` int(11) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` smallint(5) NOT NULL,
  `birthday` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(5) NOT NULL,
  `language` tinyint(5) NOT NULL,
  `google_id` decimal(21,0) NOT NULL,
  `google_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_picture_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_users`
--

INSERT INTO `coupons_users` (`userid`, `username`, `password`, `firstname`, `lastname`, `name`, `email`, `sub_email`, `mobile_code`, `mobile`, `user_role`, `created_date`, `status`, `point`, `avatar`, `address`, `city`, `district`, `address_code`, `country`, `skype`, `user_type`, `birthday`, `sex`, `language`, `google_id`, `google_name`, `google_email`, `google_link`, `google_picture_link`, `facebook_id`, `facebook_name`, `facebook_email`) VALUES
(1, 'admincms', '21232f297a57a5a743894a0e4a801fc3', 'ngo the hien', NULL, 'ngo the hien', 'ngothehientg@gmail.com', NULL, '84', '0973185125', 1, '0000-00-00 00:00:00', 1, 0, '3ShUpIx.jpg', '24.Đ6 SaiGon Pearl 92 Nguyễn Hữu Cảnh, Phường 22', '1', '1', '', '', '', 0, '0', 0, 0, '0', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_users_info`
--

CREATE TABLE `coupons_users_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `background` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_company` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_from`
--

CREATE TABLE `email_from` (
  `id` int(11) NOT NULL,
  `port` smallint(5) NOT NULL,
  `host` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `smtp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `send` int(11) NOT NULL,
  `day_month` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_to`
--

CREATE TABLE `email_to` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `send` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter_five`
--

CREATE TABLE `filter_five` (
  `id` smallint(5) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter_four`
--

CREATE TABLE `filter_four` (
  `id` smallint(5) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter_one`
--

CREATE TABLE `filter_one` (
  `id` smallint(5) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter_products`
--

CREATE TABLE `filter_products` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `url_one` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url_two` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url_three` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url_four` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter_three`
--

CREATE TABLE `filter_three` (
  `id` smallint(5) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter_two`
--

CREATE TABLE `filter_two` (
  `id` smallint(5) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gold_price`
--

CREATE TABLE `gold_price` (
  `id` smallint(5) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `buy` int(11) NOT NULL,
  `sell` int(11) NOT NULL,
  `date_up` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_area_code`
--

CREATE TABLE `list_area_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `language` int(5) DEFAULT NULL,
  `create_dated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `list_area_code`
--

INSERT INTO `list_area_code` (`id`, `name`, `code`, `status`, `language`, `create_dated`) VALUES
(2, 'Afghanistan', '93', 1, 1, '2018-05-08 06:54:32'),
(3, 'Albania ', '355', 1, 1, '2018-05-08 06:55:23'),
(4, 'Algeria ', '213', 1, 1, '2018-05-21 09:22:01'),
(5, 'American Samoa ', '1', 1, 1, '2018-05-22 05:17:49'),
(6, 'Andorra ', '376', 1, 1, '2018-05-22 05:19:21'),
(8, 'Angola ', '244', 1, 1, '2018-05-22 05:25:16'),
(9, 'Anguilla ', '1', 1, 1, '2018-05-22 05:25:35'),
(10, 'Antigua & Barbuda ', '1', 1, 1, '2018-05-22 05:28:18'),
(11, 'Argentina ', '54', 1, 1, '2018-05-22 05:34:11'),
(12, 'Armenia ', '374', 1, 1, '2018-05-22 05:34:35'),
(13, 'Aruba ', '297', 1, 1, '2018-05-22 05:34:52'),
(14, 'Australia ', '61', 1, 1, '2018-05-22 05:35:19'),
(15, 'Austria ', '43', 1, 1, '2018-05-22 05:36:18'),
(16, 'Azerbaijan ', '994', 1, 1, '2018-05-22 05:37:02'),
(17, 'Bahamas', '1', 1, 1, '2018-05-22 05:37:23'),
(18, 'Bahrain ', '973', 1, 1, '2018-05-22 05:39:29'),
(19, 'Bangladesh ', '880', 1, 1, '2018-05-22 05:40:30'),
(20, 'Barbados ', '1', 1, 1, '2018-05-22 05:41:57'),
(21, 'Belarus ', '375', 1, 1, '2018-05-22 05:57:19'),
(22, 'Belgium ', '32', 1, 1, '2018-05-22 05:59:41'),
(23, 'Belize ', '501', 1, 1, '2018-05-22 06:13:35'),
(24, 'Benin ', '229', 1, 1, '2018-05-22 06:13:53'),
(25, 'Bermuda ', '1', 1, 1, '2018-05-22 06:14:12'),
(26, 'Bhutan ', '575', 1, 1, '2018-05-22 06:14:36'),
(27, 'Bolivia ', '591', 1, 1, '2018-05-22 06:15:41'),
(28, 'Bosnia & Herzegovina ', '387', 1, 1, '2018-05-22 06:17:01'),
(29, 'Botswana ', '267', 1, 1, '2018-05-22 06:17:37'),
(30, 'Brazil ', '55', 1, 1, '2018-05-22 06:18:04'),
(31, 'British Virgin Islands ', '1', 1, 1, '2018-05-22 06:18:31'),
(32, 'Brunei ', '673', 1, 1, '2018-05-22 06:18:53'),
(33, 'Bulgaria ', '359', 1, 1, '2018-05-22 06:19:16'),
(34, 'Burkina Faso ', '226', 1, 1, '2018-05-22 06:19:42'),
(35, 'Burundi ', '257', 1, 1, '2018-05-22 06:19:59'),
(36, 'Cambodia ', '855', 1, 1, '2018-05-22 06:23:22'),
(37, 'Cameroon ', '237', 1, 1, '2018-05-22 06:39:59'),
(38, 'Canada ', '1', 1, 1, '2018-05-22 06:40:16'),
(39, 'Cape Verde ', '238', 1, 1, '2018-05-22 06:40:32'),
(40, 'Cayman Islands ', '1', 1, 1, '2018-05-22 06:41:30'),
(41, 'Central African Republic ', '236', 1, 1, '2018-05-22 06:42:06'),
(42, 'Chad ', '235', 1, 1, '2018-05-22 06:47:32'),
(43, 'Chile ', '56', 1, 1, '2018-05-22 06:47:53'),
(44, 'China ', '86', 1, 1, '2018-05-22 06:48:17'),
(45, 'Colombia ', '57', 1, 1, '2018-05-22 08:04:43'),
(46, 'Comoros ', '269', 1, 1, '2018-05-22 08:05:08'),
(47, 'Congo - Brazzaville ', '242', 1, 1, '2018-05-22 08:05:56'),
(48, 'Congo - Kinshasa ', '243', 1, 1, '2018-05-22 08:06:13'),
(49, 'Cook Islands ', '682', 1, 1, '2018-05-22 08:06:29'),
(50, 'Costa Rica ', '506', 1, 1, '2018-05-22 08:49:33'),
(51, 'Cote d’Ivoire ', '225', 1, 1, '2018-05-22 08:51:25'),
(52, 'Croatia ', '385', 1, 1, '2018-05-22 08:51:40'),
(53, 'Cuba ', '53', 1, 1, '2018-05-22 08:51:53'),
(54, 'Cyprus ', '357', 1, 1, '2018-05-22 08:52:43'),
(55, 'Czech Republic ', '420', 1, 1, '2018-05-22 08:53:17'),
(56, 'Denmark ', '45', 1, 1, '2018-05-22 08:53:32'),
(57, 'Djibouti ', '253', 1, 1, '2018-05-22 08:53:47'),
(58, 'Dominica ', '1', 1, 1, '2018-05-22 08:54:03'),
(59, 'Dominican Republic', '1', 1, 1, '2018-05-22 08:54:19'),
(60, 'Ecuador ', '593', 1, 1, '2018-05-22 08:54:57'),
(61, 'Egypt', '20', 1, 1, '2018-05-22 08:55:16'),
(62, 'El Salvador ', '503', 1, 1, '2018-05-22 08:55:32'),
(63, 'Equatorial Guinea ', '240', 1, 1, '2018-05-22 08:55:55'),
(64, 'Eritrea ', '291', 1, 1, '2018-05-22 08:56:12'),
(65, 'Estonia ', '372', 1, 1, '2018-05-22 08:56:59'),
(66, 'Ethiopia ', '251', 1, 1, '2018-05-22 08:57:14'),
(67, 'Falkland Islands ', '500', 1, 1, '2018-05-22 08:57:46'),
(68, 'Faroe Islands ', '298', 1, 1, '2018-05-22 08:58:03'),
(69, 'Fiji ', '679', 1, 1, '2018-05-22 08:58:29'),
(70, 'Finland ', '358', 1, 1, '2018-05-22 08:58:45'),
(71, 'France ', '33', 1, 1, '2018-05-22 08:59:02'),
(72, 'French Guiana ', '594', 1, 1, '2018-05-22 08:59:48'),
(73, 'French Polynesia ', '689', 1, 1, '2018-05-22 09:00:11'),
(74, 'Gabon ', '241', 1, 1, '2018-05-22 09:01:19'),
(75, 'Gambia ', '220', 1, 1, '2018-05-22 09:01:37'),
(76, 'Georgia ', '995', 1, 1, '2018-05-22 09:01:52'),
(77, 'Germany ', '49', 1, 1, '2018-05-22 09:02:53'),
(78, 'Ghana ', '233', 1, 1, '2018-05-22 09:03:26'),
(79, 'Gibraltar ', '350', 1, 1, '2018-05-22 09:03:42'),
(80, 'Greece ', '30', 1, 1, '2018-05-22 09:03:59'),
(81, 'Greenland', '299', 1, 1, '2018-05-22 09:21:28'),
(82, 'Grenada ', '1', 1, 1, '2018-05-22 09:21:55'),
(83, 'Guadeloupe', '590', 1, 1, '2018-05-22 09:22:21'),
(84, 'Guam', '1', 1, 1, '2018-05-22 09:22:40'),
(85, 'Guatemala ', '502', 1, 1, '2018-05-22 09:22:56'),
(86, 'Guinea ', '224', 1, 1, '2018-05-22 09:24:27'),
(87, 'Guinea-Bissau', '245', 1, 1, '2018-05-22 09:25:05'),
(88, 'Guyana', '592', 1, 1, '2018-05-22 09:25:23'),
(89, 'Haiti', '509', 1, 1, '2018-05-22 09:25:48'),
(90, 'Honduras ', '504', 1, 1, '2018-05-22 09:27:17'),
(91, 'Hong Kong SAR China ', '852', 1, 1, '2018-05-22 09:27:54'),
(92, 'Hungary ', '36', 1, 1, '2018-05-22 09:28:29'),
(93, 'Iceland ', '354', 1, 1, '2018-05-22 09:28:47'),
(94, 'India ', '91', 1, 1, '2018-05-22 09:29:05'),
(95, 'Indonesia ', '62', 1, 1, '2018-05-22 09:29:31'),
(96, 'Iran ', '98', 1, 1, '2018-05-22 09:30:55'),
(97, 'Iraq ', '964', 1, 1, '2018-05-22 09:31:17'),
(98, 'Ireland ', '353', 1, 1, '2018-05-22 09:31:35'),
(99, 'Israel ', '972', 1, 1, '2018-05-22 09:32:58'),
(100, 'Italy ', '39', 1, 1, '2018-05-22 09:33:16'),
(101, 'Jamaica ', '1', 1, 1, '2018-05-22 09:40:30'),
(102, 'Japan', '81', 1, 1, '2018-05-22 09:40:50'),
(103, 'Jordan ', '962', 1, 1, '2018-05-22 09:41:22'),
(104, 'Kazakhstan ', '7', 1, 1, '2018-05-22 09:42:05'),
(105, 'Kenya', '254', 1, 1, '2018-05-22 09:42:23'),
(106, 'Kiribati ', '686', 1, 1, '2018-05-22 09:42:46'),
(109, 'Kuwait ', '965', 1, 1, '2018-05-22 09:57:43'),
(110, 'Kyrgyzstan ', '996', 1, 1, '2018-05-22 09:57:58'),
(111, 'Laos ', '856', 1, 1, '2018-05-22 10:02:06'),
(112, 'Latvia ', '371', 1, 1, '2018-05-22 10:02:28'),
(113, 'Lebanon ', '961', 1, 1, '2018-05-22 10:02:54'),
(114, 'Lesotho ', '266', 1, 1, '2018-05-22 10:04:05'),
(115, 'Liberia ', '231', 1, 1, '2018-05-22 10:04:22'),
(116, 'Libya ', '218', 1, 1, '2018-05-22 10:04:43'),
(117, 'Liechtenstein ', '423', 1, 1, '2018-05-22 10:04:57'),
(118, 'Lithuania ', '370', 1, 1, '2018-05-22 10:05:11'),
(119, 'Luxembourg ', '352', 1, 1, '2018-05-22 10:05:38'),
(120, 'Macau SAR China ', '853', 1, 1, '2018-05-22 10:07:40'),
(121, 'Macedonia', '389', 1, 1, '2018-05-22 10:24:37'),
(122, 'Madagascar ', '261', 1, 1, '2018-05-22 10:24:53'),
(123, 'Malawi ', '265', 1, 1, '2018-05-22 10:25:14'),
(124, 'Malaysia ', '60', 1, 1, '2018-05-22 10:25:39'),
(125, 'Maldives', '960', 1, 1, '2018-05-22 10:25:53'),
(126, 'Mali ', '223', 1, 1, '2018-05-22 10:26:11'),
(127, 'Malta ', '356', 1, 1, '2018-05-22 10:26:33'),
(128, 'Martinique ', '596', 1, 1, '2018-05-22 10:27:01'),
(129, 'Mauritania ', '222', 1, 1, '2018-05-22 10:27:27'),
(130, 'Mauritius ', '230', 1, 1, '2018-05-22 10:30:20'),
(131, 'Mayotte ', '262', 1, 1, '2018-05-22 10:30:38'),
(132, 'Mexico  ', '52', 1, 1, '2018-05-22 10:30:54'),
(133, 'Micronesia ', '691', 1, 1, '2018-05-22 10:32:11'),
(134, 'Moldova ', '373', 1, 1, '2018-05-22 10:33:51'),
(135, 'Monaco ', '377', 1, 1, '2018-05-22 10:34:10'),
(136, 'Mongolia ', '976', 1, 1, '2018-05-22 10:34:25'),
(137, 'Montenegro ', '382', 1, 1, '2018-05-22 10:34:42'),
(138, 'Montserrat ', '1', 1, 1, '2018-05-22 10:35:00'),
(139, 'Morocco ', '212', 1, 1, '2018-05-22 10:35:20'),
(140, 'Mozambique ', '258', 1, 1, '2018-05-22 10:35:36'),
(141, 'Myanmar ', '95', 1, 1, '2018-05-22 10:36:40'),
(142, 'Namibia ', '264', 1, 1, '2018-05-22 10:39:19'),
(143, 'Nauru', '674', 1, 1, '2018-05-22 10:40:06'),
(144, 'Nepal ', '977', 1, 1, '2018-05-22 10:40:23'),
(145, 'Netherlands ', '31', 1, 1, '2018-05-22 10:40:39'),
(146, 'New Caledonia ', '687', 1, 1, '2018-05-22 10:41:15'),
(147, 'New Zealand ', '64', 1, 1, '2018-05-22 10:41:32'),
(148, 'Nicaragua ', '505', 1, 1, '2018-05-22 10:41:48'),
(149, 'Niger ', '227', 1, 1, '2018-05-22 10:42:03'),
(150, 'Nigeria ', '234', 1, 1, '2018-05-22 10:42:22'),
(151, 'Norfolk Island ', '672', 1, 1, '2018-05-22 10:42:41'),
(152, 'Northern Mariana Islands ', '1', 1, 1, '2018-05-22 10:43:02'),
(153, 'Norway ', '47', 1, 1, '2018-05-22 10:43:17'),
(154, 'Oman ', '968', 1, 1, '2018-05-22 10:44:30'),
(155, 'Pakistan ', '92', 1, 1, '2018-05-22 10:44:56'),
(156, 'Palestinian Territories ', '970', 1, 1, '2018-05-22 10:46:48'),
(157, 'Panama ', '507', 1, 1, '2018-05-22 10:47:39'),
(158, 'Papua New Guinea ', '675', 1, 1, '2018-05-22 10:47:59'),
(159, 'Paraguay ', '595', 1, 1, '2018-05-22 10:49:23'),
(160, 'Peru ', '51', 1, 1, '2018-05-22 10:49:46'),
(161, 'Philippines ', '63', 1, 1, '2018-05-22 10:50:00'),
(162, 'Poland ', '48', 1, 1, '2018-05-22 10:51:25'),
(163, 'Portugal ', '351', 1, 1, '2018-05-22 10:51:45'),
(164, 'Puerto Rico ', '1', 1, 1, '2018-05-22 10:52:01'),
(165, 'Qatar ', '974', 1, 1, '2018-05-22 10:52:28'),
(166, 'Romania ', '40', 1, 1, '2018-05-22 01:28:43'),
(167, 'Russia ', '7', 1, 1, '2018-05-22 01:29:08'),
(168, 'Rwanda', '250', 1, 1, '2018-05-22 01:29:44'),
(169, 'Réunion', '262', 1, 1, '2018-05-22 01:31:27'),
(170, 'Samoa ', '685', 1, 1, '2018-05-22 01:31:55'),
(171, 'San Marino ', '378', 1, 1, '2018-05-22 01:32:28'),
(172, 'Saudi Arabia ', '966', 1, 1, '2018-05-22 01:33:01'),
(173, 'Senegal ', '221', 1, 1, '2018-05-22 01:34:06'),
(174, 'Serbia ', '381', 1, 1, '2018-05-22 01:34:50'),
(175, 'Seychelles ', '248', 1, 1, '2018-05-22 01:35:12'),
(176, 'Sierra Leone ', '232', 1, 1, '2018-05-22 01:35:31'),
(177, 'Singapore', '65', 1, 1, '2018-05-22 01:38:28'),
(178, 'Sint Maarten ', '1', 1, 1, '2018-05-22 01:39:32'),
(179, 'Slovakia ', '421', 1, 1, '2018-05-22 01:39:55'),
(180, 'Slovenia ', '386', 1, 1, '2018-05-22 01:40:16'),
(181, 'Solomon Islands ', '677', 1, 1, '2018-05-22 01:40:43'),
(182, 'Somalia ', '252', 1, 1, '2018-05-22 01:41:10'),
(183, 'South Africa', '27', 1, 1, '2018-05-22 01:41:29'),
(184, 'South Korea', '82', 1, 1, '2018-05-22 01:45:32'),
(185, 'South Sudan', '211', 1, 1, '2018-05-22 01:48:34'),
(186, 'Spain ', '34', 1, 1, '2018-05-22 01:49:03'),
(187, 'Sri Lanka ', '94', 1, 1, '2018-05-22 01:49:20'),
(188, 'St. Kitts & Nevis', '1', 1, 1, '2018-05-22 01:54:31'),
(189, 'St. Lucia ', '1', 1, 1, '2018-05-22 01:56:31'),
(190, 'St. Martin', '590', 1, 1, '2018-05-22 01:59:13'),
(191, 'St. Vincent & Grenadines ', '1', 1, 1, '2018-05-22 01:59:52'),
(192, 'Suriname ', '597', 1, 1, '2018-05-22 02:00:15'),
(193, 'Swaziland ', '268', 1, 1, '2018-05-22 02:00:32'),
(194, 'Sweden ', '46', 1, 1, '2018-05-22 02:00:46'),
(195, 'Switzerland ', '41', 1, 1, '2018-05-22 02:02:19'),
(196, 'Syria ', '963', 1, 1, '2018-05-22 02:02:36'),
(197, 'Sao Tomé & Principe ', '235', 1, 1, '2018-05-22 02:04:26'),
(198, 'Taiwan ', '886', 1, 1, '2018-05-23 01:42:20'),
(199, 'Tajikistan ', '992', 1, 1, '2018-05-23 01:42:41'),
(200, 'Tanzania ', '255', 1, 1, '2018-05-23 01:42:55'),
(201, 'Thailand ', '66', 1, 1, '2018-05-23 01:43:11'),
(202, 'Thuraya ', '882', 1, 1, '2018-05-23 01:43:39'),
(203, 'Timor-Leste ', '670', 1, 1, '2018-05-23 01:43:55'),
(204, 'Togo ', '228', 1, 1, '2018-05-23 01:44:09'),
(205, 'Tonga ', '676', 1, 1, '2018-05-23 01:44:23'),
(206, 'Trinidad & Tobago ', '1', 1, 1, '2018-05-23 01:44:37'),
(207, 'Tunisia ', '216', 1, 1, '2018-05-23 01:44:58'),
(208, 'Turkey ', '90', 1, 1, '2018-05-23 01:45:12'),
(209, 'Turkmenistan ', '993', 1, 1, '2018-05-23 01:45:25'),
(210, 'Turks & Caicos Islands  ', '1', 1, 1, '2018-05-23 02:05:52'),
(211, 'Tuvalu  ', '688', 1, 1, '2018-05-23 02:06:39'),
(212, 'U.S. Virgin Islands  ', '1', 1, 1, '2018-05-23 02:08:01'),
(213, 'Uganda  ', '256', 1, 1, '2018-05-23 02:08:21'),
(214, 'Ukraine  ', '380', 1, 1, '2018-05-23 02:08:35'),
(215, 'United Arab Emirates ', '971', 1, 1, '2018-05-23 02:08:49'),
(216, 'United Kingdom  ', '44', 1, 1, '2018-05-23 02:09:50'),
(217, 'United States  ', '1', 1, 1, '2018-05-23 02:10:08'),
(218, 'Uruguay  ', '598', 1, 1, '2018-05-23 02:10:20'),
(219, 'Uzbekistan  ', '998', 1, 1, '2018-05-23 02:10:34'),
(220, 'Vanuatu  ', '678', 1, 1, '2018-05-23 02:10:47'),
(221, 'Venezuela  ', '58', 1, 1, '2018-05-23 02:10:59'),
(222, 'Vietnam  ', '84', 1, 1, '2018-05-23 02:11:10'),
(223, 'Yemen  ', '967', 1, 1, '2018-05-23 02:11:22'),
(224, 'Zambia  ', '260', 1, 1, '2018-05-23 02:11:32'),
(225, 'Zimbabwe ', '263', 1, 1, '2018-05-23 02:11:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_country`
--

CREATE TABLE `list_country` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `language` int(5) NOT NULL,
  `create_dated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=1;

--
-- Đang đổ dữ liệu cho bảng `list_country`
--

INSERT INTO `list_country` (`id`, `name`, `code`, `status`, `language`, `create_dated`) VALUES
(242, 'Albania', 'AL', 1, 0, '0000-00-00 00:00:00'),
(243, 'Afghanistan', 'AF', 1, 0, '2018-05-03 11:45:37'),
(244, 'Algeria', 'ALG', 1, 0, '2018-05-03 11:47:01'),
(245, 'Afghanistan', 'AF', 1, 1, '2018-05-08 06:46:26'),
(246, 'Albania', 'AL', 1, 1, '2018-05-08 06:46:45'),
(247, 'Algeria', 'DZ', 1, 1, '2018-05-22 02:51:09'),
(248, 'American Samoa', 'AS', 1, 1, '2018-05-22 02:52:44'),
(249, 'Andorra', 'AD', 1, 1, '2018-05-22 02:53:02'),
(250, 'Angola', 'AO', 1, 1, '2018-05-22 02:53:19'),
(251, 'Anguilla', 'AI', 1, 1, '2018-05-22 02:53:37'),
(252, 'Antigua & Barbuda', 'AG', 1, 1, '2018-05-22 02:54:10'),
(253, 'Argentina', 'AR', 1, 1, '2018-05-22 02:54:48'),
(254, 'Armenia', 'AM', 1, 1, '2018-05-22 03:06:47'),
(255, 'Aruba', 'AW', 1, 1, '2018-05-22 03:08:21'),
(256, 'Australia', 'AU', 1, 1, '2018-05-22 03:08:50'),
(257, 'Austria', 'AT', 1, 1, '2018-05-22 03:10:41'),
(258, 'Azerbaijan', 'AZ', 1, 1, '2018-05-22 03:11:01'),
(259, 'Bahamas', 'BS', 1, 1, '2018-05-22 03:15:13'),
(260, 'Bahrain', 'BH', 1, 1, '2018-05-22 03:15:41'),
(261, 'Bangladesh', 'BD', 1, 1, '2018-05-22 03:15:58'),
(262, 'Barbados', 'BB', 1, 1, '2018-05-22 03:16:17'),
(263, 'Belarus', 'BY', 1, 1, '2018-05-22 03:16:56'),
(264, 'Belgium', 'BE', 1, 1, '2018-05-22 03:17:16'),
(265, 'Belize', 'BZ', 1, 1, '2018-05-22 03:18:21'),
(266, 'Benin', 'BJ', 1, 1, '2018-05-22 03:22:47'),
(267, 'Bermuda', 'BM', 1, 1, '2018-05-22 03:23:09'),
(268, 'Bhutan', 'BT', 1, 1, '2018-05-22 03:23:30'),
(269, 'Bolivia', 'BO', 1, 1, '2018-05-22 03:23:52'),
(270, 'Bosnia & Herzegovina', 'BA', 1, 1, '2018-05-22 03:29:53'),
(271, 'Botswana', 'BW', 1, 1, '2018-05-22 03:30:15'),
(272, 'Brazil', 'BR', 1, 1, '2018-05-22 03:30:43'),
(273, 'British Virgin Islands', 'VG', 1, 1, '2018-05-22 03:32:09'),
(274, 'Brunei', 'BN', 1, 1, '2018-05-22 03:32:31'),
(275, 'Bulgaria', 'BG', 1, 1, '2018-05-22 03:33:28'),
(276, 'Burkina Faso', 'BF', 1, 1, '2018-05-22 03:41:39'),
(277, 'Burundi ', 'BI', 1, 1, '2018-05-22 03:41:57'),
(278, 'Cambodia', 'KH', 1, 1, '2018-05-22 03:42:24'),
(279, 'Cameroon', 'CM', 1, 1, '2018-05-22 03:42:56'),
(280, 'Canada', 'CA', 1, 1, '2018-05-22 03:43:53'),
(281, 'Cape Verde', 'CV', 1, 1, '2018-05-22 03:44:30'),
(282, 'Cayman Islands', 'KY', 1, 1, '2018-05-22 03:44:48'),
(283, 'Central African Republic', 'CF', 1, 1, '2018-05-22 03:45:10'),
(284, 'Chad', 'TD', 1, 1, '2018-05-22 03:46:29'),
(285, 'Chile', 'CL', 1, 1, '2018-05-22 03:46:50'),
(286, 'China', 'CN', 1, 1, '2018-05-22 03:47:12'),
(287, 'Colombia', 'CO', 1, 1, '2018-05-22 03:47:30'),
(288, 'Comoros', 'KM', 1, 1, '2018-05-22 03:49:13'),
(289, 'Congo - Brazzaville ', 'CG', 1, 1, '2018-05-22 03:53:26'),
(290, 'Congo - Kinshasa ', 'CD', 1, 1, '2018-05-22 03:53:41'),
(291, 'Cook Islands ', 'CK', 1, 1, '2018-05-22 03:54:02'),
(292, 'Costa Rica ', 'CR', 1, 1, '2018-05-22 03:54:21'),
(293, 'Cote d’Ivoire ', 'CI', 1, 1, '2018-05-22 03:55:34'),
(294, 'Croatia ', 'HR', 1, 1, '2018-05-22 03:55:48'),
(295, 'Cuba ', 'CU', 1, 1, '2018-05-22 03:56:18'),
(296, 'Cyprus', 'CY', 1, 1, '2018-05-22 03:58:54'),
(297, 'Czech Republic ', 'CZ', 1, 1, '2018-05-22 03:59:10'),
(298, 'Denmark ', 'DK', 1, 1, '2018-05-22 03:59:28'),
(299, 'Djibouti', 'DJ', 1, 1, '2018-05-22 04:00:54'),
(300, 'Dominica', 'DM', 1, 1, '2018-05-22 04:01:09'),
(301, 'Dominican Republic', 'DO', 1, 1, '2018-05-22 04:01:24'),
(302, 'Ecuador', 'EC', 1, 1, '2018-05-22 04:01:46'),
(303, 'Egypt', 'EG', 1, 1, '2018-05-22 04:02:08'),
(304, 'El Salvador', 'SV', 1, 1, '2018-05-22 04:04:38'),
(305, 'Equatorial Guinea', 'GQ', 1, 1, '2018-05-22 04:04:59'),
(306, 'Eritrea', 'ER', 1, 1, '2018-05-22 04:05:16'),
(307, 'Estonia', 'EE', 1, 1, '2018-05-22 04:05:32'),
(308, 'Ethiopia', 'ET', 1, 1, '2018-05-22 04:06:07'),
(309, 'Falkland Islands', 'FK', 1, 1, '2018-05-22 04:06:28'),
(310, 'Faroe Islands', 'FO', 1, 1, '2018-05-22 04:08:36'),
(311, 'Fiji', 'FJ', 1, 1, '2018-05-22 04:11:46'),
(312, 'Finland', 'FI', 1, 1, '2018-05-22 04:12:04'),
(313, 'France', 'FR', 1, 1, '2018-05-22 04:12:31'),
(314, 'French Guiana ', 'GF', 1, 1, '2018-05-22 04:12:48'),
(315, 'French Polynesia ', 'PF', 1, 1, '2018-05-22 04:13:07'),
(316, 'Gabon', 'GA', 1, 1, '2018-05-22 04:14:14'),
(317, 'Gambia', 'GM', 1, 1, '2018-05-22 04:14:27'),
(318, 'Georgia', 'GE', 1, 1, '2018-05-22 04:14:52'),
(319, 'Germany', 'DE', 1, 1, '2018-05-22 04:15:07'),
(320, 'Ghana', 'GH', 1, 1, '2018-05-22 04:16:26'),
(321, 'Gibraltar', 'GI', 1, 1, '2018-05-22 04:16:45'),
(322, 'Greece', 'GR', 1, 1, '2018-05-22 04:43:40'),
(323, 'Greenland', 'GL', 1, 1, '2018-05-22 04:44:02'),
(324, 'Grenada', 'GD', 1, 1, '2018-05-22 04:49:28'),
(325, 'Guadeloupe', 'GP', 1, 1, '2018-05-22 04:51:56'),
(326, 'Guam', 'GU', 1, 1, '2018-05-22 04:52:10'),
(327, 'Guatemala', 'GT', 1, 1, '2018-05-22 04:52:28'),
(328, 'Guinea', 'GN', 1, 1, '2018-05-22 04:52:42'),
(329, 'Guinea-Bissau', 'GW', 1, 1, '2018-05-22 04:53:00'),
(330, 'Guyana', 'GY', 1, 1, '2018-05-22 04:57:51'),
(331, 'Haiti', 'HT', 1, 1, '2018-05-23 02:59:57'),
(332, 'Honduras', 'HN', 1, 1, '2018-05-23 03:00:20'),
(333, 'Hong Kong SAR China', 'HK', 1, 1, '2018-05-23 03:00:57'),
(334, 'Hungary', 'HU', 1, 1, '2018-05-23 03:01:23'),
(335, 'Iceland', 'IS', 1, 1, '2018-05-23 03:01:38'),
(336, 'India', 'IN', 1, 1, '2018-05-23 03:02:55'),
(337, 'Indonesia', 'ID', 1, 1, '2018-05-23 03:03:12'),
(338, 'Iran', 'IR', 1, 1, '2018-05-23 03:03:28'),
(339, 'Iraq', 'IQ', 1, 1, '2018-05-23 03:03:45'),
(340, 'Ireland', 'IE', 1, 1, '2018-05-23 03:04:11'),
(341, 'Israel', 'IL', 1, 1, '2018-05-23 03:04:48'),
(342, 'Italy', 'IT', 1, 1, '2018-05-23 03:06:24'),
(343, 'Jamaica', 'JM', 1, 1, '2018-05-23 03:06:42'),
(344, 'Japan', 'JP', 1, 1, '2018-05-23 03:08:05'),
(345, 'Jordan', 'JO', 1, 1, '2018-05-23 03:08:22'),
(346, 'Kazakhstan', 'KZ', 1, 1, '2018-05-23 03:08:38'),
(347, 'Kenya', 'KE', 1, 1, '2018-05-23 03:08:56'),
(348, 'Kiribati', 'KI', 1, 1, '2018-05-23 03:09:10'),
(349, 'Kuwait', 'KW', 1, 1, '2018-05-23 03:09:56'),
(350, 'Kyrgyzstan', 'KG', 1, 1, '2018-05-23 03:10:15'),
(351, 'Laos', 'LA', 1, 1, '2018-05-23 03:11:13'),
(352, 'Latvia', 'LV', 1, 1, '2018-05-23 03:11:29'),
(353, 'Lebanon', 'LB', 1, 1, '2018-05-23 03:11:43'),
(354, 'Lesotho', 'LS', 1, 1, '2018-05-23 03:13:02'),
(355, 'Liberia', 'LR', 1, 1, '2018-05-23 03:13:19'),
(356, 'Libya', 'LY', 1, 1, '2018-05-23 03:15:30'),
(357, 'Liechtenstein', 'LI', 1, 1, '2018-05-23 03:17:55'),
(358, 'Lithuania', 'LT', 1, 1, '2018-05-23 03:18:12'),
(359, 'Luxembourg', 'LU', 1, 1, '2018-05-23 03:18:30'),
(360, 'Macau SAR China', 'MO', 1, 1, '2018-05-23 03:22:24'),
(361, 'Macedonia', 'MK', 1, 1, '2018-05-23 03:22:46'),
(362, 'Madagascar', 'MG', 1, 1, '2018-05-23 03:23:22'),
(363, 'Malawi', 'MW', 1, 1, '2018-05-23 03:23:39'),
(364, 'Malaysia', 'MY', 1, 1, '2018-05-23 03:23:53'),
(365, 'Maldives', 'MV', 1, 1, '2018-05-23 03:24:07'),
(366, 'Mali', 'ML', 1, 1, '2018-05-23 03:24:21'),
(367, 'Malta', 'MT', 1, 1, '2018-05-23 03:25:53'),
(368, 'Martinique', 'MQ', 1, 1, '2018-05-23 03:27:52'),
(369, 'Mauritania', 'MR', 1, 1, '2018-05-23 03:28:19'),
(370, 'Mauritius', 'MU', 1, 1, '2018-05-23 03:28:36'),
(371, 'Mayotte', 'YT', 1, 1, '2018-05-23 03:28:53'),
(372, 'Mexico', 'MX', 1, 1, '2018-05-23 03:32:02'),
(373, 'Micronesia', 'FM', 1, 1, '2018-05-23 03:32:40'),
(374, 'Moldova', 'MD', 1, 1, '2018-05-23 03:32:57'),
(375, 'Monaco', 'MC', 1, 1, '2018-05-23 03:33:12'),
(376, 'Mongolia', 'MN', 1, 1, '2018-05-23 03:33:27'),
(377, 'Montenegro', 'ME', 1, 1, '2018-05-23 03:33:47'),
(378, 'Montserrat', 'MS', 1, 1, '2018-05-23 03:34:24'),
(379, 'Morocco', 'MA', 1, 1, '2018-05-23 03:34:39'),
(380, 'Mozambique', 'MZ', 1, 1, '2018-05-23 03:34:59'),
(381, 'Myanmar ', 'MM', 1, 1, '2018-05-23 03:37:59'),
(382, 'Namibia', 'NA', 1, 1, '2018-05-23 03:38:16'),
(383, 'Nauru', 'NR', 1, 1, '2018-05-23 03:38:29'),
(384, 'Nepal', 'NP', 1, 1, '2018-05-23 03:38:45'),
(385, 'Netherlands', 'NL', 1, 1, '2018-05-23 03:39:02'),
(386, 'New Caledonia', 'NC', 1, 1, '2018-05-23 03:40:29'),
(387, 'New Zealand', 'NZ', 1, 1, '2018-05-23 03:40:46'),
(388, 'Nicaragua', 'NI', 1, 1, '2018-05-23 03:41:04'),
(389, 'Niger', 'NE', 1, 1, '2018-05-23 03:41:31'),
(390, 'Nigeria', 'NG', 1, 1, '2018-05-23 03:43:49'),
(391, 'Norfolk Island', 'NF', 1, 1, '2018-05-23 03:44:19'),
(392, 'Northern Mariana Islands', 'MP', 1, 1, '2018-05-23 03:44:36'),
(393, 'Norway', 'NO', 1, 1, '2018-05-23 03:44:51'),
(394, 'Oman', 'OM', 1, 1, '2018-05-23 03:45:06'),
(395, 'Pakistan', 'PK', 1, 1, '2018-05-23 03:45:35'),
(396, 'Palestinian Territories ', 'PS', 1, 1, '2018-05-23 03:45:50'),
(397, 'Panama', 'PA', 1, 1, '2018-05-23 03:46:12'),
(398, 'Papua New Guinea', 'PG', 1, 1, '2018-05-23 03:46:27'),
(399, 'Paraguay', 'PY', 1, 1, '2018-05-23 03:46:40'),
(400, 'Peru', 'PE', 1, 1, '2018-05-23 03:47:11'),
(401, 'Philippines', 'PH', 1, 1, '2018-05-23 03:47:29'),
(402, 'Poland', 'PL', 1, 1, '2018-05-23 03:48:50'),
(403, 'Portugal', 'PT', 1, 1, '2018-05-23 03:50:34'),
(404, 'Puerto Rico', 'PR', 1, 1, '2018-05-23 03:50:48'),
(405, 'Qatar', 'QA', 1, 1, '2018-05-23 03:51:01'),
(406, 'Romania', 'RO', 1, 1, '2018-05-23 03:51:17'),
(407, 'Russia', 'RU', 1, 1, '2018-05-23 03:51:33'),
(408, 'Rwanda', 'RW', 1, 1, '2018-05-23 03:52:00'),
(409, 'Réunion', 'RE', 1, 1, '2018-05-23 03:52:15'),
(410, 'Samoa', 'WS', 1, 1, '2018-05-23 03:52:36'),
(411, 'San Marino', 'SM', 0, 1, '2018-05-23 03:52:51'),
(412, 'Saudi Arabia', 'SA', 1, 1, '2018-05-23 03:53:32'),
(413, 'Senegal', 'SN', 1, 1, '2018-05-23 03:53:49'),
(414, 'Serbia', 'RS', 1, 1, '2018-05-23 03:54:03'),
(415, 'Seychelles', 'SC', 1, 1, '2018-05-23 03:54:17'),
(416, 'Sierra Leone', 'SL', 1, 1, '2018-05-23 03:54:30'),
(417, 'Singapore', 'SG', 1, 1, '2018-05-23 03:54:43'),
(418, 'Sint Maarten', 'SI', 1, 1, '2018-05-23 03:55:57'),
(419, 'Slovakia', 'SK', 1, 1, '2018-05-23 03:56:15'),
(420, 'Slovenia', 'SI', 1, 1, '2018-05-23 03:56:30'),
(421, 'Solomon Islands ', 'SB', 1, 1, '2018-05-23 03:57:06'),
(422, 'Somalia ', 'SO', 1, 1, '2018-05-23 03:57:29'),
(423, 'South Africa ', 'ZA', 1, 1, '2018-05-23 03:57:44'),
(424, 'South Korea ', 'KP', 1, 1, '2018-05-23 03:58:22'),
(425, 'South Sudan ', 'SS', 1, 1, '2018-05-23 03:58:50'),
(426, 'Spain ', 'ES', 1, 1, '2018-05-23 03:59:04'),
(427, 'Sri Lanka ', 'LK', 1, 1, '2018-05-23 03:59:26'),
(428, 'St. Kitts & Nevis ', 'KN', 1, 1, '2018-05-23 03:59:52'),
(429, 'St. Lucia ', 'LC', 1, 1, '2018-05-23 04:00:13'),
(430, 'St. Martin', 'MF', 1, 1, '2018-05-23 04:00:33'),
(431, 'St. Vincent & Grenadines', 'VC', 1, 1, '2018-05-23 04:00:56'),
(432, 'Suriname', 'SE', 1, 1, '2018-05-23 04:01:35'),
(433, 'Swaziland', 'SZ', 1, 1, '2018-05-23 04:02:02'),
(434, 'Sweden', 'SE', 1, 1, '2018-05-23 04:02:31'),
(435, 'Switzerland', 'CH', 1, 1, '2018-05-23 04:02:56'),
(436, 'Syria', 'SY', 1, 1, '2018-05-23 04:03:14'),
(437, 'Sao Tomé & Principe', 'ST', 1, 1, '2018-05-23 04:03:40'),
(438, 'Taiwan', 'TW', 1, 1, '2018-05-23 04:04:06'),
(439, 'Tajikistan', 'TJ', 1, 1, '2018-05-23 04:04:24'),
(440, 'Tanzania', 'TZ', 1, 1, '2018-05-23 04:06:29'),
(441, 'Thailand', 'TH', 1, 1, '2018-05-23 04:06:42'),
(442, 'Thuraya', 'TY', 1, 1, '2018-05-23 04:07:05'),
(443, 'Timor-Leste', 'TL', 1, 1, '2018-05-23 04:07:57'),
(444, 'Togo', 'TG', 1, 1, '2018-05-23 04:08:11'),
(445, 'Tonga', 'TO', 1, 1, '2018-05-23 04:10:08'),
(446, 'Trinidad & Tobago', 'TT', 1, 1, '2018-05-23 04:10:23'),
(447, 'Tunisia', 'TN', 1, 1, '2018-05-23 04:10:37'),
(448, 'Turkey', 'TR', 1, 1, '2018-05-23 04:10:52'),
(449, 'Turkmenistan ', 'TM', 1, 1, '2018-05-23 04:11:55'),
(450, 'Turks & Caicos Islands', 'TC', 1, 1, '2018-05-23 04:12:20'),
(451, 'Tuvalu', 'TV', 1, 1, '2018-05-23 04:12:36'),
(452, 'U.S. Virgin Islands', 'VI', 1, 1, '2018-05-23 04:13:01'),
(453, 'Uganda', 'UG', 1, 1, '2018-05-23 04:13:30'),
(454, 'Ukraine', 'UA', 1, 1, '2018-05-23 04:13:55'),
(455, 'United Arab Emirates', 'AE', 1, 1, '2018-05-23 04:15:33'),
(456, 'United Kingdom', 'GB', 1, 1, '2018-05-23 04:15:47'),
(457, 'United States', 'US', 1, 1, '2018-05-23 04:16:05'),
(458, 'Uruguay', 'UY', 1, 1, '2018-05-23 04:16:19'),
(459, 'Uzbekistan', 'UZ', 1, 1, '2018-05-23 04:16:32'),
(460, 'Vanuatu', 'VU', 1, 1, '2018-05-23 04:16:55'),
(461, 'Venezuela', 'VE', 1, 1, '2018-05-23 04:17:10'),
(462, 'Vietnam', 'VN', 1, 1, '2018-05-23 04:17:29'),
(463, 'Yemen', 'YE', 1, 1, '2018-05-23 04:17:44'),
(464, 'Zambia', 'ZM', 1, 1, '2018-05-23 04:18:01'),
(465, 'Zimbabwe', 'ZW', 1, 1, '2018-05-23 04:18:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_languages`
--

CREATE TABLE `list_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `img_flag` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` int(5) DEFAULT NULL,
  `language` int(5) DEFAULT NULL,
  `create_dated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `list_languages`
--

INSERT INTO `list_languages` (`id`, `name`, `code`, `img_flag`, `status`, `language`, `create_dated`) VALUES
(138, 'Afrikaans', 'AF', '0653-untitled-1_02.png', 1, 1, '2018-05-13 02:53:38'),
(139, 'Albanian', 'SQ', '0618-untitled-2_02.png', 1, 1, '2018-05-13 02:54:16'),
(140, 'Amharic', 'AM', '0648-untitled-6_02.png', 1, 1, '2018-05-14 04:20:53'),
(141, 'Arabic', 'AR', '0656-untitled-7_02.png', 1, 1, '2018-05-21 09:21:23'),
(142, 'Armenian', 'HY', '0627-untitled-8_02.png', 1, 1, '2018-05-21 09:22:23'),
(143, 'Azerbaijani', 'AZ', '0659-untitled-9_02.png', 1, 1, '2018-05-21 02:03:03'),
(144, 'Basque', 'EU', '0630-untitled-10_02.png', 1, 1, '2018-05-21 02:04:28'),
(145, 'Belarusian', 'BE', '0606-untitled-11_02.png', 1, 1, '2018-05-21 02:04:47'),
(146, 'Bengali', 'BN', '0609-untitled-12_02.png', 1, 1, '2018-05-21 02:05:32'),
(147, 'Bhutanese', 'BT', '0615-untitled-13_02.png', 1, 1, '2018-05-21 02:05:52'),
(148, 'Bihari ', 'BH', '0658-untitled-15_02.png', 1, 1, '2018-05-21 02:06:16'),
(149, 'Bosnian', 'BS', '0639-untitled-16_02.png', 1, 1, '2018-05-21 02:06:48'),
(150, 'Bosnian, BS-Latn', 'BS-Latn', '0624-untitled-16_02.png', 1, 1, '2018-05-21 02:07:07'),
(151, 'Breton', 'BR', '0613-untitled-17_02.png', 1, 1, '2018-05-21 02:07:28'),
(152, 'Bulgarian', 'BG', '0619-untitled-18_02.png', 1, 1, '2018-05-21 02:07:41'),
(153, 'Burmese', 'MY', '0628-untitled-19_02.png', 1, 1, '2018-05-21 02:07:54'),
(154, 'Catalan ', 'CA', '0633-untitled-20_02.png', 1, 1, '2018-05-21 02:08:10'),
(155, 'Chinese, Hong Kong ', 'ZH', '0637-untitled-21_02.png', 1, 1, '2018-05-21 02:08:27'),
(156, 'Chinese, Simplified ', 'ZS', '0626-untitled-22_02.png', 1, 1, '2018-05-21 02:09:11'),
(157, 'Chinese, Traditional', 'ZT', '0625-untitled-23_02.png', 1, 1, '2018-05-21 02:09:28'),
(158, 'Croatian ', 'HR', '0650-untitled-24_02.png', 1, 1, '2018-05-21 02:09:44'),
(159, 'Czech ', 'CS', '0747-untitled-25_02.png', 1, 1, '2018-05-21 02:10:28'),
(160, 'Danish ', 'DA', '0708-untitled-26_02.png', 1, 1, '2018-05-21 02:11:06'),
(161, 'Dutch ', 'NL', '0737-untitled-27_02.png', 1, 1, '2018-05-22 01:52:23'),
(162, 'English, EN', 'EN', '0739-untitled-28_02.png', 1, 1, '2018-05-22 01:52:37'),
(163, 'English, Australian ', 'AE', '0744-untitled-30_02.png', 1, 1, '2018-05-22 01:52:54'),
(164, 'English, Canadian', 'CE', '0752-untitled-31_02.png', 1, 1, '2018-05-22 01:53:15'),
(165, 'English, UK', ' UK ', '0715-untitled-1_02.png', 1, 1, '2018-05-22 01:53:35'),
(166, 'Esperanto ', 'EO', '0725-untitled-2_02.png', 1, 1, '2018-05-22 01:54:00'),
(167, 'Estonian ', 'ET', '0709-untitled-3_02.png', 1, 1, '2018-05-22 01:54:12'),
(168, 'Faroese ', 'FO', '0750-untitled-4_02.png', 1, 1, '2018-05-22 02:12:30'),
(169, 'Farsi ', 'FA', '0747-untitled-5_02.png', 1, 1, '2018-05-22 02:13:34'),
(170, 'Filipino ', 'TL', '0742-untitled-6_02.png', 1, 1, '2018-05-22 02:13:47'),
(171, 'Finnish ', 'FI', '0331-untitled-1_221_02.png', 1, 1, '2018-05-22 02:14:18'),
(172, 'French ', 'FR', '0344-untitled-3_02.png', 1, 1, '2018-05-22 02:14:33'),
(173, 'French, Canadian ', 'CF', '0328-untitled-3_02.png', 1, 1, '2018-05-22 02:15:03'),
(174, 'Frisian ', 'FY', '0349-untitled-5_02.png', 1, 1, '2018-05-22 02:15:14'),
(175, 'Georgian ', 'GE', '0348-untitled-6_02.png', 1, 1, '2018-05-22 02:15:26'),
(176, 'German ', 'DE', '0344-untitled-7_02.png', 1, 1, '2018-05-22 02:15:38'),
(177, 'Greek ', 'EL', '0334-untitled-8_02.png', 1, 1, '2018-05-22 02:16:18'),
(178, 'Guarani ', 'GN', '0311-untitled-9_02.png', 1, 1, '2018-05-22 02:16:28'),
(179, 'Gujarati ', 'GU', '0324-untitled-10_02.png', 1, 1, '2018-05-22 02:16:39'),
(180, 'Hausa ', 'HA', '0355-untitled-11_02.png', 1, 1, '2018-05-22 02:16:52'),
(181, 'Hawaiian ', 'HW', '0300-untitled-12_02.png', 1, 1, '2018-05-22 02:17:08'),
(182, 'Hebrew ', 'IW', '0347-untitled-13_02.png', 1, 1, '2018-05-22 02:17:19'),
(183, 'Hindi ', 'HI', '0352-untitled-14_02.png', 1, 1, '2018-05-22 02:17:33'),
(184, 'Hungarian ', 'HU', '0346-untitled-15_02.png', 1, 1, '2018-05-22 02:17:42'),
(185, 'Icelandic ', 'IS', '0322-untitled-16_02.png', 1, 1, '2018-05-22 02:17:54'),
(186, 'Igbo ', 'IG', '0334-untitled-18_02.png', 1, 1, '2018-05-22 02:18:05'),
(187, 'Indonesian ', 'ID', '0312-untitled-20_02.png', 1, 1, '2018-05-22 02:18:15'),
(188, 'Irish ', 'GA', '0343-untitled-21_02.png', 1, 1, '2018-05-22 02:18:28'),
(189, 'Italian ', 'IT', '0345-untitled-22_02.png', 1, 1, '2018-05-22 02:18:50'),
(190, 'Japanese ', 'JA', '0352-untitled-23_02.png', 1, 1, '2018-05-22 02:19:02'),
(191, 'Javanese', 'JW', '0354-untitled-24_02.png', 1, 1, '2018-05-22 02:19:15'),
(192, 'Kannada ', 'KN', '0307-untitled-25_02.png', 1, 1, '2018-05-22 02:19:24'),
(193, 'Kashmiri ', 'KS', '0356-untitled-26_02.png', 1, 1, '2018-05-22 02:19:38'),
(194, 'Kazakh ', 'KK', '0328-untitled-28_02.png', 1, 1, '2018-05-22 02:20:57'),
(195, 'Khmer ', 'KM', '0349-untitled-29_02.png', 1, 1, '2018-05-22 02:21:08'),
(196, 'Kirundi ', 'RN', '0356-untitled-30_02.png', 1, 1, '2018-05-22 02:21:19'),
(197, 'Korean ', 'KO', '0338-untitled-31_02.png', 1, 1, '2018-05-22 02:21:31'),
(198, 'Kurdish ', 'KU', '0455-untitled-23_02_02.png', 1, 1, '2018-05-22 02:21:41'),
(199, 'Laothian ', 'LO', '0403-untitled-24_031_02.png', 1, 1, '2018-05-22 02:21:51'),
(200, 'Latin ', 'LA', '0426-untitled-25_02.png', 1, 1, '2018-05-22 02:22:03'),
(201, 'Latvian ', 'LV', '0435-untitled-26_01_02.png', 1, 1, '2018-05-22 02:22:14'),
(202, 'Lingala ', 'LN', '0425-untitled-27_02.png', 1, 1, '2018-05-22 02:22:24'),
(203, 'Lithuanian ', 'LT', '0445-untitled-28_02.png', 1, 1, '2018-05-22 02:22:37'),
(204, 'Macedonian ', 'MK', '0441-untitled-29_02.png', 1, 1, '2018-05-22 02:22:49'),
(205, 'Malagasy ', 'MG', '0424-untitled-30_02.png', 1, 1, '2018-05-22 02:22:59'),
(206, 'Malay ', 'MS', '0410-untitled-31_02.png', 1, 1, '2018-05-22 02:23:32'),
(207, 'Malayalam ', 'ML', '0412-untitled-32_02.png', 1, 1, '2018-05-22 02:23:43'),
(208, 'Maltese ', 'MT', '0459-untitled-33_02.png', 1, 1, '2018-05-22 02:24:10'),
(209, 'Maori ', 'MI', '0456-untitled-34_02.png', 1, 1, '2018-05-22 02:24:22'),
(210, 'Marathi ', 'MR', '0440-untitled-35_02.png', 1, 1, '2018-05-22 02:25:52'),
(211, 'Moldavian ', 'MO', '0442-untitled-38_02.png', 1, 1, '2018-05-22 02:26:30'),
(212, 'Mongolian ', 'MN', '0458-untitled-39_02.png', 1, 1, '2018-05-22 02:27:38'),
(213, 'Montenegrin ', 'ME', '0439-untitled-40_02.png', 1, 1, '2018-05-22 02:27:48'),
(214, 'Nepali ', 'NE', '0434-untitled-41_02.png', 1, 1, '2018-05-22 02:28:11'),
(215, 'New Greenlandish ', 'GL', '0418-untitled-43_02.png', 1, 1, '2018-05-22 02:28:40'),
(216, 'Norwegian Bokmål ', 'NO', '0402-untitled-44_02.png', 1, 1, '2018-05-22 02:28:52'),
(217, 'Norwegian Nynorsk ', 'NN', '0445-untitled-45_02.png', 1, 1, '2018-05-22 02:29:18'),
(218, 'Pashto ', 'PS', '0423-untitled-46_02.png', 1, 1, '2018-05-22 02:29:44'),
(219, 'Persian, Dari ', 'DR', '0419-untitled-48_02.png', 1, 1, '2018-05-22 02:29:55'),
(220, 'Polish ', 'PL', '0452-untitled-49_02.png', 1, 1, '2018-05-22 02:30:10'),
(221, 'Portuguese ', 'PT', '0428-untitled-50_02.png', 1, 1, '2018-05-22 02:30:22'),
(222, 'Portuguese, Brazilian ', 'PB', '0428-untitled-51_02.png', 1, 1, '2018-05-22 02:30:32'),
(223, 'Punjabi ', 'PA', '0406-untitled-52_02.png', 1, 1, '2018-05-22 02:30:42'),
(224, 'Romanian ', 'RO', '0452-untitled-53_02.png', 1, 1, '2018-05-22 02:31:07'),
(225, 'Russian ', 'RU', '0524-untitled-54_02.png', 1, 1, '2018-05-22 02:31:28'),
(226, 'Rwandan ', 'RW', '0549-untitled-56_02.png', 1, 1, '2018-05-22 02:31:39'),
(227, 'Serbian, Cyrillic', 'SB', '0530-untitled-57_02.png', 1, 1, '2018-05-22 02:31:51'),
(228, 'Serbian, Latin', 'SBL', '0546-untitled-57_02.png', 1, 1, '2018-05-22 02:32:04'),
(229, 'Sesotho ', 'ST', '0519-untitled-58_02.png', 1, 1, '2018-05-22 02:32:17'),
(230, 'Shona ', 'SN', '0559-untitled-59_02.png', 1, 1, '2018-05-22 02:32:28'),
(231, 'Slovak ', 'SK', '0531-untitled-60_02.png', 1, 1, '2018-05-22 02:32:50'),
(232, 'Slovenian ', 'SL', '0504-untitled-61_02.png', 1, 1, '2018-05-22 02:33:05'),
(233, 'Somali ', 'SO', '0536-untitled-62_02.png', 1, 1, '2018-05-22 02:33:22'),
(234, 'Spanish ', 'ES', '0526-untitled-63_02.png', 1, 1, '2018-05-22 02:33:33'),
(235, 'Spanish, Latin American ', 'XL', '0502-untitled-64_02.png', 1, 1, '2018-07-24 06:21:43'),
(236, 'Sundanese ', 'SU', '0542-untitled-65_02.png', 1, 1, '2018-07-24 06:22:31'),
(237, 'Swahili ', 'SW', '0515-untitled-66_02.png', 1, 1, '2018-07-24 06:22:58'),
(238, 'Swedish ', 'SV', '0546-untitled-67_02.png', 1, 1, '2018-07-24 06:23:12'),
(239, 'Tajik ', 'TG', '0532-untitled-68_02.png', 1, 1, '2018-07-24 06:23:23'),
(240, 'Tamil ', 'TA', '0504-untitled-69_02.png', 1, 1, '2018-07-24 06:23:43'),
(241, 'Telugu ', 'TE', '0557-untitled-70_02.png', 1, 1, '2018-07-24 06:26:42'),
(242, 'Thai ', 'TH', '0530-untitled-71_02.png', 1, 1, '2018-07-24 06:27:17'),
(243, 'Tibetan ', 'BO', '0503-untitled-72_02.png', 1, 1, '2018-07-24 06:28:28'),
(244, 'Tonga ', 'TO', '0543-untitled-73_02.png', 1, 1, '2018-07-24 06:29:05'),
(245, 'Turkish ', 'TR', '0516-untitled-74_02.png', 1, 1, '2018-07-24 06:30:19'),
(246, 'Ukrainian ', 'UK', '0555-untitled-75_02.png', 1, 1, '2018-07-24 06:30:30'),
(247, 'Urdu ', 'UR', '0536-untitled-76_02.png', 1, 1, '2018-07-24 06:30:47'),
(248, 'Uzbek ', 'UZ', '0511-untitled-77_02.png', 1, 1, '2018-07-24 06:30:59'),
(249, 'Vietnamese ', 'VI', '1031-vietnamese.png', 1, 1, '2018-07-24 06:31:43'),
(250, 'Welsh ', 'CY', '0524-untitled-79_02.png', 1, 1, '2018-07-24 06:39:18'),
(251, 'Yiddish ', 'YI', '0558-untitled-80_02.png', 1, 1, '2018-07-24 06:39:29'),
(252, 'Yoruba ', 'YO', '0531-untitled-81_02.png', 1, 1, '2018-07-24 06:39:40'),
(253, 'Zulu ', 'ZU', '0505-untitled-82_02.png', 1, 1, '2018-07-24 06:39:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_service`
--

CREATE TABLE `list_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `language` int(5) DEFAULT NULL,
  `create_dated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `list_service`
--

INSERT INTO `list_service` (`id`, `name`, `code`, `status`, `language`, `create_dated`) VALUES
(1, 'Content Writing', 'Content Writing', 1, 1, '2018-05-13 08:54:49'),
(2, 'Website Localization', 'Website Localization', 1, 1, '2018-05-13 08:57:07'),
(3, 'Editing / Proofreading', 'EPEditing / Proofreading', 1, 1, '2018-05-14 04:04:46'),
(4, 'Interpreting', 'Interpreting', 1, 1, '2018-05-14 04:04:55'),
(5, 'Post-Editing', 'Post-Editing', 1, 1, '2018-05-14 04:05:12'),
(6, 'Software Localization', 'Software Localization', 1, 1, '2018-05-14 04:05:18'),
(7, 'Subtitling	  ', 'Subtitling	  ', 1, 1, '2018-05-14 04:05:35'),
(8, 'Transcription	  ', 'Transcription	  ', 1, 1, '2018-05-14 04:08:11'),
(9, 'Translation', 'Translation', 1, 1, '2018-09-25 03:10:47'),
(10, 'Training', 'Training', 1, 1, '2018-10-30 05:05:07'),
(11, 'Desktop Publishing', 'Desktop Publishing', 1, 1, '2018-10-30 05:06:30'),
(12, 'Project Management', 'Project Management', 1, 1, '2018-10-30 05:06:54'),
(13, 'Voiceover (Dubbing)', 'Voiceover', 1, 1, '2018-10-30 05:07:33'),
(14, 'Vendor Management', 'Vendor Management', 1, 1, '2018-10-30 05:08:05'),
(15, 'Sales', 'Sales', 1, 1, '2018-10-30 05:08:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_software`
--

CREATE TABLE `list_software` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `language` int(5) DEFAULT NULL,
  `create_dated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `list_software`
--

INSERT INTO `list_software` (`id`, `name`, `code`, `status`, `language`, `create_dated`) VALUES
(2, 'Across (CAT tool)', '', 1, 1, '2018-05-13 08:48:06'),
(3, 'Adobe Acrobat (PDF viewer)', '', 1, 1, '2018-05-13 08:48:44'),
(4, 'Adobe Illustrator (Graphic design)', '', 1, 1, '2018-05-13 08:49:21'),
(5, 'Adobe Photoshop (Graphic design)', '', 1, 1, '2018-05-14 04:08:27'),
(6, 'Aegisub (Subtitling)', '', 1, 1, '2018-05-14 04:08:33'),
(7, 'Alchemy Publisher (CAT tool)', '', 1, 1, '2018-05-14 04:09:36'),
(8, 'Amara (Subtitling)', '', 1, 1, '2018-05-14 04:09:42'),
(9, 'AutoCAD ', '', 1, 1, '2018-05-14 04:09:48'),
(10, 'CafeTran Espresso (CAT tool)', '', 1, 1, '2018-05-14 04:09:57'),
(11, 'CaptionMaker/MacCaption', '', 1, 1, '2018-09-25 03:30:11'),
(12, 'Captiz (TMS)', '', 1, 1, '2018-09-25 03:32:15'),
(13, 'Catalyst (CAT tool)', '', 1, 1, '2018-09-25 03:50:53'),
(14, 'Corel GraphicSuite  ', '', 1, 1, '2018-09-25 03:51:25'),
(15, 'Crowdin (TMS)', '', 1, 1, '2018-09-25 03:51:37'),
(16, 'DejaVu (CAT tool)', '', 1, 1, '2018-09-25 03:51:45'),
(17, 'DivXLand Media Subtitler', '', 1, 1, '2018-09-25 03:51:54'),
(18, 'Dreamweaver (Web development)', '', 1, 1, '2018-09-25 03:52:02'),
(19, 'Easyling (CAT tool)', '', 1, 1, '2018-09-25 03:52:10'),
(20, 'EZTitles (Subtitling)', '', 1, 1, '2018-09-25 03:52:19'),
(21, 'FinalSub (Subtitling)', '', 1, 1, '2018-09-25 03:52:52'),
(22, 'FiveLoadSub (Subtitling)', '', 1, 1, '2018-09-25 03:53:01'),
(23, 'Fluency (CAT tool)', '', 1, 1, '2018-09-25 03:53:11'),
(24, 'FrameMaker (Desktop publishing)', '', 1, 1, '2018-09-25 03:53:24'),
(25, 'Frontpage (Web development)', '', 1, 1, '2018-09-25 03:53:35'),
(26, 'Fusion (CAT tool)', '', 1, 1, '2018-09-25 03:53:48'),
(27, 'Google Translator Toolkit', '', 1, 1, '2018-09-25 03:53:55'),
(28, 'Heartsome (CAT tool)', '', 1, 1, '2018-09-25 03:54:05'),
(29, 'IBM (CAT tool)', '', 1, 1, '2018-09-25 03:54:13'),
(30, 'Idiom (CAT tool)', '', 1, 1, '2018-09-25 03:54:21'),
(31, 'Indesign (Desktop publishing)', '', 1, 1, '2018-09-25 03:54:29'),
(32, 'J-CAT (CAT tool)', '', 1, 1, '2018-09-25 03:54:41'),
(33, 'Lilt (CAT tool)', '', 1, 1, '2018-09-25 03:54:50'),
(34, 'Lingotek (CAT tool)', '', 1, 1, '2018-09-25 03:54:57'),
(35, 'Lingviny (TMS)', '', 1, 1, '2018-09-25 03:55:05'),
(36, 'Localizer (TMS)', '', 1, 1, '2018-09-25 03:55:11'),
(37, 'LocStudio (CAT tool)', '', 1, 1, '2018-10-30 06:27:12'),
(38, 'LogiTerm (CAT tool)', '', 1, 1, '2018-10-30 06:27:39'),
(39, 'Lokalise (TMS)', '', 1, 1, '2018-10-30 06:28:55'),
(40, 'LSP.expert (TMS)', '', 1, 1, '2018-10-30 06:29:23'),
(41, 'MadCap Lingo (CAT tool)', '', 1, 1, '2018-10-30 06:30:09'),
(42, 'MateCat (CAT tool)', '', 1, 1, '2018-10-30 06:30:38'),
(43, 'memoQ (CAT tool)', '', 1, 1, '2018-10-30 06:31:07'),
(44, 'MemSource Cloud (CAT tool)', '', 1, 1, '2018-10-30 06:31:23'),
(45, 'MetaTexis (CAT tool)', '', 1, 1, '2018-10-30 06:31:34'),
(46, 'Microsoft Excel', '', 1, 1, '2018-10-30 06:31:49'),
(47, 'Microsoft Office Pro', '', 1, 1, '2018-10-30 06:32:05'),
(48, 'Microsoft Word ', '', 1, 1, '2018-10-30 06:32:17'),
(49, 'MotionPoint ', '', 1, 1, '2018-10-30 06:32:30'),
(50, 'MovieCaptioner (Subtitling)', '', 1, 1, '2018-10-30 06:32:44'),
(51, 'Multicorpora (CAT tool)', '', 1, 1, '2018-10-30 06:33:56'),
(52, 'Multilizer (CAT tool)', '', 1, 1, '2018-10-30 06:34:21'),
(53, 'OmegaT (CAT tool)', '', 1, 1, '2018-10-30 06:34:57'),
(54, 'Pagemaker (Desktop publishing)', '', 1, 1, '2018-10-30 06:35:09'),
(55, 'Pairaphrase (TMS)', '', 1, 1, '2018-10-30 06:35:49'),
(56, 'Passolo (CAT tool)', '', 1, 1, '2018-10-30 06:35:59'),
(57, 'Personal Translator (TMS)', '', 1, 1, '2018-10-30 06:36:09'),
(58, 'PhraseApp (TMS)', '', 1, 1, '2018-10-30 06:36:26'),
(59, 'Plunet BusinessManager (TMS)', '', 1, 1, '2018-10-30 06:36:47'),
(60, 'Poliscript (Subtitling)', '', 1, 1, '2018-10-30 06:37:22'),
(61, 'Powerpoint ', '', 1, 1, '2018-10-30 06:37:36'),
(62, 'Projetex (TMS)', '', 1, 1, '2018-10-30 06:38:03'),
(63, 'Protemos (TMS)', '', 1, 1, '2018-10-30 06:38:56'),
(64, 'QuarkXPress (Desktop publishing)', '', 1, 1, '2018-10-30 06:39:43'),
(65, 'Redokun (TMS)', '', 1, 1, '2018-10-30 06:40:06'),
(66, 'Rulingo (TMS)', '', 1, 1, '2018-10-30 06:40:16'),
(67, 'SDL Online Translation Editor', '', 1, 1, '2018-10-30 06:41:01'),
(68, 'SDL TRADOS (CAT tool)', '', 1, 1, '2018-10-30 06:41:10'),
(69, 'SDLX (CAT tool)', '', 1, 1, '2018-10-30 06:41:59'),
(70, 'Smartcat (TMS)', '', 1, 1, '2018-10-30 06:43:08'),
(71, 'Subtitle Edit (Subtitling)', '', 1, 1, '2018-10-30 06:44:41'),
(72, 'Subtitle Editor (Subtitling)', '', 1, 1, '2018-10-30 06:44:49'),
(73, 'Subtitle Workshop (Subtitling)', '', 1, 1, '2018-10-30 06:44:59'),
(74, 'Swordfish (CAT tool)', '', 1, 1, '2018-10-30 06:46:16'),
(75, 'Text United Software (TMS)', '', 1, 1, '2018-10-30 06:46:55'),
(76, 'Transifex (TMS)	', '', 1, 1, '2018-10-30 06:48:41'),
(77, 'Translate (TMS)', '', 1, 1, '2018-10-30 06:48:50'),
(78, 'TranslationProjex (TMS)', '', 1, 1, '2018-10-30 06:49:34'),
(79, 'TransSuite2000 (CAT tool)', '', 1, 1, '2018-10-30 06:49:51'),
(80, 'Wordfast (CAT tool)', '', 1, 1, '2018-10-30 06:50:27'),
(81, 'XTM (CAT tool)', '', 1, 1, '2018-10-30 06:50:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `coupons_action`
--
ALTER TABLE `coupons_action`
  ADD PRIMARY KEY (`action_id`);

--
-- Chỉ mục cho bảng `coupons_banner`
--
ALTER TABLE `coupons_banner`
  ADD KEY `banner_id` (`banner_id`);

--
-- Chỉ mục cho bảng `coupons_category`
--
ALTER TABLE `coupons_category`
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `coupons_cities`
--
ALTER TABLE `coupons_cities`
  ADD PRIMARY KEY (`cityid`);

--
-- Chỉ mục cho bảng `coupons_comment`
--
ALTER TABLE `coupons_comment`
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `coupons_config`
--
ALTER TABLE `coupons_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_contents`
--
ALTER TABLE `coupons_contents`
  ADD KEY `news_id` (`news_id`);

--
-- Chỉ mục cho bảng `coupons_description`
--
ALTER TABLE `coupons_description`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_district`
--
ALTER TABLE `coupons_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Chỉ mục cho bảng `coupons_faqs`
--
ALTER TABLE `coupons_faqs`
  ADD KEY `news_id` (`news_id`);

--
-- Chỉ mục cho bảng `coupons_fee_define`
--
ALTER TABLE `coupons_fee_define`
  ADD PRIMARY KEY (`id_fee`);

--
-- Chỉ mục cho bảng `coupons_hocbong`
--
ALTER TABLE `coupons_hocbong`
  ADD KEY `news_id` (`news_id`);

--
-- Chỉ mục cho bảng `coupons_img`
--
ALTER TABLE `coupons_img`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_import`
--
ALTER TABLE `coupons_import`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_keyword`
--
ALTER TABLE `coupons_keyword`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_module`
--
ALTER TABLE `coupons_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Chỉ mục cho bảng `coupons_news`
--
ALTER TABLE `coupons_news`
  ADD KEY `news_id` (`news_id`);

--
-- Chỉ mục cho bảng `coupons_notices`
--
ALTER TABLE `coupons_notices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_online`
--
ALTER TABLE `coupons_online`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_option`
--
ALTER TABLE `coupons_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Chỉ mục cho bảng `coupons_orders`
--
ALTER TABLE `coupons_orders`
  ADD PRIMARY KEY (`coupon_purchaseid`);

--
-- Chỉ mục cho bảng `coupons_orders_detail`
--
ALTER TABLE `coupons_orders_detail`
  ADD PRIMARY KEY (`orders_id`);

--
-- Chỉ mục cho bảng `coupons_products`
--
ALTER TABLE `coupons_products`
  ADD KEY `news_id` (`news_id`);

--
-- Chỉ mục cho bảng `coupons_property`
--
ALTER TABLE `coupons_property`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_purchase`
--
ALTER TABLE `coupons_purchase`
  ADD PRIMARY KEY (`coupon_purchaseid`);

--
-- Chỉ mục cho bảng `coupons_schools`
--
ALTER TABLE `coupons_schools`
  ADD KEY `news_id` (`news_id`);

--
-- Chỉ mục cho bảng `coupons_session`
--
ALTER TABLE `coupons_session`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_shop`
--
ALTER TABLE `coupons_shop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_status`
--
ALTER TABLE `coupons_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_students`
--
ALTER TABLE `coupons_students`
  ADD KEY `news_id` (`news_id`);

--
-- Chỉ mục cho bảng `coupons_support`
--
ALTER TABLE `coupons_support`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_users`
--
ALTER TABLE `coupons_users`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `coupons_users_info`
--
ALTER TABLE `coupons_users_info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_from`
--
ALTER TABLE `email_from`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_to`
--
ALTER TABLE `email_to`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filter_five`
--
ALTER TABLE `filter_five`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filter_four`
--
ALTER TABLE `filter_four`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filter_one`
--
ALTER TABLE `filter_one`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filter_products`
--
ALTER TABLE `filter_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filter_three`
--
ALTER TABLE `filter_three`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filter_two`
--
ALTER TABLE `filter_two`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gold_price`
--
ALTER TABLE `gold_price`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_area_code`
--
ALTER TABLE `list_area_code`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_country`
--
ALTER TABLE `list_country`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_languages`
--
ALTER TABLE `list_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_service`
--
ALTER TABLE `list_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_software`
--
ALTER TABLE `list_software`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `coupons_action`
--
ALTER TABLE `coupons_action`
  MODIFY `action_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT cho bảng `coupons_banner`
--
ALTER TABLE `coupons_banner`
  MODIFY `banner_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `coupons_category`
--
ALTER TABLE `coupons_category`
  MODIFY `category_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `coupons_cities`
--
ALTER TABLE `coupons_cities`
  MODIFY `cityid` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `coupons_comment`
--
ALTER TABLE `coupons_comment`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_config`
--
ALTER TABLE `coupons_config`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `coupons_contents`
--
ALTER TABLE `coupons_contents`
  MODIFY `news_id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_description`
--
ALTER TABLE `coupons_description`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_district`
--
ALTER TABLE `coupons_district`
  MODIFY `district_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;

--
-- AUTO_INCREMENT cho bảng `coupons_faqs`
--
ALTER TABLE `coupons_faqs`
  MODIFY `news_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `coupons_fee_define`
--
ALTER TABLE `coupons_fee_define`
  MODIFY `id_fee` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `coupons_hocbong`
--
ALTER TABLE `coupons_hocbong`
  MODIFY `news_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `coupons_img`
--
ALTER TABLE `coupons_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_import`
--
ALTER TABLE `coupons_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_keyword`
--
ALTER TABLE `coupons_keyword`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_module`
--
ALTER TABLE `coupons_module`
  MODIFY `module_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `coupons_news`
--
ALTER TABLE `coupons_news`
  MODIFY `news_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `coupons_notices`
--
ALTER TABLE `coupons_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT cho bảng `coupons_online`
--
ALTER TABLE `coupons_online`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_option`
--
ALTER TABLE `coupons_option`
  MODIFY `option_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `coupons_orders`
--
ALTER TABLE `coupons_orders`
  MODIFY `coupon_purchaseid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Purchase ID';

--
-- AUTO_INCREMENT cho bảng `coupons_orders_detail`
--
ALTER TABLE `coupons_orders_detail`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_products`
--
ALTER TABLE `coupons_products`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_property`
--
ALTER TABLE `coupons_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_purchase`
--
ALTER TABLE `coupons_purchase`
  MODIFY `coupon_purchaseid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Purchase ID';

--
-- AUTO_INCREMENT cho bảng `coupons_schools`
--
ALTER TABLE `coupons_schools`
  MODIFY `news_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `coupons_session`
--
ALTER TABLE `coupons_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_shop`
--
ALTER TABLE `coupons_shop`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `coupons_status`
--
ALTER TABLE `coupons_status`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `coupons_students`
--
ALTER TABLE `coupons_students`
  MODIFY `news_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `coupons_support`
--
ALTER TABLE `coupons_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_users`
--
ALTER TABLE `coupons_users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Coupons user Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `coupons_users_info`
--
ALTER TABLE `coupons_users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_from`
--
ALTER TABLE `email_from`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_to`
--
ALTER TABLE `email_to`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter_five`
--
ALTER TABLE `filter_five`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter_four`
--
ALTER TABLE `filter_four`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter_one`
--
ALTER TABLE `filter_one`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter_products`
--
ALTER TABLE `filter_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter_three`
--
ALTER TABLE `filter_three`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter_two`
--
ALTER TABLE `filter_two`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gold_price`
--
ALTER TABLE `gold_price`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `list_area_code`
--
ALTER TABLE `list_area_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT cho bảng `list_country`
--
ALTER TABLE `list_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT cho bảng `list_languages`
--
ALTER TABLE `list_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT cho bảng `list_service`
--
ALTER TABLE `list_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `list_software`
--
ALTER TABLE `list_software`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
