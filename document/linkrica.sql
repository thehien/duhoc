-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 21, 2019 lúc 11:50 PM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `linkrica`
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
(51, 21, 0, 1, 'Danh mục nội dung', 'nội dung', 'news', 'fa-hacker-news', 1, 1, 1, 1, 1, 8, 0),
(52, 22, 0, 1, 'Quản lý nhân viên', 'nhân viên', '', 'fa-th-list', 0, 0, 0, 0, 0, 2, 0),
(53, 23, 0, 1, 'Quản lý địa điểm', 'địa điểm', '', 'fa-map-marker', 0, 0, 0, 0, 0, 15, 0),
(54, 24, 22, 1, 'Danh sách nhân viên', 'Nhân viên', 'products', 'fa-th-large', 0, 0, 0, 0, 0, 0, 0),
(55, 25, 1, 1, 'Cấu hình website', 'cấu hình', 'configs', 'fa-cog', 1, 1, 1, 1, 1, 3, 0),
(56, 26, 57, 1, 'Danh sách đơn hàng', 'đơn hàng', 'porders', 'fa-suitcase', 1, 1, 1, 1, 1, 1, 0),
(57, 27, 57, 1, 'Danh sách đơn hàng B', 'đơn hàng', 'purchases', 'fa-suitcase', 0, 0, 0, 0, 0, 2, 0),
(58, 28, 57, 1, 'Quản lý kho hàng', 'quản lý kho', 'manages', 'fa-globe', 0, 0, 0, 0, 0, 3, 0),
(59, 57, 0, 1, 'Quản lý đơn hàng', 'đơn hàng', '', 'fa-suitcase', 0, 0, 0, 0, 1, 3, 0),
(60, 58, 57, 1, 'Thống kê nhập kho', 'nhập kho', 'imports', 'fa-globe', 0, 0, 0, 0, 0, 4, 0),
(151, 63, 0, 1, 'Manager jobseeker', 'jobseeker', '', 'fa-th-list', 0, 0, 0, 0, 1, 1, 0),
(152, 64, 63, 1, 'List Jobseekers', 'jobseekers', 'jobseekers', 'fa-th-list', 1, 1, 1, 1, 1, 1, 0),
(153, 1, 0, 14, 'Hệ thống', 'Hệ thống', '', 'fa-cog', 0, 0, 0, 0, 0, 1, 0),
(154, 2, 1, 14, 'Danh sách chức năng', 'Chức năng', 'modules', 'fa-arrows', 0, 0, 0, 0, 0, 1, 0),
(155, 3, 1, 14, 'Danh sách thành viên', 'Thành viên', 'users', 'fa-group', 0, 0, 0, 0, 0, 2, 0),
(156, 11, 22, 14, 'Thuộc tính nhân viên', 'thuộc tính', 'propertys', 'fa-adn', 0, 0, 0, 0, 0, 2, 0),
(157, 12, 23, 14, 'Danh sách tỉnh thành', 'tỉnh thành', 'cities', 'fa-map-marker', 0, 0, 0, 0, 0, 20, 0),
(158, 13, 23, 14, 'Danh sách quận huyện', 'quận huyện', 'districts', 'fa-map-marker', 0, 0, 0, 0, 0, 20, 0),
(159, 14, 22, 14, 'Danh sách nhà cung cấp', 'nhà cung cấp', 'shops', 'fa-apple', 0, 0, 0, 0, 0, 1, 0),
(160, 16, 15, 14, 'Hỗ trợ online', 'hỗ trợ', 'onlines', 'fa-share', 0, 0, 0, 0, 0, 1, 0),
(161, 17, 15, 14, 'Danh sách tư vấn', 'tư vấn', 'supports', 'fa-share', 0, 0, 0, 0, 0, 2, 0),
(162, 18, 15, 14, 'Danh sách hỏi đáp', 'hỏi đáp', 'faqs', 'fa-share', 0, 0, 0, 0, 0, 3, 0),
(163, 20, 22, 14, 'Danh sách thảo luận', 'thảo luận', 'comments', 'fa-comment', 0, 0, 0, 0, 0, 3, 0),
(164, 22, 0, 14, 'Quản lý nhân viên', 'nhân viên', '', 'fa-th-list', 0, 0, 0, 0, 0, 2, 0),
(165, 24, 22, 14, 'Danh sách nhân viên', 'Nhân viên', 'products', 'fa-th-large', 0, 0, 0, 0, 0, 0, 0),
(166, 25, 1, 14, 'Cấu hình website', 'cấu hình', 'configs', 'fa-cog', 0, 0, 0, 0, 0, 3, 0),
(167, 65, 0, 1, 'Quản lý giá ngôn ngữ', 'Ngôn ngữ', '', 'fa-th-list', 0, 0, 0, 0, 1, 3, 0),
(168, 66, 65, 1, 'Danh sách giá', 'Danh sách', 'language', 'fa-th-list', 1, 1, 1, 1, 1, 0, 0),
(169, 67, 0, 1, 'Quản lý chuyên ngành', 'chuyên ngành', '', 'fa-th-list', 0, 0, 0, 0, 1, 5, 0),
(170, 68, 67, 1, 'Danh sách chuyên ngành', 'chuyên ngành', 'special', 'fa-th-list', 1, 1, 1, 1, 1, 0, 0),
(171, 69, 1, 1, 'Danh sách dịch giả', 'Danh sách dịch giả', 'users_cv', 'fa-group', 1, 1, 1, 1, 1, 2, 0),
(172, 1, 0, 4, 'Hệ thống', 'Hệ thống', '', 'fa-cog', 0, 0, 0, 0, 0, 1, 0),
(173, 2, 1, 4, 'Danh sách chức năng', 'Chức năng', 'modules', 'fa-arrows', 0, 0, 0, 0, 0, 1, 0),
(174, 3, 1, 4, 'Danh sách thành viên', 'Thành viên', 'users', 'fa-group', 0, 0, 0, 0, 0, 2, 0),
(175, 11, 22, 4, 'Thuộc tính nhân viên', 'thuộc tính', 'propertys', 'fa-adn', 0, 0, 0, 0, 0, 2, 0),
(176, 12, 23, 4, 'Danh sách tỉnh thành', 'tỉnh thành', 'cities', 'fa-map-marker', 0, 0, 0, 0, 0, 20, 0),
(177, 13, 23, 4, 'Danh sách quận huyện', 'quận huyện', 'districts', 'fa-map-marker', 0, 0, 0, 0, 0, 20, 0),
(178, 14, 22, 4, 'Danh sách nhà cung cấp', 'nhà cung cấp', 'shops', 'fa-apple', 0, 0, 0, 0, 0, 1, 0),
(179, 16, 15, 4, 'Hỗ trợ online', 'hỗ trợ', 'onlines', 'fa-share', 0, 0, 0, 0, 0, 1, 0),
(180, 17, 15, 4, 'Danh sách tư vấn', 'tư vấn', 'supports', 'fa-share', 0, 0, 0, 0, 0, 2, 0),
(181, 18, 15, 4, 'Danh sách hỏi đáp', 'hỏi đáp', 'faqs', 'fa-share', 0, 0, 0, 0, 0, 3, 0),
(182, 20, 22, 4, 'Danh sách thảo luận', 'thảo luận', 'comments', 'fa-comment', 0, 0, 0, 0, 0, 3, 0),
(183, 22, 0, 4, 'Quản lý nhân viên', 'nhân viên', '', 'fa-th-list', 0, 0, 0, 0, 0, 2, 0),
(184, 24, 22, 4, 'Danh sách nhân viên', 'Nhân viên', 'products', 'fa-th-large', 0, 0, 0, 0, 0, 0, 0),
(185, 25, 1, 4, 'Cấu hình website', 'cấu hình', 'configs', 'fa-cog', 0, 0, 0, 0, 0, 3, 0),
(186, 65, 0, 4, 'Quản lý ngôn ngữ', 'Ngôn ngữ', '', 'fa-th-list', 0, 0, 0, 0, 0, 3, 0),
(187, 66, 65, 4, 'Danh sách ngôn ngữ', 'Danh sách', 'language', 'fa-th-list', 0, 0, 0, 0, 0, 0, 0),
(188, 67, 0, 4, 'Quản lý chuyên ngành', 'chuyên ngành', '', 'fa-th-list', 0, 0, 0, 0, 0, 5, 0),
(189, 68, 67, 4, 'Danh sách chuyên ngành', 'chuyên ngành', 'special', 'fa-th-list', 0, 0, 0, 0, 0, 0, 0),
(190, 69, 1, 4, 'Danh sách chuyên viên', 'Danh sách chuyên viên', 'users_cv', 'fa-group', 0, 0, 0, 0, 0, 2, 0),
(191, 70, 0, 1, 'Quản lý phần mềm', 'Quản lý phần mềm', '', 'fa-th-large', 0, 0, 0, 0, 1, 1, 0),
(192, 71, 70, 1, 'Danh sách', 'Danh sách', 'software', 'fa-th-list', 1, 1, 1, 1, 1, 0, 0),
(193, 1, 0, 26, 'Hệ thống', 'Hệ thống', '', 'fa-cog', 0, 0, 0, 0, 0, 1, 0),
(194, 2, 1, 26, 'Danh sách chức năng', 'Chức năng', 'modules', 'fa-arrows', 0, 0, 0, 0, 0, 1, 0),
(195, 3, 1, 26, 'Danh sách khách hàng', 'Khách hàng', 'users', 'fa-group', 0, 0, 0, 0, 0, 2, 0),
(196, 11, 22, 26, 'Thuộc tính nhân viên', 'thuộc tính', 'propertys', 'fa-adn', 0, 0, 0, 0, 0, 2, 0),
(197, 12, 23, 26, 'Danh sách tỉnh thành', 'tỉnh thành', 'cities', 'fa-map-marker', 0, 0, 0, 0, 0, 20, 0),
(198, 13, 23, 26, 'Danh sách quận huyện', 'quận huyện', 'districts', 'fa-map-marker', 0, 0, 0, 0, 0, 20, 0),
(199, 14, 22, 26, 'Danh sách nhà cung cấp', 'nhà cung cấp', 'shops', 'fa-apple', 0, 0, 0, 0, 0, 1, 0),
(200, 16, 15, 26, 'Hỗ trợ online', 'hỗ trợ', 'onlines', 'fa-share', 0, 0, 0, 0, 0, 1, 0),
(201, 17, 15, 26, 'Danh sách tư vấn', 'tư vấn', 'supports', 'fa-share', 0, 0, 0, 0, 0, 2, 0),
(202, 18, 15, 26, 'Danh sách hỏi đáp', 'hỏi đáp', 'faqs', 'fa-share', 0, 0, 0, 0, 0, 3, 0),
(203, 20, 22, 26, 'Danh sách thảo luận', 'thảo luận', 'comments', 'fa-comment', 0, 0, 0, 0, 0, 3, 0),
(204, 22, 0, 26, 'Quản lý nhân viên', 'nhân viên', '', 'fa-th-list', 0, 0, 0, 0, 0, 2, 0),
(205, 24, 22, 26, 'Danh sách nhân viên', 'Nhân viên', 'products', 'fa-th-large', 0, 0, 0, 0, 0, 0, 0),
(206, 25, 1, 26, 'Cấu hình website', 'cấu hình', 'configs', 'fa-cog', 0, 0, 0, 0, 0, 3, 0),
(207, 65, 0, 26, 'Quản lý ngôn ngữ', 'Ngôn ngữ', '', 'fa-th-list', 0, 0, 0, 0, 0, 3, 0),
(208, 66, 65, 26, 'Danh sách ngôn ngữ', 'Danh sách', 'language', 'fa-th-list', 0, 0, 0, 0, 0, 0, 0),
(209, 67, 0, 26, 'Quản lý chuyên ngành', 'chuyên ngành', '', 'fa-th-list', 0, 0, 0, 0, 0, 5, 0),
(210, 68, 67, 26, 'Danh sách chuyên ngành', 'chuyên ngành', 'special', 'fa-th-list', 0, 0, 0, 0, 0, 0, 0),
(211, 69, 1, 26, 'Danh sách dịch giả', 'Danh sách dịch giả', 'users_cv', 'fa-group', 0, 0, 0, 0, 0, 2, 0),
(212, 70, 0, 26, 'Quản lý phần mềm', 'Quản lý phần mềm', '', 'fa-th-large', 0, 0, 0, 0, 0, 1, 0),
(213, 71, 70, 26, 'Danh sách', 'Danh sách', 'software', 'fa-th-list', 0, 0, 0, 0, 0, 0, 0),
(214, 73, 0, 1, 'Quản lý mã vùng', 'Quản lý mã vùng', 'area_code', 'fa-th-list', 1, 1, 1, 1, 1, 6, 0),
(215, 74, 0, 1, 'Quản lý ngôn ngữ', 'Ngôn ngữ', 'list_language', 'fa-th-list', 1, 1, 1, 1, 1, 7, 0),
(216, 72, 0, 1, 'Quản lý quốc gia', 'Quản lý quốc gia', 'country', 'fa-th-list', 1, 1, 1, 1, 1, 4, 0),
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
(232, 29, 0, 42, 'System', 'system', '', 'fa-cog', 0, 0, 0, 0, 0, 1, 1),
(233, 30, 29, 42, 'List Functions', 'Functions', 'modules', 'fa-arrows', 0, 0, 0, 0, 0, 1, 1),
(234, 31, 29, 42, 'List of Customers', 'Customers', 'users', 'fa-group', 0, 0, 0, 0, 0, 2, 1),
(235, 32, 29, 42, 'Configure Website', 'configure', 'configs', 'fa-cog', 0, 0, 0, 0, 0, 3, 1),
(236, 33, 0, 42, 'Manager Jobs', 'product', '', 'fa-th-list', 0, 0, 0, 0, 0, 2, 1),
(237, 34, 33, 42, 'List jobs', 'products', 'products', 'fa-th-large', 0, 0, 0, 0, 0, 1, 1),
(238, 35, 33, 42, 'List suppliers', 'suppliers', 'shops', 'fa-apple', 0, 0, 0, 0, 0, 2, 1),
(239, 36, 33, 42, 'List propertys', 'propertys', 'propertys', 'fa-adn', 0, 0, 0, 0, 0, 3, 1),
(240, 37, 33, 42, 'List comments', 'comments', 'comments', 'fa-comment', 0, 0, 0, 0, 0, 4, 1),
(241, 38, 59, 42, 'Customer Orders', 'Customer Orders', 'porders', 'fa-suitcase', 0, 0, 0, 0, 0, 3, 1),
(242, 41, 0, 42, 'List banners', 'banner', 'banners', 'fa-picture-o', 0, 0, 0, 0, 0, 6, 1),
(243, 42, 0, 42, 'List categories', 'categorie', 'categorys', 'fa-th-large', 0, 0, 0, 0, 0, 5, 1),
(244, 43, 0, 42, 'List contents', 'content', 'news', 'fa-hacker-news', 0, 0, 0, 0, 0, 8, 1),
(245, 44, 0, 42, 'List keywords', 'keyword', 'keywords', 'fa-google-plus-square', 0, 0, 0, 0, 0, 9, 1),
(246, 45, 0, 42, 'Filter products', 'filter', '', 'fa-share-alt-square', 0, 0, 0, 0, 0, 10, 1),
(247, 46, 45, 42, 'Filter one', 'one', 'filterones', 'fa-share-square', 0, 0, 0, 0, 0, 1, 1),
(248, 47, 45, 42, 'Filter two', 'two', 'filtertwos', 'fa-share-square', 0, 0, 0, 0, 0, 2, 1),
(249, 48, 45, 42, 'Filter three', 'three', 'filterthrees', 'fa-share-square', 0, 0, 0, 0, 0, 3, 1),
(250, 49, 45, 42, 'Filter four', 'four', 'filterfours', 'fa-share-square', 0, 0, 0, 0, 0, 4, 1),
(251, 50, 0, 42, 'Advisory and support', 'support', '', 'fa-reddit-square', 0, 0, 0, 0, 0, 11, 1),
(252, 51, 50, 42, 'Online advisory ', 'advisory', 'onlines', 'fa-share', 0, 0, 0, 0, 0, 1, 1),
(253, 52, 50, 42, 'List supports', 'support', 'supports', 'fa-share', 0, 0, 0, 0, 0, 2, 1),
(254, 53, 50, 42, 'List faqs', 'faq', 'faqs', 'fa-share', 0, 0, 0, 0, 0, 3, 1),
(255, 54, 0, 42, 'Manager location', 'location', '', 'fa-map-marker', 0, 0, 0, 0, 0, 12, 1),
(256, 55, 54, 42, 'List cities', 'city', 'cities', 'fa-map-marker', 0, 0, 0, 0, 0, 1, 1),
(257, 56, 54, 42, 'List districts', 'district', 'districts', 'fa-map-marker', 0, 0, 0, 0, 0, 2, 1),
(258, 59, 0, 42, 'Order Management', 'Orders', '', 'fa-suitcase', 0, 0, 0, 0, 0, 3, 1),
(259, 61, 59, 42, 'Manager import', 'import', 'imports', 'fa-globe', 0, 0, 0, 0, 0, 4, 1),
(260, 62, 59, 42, 'Manager stores', 'warehouse', 'manages', 'fa-globe', 0, 0, 0, 0, 0, 3, 1),
(261, 64, 63, 42, 'List Jobseekers', 'jobseekers', 'jobseekers', 'fa-th-list', 0, 0, 0, 0, 0, 1, 1),
(262, 75, 29, 42, 'List of Translators', 'List of Translators', 'users_cv', 'fa-th-list', 0, 0, 0, 0, 0, 2, 1),
(263, 76, 0, 42, 'Software Translation', 'Software Translation', '', 'fa-th-large', 0, 0, 0, 0, 0, 3, 1),
(264, 77, 76, 42, 'List of Software', 'List of Software', 'software', 'fa-th-list', 0, 0, 0, 0, 0, 0, 1),
(265, 78, 0, 42, 'Online Translators-Map', 'Online Translators-Map', '', 'fa-th-large', 0, 0, 0, 0, 0, 4, 1),
(266, 79, 78, 42, 'List of Translators', 'List of Translators', 'translater', 'fa-th-list', 0, 0, 0, 0, 0, 0, 1),
(267, 80, 0, 42, 'Price-Language', 'Price-Language', '', 'fa-th-large', 0, 0, 0, 0, 0, 5, 1),
(268, 81, 80, 42, 'Price List', 'Price List', 'language', 'fa-th-list', 0, 0, 0, 0, 0, 0, 1),
(269, 82, 0, 42, 'Manage Country', 'Manage Country', 'country', 'fa-th-list', 0, 0, 0, 0, 0, 6, 1),
(270, 83, 0, 42, 'Manage Specialized', 'Manage Specialized', '', 'fa-th-large', 0, 0, 0, 0, 0, 7, 1),
(271, 84, 83, 42, 'List Specialized', 'List Specialized', 'special', 'fa-th-list', 0, 0, 0, 0, 0, 0, 1),
(272, 85, 0, 42, 'Manage Area Code', 'Manage Area Code', 'area_code', 'fa-th-list', 0, 0, 0, 0, 0, 8, 1),
(273, 86, 0, 42, 'Manage language', 'Manage language', 'list_language', 'fa-th-list', 0, 0, 0, 0, 0, 9, 1),
(274, 87, 0, 42, 'Manage Service', 'Manage Service', 'service', 'fa-th-list', 0, 0, 0, 0, 0, 8, 1),
(275, 88, 59, 42, 'Translator Orders', 'Translator\'s Orders', 'trans_order', 'fa-th-list', 0, 0, 0, 0, 0, 0, 1),
(276, 89, 0, 42, 'Experience', 'Experience', 'kinhnghiem', 'fa-th-list', 0, 0, 0, 0, 0, 8, 1),
(277, 29, 0, 74, 'System', 'system', '', 'fa-cog', 0, 0, 0, 0, 0, 1, 1),
(278, 30, 29, 74, 'List Functions', 'Functions', 'modules', 'fa-arrows', 0, 0, 0, 0, 0, 1, 1),
(279, 31, 29, 74, 'List of Customers', 'Customers', 'users', 'fa-group', 0, 0, 0, 0, 0, 2, 1),
(280, 32, 29, 74, 'Configure Website', 'configure', 'configs', 'fa-cog', 0, 0, 0, 0, 0, 3, 1),
(281, 33, 0, 74, 'Manager Jobs', 'product', '', 'fa-th-list', 0, 0, 0, 0, 0, 2, 1),
(282, 34, 33, 74, 'List jobs', 'products', 'products', 'fa-th-large', 0, 0, 0, 0, 0, 1, 1),
(283, 35, 33, 74, 'List suppliers', 'suppliers', 'shops', 'fa-apple', 0, 0, 0, 0, 0, 2, 1),
(284, 36, 33, 74, 'List propertys', 'propertys', 'propertys', 'fa-adn', 0, 0, 0, 0, 0, 3, 1),
(285, 37, 33, 74, 'List comments', 'comments', 'comments', 'fa-comment', 0, 0, 0, 0, 0, 4, 1),
(286, 38, 59, 74, 'Customer Orders', 'Customer Orders', 'porders', 'fa-suitcase', 0, 0, 0, 0, 0, 3, 1),
(287, 41, 0, 74, 'List banners', 'banner', 'banners', 'fa-picture-o', 0, 0, 0, 0, 0, 6, 1),
(288, 42, 0, 74, 'List categories', 'categorie', 'categorys', 'fa-th-large', 0, 0, 0, 0, 0, 5, 1),
(289, 43, 0, 74, 'List contents', 'content', 'news', 'fa-hacker-news', 0, 0, 0, 0, 0, 8, 1),
(290, 44, 0, 74, 'List keywords', 'keyword', 'keywords', 'fa-google-plus-square', 0, 0, 0, 0, 0, 9, 1),
(291, 45, 0, 74, 'Filter products', 'filter', '', 'fa-share-alt-square', 0, 0, 0, 0, 0, 10, 1),
(292, 46, 45, 74, 'Filter one', 'one', 'filterones', 'fa-share-square', 0, 0, 0, 0, 0, 1, 1),
(293, 47, 45, 74, 'Filter two', 'two', 'filtertwos', 'fa-share-square', 0, 0, 0, 0, 0, 2, 1),
(294, 48, 45, 74, 'Filter three', 'three', 'filterthrees', 'fa-share-square', 0, 0, 0, 0, 0, 3, 1),
(295, 49, 45, 74, 'Filter four', 'four', 'filterfours', 'fa-share-square', 0, 0, 0, 0, 0, 4, 1),
(296, 50, 0, 74, 'Advisory and support', 'support', '', 'fa-reddit-square', 0, 0, 0, 0, 0, 11, 1),
(297, 51, 50, 74, 'Online advisory ', 'advisory', 'onlines', 'fa-share', 0, 0, 0, 0, 0, 1, 1),
(298, 52, 50, 74, 'List supports', 'support', 'supports', 'fa-share', 0, 0, 0, 0, 0, 2, 1),
(299, 53, 50, 74, 'List faqs', 'faq', 'faqs', 'fa-share', 0, 0, 0, 0, 0, 3, 1),
(300, 54, 0, 74, 'Manager location', 'location', '', 'fa-map-marker', 0, 0, 0, 0, 0, 12, 1),
(301, 55, 54, 74, 'List cities', 'city', 'cities', 'fa-map-marker', 0, 0, 0, 0, 0, 1, 1),
(302, 56, 54, 74, 'List districts', 'district', 'districts', 'fa-map-marker', 0, 0, 0, 0, 0, 2, 1),
(303, 59, 0, 74, 'Order Management', 'Orders', '', 'fa-suitcase', 0, 0, 0, 0, 0, 3, 1),
(304, 61, 59, 74, 'Manager import', 'import', 'imports', 'fa-globe', 0, 0, 0, 0, 0, 4, 1),
(305, 62, 59, 74, 'Manager stores', 'warehouse', 'manages', 'fa-globe', 0, 0, 0, 0, 0, 3, 1),
(306, 64, 63, 74, 'List Jobseekers', 'jobseekers', 'jobseekers', 'fa-th-list', 0, 0, 0, 0, 0, 1, 1),
(307, 75, 29, 74, 'List of Translators', 'List of Translators', 'users_cv', 'fa-th-list', 0, 0, 0, 0, 0, 2, 1),
(308, 76, 0, 74, 'Software Translation', 'Software Translation', '', 'fa-th-large', 0, 0, 0, 0, 0, 3, 1),
(309, 77, 76, 74, 'List of Software', 'List of Software', 'software', 'fa-th-list', 0, 0, 0, 0, 0, 0, 1),
(310, 78, 0, 74, 'Online Translators-Map', 'Online Translators-Map', '', 'fa-th-large', 0, 0, 0, 0, 0, 4, 1),
(311, 79, 78, 74, 'List of Translators', 'List of Translators', 'translater', 'fa-th-list', 0, 0, 0, 0, 0, 0, 1),
(312, 80, 0, 74, 'Price-Language', 'Price-Language', '', 'fa-th-large', 0, 0, 0, 0, 0, 5, 1),
(313, 81, 80, 74, 'Price List', 'Price List', 'language', 'fa-th-list', 0, 0, 0, 0, 0, 0, 1),
(314, 82, 0, 74, 'Manage Country', 'Manage Country', 'country', 'fa-th-list', 0, 0, 0, 0, 0, 6, 1),
(315, 83, 0, 74, 'Manage Specialized', 'Manage Specialized', '', 'fa-th-large', 0, 0, 0, 0, 0, 7, 1),
(316, 84, 83, 74, 'List Specialized', 'List Specialized', 'special', 'fa-th-list', 0, 0, 0, 0, 0, 0, 1),
(317, 85, 0, 74, 'Manage Area Code', 'Manage Area Code', 'area_code', 'fa-th-list', 0, 0, 0, 0, 0, 8, 1),
(318, 86, 0, 74, 'Manage language', 'Manage language', 'list_language', 'fa-th-list', 0, 0, 0, 0, 0, 9, 1),
(319, 87, 0, 74, 'Manage Service', 'Manage Service', 'service', 'fa-th-list', 0, 0, 0, 0, 0, 8, 1),
(320, 89, 0, 74, 'Experience', 'Experience', 'kinhnghiem', 'fa-th-list', 0, 0, 0, 0, 0, 8, 1);

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
(1, 'banner 1', '', '', 1, '', '', 1, 1, 1, 0),
(2, 'banner 2', '', '', 1, '', '', 0, 1, 1, 0),
(3, 'banner 3', '', '', 1, '', '', 0, 1, 1, 0);

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
  `category_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total_percent` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_category`
--

INSERT INTO `coupons_category` (`category_id`, `category_name`, `category_url`, `parent_id`, `category_img`, `pos`, `status`, `color`, `link`, `layout`, `language`, `category_content`, `seo_title`, `seo_desc`, `seo_key`, `news_url`, `total_percent`) VALUES
(1, 'Trang chủ', 'trang-chu', 0, '', 0, 0, '', '', '', 0, '', 'Trang chủ', '', 'Trang chủ', '', 1),
(2, 'Home', 'home', 0, '', 0, 0, '', '', '', 1, '', '', '', '', 'menu/', 0),
(3, 'Về chúng tôi', 've-chung-toi', 0, '', 3, 1, '', '', '', 0, '', 'Về chúng tôi', '', 'Về chúng tôi', 'menu/', 1),
(4, 'About us', 'about-us', 0, '', 0, 0, '', '', '', 1, '', '', '', '', 'menu/', 0),
(5, 'Danh mục', 'danh-muc', 0, '', 2, 1, '', '', '', 0, '', 'Sản phẩm', '', 'Sản phẩm', '', 11),
(6, 'Hot jobs', 'hot-jobs', 0, '', 0, 0, '', '', '', 1, '', 'Hot jobs', '', 'Hot jobs', '', 20),
(7, 'Liên hệ', 'lien-he', 0, '', 4, 1, '', 'http://localhost/ditacom/contact.html', '', 0, '', 'Liên hệ', '', 'Liên hệ', 'menu/', 1),
(8, 'Contact us', 'contact-us', 0, '', 0, 0, '', '', '', 1, '', '', '', '', 'menu/', 0),
(9, 'Dịch vụ', 'dich-vu', 0, '', 5, 1, '', '', '', 0, '', 'Dịch vụ', '', 'Dịch vụ', 'menu/', 1),
(10, 'Service', 'service', 0, '', 0, 0, '', '', '', 1, '', '', '', '', 'menu/', 0),
(11, 'Hỗ trợ', 'ho-tro', 0, '', 6, 1, '', '', '', 0, '', 'Hỗ trợ', '', 'Hỗ trợ', 'menu/', 1),
(13, 'Tin tức', 'tin-tuc', 0, '', 7, 1, '', '', '', 0, '', '', '', '', 'menu/', 1),
(14, 'News & shared', 'news', 0, '', 0, 1, '', '', '', 1, '', 'News', '', 'News', 'menu/', 0),
(23, 'Accounting / Finance', 'home-appliances', 6, '', 1, 1, 'fa-line-chart ', '', '', 1, '', 'Our Maid', '', 'Our Maid', '', 20),
(24, 'Automotive Jobs', 'home-living', 6, '', 2, 1, 'fa-wrench', '', '', 1, '', 'Our Nanny', '', 'Our Nanny', '', 20),
(47, 'Phiên dịch', 'phien-dich', 5, '1139-tshirt18.png', 0, 1, 'AA5098', '', '', 0, '', 'Our Maid and Nanny', '', 'Our Maid and Nanny', '', 0),
(81, 'Hướng dẫn du lịch', 'huong-dan-du-lich', 5, '', 0, 1, '', '', '', 0, '', 'Our Nanny', '', 'Our Nanny', '', 0),
(82, 'Construction / Facilities', 'construction-/-facilities', 6, '', 3, 1, 'fa-building-o', '', '', 1, '', 'Construction / Facilities', '', 'Construction / Facilities', '', 0),
(83, 'Education Training', 'education-training', 6, '', 4, 1, 'fa-graduation-cap', '', '', 1, '', 'Education Training', '', 'Education Training', '', 0),
(84, 'Healthcare', 'healthcare', 6, '', 5, 1, 'fa-medkit', '', '', 1, '', 'Healthcare', '', 'Healthcare', '', 0),
(85, 'Restaurant / Food Service', 'restaurant-/-food-service', 6, '', 6, 1, 'fa-cutlery', '', '', 1, '', 'Restaurant / Food Service', '', 'Restaurant / Food Service', '', 0),
(86, 'Transportation / Logistics', 'transportation-/-logistics', 6, '', 7, 1, 'fa-globe', '', '', 1, '', 'Transportation / Logistics', '', 'Transportation / Logistics', '', 0),
(87, 'IT / Software', 'telecommunications', 6, '', 0, 1, 'fa-laptop', '', '', 1, '', 'Telecommunications', '', 'Telecommunications', '', 0),
(88, 'Comments', 'comments', 0, '', 0, 0, '', '', '', 1, '', 'comments', '', 'comments', 'menu/', 0),
(89, 'Part-time', 'part-time', 6, '', 0, 1, '', '', '', 1, '', 'Part-time', 'Part-time', 'Part-time', '', 0),
(90, 'Full-Time', 'full-time', 6, '', 0, 1, '', '', '', 1, '', 'Full-Time', 'Full-Time', 'Full-Time', '', 0),
(91, 'Biên dịch', 'bien-dich', 5, '', 0, 1, '', '', '', 0, '', 'Biên dịch', '', 'Biên dịch', '', 0),
(92, 'Việc làm ngôn ngữ', 'viec-lam-ngon-ngu', 5, '', 0, 1, '', '', '', 0, '', 'Việc làm ngôn ngữ', '', 'Việc làm ngôn ngữ', '', 0),
(93, 'News home', 'news-home', 14, '', 0, 1, '', '', '', 1, '', 'News home', '', 'News home', 'menu/', 0),
(94, 'News right', 'news-right', 14, '', 0, 1, '', '', '', 1, '', 'News right', '', 'News right', 'menu/', 0);

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
(1, 'Linkrica', '08 38212787', '0971520643', '0971520643', 'info@aodaidinhtuan.com', 'Linkrica', '', 'Linkrica', '', '', '', '', 1, 1, 0),
(2, 'Linkrica', '0909839232', '0973185125', '0909839232', 'ngothehientg@gmail.com', 'Linkrica', '549/28/20 Le Van Tho', 'Linkrica', 'Linkrica', '', '', 'Thứ 2 - Thứ 6: 8:30am - 18:00pm', 1, 1, 1);

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
-- Cấu trúc bảng cho bảng `coupons_expert_user`
--

CREATE TABLE `coupons_expert_user` (
  `userid` int(11) NOT NULL COMMENT 'Coupons user Id',
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Coupons user Name',
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Coupons user Password',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Coupons user email',
  `mobile_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `point` int(11) NOT NULL,
  `avata` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` smallint(5) NOT NULL,
  `district` smallint(5) NOT NULL,
  `user_type` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_faq`
--

CREATE TABLE `coupons_faq` (
  `id` smallint(5) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `view` smallint(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` smallint(5) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Cấu trúc bảng cho bảng `coupons_language`
--

CREATE TABLE `coupons_language` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `from_language` int(11) NOT NULL,
  `to_language` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(4) NOT NULL,
  `language` int(5) NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_language`
--

INSERT INTO `coupons_language` (`id`, `name`, `from_language`, `to_language`, `price`, `status`, `language`, `created_date`) VALUES
(1, 'Afrikaans - Albanian', 138, 139, 0.155, 1, 1, 1521518087),
(2, 'Afrikaans - Amharic', 138, 140, 0.155, 1, 1, 1521518637),
(3, 'Afrikaans - Arabic', 138, 141, 0.155, 1, 1, 1521518663),
(4, 'Afrikaans - Armenian', 138, 142, 0.155, 1, 1, 1521518691),
(5, 'Afrikaans - Azerbaijani', 138, 143, 0.155, 1, 1, 1521969470),
(6, 'Afrikaans - Basque', 138, 144, 0.155, 1, 1, 1521969665),
(7, 'Afrikaans - Belarusian', 138, 145, 0.155, 1, 1, 1523211801),
(8, 'Afrikaans - Bengali', 138, 146, 0.155, 1, 1, 1532846137),
(9, 'Afrikaans - Bhutanese', 138, 147, 0.155, 1, 1, 1532849686),
(10, 'Afrikaans - Bihari', 138, 148, 0.155, 1, 1, 1532849748),
(11, 'Afrikaans - Bosnian', 138, 149, 0.155, 1, 1, 1532849840),
(12, 'Afrikaans - Bosnian-Latn', 138, 150, 0.155, 1, 1, 1532850015),
(13, 'Afrikaans - Breton', 138, 151, 0.155, 1, 1, 1532850098),
(14, 'Afrikaans - Bulgarian', 138, 152, 0.155, 1, 1, 1532850171),
(15, 'Afrikaans - Burmese', 138, 153, 0.155, 1, 1, 1532850231),
(16, 'Afrikaans - Catalan', 138, 154, 0.155, 1, 1, 1532850279),
(17, 'Afrikaans - Chinese, Hong Kong', 138, 155, 0.155, 1, 1, 1532850366),
(18, 'Afrikaans - Chinese, Simplified', 138, 156, 0.155, 1, 1, 1532850416),
(19, 'Afrikaans - Chinese, Traditional', 138, 157, 0.155, 1, 1, 1532850452),
(20, 'Afrikaans - Croatian', 138, 158, 0.155, 1, 1, 1532850535),
(21, 'Afrikaans - Czech', 138, 159, 0.155, 1, 1, 1532850610),
(22, 'Afrikaans - Danish', 138, 160, 0.155, 1, 1, 1532850792),
(23, 'Afrikaans - Dutch', 138, 161, 0.155, 1, 1, 1532851203),
(24, 'Viet Nam - English', 249, 162, 0.15, 1, 1, 1534836579);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_language_order`
--

CREATE TABLE `coupons_language_order` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `translate_id` int(11) NOT NULL DEFAULT '0',
  `session` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `from_language` int(11) NOT NULL,
  `to_language` int(11) NOT NULL,
  `price` double NOT NULL,
  `total_price` double NOT NULL,
  `special_category` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `language` int(5) NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_language_order`
--

INSERT INTO `coupons_language_order` (`id`, `user_id`, `translate_id`, `session`, `from_language`, `to_language`, `price`, `total_price`, `special_category`, `status`, `language`, `created_date`) VALUES
(700, 0, 338, '3le2n1g1o6ce5sckug6qur2at6', 249, 162, 0.15, 17.25, 0, 1, 1, 1547364704),
(701, 0, 339, '3le2n1g1o6ce5sckug6qur2at6', 138, 139, 0.155, 51.615, 0, 1, 1, 1547364843),
(702, 0, 339, '3le2n1g1o6ce5sckug6qur2at6', 138, 140, 0.155, 51.615, 0, 1, 1, 1547364843),
(703, 0, 340, '3le2n1g1o6ce5sckug6qur2at6', 138, 139, 0.155, 38.75, 0, 1, 1, 1547364890),
(704, 0, 340, '3le2n1g1o6ce5sckug6qur2at6', 138, 140, 0.155, 38.75, 0, 1, 1, 1547364890),
(705, 0, 341, '3le2n1g1o6ce5sckug6qur2at6', 138, 139, 0.155, 115.94, 0, 1, 1, 1547364900),
(706, 0, 341, '3le2n1g1o6ce5sckug6qur2at6', 138, 140, 0.155, 115.94, 0, 1, 1, 1547364900),
(707, 0, 341, '3le2n1g1o6ce5sckug6qur2at6', 138, 141, 0.155, 115.94, 0, 1, 1, 1547364900),
(708, 0, 341, '3le2n1g1o6ce5sckug6qur2at6', 138, 142, 0.155, 115.94, 0, 1, 1, 1547364900),
(709, 0, 343, '3le2n1g1o6ce5sckug6qur2at6', 138, 139, 0.155, 64.48, 0, 1, 1, 1547365092),
(710, 0, 343, '3le2n1g1o6ce5sckug6qur2at6', 138, 140, 0.155, 64.48, 0, 1, 1, 1547365092),
(711, 0, 343, '3le2n1g1o6ce5sckug6qur2at6', 138, 141, 0.155, 64.48, 0, 1, 1, 1547365092),
(712, 0, 343, '3le2n1g1o6ce5sckug6qur2at6', 138, 142, 0.155, 64.48, 0, 1, 1, 1547365092),
(713, 0, 342, '3le2n1g1o6ce5sckug6qur2at6', 138, 139, 0.155, 38.75, 0, 1, 1, 1547365095),
(714, 0, 342, '3le2n1g1o6ce5sckug6qur2at6', 138, 140, 0.155, 38.75, 0, 1, 1, 1547365095),
(715, 0, 342, '3le2n1g1o6ce5sckug6qur2at6', 138, 141, 0.155, 38.75, 0, 1, 1, 1547365095),
(716, 0, 342, '3le2n1g1o6ce5sckug6qur2at6', 138, 142, 0.155, 38.75, 0, 1, 1, 1547365095),
(717, 0, 2, 'ritm0dl3hfdfoci68v2jeviho5', 138, 139, 0.155, 25.885, 0, 1, 1, 1547372149),
(718, 0, 2, 'ritm0dl3hfdfoci68v2jeviho5', 138, 140, 0.155, 25.885, 0, 1, 1, 1547372149),
(719, 0, 1, 'ritm0dl3hfdfoci68v2jeviho5', 138, 139, 0.155, 13.02, 0, 1, 1, 1547372157),
(720, 0, 1, 'ritm0dl3hfdfoci68v2jeviho5', 138, 140, 0.155, 13.02, 0, 1, 1, 1547372157),
(721, 0, 1, 'ritm0dl3hfdfoci68v2jeviho5', 138, 141, 0.155, 13.02, 0, 1, 1, 1547372157),
(722, 0, 3, 'ritm0dl3hfdfoci68v2jeviho5', 138, 139, 0.155, 38.75, 0, 1, 1, 1547372317),
(723, 0, 3, 'ritm0dl3hfdfoci68v2jeviho5', 138, 140, 0.155, 38.75, 0, 1, 1, 1547372317),
(724, 0, 3, 'ritm0dl3hfdfoci68v2jeviho5', 138, 141, 0.155, 38.75, 0, 1, 1, 1547372317),
(725, 0, 4, 'ritm0dl3hfdfoci68v2jeviho5', 138, 158, 0.155, 0.155, 0, 1, 1, 1547375442),
(726, 0, 8, '37b7o3r6d9tiov8umhipvo6587', 249, 162, 0.15, 19.5, 0, 1, 1, 1548322466),
(727, 0, 7, '37b7o3r6d9tiov8umhipvo6587', 249, 162, 0.15, 1.5, 0, 1, 1, 1548322476),
(733, 0, 14, 'si0ongcg66hftll6h9asc6qb50', 249, 162, 0.15, 68.55, 0, 1, 1, 1548564010),
(736, 0, 14, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 108.3, 0, 1, 1, 1548664214),
(737, 0, 15, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 108.3, 0, 1, 1, 1548664384),
(738, 0, 16, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 108.3, 0, 1, 1, 1548664483),
(739, 0, 17, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 107.1, 0, 1, 1, 1548664648),
(740, 0, 19, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 108.3, 0, 1, 1, 1548665346),
(741, 0, 20, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 108.3, 0, 1, 1, 1548665664),
(742, 0, 21, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 107.1, 0, 1, 1, 1548665899),
(743, 0, 25, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 108.3, 0, 1, 1, 1548667183),
(744, 0, 26, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 108.3, 0, 1, 1, 1548667339),
(745, 0, 27, 'bh2k4p743mj29qr8va01qru2d1', 249, 162, 0.15, 107.1, 0, 1, 1, 1548668347),
(746, 0, 3, 'g6g87oi6fvpnebb85j5khueuu3', 249, 162, 0.15, 66.3, 0, 1, 1, 1549045196),
(748, 0, 2, 'g6g87oi6fvpnebb85j5khueuu3', 249, 162, 0.15, 22.2, 0, 1, 1, 1549046029);

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
(3, 1, 'Danh sách khách hàng', 'Khách hàng', 'users', 'fa-group', 1, 1, 1, 1, 1, 2, 0),
(4, 0, 'Danh sách danh mục', 'danh mục', 'categorys', 'fa-th-large', 1, 1, 1, 1, 0, 5, 0),
(5, 0, 'Danh sách banner', 'Banner', 'banners', 'fa-picture-o', 1, 1, 1, 1, 0, 6, 0),
(6, 0, 'Bộ lọc vị trí', 'Bộ lọc', '', 'fa-share-alt-square', 1, 1, 1, 1, 0, 10, 0),
(7, 6, 'Bộ lọc thời gian', 'bộ lọc', 'filterones', 'fa-share-square', 1, 1, 1, 1, 0, 1, 0),
(8, 6, 'Bộ lọc loại việc', 'bộ lọc', 'filtertwos', 'fa-share-square', 1, 1, 1, 1, 0, 2, 0),
(9, 6, 'Bộ lọc hôn nhân', 'bộ lọc', 'filterthrees', 'fa-share-square', 1, 1, 1, 1, 0, 3, 0),
(10, 6, 'Bộ lọc mức giá', 'bộ lọc', 'filterfours', 'fa-share-square', 1, 1, 1, 1, 0, 4, 0),
(11, 22, 'Thuộc tính nhân viên', 'thuộc tính', 'propertys', 'fa-adn', 1, 1, 1, 1, 1, 2, 0),
(12, 23, 'Danh sách tỉnh thành', 'tỉnh thành', 'cities', 'fa-map-marker', 1, 1, 1, 1, 1, 20, 0),
(13, 23, 'Danh sách quận huyện', 'quận huyện', 'districts', 'fa-map-marker', 1, 1, 1, 1, 1, 20, 0),
(14, 22, 'Danh sách nhà cung cấp', 'nhà cung cấp', 'shops', 'fa-apple', 1, 1, 1, 1, 1, 1, 0),
(15, 0, 'Tư vấn và hỗ trợ', 'hỗ trợ', '', 'fa-reddit-square', 1, 1, 1, 1, 0, 11, 0),
(16, 15, 'Hỗ trợ online', 'hỗ trợ', 'onlines', 'fa-share', 1, 1, 1, 1, 1, 1, 0),
(17, 15, 'Danh sách tư vấn', 'tư vấn', 'supports', 'fa-share', 1, 1, 1, 1, 1, 2, 0),
(18, 15, 'Danh sách hỏi đáp', 'hỏi đáp', 'faqs', 'fa-share', 1, 1, 1, 1, 1, 3, 0),
(19, 0, 'Danh sách từ khóa', 'từ khóa', 'keywords', 'fa-google-plus-square', 1, 1, 1, 1, 0, 9, 0),
(20, 22, 'Danh sách thảo luận', 'thảo luận', 'comments', 'fa-comment', 1, 1, 1, 1, 1, 3, 0),
(21, 0, 'Danh mục nội dung', 'nội dung', 'news', 'fa-hacker-news', 1, 1, 1, 1, 0, 8, 0),
(22, 0, 'Quản lý nhân viên', 'nhân viên', '', 'fa-th-list', 1, 1, 1, 1, 1, 2, 0),
(23, 0, 'Quản lý địa điểm', 'địa điểm', '', 'fa-map-marker', 1, 1, 1, 1, 0, 15, 0),
(24, 22, 'Danh sách nhân viên', 'Nhân viên', 'products', 'fa-th-large', 1, 1, 1, 1, 1, 0, 0),
(25, 1, 'Cấu hình website', 'cấu hình', 'configs', 'fa-cog', 1, 1, 1, 1, 1, 3, 0),
(26, 57, 'Danh sách đơn hàng', 'đơn hàng', 'porders', 'fa-suitcase', 1, 1, 1, 1, 0, 1, 0),
(27, 57, 'Danh sách đơn hàng B', 'đơn hàng', 'purchases', 'fa-suitcase', 1, 1, 1, 1, 0, 2, 0),
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
(57, 0, 'Quản lý đơn hàng', 'đơn hàng', '', 'fa-suitcase', 1, 1, 1, 1, 0, 4, 0),
(58, 57, 'Thống kê nhập kho', 'nhập kho', 'imports', 'fa-globe', 1, 1, 1, 1, 0, 4, 0),
(59, 0, 'Order Management', 'Orders', '', 'fa-suitcase', 1, 1, 1, 1, 1, 3, 1),
(61, 59, 'Manager import', 'import', 'imports', 'fa-globe', 1, 1, 1, 1, 1, 4, 1),
(62, 59, 'Manager stores', 'warehouse', 'manages', 'fa-globe', 1, 1, 1, 1, 1, 3, 1),
(63, 0, 'Manager jobseeker', 'jobseeker', '', 'fa-th-list', 1, 1, 1, 1, 0, 1, 1),
(64, 63, 'List Jobseekers', 'jobseekers', 'jobseekers', 'fa-th-list', 1, 1, 1, 1, 1, 1, 1),
(65, 0, 'Quản lý giá ngôn ngữ', 'Ngôn ngữ', '', 'fa-th-list', 1, 1, 1, 1, 1, 3, 0),
(66, 65, 'Danh sách giá', 'Danh sách', 'language', 'fa-th-list', 1, 1, 1, 1, 1, 0, 0),
(67, 0, 'Quản lý chuyên ngành', 'chuyên ngành', '', 'fa-th-list', 1, 1, 1, 1, 1, 5, 0),
(68, 67, 'Danh sách chuyên ngành', 'chuyên ngành', 'special', 'fa-th-list', 1, 1, 1, 1, 1, 0, 0),
(69, 1, 'Danh sách dịch giả', 'Danh sách dịch giả', 'users_cv', 'fa-group', 1, 1, 1, 1, 1, 2, 0),
(70, 0, 'Quản lý phần mềm', 'Quản lý phần mềm', '', 'fa-th-large', 1, 1, 1, 1, 1, 1, 0),
(71, 70, 'Danh sách', 'Danh sách', 'software', 'fa-th-list', 1, 1, 1, 1, 1, 0, 0),
(72, 0, 'Quản lý quốc gia', 'Quản lý quốc gia', 'country', 'fa-th-list', 1, 1, 1, 1, 1, 4, 0),
(73, 0, 'Quản lý mã vùng', 'Quản lý mã vùng', 'area_code', 'fa-th-list', 1, 1, 1, 1, 1, 6, 0),
(74, 0, 'Quản lý ngôn ngữ', 'Ngôn ngữ', 'list_language', 'fa-th-list', 1, 1, 1, 1, 1, 7, 0),
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
(90, 0, 'List new category', 'List new category', 'news_category', 'fa-th-list', 1, 1, 1, 1, 1, 11, 1);

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
-- Đang đổ dữ liệu cho bảng `coupons_news`
--

INSERT INTO `coupons_news` (`news_id`, `news_name`, `news_search`, `news_url`, `news_content`, `news_img`, `news_category`, `description`, `news_link`, `pos`, `status`, `userid`, `views`, `created_date`, `price`, `price_new`, `filename_file`, `language`, `seo_title`, `seo_desc`, `seo_key`) VALUES
(2, 'DỊCH TẠP CHÍ [NÉT VĂN HOÁ CỦA NHIỀU VÙNG MIỀN]', '', 'dsad', '<span style=\"color:rgb(64, 64, 64); font-family:calibri; font-size:13pt\">Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm......Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết</span>', '0712-desk-3139127_1920.jpg', 93, '<span style=\"color:rgb(64, 64, 64); font-family:calibri; font-size:17.3333px\">Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm......Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết</span>', 'sadasd', 0, 1, 1, 54, 1543656621, 0, 0, '', 1, 'dasd', 'sadasd', 'dasd'),
(7, 'HOW IT WORKS', '', 'how-it-works', 'Quãng thời gian sau đó, \"Những ngôi sao vàng\" chơi phòng ngự kín kẽ, đồng thời gia tăng sức ép lên đối phương bằng những pha tranh chấp nảy lửa ở khu vực giữa sân. Kết quả, ĐT Việt Nam đã bảo toàn thành công tỷ số thắng 1-0 sau 45 phút đầu tiên.<br />\r\n<br />\r\nBước vào hiệp 2, thủ thành Văn Lâm liên tiếp có những pha cứu thua không tưởng giúp \"Những ngôi sao vàng\" không để thủng lưới. Tiếp đến, thế trận phòng ngự phản công được HLV Park Hang Seo áp đặt khiến Malaysia tỏ rõ sự bế tắc.', '0256-system-2521728_1920.jpg', 93, 'Quãng thời gian sau đó, \"Những ngôi sao vàng\" chơi phòng ngự kín kẽ, đồng thời gia tăng sức ép lên đối phương bằng những pha tranh chấp nảy lửa ở khu vực giữa sân. Kết quả, ĐT Việt Nam đã bảo toàn thành công tỷ số thắng 1-0 sau 45 phút đầu tiên.<br />\r\n<br />\r\nBước vào hiệp 2, thủ thành Văn Lâm liên tiếp có những pha cứu thua không tưởng giúp \"Những ngôi sao vàng\" không để thủng lưới. Tiếp đến, thế trận phòng ngự phản công được HLV Park Hang Seo áp đặt khiến Malaysia tỏ rõ sự bế tắc.', 'sadasd', 0, 1, 1, 41, 1543685160, 0, 0, '', 1, 'HOW IT WORKS', 'Translation; ', 'How it works'),
(8, 'CLINICAL, HISTOLOGICAL, AND HISTOMORPHOMETRICAL ANALYSIS OF MAXILLARY SINUS AUGMENTATION USING INORG', '', 'benefits-of-online-translation-services--copy-', '<span style=\"color:rgb(29, 33, 41); font-family:helvetica,arial,sans-serif; font-size:14px\">The aim of the present study was to evaluate bone formation after maxillary sinus augmentation using bovine bone substitute material Bio-Oss alone by means of clinical, histological, and histomorphometrical examination of human biopsies. Deproteinized bovine bone (DPBB, Bio-Oss) was used to fill cavities after elevation of the sinus mucosa following major sinus pneumatization.&nbsp;</span>', '0736-africa-15428_1920.jpg', 94, '<img alt=\"\" src=\"/upload/store/images/notebook-1971495_1920.jpg\" style=\"float:left; height:507px; text-align:center; width:750px\" />\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n&nbsp;\r\n\r\n<div><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"color:rgb(29, 33, 41); font-family:helvetica,arial,sans-serif; font-size:14px\">The aim of the present study was to evaluate bone formation after maxillary sinus augmentation using bovine bone substitute material Bio-Oss alone by means of clinical, histological, and histomorphometrical examination of human biopsies. Deproteinized bovine bone (DPBB, Bio-Oss) was used to fill cavities after elevation of the sinus mucosa following major sinus pneumatization. Twenty patients with edentulous posterior maxillae were treated with 20 sinus augmentation procedures using a 2-stage technique. Residual lateral maxillary bone height was less than 3 mm. Forty-nine Straumann endosseous implants were used to complete the implant-prosthetic rehabilitation. Forty cylinder-shaped bone biopsies were taken from the augmented maxillary region 8 months after grafting during the second-stage surgery before implant placement. All implants were loaded 3 months after insertion, and no failures were recorded. Histomorphometrical analysis showed an average percentage of newly formed bone of 17.6% (± 2.8%) and a proportion of residual bone substitute material of 29.9% (± 4.9%) of the total biopsy area. Intimate contact between newly formed bone and Bio-Oss was detected along 28.2% (± 6.8%) of the particle surfaces. The results also showed that in all cases, the DPBB granules had been interconnected by bridges of vital newly formed bone. Inorganic bovine bone appears to be biocompatible and osteoconductive, and it can be used with success as a bone substitute in maxillary sinus augmentation procedures.</span></div>\r\n', 'sadasd', 0, 1, 1, 51, 1543685170, 0, 0, '', 1, 'dasd', 'sadasd', 'dasd'),
(9, 'BENEFITS OF ONLINE TRANSLATION SERVICES (copy)', '', 'benefits-of-online-translation-services--copy-', '<span style=\"color:rgb(64, 64, 64); font-family:calibri; font-size:13pt\">Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm......Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết</span>', '0627-3d-nature-landscape-photo-of-mountaint.jpg', 93, '<span style=\"color:rgb(64, 64, 64); font-family:calibri; font-size:13pt\">Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm......Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viếtNgắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm......Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viếtNgắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm......Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viếtNgắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm......Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết để xem thêm...Ngắt dòng nội dung bài viết</span>', 'sadasd', 0, 1, 1, 30, 1543685195, 0, 0, '', 1, 'dasd', 'sadasd', 'dasd'),
(10, 'ONLINE TRANSLATION APPLICATION - SOLUTION FOR BUSINESS', '', 'online-translation-application', '<span style=\"color:#000000\"><span style=\"font-family:calibri; font-size:13pt\">Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...</span></span>', '0627-3d-nature-landscape-photo-of-mountaint.jpg', 93, '<span style=\"color:rgb(64, 64, 64); font-family:calibri; font-size:13pt\">Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...Update content...</span>', 'online translation', 0, 1, 1, 23, 1543685211, 0, 0, '', 1, 'Online Translation Application', 'Translation Application; ', 'Translation Application'),
(11, 'aaaaaaaaaaa', '', 'aaaaaaaaaaa', 'fdsfdsf', '0218-hien.png', 14, 'fsdf', '', 0, 0, 1, 8, 1544624778, 0, 0, '', 1, 'aaaaaaaaaaa', 'fdsfdsf', 'aaaaaaaaaaa');

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
(71, 'Default', 68, 0, 0, 0, 0, 0, 0),
(72, 'Default', 1, 0, 0, 0, 0, 0, 0);

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

--
-- Đang đổ dữ liệu cho bảng `coupons_orders`
--

INSERT INTO `coupons_orders` (`coupon_purchaseid`, `coupon_userid`, `coupon_status`, `translater_id`, `order_status`, `accept_status`, `order_date`, `coupon_code`, `coupon_date`, `payment`, `total_prices`, `total_words`, `city`, `address`, `fullname`, `mobile_code`, `mobile`, `email`, `country`, `district`, `isevent`, `shipping`, `cod`, `language`, `data_code`, `userid`, `time_update`, `voucher_code`, `voucher_price`, `ship_notes`, `ship_from`, `ship_service`, `ship_bill`, `ship_cost`, `code_pay`, `code_banking`, `money_pay`) VALUES
(230, 42, 2, 17, 3, 0, 1547367959, '1661072', 1547364851, 0, 103.23, 333, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(231, 42, 2, NULL, 2, 0, 0, '4302063', 1547364910, 0, 463.76, 748, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(232, 42, 2, NULL, 4, 0, 0, '8005066', 1547364915, 0, 77.5, 250, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(233, 42, 2, 17, 3, 0, 1547369355, '854798', 1547365110, 0, 257.92, 416, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(234, 42, 2, 17, 3, 0, 1547368525, '1042176', 1547365115, 0, 155, 250, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(235, 42, 2, 17, 2, 0, 1548320370, '9741517', 1547372169, 0, 51.77, 167, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(236, 42, 2, 17, 2, 1, 1548319571, '4147645', 1547372175, 0, 39.06, 84, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(237, 42, 1, NULL, 4, 0, 0, '3978577', 1547372327, 0, 116.25, 250, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(238, 42, 2, NULL, 4, 0, 0, '6988831', 1548322533, 0, 19.5, 130, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(239, 42, 2, NULL, 4, 0, 0, '3240662', 1548322537, 0, 1.5, 10, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(240, 42, 2, NULL, 4, 0, 0, '1870423', 1548322541, 0, 0.155, 1, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(241, 42, 2, NULL, 4, 0, 0, '3383484', 1548327707, 0, 5.55, 37, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(242, 42, 1, NULL, 4, 0, 0, '2858887', 1548562853, 0, 34.35, 229, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(243, 42, 1, NULL, 4, 0, 0, '690308', 1548562858, 0, 51.45, 343, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(244, 42, 2, NULL, 4, 0, 0, '8927002', 1548564016, 0, 68.55, 457, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(245, 42, 2, NULL, 2, 0, 0, '1534119', 1548664496, 0, 108.3, 722, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(246, 42, 2, NULL, 2, 0, 0, '9856873', 1548664657, 0, 107.1, 714, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(247, 42, 2, NULL, 2, 0, 0, '5346985', 1548665358, 0, 108.3, 722, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(248, 42, 2, NULL, 2, 0, 0, '3933411', 1548665670, 0, 108.3, 722, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(249, 42, 2, NULL, 2, 0, 0, '1859437', 1548665905, 0, 107.1, 714, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(250, 42, 2, NULL, 2, 0, 0, '6196595', 1548667189, 0, 108.3, 722, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(251, 42, 2, NULL, 2, 0, 0, '3404236', 1548667347, 0, 108.3, 722, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(252, 42, 2, NULL, 2, 0, 0, '2755433', 1548668353, 0, 107.1, 714, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0),
(253, 42, 1, NULL, 1, 0, 0, '857544', 1549047672, 0, 22.2, 148, 0, 'gggg', 'nga hoang', '84', '909839232', 'nga.netco@gmail.com', 462, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', '', '', '', 0, '', '', 0);

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

--
-- Đang đổ dữ liệu cho bảng `coupons_orders_detail`
--

INSERT INTO `coupons_orders_detail` (`orders_id`, `coupon_code`, `translate_id`, `file_translate`, `file_zip`, `count_text`, `translate_from`, `translate_to`, `estimate`, `price`, `price_sum`, `special_category`, `message`) VALUES
(262, '1661072', 339, 'text_file_01-13-2019_083311am.txt', 'text_file_01-13-2019_083311am.zip', 333, '', '', '12', 103.23, 0, 15, '1. phần báo giá , thì sửa lại giống giỏ hàng cho dễ sử dụng.\r\n\r\n2. cho full sản phẩm trong phần detail -->ok\r\n\r\n3. Xem thử phần sắp xếp theo tên hãng\r\n\r\n4. đang bi loi khi chon thanh phố trong đơn hàng, phải update version mysql  -->ok\r\n\r\n5. ở san pham khuyen mai va san pham ban chay cho them chuc năng sort theo số thứ tự\r\n\r\n6. Cho phép bỏ phần sản phẩm mới & sản phẩm bán chạy trong admin, ko vào bên trong để chỉnh sửa  ->ok\r\n\r\n7. cắt tên quá dài khi quá 3 dòng.\r\n\r\n8. Kiểm tra lại phần nhà cung cấp, hiển thị danh sách đã xóa'),
(263, '4302063', 341, 'text_file_01-13-2019_083453am.txt', 'text_file_01-13-2019_083454am.zip', 748, '', '', '12', 463.76, 0, 14, 'gdfg'),
(264, '8005066', 340, 'text_file_01-13-2019_083444am.txt', 'text_file_01-13-2019_083445am.zip', 250, '', '', '12', 77.5, 0, 15, 'gfgd'),
(265, '854798', 343, 'text_file_01-13-2019_083632am.txt', 'text_file_01-13-2019_083632am.zip', 416, '', '', '12', 257.92, 0, 12, 'fff'),
(266, '1042176', 342, 'text_file_01-13-2019_083625am.txt', 'text_file_01-13-2019_083626am.zip', 250, '', '', '12', 155, 0, 19, 'aaa'),
(267, '9741517', 2, 'text_file_01-13-2019_103543am.txt', 'text_file_01-13-2019_103544am.zip', 167, '', '', '12', 51.77, 0, 8, ''),
(268, '4147645', 1, 'text_file_01-13-2019_103534am.txt', 'text_file_01-13-2019_103536am.zip', 84, '', '', '12', 39.06, 0, 13, ''),
(269, '3978577', 3, 'text_file_01-13-2019_103832am.txt', 'text_file_01-13-2019_103833am.zip', 250, '', '', '12', 116.25, 0, 14, ''),
(270, '6988831', 8, 'images_file_01-24-2019_103342am.txt', 'images_file_01-24-2019_103347am.zip', 130, '', '', '12', 19.5, 0, 7, ''),
(271, '3240662', 7, 'images_file_01-24-2019_103313am.txt', 'images_file_01-24-2019_103316am.zip', 10, '', '', '12', 1.5, 0, 20, ''),
(272, '1870423', 5, 'text_file_01-24-2019_102254am.txt', 'text_file_01-24-2019_102255am.zip', 1, '', '', '12', 0.155, 0, 18, ''),
(273, '3383484', 15, 'images_file_01-24-2019_115745am.txt', 'images_file_01-24-2019_115750am.zip', 37, '', '', '12', 5.55, 0, 21, ''),
(274, '2858887', 13, 'text_file_01-27-2019_052024am.txt', 'text_file_01-27-2019_052025am.zip', 229, '', '', '12', 34.35, 0, 18, ''),
(275, '690308', 12, 'text_file_01-27-2019_044014am.txt', 'text_file_01-27-2019_044015am.zip', 343, '', '', '12', 51.45, 0, 15, ''),
(276, '8927002', 14, 'text_file_01-27-2019_054001am.txt', 'text_file_01-27-2019_054002am.zip', 457, '', '', '12', 68.55, 0, 15, 'dsdada'),
(277, '1534119', 16, 'Resume - Phan Minh Tha.pdf', 'nao3wHsCXw.zip', 722, '', '', '24', 108.3, 0, 17, ''),
(278, '9856873', 17, 'Resume - Phan Minh Tha.docx', 'F8MSRBzrot.zip', 714, '', '', '24', 107.1, 0, 20, 'fdsfsdf'),
(279, '5346985', 19, 'Resume - Phan Minh Tha.pdf', 'l862kIU8jW.zip', 722, '', '', '24', 108.3, 0, 7, ''),
(280, '3933411', 20, 'Resume - Phan Minh Tha.pdf', 'qdAwkSiHkf.zip', 722, '', '', '24', 108.3, 0, 19, ''),
(281, '1859437', 21, 'Resume - Phan Minh Tha.docx', 'InnoOBO3lB.zip', 714, '', '', '24', 107.1, 0, 20, ''),
(282, '6196595', 25, 'Resume - Phan Minh Tha.pdf', 'Fx5libRG7L.zip', 722, '', '', '24', 108.3, 0, 19, ''),
(283, '3404236', 26, 'resume--phan-minh-tha.pdf', 'nr2uN8bthh.zip', 722, '', '', '24', 108.3, 0, 19, 'fdzdszd'),
(284, '2755433', 27, 'resume--ngo-the-hien.docx', 'QBhHJyl3tY.zip', 714, '', '', '24', 107.1, 0, 22, ''),
(285, '857544', 4, 'text_file_02-01-2019_075057pm.txt', 'text_file_02-01-2019_075057pm.zip', 148, '', '', '12', 22.2, 0, 19, '');

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
-- Cấu trúc bảng cho bảng `coupons_products_lang`
--

CREATE TABLE `coupons_products_lang` (
  `id` int(10) NOT NULL,
  `news_id` int(11) NOT NULL,
  `news_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_national` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_position` int(5) NOT NULL DEFAULT '0',
  `news_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_type` int(5) NOT NULL DEFAULT '0',
  `news_time` int(5) NOT NULL DEFAULT '0',
  `news_experience` text COLLATE utf8_unicode_ci,
  `news_married` int(5) NOT NULL DEFAULT '0',
  `news_skill` text COLLATE utf8_unicode_ci,
  `created_date` int(11) NOT NULL,
  `language` tinyint(4) NOT NULL
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

--
-- Đang đổ dữ liệu cho bảng `coupons_session`
--

INSERT INTO `coupons_session` (`id`, `session`, `product_id`, `translate_id`, `translate_from`, `translate_to`, `estimate`, `amount`, `option_id`, `option_name`, `language`) VALUES
(3, 'ritm0dl3hfdfoci68v2jeviho5', 0, 3, '', '', '12', 0, 0, '0', 1),
(4, '16b42ho223qk3tug2j4sc3l5n1', 0, 7, '', '', '12', 0, 0, '0', 1),
(5, '16b42ho223qk3tug2j4sc3l5n1', 0, 6, '', '', '12', 0, 0, '0', 1),
(6, '16b42ho223qk3tug2j4sc3l5n1', 0, 4, '', '', '12', 0, 0, '0', 1),
(7, 's3f5lsneq995iil7vv53bap2u2', 0, 8, '', '', '12', 0, 0, '0', 1),
(8, 's3f5lsneq995iil7vv53bap2u2', 0, 7, '', '', '12', 0, 0, '0', 1),
(9, '2eo8m8lhhks4cqlinj7i74khr5', 0, 10, '', '', '12', 0, 0, '0', 1);

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
-- Cấu trúc bảng cho bảng `coupons_special_category`
--

CREATE TABLE `coupons_special_category` (
  `id` int(10) NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `category_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `language` int(5) NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_special_category`
--

INSERT INTO `coupons_special_category` (`id`, `category_name`, `status`, `category_url`, `img`, `icon`, `language`, `created_date`) VALUES
(6, 'Aerospace/ Science', 1, 'aerospace/-science', '0932-aerospace-science.jpg', '0159-science.png', 1, 1526181824),
(7, 'Architecture', 1, 'architecture', '0934-architecture.jpg', '0101-architecture.png', 1, 1526204465),
(8, 'Arts', 1, 'arts', '0929-arts.jpg', '0135-arts.png', 1, 1526204613),
(9, 'Automotive', 1, 'automotive', '0911-automotive.jpg', '0142-automation.png', 1, 1526204623),
(10, 'Agriculture/ Forestry / Wood', 1, 'agriculture/-forestry-/-wood', '0906-agriculture-forestry--wood.jpg', '0208-forestry.png', 1, 1526434373),
(11, 'Book/ Journal', 1, 'book/-journal', '0924-book-journal.jpg', '0221-newspaper-(1).png', 1, 1526434390),
(12, 'Certificates, diplomas, licenses, etc.', 1, 'certificates--diplomas--licenses--etc-', '0924-certificates,-diplomas,-licenses,-etc..jpg', '0112-diploma.png', 1, 1526446974),
(13, 'Chemical', 1, 'chemical', '0933-chemical.jpg', '0253-chemical.png', 1, 1526447085),
(14, 'Civil Engineering / Construction', 1, 'civil-engineering-/-construction', '1048-civil-engineering--construction.jpg', '0359-construction.png', 1, 1526447444),
(15, 'Cosmetics', 1, 'cosmetics', '1009-cosmetics.jpg', '0358-cosmetics.png', 1, 1526447458),
(16, 'Culinary', 1, 'culinary', '1043-buffet.jpg', '0310-culinary.png', 1, 1526447466),
(17, 'Cultural', 1, 'cultural', '0546-cultural.jpg', '0347-cultural.png', 1, 1526447477),
(18, 'Consumer & Retail Products', 1, 'consumer---retail-products', '0555-consumer.jpg', '0304-products.png', 1, 1526447548),
(19, 'Education and Training', 1, 'education-and-training', '0530-education.jpg', '0321-education.png', 1, 1526447646),
(20, 'Electronics / Electrical Engineering', 1, 'electronics-/-electrical-engineering', '0512-electronics.jpg', '0307-electronic.png', 1, 1526447690),
(21, 'Energy / Oil & Gas', 1, 'energy-/-oil---gas', '0601-oil-&-gas.jpg', '0455-energy.png', 1, 1526447699),
(22, 'Entertainment and Media', 1, 'entertainment-and-media', '0637-entertaiment.jpg', '0438-entertaiment.png', 1, 1526447710),
(23, 'Environment', 1, 'environment', '0602-environment.jpg', '0437-environment.png', 1, 1526447719),
(24, 'Fashion / Textiles / Clothing', 1, 'fashion-/-textiles-/-clothing', '0609-fashion.jpg', '0418-fashion.png', 1, 1526447726),
(25, 'Financial Services', 1, 'financial-services', '0601-financial.jpg', '0530-finance.png', 1, 1526447734),
(26, 'Food & Beverage', 1, 'food---beverage', '0600-food-&-beverage.jpg', '0550-beverage.png', 1, 1526447742),
(27, 'Games / Video Games / Casino', 1, 'games-/-video-games-/-casino', '0626-game.jpg', '0505-game.png', 1, 1526447751),
(28, 'General', 1, 'general', '0613-general.jpg', '0717-genaral.png', 1, 1526447758),
(29, 'General Business / Commerce', 1, 'general-business-/-commerce', '0647-commerce.jpg', '0519-commerce.png', 1, 1526447977),
(30, 'Government and Public Interest', 1, 'government-and-public-interest', '0619-interest.jpg', '0506-goverment.png', 1, 1526447985),
(31, 'Heavy Industry', 1, 'heavy-industry', '0614-heavy-industry.jpg', '0634-industry.png', 1, 1526447992),
(32, 'History / Archaeology', 1, 'history-/-archaeology', '0614-history--archaeology.jpg', '0656-geography.png', 1, 1526447999),
(33, 'Immigration', 1, 'immigration', '0652-immigration.jpg', '0514-immigration.png', 1, 1526448007),
(34, 'Information Technology/ Software/ Website', 1, 'information-technology/-software/-website', '0649-information-technology.jpg', '0615-information-technology.png', 1, 1526448017),
(35, 'Internet, e-Commerce', 1, 'internet--e-commerce', '0627-internet.jpg', '0620-internet-explorer.png', 1, 1526448025),
(36, 'Legal', 1, 'legal', '0655-legal.jpg', '0647-legal.png', 1, 1526448323),
(37, 'Manufacturing', 1, 'manufacturing', '0606-manufacturing.jpg', '0622-manufacturing.png', 1, 1526448330),
(38, 'Marketing, Advertising & Public Relations', 1, 'marketing--advertising---public-relations', '0750-internet-2224603_1280.jpg', '0636-marketing.png', 1, 1526448337),
(39, 'Mathematics and Physics', 1, 'mathematics-and-physics', '0733-mathematics-and-physics.jpg', '0652-mathematics.png', 1, 1526448344),
(40, 'Media / Journalism / Publishing', 1, 'media-/-journalism-/-publishing', '0933-journalism.jpg', '0626-publishing.png', 1, 1526448352),
(41, 'Medical / Pharmaceutical', 1, 'medical-/-pharmaceutical', '0954-medical.jpg', '0649-medical.png', 1, 1526448359),
(42, 'Overseas Study', 1, 'overseas-study', '0930-study.jpg', '0329-study.png', 1, 1526448365),
(43, 'Shipping / Sailing / Maritime', 1, 'shipping-/-sailing-/-maritime', '0922-shipping.jpg', '0649-shipping.png', 1, 1526448372),
(44, 'Social Media', 1, 'social-media', '0649-social-media-1795578_640.jpg', '0735-social-network.png', 1, 1526448380),
(45, 'Seafood', 1, 'seafood', '0942-seafood.jpg', '0700-seafoot.png', 1, 1526448405),
(46, 'Sports', 1, 'sports', '0952-sport.jpg', '0713-sport.png', 1, 1526448412),
(47, 'Technology', 1, 'technology', '0610-technology.jpg', '0131-technology.png', 1, 1526448419),
(48, 'Telecommunications', 1, 'telecommunications', '0611-telecommunications.jpg', '0713-telecommunication.png', 1, 1526956645),
(49, 'Travel & Tourism', 1, 'travel---tourism', '0910-travel.jpg', '0710-travel.png', 1, 1534127462),
(50, 'Other', 1, 'other', '0649-other.jpg', '0740-other.png', 1, 1534127474);

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
-- Cấu trúc bảng cho bảng `coupons_translater`
--

CREATE TABLE `coupons_translater` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` text COLLATE utf8_unicode_ci NOT NULL,
  `latitude` text COLLATE utf8_unicode_ci NOT NULL,
  `tolanguage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fromlanguage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` int(50) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pos` smallint(5) NOT NULL,
  `language` int(5) NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_translater`
--

INSERT INTO `coupons_translater` (`id`, `name`, `news_img`, `longitude`, `latitude`, `tolanguage`, `fromlanguage`, `email`, `img_file`, `mobile`, `url`, `content`, `address`, `status`, `pos`, `language`, `created_date`) VALUES
(1, 'Jame', '0659-background-4-16.png', '16.463712', '107.590863', 'Vietnam,Japan', 'English', '', '', 0, 'ngo-the-hien', '', '580-darling-street--rozelle', 1, 0, 1, 0),
(2, 'Thongsole', '0647-background-4-25.png', '102.495496', '19.856270', 'English', 'Laos', '', '', 0, 'thongsole', '', '76-wilford-street--newtown--nsw', 1, 0, 1, 0),
(3, 'Ford Henson', '0644-background-4-23.png', '100.992541', '15.870032', 'Chinese', 'Thailand', '', '', 0, 'ford-henson', '', 'greenwood-plaza--36-blue-st--north-sydney-nsw', 1, 0, 1, 0),
(4, 'ngô thế hiển', '0602-background-4-22.png', '120.960515', '23.697810', '', '', '', '', 0, 'ngo-the-hien', '', 'tokyo', 1, 0, 1, 0),
(5, 'ngô thế hiển', '0640-background-4-21.png', '105.834160', '21.027764', '', '', '', '', 0, 'ngo-the-hien', '', 'ha-noi', 1, 0, 1, 0),
(6, 'Richard Branson', '0624-background-4-20.png', '101.975766', '4.210484', 'Russia,Dutch', 'Italia,English', '', '', 0, 'italia', '', 'italy', 1, 0, 1, 0),
(7, 'Akamolia', '0641-background-4-18.png', '103.846656', '46.862496', 'Russia', 'Monglia', '', '', 0, 'akamolia', '', 'mongolia', 1, 0, 1, 0),
(8, 'Yohoshi', '0626-background-4-17.png', '138.252924', '36.204824', '', '', '', '', 0, 'yohoshi', '', 'japan', 1, 0, 1, 0),
(9, 'Henry', '0651-background-4-19.png', '106.629664', '10.823099', 'VietNam', 'Japan', '', '', 0, 'henry', '', 'ho-chi-minh', 1, 0, 1, 1517643865),
(10, 'Cherry', '0605-background-4-15.png', '105.834160', '21.027764', 'English', 'Chinese', '', '', 0, 'cherry', '', 'china', 1, 0, 1, 1517643909),
(11, 'Jasmin', '0644-background-4-24.png', '114.109497', '22.396428', 'French', 'Chinese', '', '', 0, 'jasmin', '', 'hongkong', 1, 0, 1, 1531117844),
(12, 'Kaminasurah', '0633-background-42-23.png', '78.962880', '20.593684', 'French', 'India', '', '', 0, 'kaminasurah', '', 'india', 1, 0, 1, 1531118293),
(13, 'krockman', '0635-background-42-24.png', '100.501765', '13.756331', 'Vietnam', 'Thai', '', '', 0, 'krockman', '', '', 1, 0, 1, 1531118435),
(14, 'Simimakra', '0648-background-42-25.png', '90.356331', '23.684994', 'English', 'Irak', '', '', 0, 'simimakra', '', '', 1, 0, 1, 1531118988),
(15, 'Anak', '0600-background-4-24.png', '120.984219', '14.599512', 'Chinese', 'Tagalog', '', '', 0, 'anak', '', '', 1, 0, 1, 1531119060),
(16, 'Krumashita', '0616-background-4-25.png', '80.771797', '7.873054', 'india, english', 'sri lanka', '', '', 0, 'krumashita', '', '', 1, 0, 1, 1531119196),
(17, 'Himatsu', '0646-background-4-19.png', '95.955974', '21.916221', 'India', 'Malaysia', '', '', 0, 'himatsu', '', '', 1, 0, 1, 1531119286);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_translater_notices`
--

CREATE TABLE `coupons_translater_notices` (
  `id` int(11) NOT NULL,
  `accept_id` varchar(255) NOT NULL,
  `translater_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_readed` int(4) NOT NULL,
  `is_complete` int(4) NOT NULL,
  `language` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `coupons_translater_notices`
--

INSERT INTO `coupons_translater_notices` (`id`, `accept_id`, `translater_id`, `content`, `is_readed`, `is_complete`, `language`) VALUES
(149, '9741517', 17, 'Your income - <strong>ID Project:</strong> 9741517 - Total: $ 21,48', 1, 0, 1),
(147, '4147645', 17, 'Your income - <strong>ID Project:</strong> 4147645 - Total: $ 21,48', 1, 0, 1),
(148, '9741517', 17, 'You received this order. <strong>ID Project:</strong> 9741517; <strong>Translate From:</strong>Afrikaans,Afrikaans,<strong>Translate To:</strong>Amharic,Albanian, <strong>Words:</strong> 167  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 51,77', 1, 0, 1),
(144, '854798', 17, '<strong>ID Project</strong>: 854798; Your order is complete', 1, 1, 1),
(145, '1042176', 17, '<strong>ID Project</strong>: 1042176; Your order is complete', 1, 1, 1),
(146, '4147645', 17, 'You received this order. <strong>ID Project:</strong> 4147645; <strong>Translate From:</strong>Afrikaans,Afrikaans,Afrikaans,<strong>Translate To:</strong>Arabic,Amharic,Albanian, <strong>Words:</strong> 84  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 39,06', 1, 0, 1),
(142, '854798', 17, 'Your income - <strong>ID Project:</strong> 854798 - Total: $ 141,86', 1, 0, 1),
(143, '1661072', 17, '<strong>ID Project</strong>: 1661072; Your order is complete', 1, 1, 1),
(139, '1042176', 17, 'Your income - <strong>ID Project:</strong> 1042176 - Total: $ 85,25', 1, 0, 1),
(140, '1042176', 17, 'Your income - <strong>ID Project:</strong> 1042176 - Total: $ 85,25', 1, 0, 1),
(141, '854798', 17, 'You received this order. <strong>ID Project:</strong> 854798; <strong>Translate From:</strong>Afrikaans,Afrikaans,Afrikaans,Afrikaans,<strong>Translate To:</strong>Armenian,Arabic,Amharic,Albanian, <strong>Words:</strong> 416  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 257,92', 1, 0, 1),
(137, '1661072', 17, 'Your income - <strong>ID Project:</strong> 1661072 - Total: $ 56,78', 1, 0, 1),
(138, '1042176', 17, 'You received this order. <strong>ID Project:</strong> 1042176; <strong>Translate From:</strong>Afrikaans,Afrikaans,Afrikaans,Afrikaans,<strong>Translate To:</strong>Armenian,Arabic,Amharic,Albanian, <strong>Words:</strong> 250  <strong>Created Date:</strong> 13/01/2019; <strong>Estimated Delivery:</strong> 12 (hours); <strong>Amount:</strong> $ 155,00', 1, 0, 1),
(136, '1661072', 17, 'You received this order. <strong>ID Project:</strong> 1661072; <strong>Translate From:</strong>,<strong>Translate To:</strong>, <strong>Words:</strong>   <strong>Created Date:</strong> ; <strong>Estimated Delivery:</strong>  (hours); <strong>Amount:</strong> $ 0,00', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_translate_files`
--

CREATE TABLE `coupons_translate_files` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `translater_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `send_date` datetime DEFAULT NULL,
  `language` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_translate_files`
--

INSERT INTO `coupons_translate_files` (`id`, `user_id`, `translater_id`, `order_id`, `file_name`, `send_date`, `language`) VALUES
(1, 42, 17, '1661072', 'pXRWQxReis.zip', '2019-01-24 09:21:30', 1),
(2, 42, 17, '854798', '6zGVgmtFtK.zip', '2019-01-24 09:24:49', 1),
(3, 42, 17, '1042176', 'meQlRtdmvG.zip', '2019-01-24 09:26:32', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_translate_order`
--

CREATE TABLE `coupons_translate_order` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `session` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `file_translate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_text` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `from_language` int(11) NOT NULL,
  `from_language_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `to_language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `special_category` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_translate_order`
--

INSERT INTO `coupons_translate_order` (`id`, `user_id`, `session`, `file_translate`, `file_zip`, `count_text`, `price`, `status`, `type`, `from_language`, `from_language_code`, `to_language`, `special_category`, `message`, `created_date`) VALUES
(1, 0, '00mg5af9adpuc4shg0hna76i30', 'text_file_01-28-2019_125523pm.txt', 'text_file_01-28-2019_125523pm.zip', 1, 0, 0, 0, 162, 'EN', '', 0, '', 1548676523),
(2, 0, 'g6g87oi6fvpnebb85j5khueuu3', 'text_file_02-01-2019_071938pm.txt', 'text_file_02-01-2019_071941pm.zip', 148, 22.2, 0, 0, 249, 'VI', '162', 18, '', 1549045181),
(3, 0, 'g6g87oi6fvpnebb85j5khueuu3', 'text_file_02-01-2019_071947pm.txt', 'text_file_02-01-2019_071949pm.zip', 442, 66.3, 1, 0, 249, 'VI', '162', 19, '', 1549045189),
(4, 0, 'nmenq2888ujivqb78smrahn8v4', 'text_file_02-13-2019_073532pm.txt', 'text_file_02-13-2019_073533pm.zip', 298, 0, 0, 0, 249, 'VI', '', 0, '', 1550082933),
(5, 0, 'qa3qr5hpan9jd3l8idcrtc7t64', 'text_file_02-13-2019_073550pm.txt', 'text_file_02-13-2019_073551pm.zip', 397, 0, 0, 0, 249, 'VI', '', 0, '', 1550082951),
(6, 0, 'qa3qr5hpan9jd3l8idcrtc7t64', 'text_file_02-13-2019_073558pm.txt', 'text_file_02-13-2019_073559pm.zip', 496, 0, 0, 0, 249, 'VI', '', 0, '', 1550082959),
(7, 0, 's3f5lsneq995iil7vv53bap2u2', 'text_file_02-13-2019_074149pm.txt', 'text_file_02-13-2019_074150pm.zip', 298, 0, 1, 0, 249, 'VI', '', 19, '', 1550083310),
(8, 0, 's3f5lsneq995iil7vv53bap2u2', 'text_file_02-13-2019_074216pm.txt', 'text_file_02-13-2019_074217pm.zip', 298, 0, 1, 0, 249, 'VI', '', 7, '', 1550083337),
(9, 0, 'm20vggm3k2juss1eo70tpm1cd3', 'text_file_02-16-2019_100138am.txt', 'text_file_02-16-2019_100140am.zip', 321, 0, 1, 0, 249, 'VI', '', 17, '', 1550307700);

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
(1, 'admincms', '21232f297a57a5a743894a0e4a801fc3', 'ngo the hien', NULL, 'ngo the hien', 'ngothehientg@gmail.com', NULL, '84', '0973185125', 1, '0000-00-00 00:00:00', 1, 0, '3ShUpIx.jpg', '24.Đ6 SaiGon Pearl 92 Nguyễn Hữu Cảnh, Phường 22', '1', '1', '', '', '', 0, '0', 0, 0, '0', '', '', '', '', '', '', ''),
(42, 'nga', 'e10adc3949ba59abbe56e057f20f883e', 'nga', 'hoang', 'nga hoang', 'nga.netco@gmail.com', NULL, '84', '909839232', 1, '2018-07-12 05:35:44', 1, 0, '2015-wallpaper_111525594_269.jpg', 'gggg', '', '', '', '462', '', 0, '', 0, 0, '0', '', '', '', '', '', '', ''),
(73, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'fds', 'fdsfsf', 'fds fdsfsf', 'nthien@rakus.com.vn', NULL, '355', '4234243242', 0, '2018-09-16 04:14:59', 1, 0, '', '', '', '', '', '256', '', 0, '', 0, 0, '0', '', '', '', '', '', '', ''),
(74, 'hienngo', 'e10adc3949ba59abbe56e057f20f883e', 'hien ngo', 'dasdsa', 'dsadsa dasdsa', 'ngothehienitvn@gmail.com', NULL, '355', '432423423', 4, '2018-09-16 04:19:25', 1, 0, '2015-wallpaper_111525594_269.jpg', '', '', '', '', '257', '', 0, '', 0, 0, '0', '', '', '', '', '', '', ''),
(80, NULL, '25f9e794323b453885f5181f1b624d0b', 'Oracon', 'Company ', 'Oracon Company ', 'nguyenchauphi@gmail.com', NULL, '84', '493673637', 0, '2018-10-25 10:40:31', 1, 0, 'Construction-Handyman-Logo-2.png', 'Go Vap District', '', 'Hồ Chí Minh', '', '462', '', 0, '', 0, 0, '0', '', '', '', '', '', '', ''),
(81, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'FPT', 'Co.,Ltd', 'FPT Co.,Ltd', 'humanetranslation@gmail.com', NULL, '84', '039845562', 0, '2018-10-25 02:31:42', 1, 0, 'f72c69e2-214d-11e8-8b33-cac091044fd5.png', '', '', '', '', '462', '', 0, '', 0, 0, '0', '', '', '', '', '', '', ''),
(82, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'Imica', 'Company', 'Imica Company', 'linkrica@gmail.com', NULL, '84', '039526256', 0, '2018-12-16 03:16:09', 1, 0, 'stacked-files.png', '', '', '', '', '462', '', 0, '', 0, 0, '0', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_users_cv`
--

CREATE TABLE `coupons_users_cv` (
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
  `native_translate` int(11) NOT NULL,
  `from_translate` text COLLATE utf8_unicode_ci NOT NULL,
  `to_translate` text COLLATE utf8_unicode_ci NOT NULL,
  `special_category` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(5) NOT NULL,
  `created_date` datetime NOT NULL,
  `language` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_users_cv`
--

INSERT INTO `coupons_users_cv` (`userid`, `username`, `password`, `firstname`, `lastname`, `name`, `email`, `sub_email`, `mobile_code`, `mobile`, `native_translate`, `from_translate`, `to_translate`, `special_category`, `status`, `avatar`, `address_code`, `address`, `city`, `district`, `country`, `skype`, `birthday`, `sex`, `created_date`, `language`) VALUES
(17, 'aaaa', 'e10adc3949ba59abbe56e057f20f883e', 'the', 'hien', 'the hien', 'nga.netco@gmail.com', NULL, '82', '909839232', 0, '138', '139', '14', 1, 'Desert.jpg', '434', 'Le van tho  F14, Go Vap', 'Ho Chi Minh', '', '462', '', '2009-08-02', 1, '2018-05-21 10:48:38', 0),
(20, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'Ali', 'Awati', 'Ali Awati', 'linkrica@gmail.com', NULL, '1', '45345773', 0, '151', '185', '32,22,9,23,21', 1, 'sarah-mcphee-nyhet.jpg', '', 'Vancover', 'Vancorver', '', '280', '', '04/05/1977', 2, '2018-05-23 10:36:14', 0),
(38, NULL, 'e10adc3949ba59abbe56e057f20f883e', ' Ashwin', 'Goud ', ' Ashwin Goud ', 'linkrica@yahoo.com', NULL, '34', '035252667', 0, '151', '152', '14,21,22,20,29', 1, '_8QEa7CE_400x400.jpg', '', 'Madrid', 'Madrid', '', '426', '', '18/06/1971', 1, '2018-10-25 06:39:25', 0),
(39, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'the hiewn', 'ngo', 'the hiewn ngo', 'ngothehientg@gmail.com', NULL, '84', '0973185125', 0, '249', '162', '12', 0, '', '', '', 'duong quang ham, HCM', '', '462', '', '', 0, '2018-10-28 08:40:10', 0),
(40, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'Yulia ', 'Absari ', 'Yulia  Absari ', 'humanetranslation@gmail.com', NULL, '593', '039525444', 0, '245', '162', '20,13,23,14', 1, '2900d961150b1fa2161f68deed63fdb5.jpg', '', 'Jakarta Raya ', 'Jakarta ', '', '337', '', '15/10/1985', 2, '2018-10-30 07:52:51', 0),
(41, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'Kevin ', 'Kim', 'Kevin  Kim', 'lukasnguyen1080@gmail.com', NULL, '82', '03856356', 0, '160', '168', '9,24,47,49', 1, '19424442_777661682412361_6301051578585732344_n.jpg', '', 'Soul-t\'ukpyolsi', 'Soul', '', '424', '', '02/03/1984', 1, '2018-10-30 08:27:41', 0),
(42, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'Catariana', '', 'Catariana ', 'linkrica_01@yahoo.com', NULL, '81', '09382566', 0, '153', '152', '23,19,14,7', 1, '19905426_1656344194377365_4210574158708583207_n_02.png', '', 'Tokyo', 'Tokyo', '', '344', '', '04/03/1985', 2, '2018-10-31 06:20:46', 0),
(43, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'SLMorales ', '', 'SLMorales  ', 'linkrica_02@yahoo.com', NULL, '213', '048363323', 0, '147', '148', '23,15,14,24', 1, 'Indian-Girls-Pics-14321.jpg', '', 'Marid', 'Marid', '', '426', '', '16/09/1978', 1, '2018-10-31 06:47:12', 0),
(44, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'Perter', 'Hill', 'Perter Hill', 'linkrica@aol.com', NULL, '65', '35633776', 0, '154', '150', '22,23,7,6', 1, '2139782_r56475eeab8903.jpg', '', 'Singapore', 'Singapore', '', '417', '', '16/08/1981', 1, '2018-10-31 07:55:07', 0),
(45, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn', 'Châu Phi', 'Nguyễn Châu Phi', 'nguyenchauphi@gmail.com', NULL, '84', '044536445', 0, '162', '249', '18,20', 1, '4dedf15b4b59a007f948.jpg', '', '', 'Hồ Chí Minh City', '', '462', '', '', 0, '2018-11-13 04:09:21', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_users_cv_info`
--

CREATE TABLE `coupons_users_cv_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `background` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci NOT NULL,
  `nativeLanguage` int(11) NOT NULL,
  `account_type` int(11) NOT NULL,
  `experience` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `speed_translate` int(11) NOT NULL,
  `specialize` text COLLATE utf8_unicode_ci NOT NULL,
  `cv` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons_users_cv_info`
--

INSERT INTO `coupons_users_cv_info` (`id`, `user_id`, `background`, `about`, `nativeLanguage`, `account_type`, `experience`, `speed_translate`, `specialize`, `cv`, `facebook`, `twitter`, `linkedin`) VALUES
(6, 6, '', '', 0, 0, '', 0, '', '', '', '', ''),
(7, 7, '', '', 0, 0, '', 0, '', '', '', '', ''),
(8, 8, '', '', 0, 0, '', 0, '', '', '', '', ''),
(9, 9, '', '', 0, 0, '', 0, '', '', '', '', ''),
(10, 10, '', '', 0, 0, '', 0, '', '', '', '', ''),
(11, 11, '', '', 0, 0, '', 0, '', '', '', '', ''),
(12, 12, '', '', 0, 0, '', 0, '', '', '', '', ''),
(13, 13, '', '', 0, 0, '', 0, '', '', '', '', ''),
(14, 14, '', 'content', 138, 0, '> 5 year', 10000, '', '', 'xcxzcxz', 'cxzczc', 'cxzc'),
(15, 15, '', 'Tôi đã cung cấp dịch vụ phiên dịch, phiên dịch và phiên âm cho một số đại lý và công ty. Tôi có nhiều kinh nghiệm về dịch thuật báo chí, du lịch và y tế. Dịch văn bản pháp luật (văn bản công chứng, tiền phạt), hướng dẫn tập huấn, hướng dẫn sử dụng, bảng câu hỏi, đề xuất kinh doanh và một số bản dịch nhỏ khác (mô tả sản phẩm, thư từ cá nhân và thương mại ...).\r\n', 139, 0, '< 1 year', 700, '', '', 'fffffffff', 'dddddddddddd', 'fffffffff'),
(16, 16, '', 'Hãy viết giới thiệu về bạn...', 155, 0, '', 0, '', '', '', '', ''),
(17, 17, '', 'content about us', 249, 0, '> 1 year', 5000, '', 'Resume - Phan Minh Tha.pdf', '', '', ''),
(18, 18, '', 'Hello,\r\n\r\nI am a native of Pittsburgh, Pennsylvania and lived there most of my life until moving to Charleston, South Carolina for half a year, and then to Hokkaido\'s Rebun island for two years. Currently, I live in Tokyo and hope to spend a great deal of time here.\r\n\r\nDuring my years in Pittsburgh, I studied Chemistry at Carnegie Mellon University and did research on organometallic chemistry, while enjoying various club activities, like ice hockey, film club, ballroom dancing and others. Also, I spent one semester abroad in Tokyo, which would affect my career choices later on. \r\n\r\nAfter graduation, I worked as a laboratory technician for a waste water testing lab before going to graduate school at the University of Pittsburgh and doing research on electron transfer dynamics. But I dropped out before completing a Master\'s degree, and became a test prep (SAT, GRE, MCAT) tutor for the Princeton Review. On the side, I began studying languages (Russian, ancient Hebrew, ancient Greek, Japanese) more intensely.\r\n\r\nI decided to go back to Japan with the JET Program and was offered an English teaching position (ALT) on the island of Rebun in Hokkaido. I was the first ALT to live on the island of Rebun, as previous ALTs traveled there by boat once or twice a month for lessons. I spent two wonderful years there before motorcycling down to Tokyo to start another adventure.\r\n\r\nTraveling has been almost as steady a hobby for me as languages since college, and I have been to China, Korea, Cambodia, Laos, Singapore, as well as 30 of Japan\'s 47 prefectures, and 26 of the 50 United States. I usually spend a fair amount of time studying the local language before travel, too. \r\n\r\nIn addition to freelance translation and English instruction, I am somewhat active in the entertainment industry in Tokyo and have some experience interpreting between directors and foreign actors or offering English advice to Japanese actors.\r\n\r\nAlthough I\'ve studied Spanish, German, Russian, Korean, Chinese in addition to Japanese, I currently can only translate to and from Japanese. I\'d like to work more on Korean, and have taken the KLAT and Hangul Test in Japan (ハングル検定.) Other hobbies include drawing, music, and watching TV.\r\n\r\nIf you\'d be interested in working with me or just chatting, feel free to contact me.\r\nThank you for reading about me!', 230, 0, '> 5 year', 0, '', '', '', '', ''),
(19, 19, '', 'I am best in the following fields: Business / Commerce (General), Cinema (Film, TV, Drama), Education / Pedagogy, Engineering (General), General, IT / E-Commerce / Internet, Law (General), Localization, Marketing / Market Research, Medicine (Pharmaceuticals).', 0, 0, '', 0, '', '', '', '', ''),
(20, 20, '', 'I have worked with Amanda Zhao for over four years on several translation projects and highly recommend her services. Her level of professionalism, work ethic and commitment to excellence are invaluable. Time and time again she has dedicated herself to going beyond simply translating words, and trans-created all content to ensure the meaning, tone and style are not lost in translation. Additionally, Amanda has a high EQ—she’s a great listener, and is able to effectively navigate cross-culturally. Always a pleasure to work with, I would recommend Ms. Zhao to anyone in need of a professional, timely, accurate translator.\r\n\r\nHaving Amanda ZHAO translate several of my music related articles as well as liner notes for my record was not only enjoayble, it was a relief. A relief knowing that not only did her background in music greatly help in translating my words, but also a relief in knowing that Amanda really respected the intention of what I had written and was always forthright if anything was unclear to her. Trying to explain the inspiration for a song can be hard enough to put into words in the first place but to then translate such nuanced material?... Very few would have the patience. Amazing work Amanda! Thank you!\r\n\r\nJames Danderfer\r\nA Canadian Jazz Clarinetist\r\n', 154, 0, '11 + Years ', 5000, '', '', '', '', ''),
(21, 21, '', 'My nationality is South Korean, but I grew up and studied abroad in all English speaking environments. So, I guess you can say that I have two native languages. Besides English and Korean, I am also fluent in Japanese, receiving a language degree in it and living in Japan for more than 7 years. I acquired JLPT Level 1 certification in 2008. Furthermore, I have attained a high level of proficiency in Chinese, although I have no official certification in it.\r\n\r\nTechnical translation, manufacturing, industrial machines, electrical engineering, product manuals, automation, power electronics, inverters, semiconductors, software, hardware, computers, contracts, agreements, legal documents, law, regulations, trade, 기술 번역, 제조, 기계, 산업용기계, 부품, 전기 공학, 제품 설명서, 오토메이션, 자동화, 파워일렉트로닉스, 인버터, 반도체, 소프트웨어, 하드웨어, 컴퓨터, 계약서, 법률서류, 법률, 규제, 규정, 무역, 技術翻訳, 製造, 機械, 電気工学, 製品マニュアル, オートメーション, 自動化システム, パワーエレクトロニクス機器, インバータ, 半導体, ソフトウェア, ハードウェア, 契約書, 法的文書, 法律, 規程, 貿易, 科技翻译, 制造, 机器, 业工机械, 电气工程, 手册, 说明书, 电力电子技术, 逆变器, 半导体, 计算机, 软件, 硬件, 契约, 合同, 法律文件, 规则, 法规, 贸易', 155, 0, '> 3 year', 0, '', '', '', '', ''),
(22, 22, '', 'In addition to being a translator and interpreter myself, IHAYA INTERCONNECT also operates as an agency, providing clients with quality interpreters and translations in multiple languages.\r\n\r\nAs a consecutive and simultaneous interpreter, my experience includes interpreting at depositions (patents, product liability, breach of contract, antitrust, among others), courts, arbitration, business meetings, conferences, medical lectures, PMDA audits, focus groups and presentations, training sessions and tours. I travel globally, including to Japan to interpret at depositions at the US Embassy/Consulates. Can also provide portable simultaneous interpreting equipment for up to 10 people if necessary.\r\n\r\nAs a translator, I currently only accept assignments from direct clients. I translate from Japanese to English and vice versa, also providing editing and proofreading services. Over the years, I have translated various brochures and marketing materials, annual reports, legal documents, deposition transcripts, IT manuals and procedures, medical equipment manuals, newsletters, HTML pages, movie, TV, video and videogame scripts, and a variety of other materials.\r\n\r\nATA-certified for translation from Japanese into English since 1999; certification exam grader since 2008. Native ability in English and Japanese, having been raised and schooled evenly in Japan and the United States. Completed translation courses at Tokyo\'s Simul Academy, later teaching other classes there. Completed UCLA Extension\'s Court Interpretation course. Former editor/writer at The Japan Times, the largest English-language newspaper in Japan. Business, legal, software and other translations. Bachelor\'s degree in English Literature from Sophia University in Tokyo.\r\n\r\nListen to an interview of me as a Japanese interpreter\r\n\r\nWatch a Los Angeles Times video in which I serve as the interpreter.', 230, 0, '> 5 year', 0, '', '', '', '', ''),
(23, 23, '', 'I am a Hong Kong-based freelance translator natively proficient in Chinese and English. I hold a Bachelor of Arts in History from Penn State University with minors in Japanese and Music Studies and a Postgraduate Certificate in Translation from the University of Hong Kong School of Professional and Continuing Education. I have also pursued graduate studies at the Master\'s level in music (conducting) and music history.\r\n\r\nI primarily offer translation services in Chinese to English and English to Chinese. Growing up in a fully bilingual environment, I am among the few translators who can claim full native-level proficiency in both languages and back it up with quality results as a professional translator in both language pairs, with excellent command of both languages and an intuitive understanding of language flow, complemented by experience. My translations distinguish themselves by combining the best of both worlds with complete understanding of the source text in either language, and presenting it in a natural and idiomatic manner in both target languages. I also offer translation service from Japanese into English and Chinese for select domains.\r\n\r\nWhile I am able to work in a variety of fields, I possess specialized experience or knowledge in several select fields as detailed below. In addition to translating from text, I also offer transcription and audio/video translation services from Cantonese and English. ', 154, 0, '> 5 year', 0, '', '', '', '', ''),
(24, 24, '', 'I am reliable and friendly, and I can always be counted on to produce a complete, impeccable translation on or ahead of deadline. \r\n\r\nSpecialize in cosmetics, marketing materials, surveys, academic papers, and general business documents; strong familiarity with politics, economics, environment, food & hospitality industry, music, arts; translation/editing experience in TV scripts and production materials, fashion, sports, pharmaceuticals.\r\n\r\nCertified 1-kyu (highest level) of Japanese Language Proficiency Test, Dec. 2003. 26+ years experience learning/speaking Japanese; 14 years experience as a paid Japanese to English translator; 17 years experience learning/speaking Spanish; 5 years experience as a paid Spanish to English translator; 29+ years experience in proofreading/editing. I also accept payment in Japanese YEN.', 180, 0, '> 5 year', 0, '', 'du lieu tap tin.pdf', '', '', ''),
(25, 25, '', 'Demonstrated ability to provide excellent Japanese-English consecutive and simultaneous interpretation service. Competent presentation and communication skills and exemplary work ethic. Able to provide excellent customer services.\r\n\r\nExperienced English-Japanese, Japanese-English translator. Repeatedly recognized for accurate, natural and fluent translations. Able to offer expert translation service of scientific documents, business documents, marketing materials, IT, automobile and engineering documentations, UI and web contents. ', 230, 0, '> 5 year', 0, '', '', '', '', ''),
(26, 26, '', '', 0, 0, '', 0, '', '', '', '', ''),
(27, 27, '', '', 0, 0, '', 0, '', '', '', '', ''),
(28, 28, '', '', 0, 0, '', 205667, '', '', '', '', ''),
(29, 29, '', '', 0, 0, '', 0, '', '', '', '', ''),
(30, 30, '', 'Business Insider op 17 Augustus gekies die top 50 Amerikaanse openbare universiteite in 2018 deur die Amerikaanse nuus en wêreld verslag en versamel data oor die gemiddelde salaris vir professore in die 2016-2017 akademiese jaar, volgens die opname resultate. nou van die Ministerie van Onderwys. Professore by hierdie universiteite het \'n beter inkomste as die gemiddelde K-12 openbare skool onderwyser (van kleuterskool tot graad 12).', 147, 0, '', 0, '', '', '', '', ''),
(31, 31, '', 'As a translator, you will convert written material from one or more \'source languages\' into the \'target language\', making sure that the translated version conveys the meaning of the original as clearly as possible. The target language is normally your mother tongue.\r\n\r\nTranscreating may also be part of the job, which is a mix of translation, localisation and copywriting, where the text is culturally and linguistically adapted to suit the reader.\r\n\r\nYou typically need an excellent command of two or more languages. Those most in demand are the official languages of the European Union (EU) and the United Nations (UN).', 155, 0, '> 3 year', 20000, '', '', '', '', ''),
(32, 32, '', 'As vertaler sal jy geskrewe materiaal van een of meer \'bronteks\' omskakel na die \'doeltaal\'. Maak seker dat die vertaalde weergawe so duidelik as moontlik die betekenis van die oorspronklike vertaal. Die doeltaal is gewoonlik jou moedertaal.\r\n\r\nTranscreating kan ook deel van die werk wees, wat \'n mengsel van vertaling, lokalisering en kopieskryf is, waar die teks kultureel en linguisties aangepas word om die leser aan te pas.\r\n\r\nJy benodig gewoonlik \'n uitstekende opdrag van twee of meer tale. Diegene wat die meeste in aanvraag is, is die amptelike tale van die Europese Unie (EU) en die Verenigde Nasies (VN).', 151, 0, '', 0, '', '', '', '', ''),
(33, 33, '', 'Interpreters and translators aid communication by converting messages or text from one language into another language. Although some people do both, interpreting and translating are different professions: interpreters work with spoken communication, and translators work with written communication.\r\n\r\nInterpreters convert information from one spoken language into another—or, in the case of sign language interpreters, between spoken language and sign language. The goal of an interpreter is to have people hear the interpretation as if it were the original language. Interpreters usually must be fluent speakers or signers of both languages, because they communicate back and forth among people who do not share a common language.', 149, 0, '', 400, '', 'du lieu tap tin.pdf', 'nguyenchauphi', 'tuiww', 'sbv'),
(34, 34, '', '', 0, 0, '', 0, '', '', '', '', ''),
(35, 35, '', 'As a translator, you will convert written material from one or more \'source languages\' into the \'target language\', making sure that the translated version conveys the meaning of the original as clearly as possible. The target language is normally your mother tongue.\r\n\r\nTranscreating may also be part of the job, which is a mix of translation, localisation and copywriting, where the text is culturally and linguistically adapted to suit the reader.\r\n\r\nYou typically need an excellent command of two or more languages. Those most in demand are the official languages of the European Union (EU) and the United Nations (UN).\r\n\r\nYou can translate a variety of content, including:\r\n\r\ncommercial\r\neducational\r\nlegal\r\nliterary\r\nscientific\r\nand technical documents.\r\nMost translators work freelance from home, either for translation agencies or directly for clients, although some organisations employ in-house translators.\r\n\r\n', 249, 0, '12 + Years ', 10000, '', '', '', '', ''),
(36, 36, '', '', 0, 0, '', 0, '', '', '', '', ''),
(37, 37, '', '', 0, 0, '', 0, '', '', '', '', ''),
(38, 38, '', 'I appreciate your interest in investing your time to go through my profile. \r\n\r\nMy interest in foreign languages started when I first read an abridged version of Don Quixote at High School. During my college days, I studied European and Latin American literature which invariably led me to study Spanish on a part-time basis for 4 years. \r\n\r\nI also liked life sciences hence, took up a BSc Degree which is a combination of Microbiology and Genetics and Chemistry. While doing my graduate degree, I enrolled myself in many Jobs out of which my favourite was Market Research field studies. I worked on more than 100 projects ranging from opinion polls to HV Trucks, product pre-launch campaign studies, Medical Questionnaires, satisfaction surveys etc. I got in-depth insight of the MR field. Worked with industry majors like MARG and Gallup.\r\n\r\nLater, my interest for Spanish was such that, I enrolled myself for MA in Hispanic Studies where the medium of instruction was Spanish. This degree included 4 semesters of translation and interpretation. While I studied at the prestigious JNU university, I also sat for my Tour Guide License and started to work with different European and Latam Tour operators. Briefly also collaborated with a Spanish Insurance Company. Working in the Hospitality Industry I gained insiders knowledge on how travel tours are organised, literature and lingo used in the travel industry. At this point my Spanish was near to native level. I was also working as a consecutive interpreter at conferences and trade fairs.\r\n\r\nI continued my PG studies by doing an MPhil in Hispanic Studies. Then, I cleared a University Grants Test for Lectureship in Spanish. I taught Spanish for two years to undergrad students. My thesis was related to Folklore as a semantic medium of fight used by revolutionary singers in Latin America with focus on Victor Jara in Chile.\r\n\r\nThen, I was privileged enough to be offered a scholarship by AECI (Spanish Government Agency for International Cooperation) to undergo a two years Masters programme in Translation at the famous Complutense University, Madrid. It was a tough and very demanding course but I benefitted enormously from what I learnt regarding translation. Later worked for a couple of years as in-house translator and interpreter for a Spanish MNC in the construction and infrastructure sector.\r\n\r\nAt this point, I specialised in Foreign Trade. Meanwhile, I took a one year professional MBA in SME Management with focus on internationalisation of Medium Scale Companies.\r\n\r\nAfter this MBA, I was hired to head the Export Department of a Spain based firm which is a pioneer in the mining and natural Stone sector manufacturing diamond tools and selling mining and compressor equipment. This job took me all around the world from Latin America to Europe and Asia. It exposed me to Heavy Industry, Manufacturing, Services, International Auditing, Banking, Goods Insurance and Foreign Trade practices. I worked for 6 years in this post.\r\n\r\nI quit this job to kick-start my own Foreign Trade Consultancy. I also made a comeback to the translation industry. Everything I saw and learnt in my career has made me a more complete translator and interpreter. Actually, I never left this field as I was constantly doing translations and interpretations every other day in my earlier Jobs.\r\n\r\nMy fields of specialisation are International Tenders, Technical Drafts and Documentation, Machinery & Tools, Finance, Banking, Accounting, Travel & Leisure Industry, ISO Certification and Foreign Trade. I also have a natural flair to translate legal documents and certificates and regularly collaborate with renowned Bar Associations of various cities.\r\n\r\nIn the past 5 years, apart from translation and consecutive interpretation, I have been actively doing over-the-phone interpretation. To date, I have logged over 80,000 minutes in this genre of interpretation which focuses on national health services, court cases, local and national police services, 112 and 061 emergency services hotline, 016 general information on gender violence.\r\n\r\nI am a member of ASETRAD (Spanish Association of Translators and Proofreaders). I am currently the serving Vice-President of ACOCEX (Spanish Association of Foreign Trade Consultants). I am an active speaker at trade conventions and conferences.\r\n\r\nWhen, I am not translating, I am a movie buff and a big fan of alternate or parallel cinema. Like to play chess and table tennis.\r\n\r\nI trust this brief profile has made you feel comfortable in placing your trust in me. \r\n\r\nI would be more than glad to reply any of your queries and willingly accept any suggestions to improve myself as a linguist, professional and a better individual.\r\n\r\nKind regards,\r\nAshwin Goud', 234, 0, '15 + Years ', 6000, '', '', '', '', ''),
(39, 39, '', '', 0, 0, '10 + Years ', 0, '', '', '', '', ''),
(40, 40, '', 'My education background is Hotel Administration and I have been working in several companies from the resort ownership, US Embassy, Nokia Networks, and the last one is Ericsson before I decided to resign and fully concentrate to be a freelance translator. In order to have a balance life, I love doing altruism activities during my spare time, besides traveling to places both in Indonesia and abroad, going to the museum and do outdoor sports.\r\n\r\nTranslation will always be my passion and I have translated many documents, ranging from general correspondences, certificates (birth, marriage, divorce, death), contracts, guidelines, web articles, surveys, manuals/instruction, reports, training materials, books, promotional/marketing tools, and many more. Besides translating a document, I also do subtitling for various TV programs, company profile and Indonesian films; transcription; transcribing; post-editing; proofreading; notetaking for conferences/meetings/discussions; field consecutive interpreter as well as do a voice over and occasionally work as a Communication Access Real-Time Translator for people with disabilities. \r\n\r\nMy objective is working hard and working smart to give the best quality of translation to the client/end-user. And I can guarantee, that you will not be disappointed for having me as a translator in your project as I always deliver my service before the deadline. \r\n\r\nPlease drop me an email should you need to ask further questions about my competences.\r\n\r\nThanks & regards,\r\n', 187, 0, '10 + Years ', 7000, '', '', '', '', ''),
(41, 41, '', 'I am a 100% native in Korean and US English. Born in Korea, I was raised by Korean parents. I moved to United States when I was 10 years old. Since then, I acquired all of my education from the U.S. including Bachelors in Business Administration at the George Washington University. During my college years, I came across a couple of translation assignments and immediately became fell in love with this job. Since then, I chose to take the career path of a professional translator. \r\nIn May 2009, I moved to Korea to work as a freelance translator/interpreter. I wanted to explore this career field further by working under a respected organization. Therefore, I joined the Republic of Korea Air Force as a Lieutenant and my duties were mainly comprised of translation and interpretation jobs. While working as an officer for 3 years, I had the opportunity to hone my translation skills by translating confidential documents including OPLAN (Operations Plan). Subsequently, I joined the Green Cross Corporation, one of the leading medical/pharmaceutical companies in Korea. While working as a medical representative, I was able to acquire fundamental knowledge in the medical/pharmaceutical field through hands on experiences at the site. To fully apply my skills and experiences that I’ve acquired throughout my lifetime, I decided take the career path of a full-time freelance translator in the medical/pharmaceutical field.\r\nExploiting my experiences to the hilt, I have been providing translation, proofreading, and editing services for about 10 years mainly in the pharmaceutical, medical, and IT fields. I believe that my commitment and professionalism will provide quality assured work for your company.', 197, 0, '15 + Years ', 7000, '', '', '', '', ''),
(42, 42, '', 'In addition to being a translator and interpreter myself, IHAYA INTERCONNECT also operates as an agency, providing clients with quality interpreters and translations in multiple languages.\r\n\r\nAs a consecutive and simultaneous interpreter, my experience includes interpreting at depositions (patents, product liability, breach of contract, antitrust, among others), courts, arbitration, business meetings, conferences, medical lectures, PMDA audits, focus groups and presentations, training sessions and tours. I travel globally, including to Japan to interpret at depositions at the US Embassy/Consulates. Can also provide portable simultaneous interpreting equipment for up to 10 people if necessary.\r\n\r\nAs a translator, I currently only accept assignments from direct clients. I translate from Japanese to English and vice versa, also providing editing and proofreading services. Over the years, I have translated various brochures and marketing materials, annual reports, legal documents, deposition transcripts, IT manuals and procedures, medical equipment manuals, newsletters, HTML pages, movie, TV, video and videogame scripts, and a variety of other materials.\r\n\r\nATA-certified for translation from Japanese into English since 1999; certification exam grader since 2008. Native ability in English and Japanese, having been raised and schooled evenly in Japan and the United States. Completed translation courses at Tokyo\'s Simul Academy, later teaching other classes there. Completed UCLA Extension\'s Court Interpretation course. Former editor/writer at The Japan Times, the largest English-language newspaper in Japan. Business, legal, software and other translations. Bachelor\'s degree in English Literature from Sophia University in Tokyo.', 190, 0, '14 + Years ', 6000, '', '', '', '', ''),
(43, 43, '', 'I am reliable and friendly, and I can always be counted on to produce a complete, impeccable translation on or ahead of deadline. \r\n\r\nSpecialize in cosmetics, marketing materials, surveys, academic papers, and general business documents; strong familiarity with politics, economics, environment, food & hospitality industry, music, arts; translation/editing experience in TV scripts and production materials, fashion, sports, pharmaceuticals.\r\n\r\nCertified 1-kyu (highest level) of Japanese Language Proficiency Test, Dec. 2003. 26+ years experience learning/speaking Japanese; 14 years experience as a paid Japanese to English translator; 17 years experience learning/speaking Spanish; 5 years experience as a paid Spanish to English translator; 29+ years experience in proofreading/editing. I also accept payment in Japanese YEN.\r\n', 234, 0, '', 8000, '', '', '', '', ''),
(44, 44, '', 'I am a medical doctor (pediatric specialist) and freelance translator from South Korea. As a specialist, I have translated, edited and proofread a variety of medical documents including product informations, clinical study protocols, documents for validation or approvement from government regulating bodies, medical device manuals and medical articles. I have been working with largest translation companies as well as a number of pharmaceutical companies, laboratories, medical colleges and medical device manufacturers. \r\n\r\nIn medical translation, accuracy is more important than anything else. Not only could inaccurate translation cost enormous expenses from delay in approval process and miscommunications in operating devices or cooperative studies, but might cause danger to patient\'s health and even life. \r\n\r\nHowever, I believe a superior translator could provide qualities beyond the simple accuracy. Those are natural expressions, style, readability and consistency. If you are looking for top-grade Korean translator in medical fields, I am so confident that I am the right person. \r\n\r\nI also have experience in such fileds as music, fashion and pets. I have more than 7,000 cds and was a vocalist in a rock band, even if mostly listen to jazz and classical for now. I translated the pamphlet of premiere South Korean concert of UBS Verbier Festival Orchestra, the Korean edition of Crystalized! (biannual magazine of Swarovski) and Manual for Pet Owners from Royal Canin. \r\n\r\nIn the meanwhile, I started book translation and planning in 2007. So far, I have published 11 books of my own translating and another one I edited in South Korea. Personally I have special interest in psycology and mental illness and planned, translated and published world\'s bestseller books on this subjects like When Someone You Love Has a Mental Illness (Rebecca Woolis), Brain Lock: Free Yourself from Obsessive-Compulsive Behavior (Jeffrey M. Schwartz), Siblings Without Rivalry: How to Help Your Children Live Together So You Can Live Too (Adele Faber and Elaine Mazlish, planning and revision) and The No-Cry Sleep Solution: Gentle Ways to Help Your Baby Sleep Through the Night (Elizabeth Pantley).\r\n\r\nIn March 2008, I moved to Vancouver and started a new career as a full-time translator. As I have plenty of time to work, it is possible to translate 2,500 words per day on average. And in case you need refined and sophisticated style in other fields than medicine, do not hesitate to contact me as well. \r\n', 197, 0, '14 + Years ', 7000, '', '', '', '', ''),
(45, 45, '', 'Thượng viện Mỹ đã bỏ phiếu thông qua hai nghị quyết được các nghị sĩ đảng Cộng hòa đề xuất, yêu cầu chính phủ Mỹ ngừng hỗ trợ chiến dịch quân sự của liên quân Arab Saudi tại Yemen và cáo buộc Thái tử Mohammed chịu trách nhiệm trong cái chết của Khashoggi. Nó được ít nhất 10 nghị sĩ đảng Cộng hòa ủng hộ, gồm cả lãnh đạo phe đa số tại thượng viện Mitch McConnell.\r\n\r\n', 143, 0, '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_users_cv_language`
--

CREATE TABLE `coupons_users_cv_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `cv_id` int(10) DEFAULT '0',
  `from_language` int(11) DEFAULT '0',
  `to_language` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `coupons_users_cv_language`
--

INSERT INTO `coupons_users_cv_language` (`id`, `cv_id`, `from_language`, `to_language`) VALUES
(1, 16, 138, 139),
(15, 8, 138, 139),
(16, 8, 139, 140),
(17, 8, 141, 142),
(18, 8, 139, 141),
(32, 24, 153, 151),
(33, 24, 155, 153),
(34, 24, 154, 151),
(36, 30, 154, 160),
(37, 30, 155, 162),
(41, 31, 159, 244),
(42, 31, 149, 154),
(43, 32, 162, 249),
(44, 21, 158, 180),
(96, 17, 150, 147),
(97, 17, 249, 162),
(98, 17, 150, 161),
(99, 33, 152, 154),
(100, 33, 154, 149),
(101, 33, 155, 151),
(105, 34, 138, 140),
(106, 34, 152, 149),
(107, 22, 158, 156),
(129, 36, 150, 154),
(130, 37, 140, 143),
(132, 39, 249, 162),
(133, 38, 162, 234),
(134, 38, 234, 183),
(135, 38, 234, 162),
(139, 35, 162, 249),
(140, 35, 249, 162),
(141, 35, 162, 172),
(142, 35, 172, 162),
(144, 40, 187, 162),
(145, 40, 162, 187),
(146, 40, 191, 162),
(147, 40, 162, 191),
(149, 41, 197, 162),
(150, 41, 162, 197),
(164, 42, 190, 162),
(165, 42, 162, 190),
(167, 43, 234, 162),
(168, 43, 162, 234),
(170, 44, 197, 162),
(171, 44, 162, 197),
(173, 45, 162, 249),
(174, 45, 160, 152),
(185, 20, 151, 145),
(186, 20, 151, 147),
(187, 20, 156, 152);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_users_cv_service`
--

CREATE TABLE `coupons_users_cv_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `cv_id` int(10) DEFAULT '0',
  `service_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `coupons_users_cv_service`
--

INSERT INTO `coupons_users_cv_service` (`id`, `cv_id`, `service_id`) VALUES
(21, 15, 1),
(22, 15, 2),
(23, 15, 3),
(24, 15, 4),
(25, 15, 5),
(26, 15, 6),
(27, 15, 7),
(28, 15, 8),
(29, 8, 1),
(30, 8, 2),
(31, 8, 3),
(32, 8, 4),
(33, 8, 5),
(34, 8, 6),
(35, 8, 7),
(36, 8, 8),
(41, 24, 1),
(42, 24, 2),
(43, 24, 3),
(44, 24, 4),
(45, 24, 5),
(46, 24, 6),
(47, 24, 7),
(48, 24, 8),
(61, 31, 2),
(62, 31, 6),
(63, 32, 3),
(64, 32, 4),
(65, 32, 7),
(67, 21, 4),
(68, 21, 8),
(95, 17, 2),
(96, 17, 3),
(97, 17, 6),
(98, 17, 7),
(99, 33, 1),
(100, 33, 3),
(101, 33, 5),
(102, 33, 8),
(103, 34, 9),
(114, 38, 3),
(115, 38, 4),
(116, 38, 7),
(117, 38, 8),
(118, 38, 9),
(119, 38, 10),
(120, 38, 11),
(121, 20, 1),
(122, 20, 2),
(123, 20, 5),
(124, 20, 6),
(125, 20, 12),
(126, 35, 5),
(127, 35, 8),
(128, 35, 9),
(129, 35, 11),
(130, 40, 1),
(131, 40, 2),
(132, 40, 3),
(133, 41, 3),
(134, 41, 6),
(135, 41, 10),
(136, 41, 11),
(137, 42, 3),
(138, 42, 4),
(139, 42, 7),
(140, 42, 8),
(141, 42, 10),
(142, 43, 4),
(143, 43, 6),
(144, 43, 7),
(145, 43, 8),
(146, 43, 10),
(147, 44, 1),
(148, 44, 2),
(149, 44, 4),
(150, 44, 5),
(151, 44, 6),
(152, 44, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_users_cv_software`
--

CREATE TABLE `coupons_users_cv_software` (
  `id` int(10) UNSIGNED NOT NULL,
  `cv_id` int(10) DEFAULT '0',
  `software_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `coupons_users_cv_software`
--

INSERT INTO `coupons_users_cv_software` (`id`, `cv_id`, `software_id`) VALUES
(32, 14, 9),
(33, 14, 10),
(42, 15, 2),
(43, 15, 3),
(44, 15, 4),
(45, 15, 5),
(46, 15, 6),
(47, 15, 7),
(48, 15, 8),
(49, 15, 9),
(50, 15, 10),
(51, 16, 3),
(52, 16, 4),
(53, 16, 5),
(54, 16, 7),
(55, 16, 8),
(56, 16, 9),
(61, 24, 2),
(62, 24, 3),
(63, 24, 4),
(64, 24, 5),
(65, 24, 6),
(66, 24, 7),
(67, 24, 8),
(68, 24, 9),
(73, 31, 3),
(74, 31, 4),
(75, 31, 7),
(76, 31, 8),
(77, 32, 3),
(78, 32, 4),
(79, 32, 8),
(81, 21, 3),
(137, 33, 5),
(138, 17, 2),
(139, 17, 3),
(140, 17, 5),
(141, 17, 6),
(142, 17, 7),
(143, 34, 11),
(144, 34, 12),
(161, 38, 20),
(162, 38, 31),
(163, 38, 36),
(164, 38, 39),
(165, 38, 60),
(166, 38, 64),
(167, 38, 71),
(168, 38, 73),
(169, 20, 3),
(170, 20, 5),
(171, 20, 13),
(172, 20, 17),
(173, 20, 20),
(174, 20, 23),
(175, 20, 27),
(176, 20, 28),
(177, 20, 50),
(178, 20, 51),
(179, 20, 52),
(180, 20, 58),
(189, 35, 9),
(190, 35, 13),
(191, 35, 17),
(192, 35, 20),
(193, 35, 21),
(194, 35, 30),
(195, 35, 67),
(196, 40, 9),
(197, 40, 10),
(198, 40, 12),
(199, 40, 19),
(200, 40, 29),
(201, 40, 33),
(202, 41, 46),
(203, 41, 47),
(204, 41, 50),
(205, 41, 54),
(206, 41, 55),
(207, 41, 67),
(208, 41, 68),
(209, 41, 69),
(210, 42, 11),
(211, 42, 12),
(212, 42, 13),
(213, 42, 15),
(214, 42, 16),
(215, 42, 17),
(216, 42, 47),
(217, 43, 2),
(218, 43, 3),
(219, 43, 4),
(220, 43, 6),
(221, 43, 9),
(222, 43, 29),
(223, 43, 32),
(224, 43, 33),
(225, 43, 36),
(226, 44, 7),
(227, 44, 8),
(228, 44, 10),
(229, 44, 31),
(230, 44, 35),
(231, 44, 36),
(232, 44, 39),
(233, 44, 80),
(234, 45, 8),
(235, 45, 9),
(236, 45, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons_users_cv_specialize`
--

CREATE TABLE `coupons_users_cv_specialize` (
  `id` int(10) UNSIGNED NOT NULL,
  `cv_id` int(10) DEFAULT '0',
  `specialize` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `coupons_users_cv_specialize`
--

INSERT INTO `coupons_users_cv_specialize` (`id`, `cv_id`, `specialize`) VALUES
(1, 16, 7),
(2, 30, 22),
(3, 31, 8),
(4, 32, 12),
(5, 33, 18),
(6, 34, 7),
(7, 35, 12),
(8, 36, 19),
(9, 37, 7),
(10, 38, 16),
(11, 39, 12),
(12, 40, 20),
(13, 41, 9),
(14, 42, 23),
(15, 43, 23),
(16, 44, 22),
(17, 45, 18);

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

--
-- Đang đổ dữ liệu cho bảng `coupons_users_info`
--

INSERT INTO `coupons_users_info` (`id`, `user_id`, `background`, `company`, `address_company`, `website`, `facebook`, `twitter`, `linkedin`, `account_type`) VALUES
(1, 16, '3ShUpIx.jpg', 'aaaaaaaa', NULL, 'fdsf', 'fdfs', 'fsdfs', 'dsada', 3),
(2, 19, '', NULL, NULL, 'gfdg', 'fdsfs', 'fdfdsf', 'fdsf', 0),
(3, 20, '', NULL, NULL, 'fdsf', 'fdsfdsf', '', '', 1),
(4, 21, '', NULL, NULL, 'fdgdfg', 'gfdgd', 'gdfgd', 'gdfgd', 1),
(5, 22, '', NULL, NULL, '', '', '', '', 0),
(6, 23, '', NULL, NULL, '', '', '', '', 0),
(7, 24, '', NULL, NULL, '', '', '', '', 0),
(8, 25, '', NULL, NULL, '', '', '', '', 0),
(9, 26, '', NULL, NULL, '', '', '', '', 0),
(10, 27, '', NULL, NULL, '', '', '', '', 0),
(11, 28, '', NULL, NULL, '', '', '', '', 0),
(12, 29, '', NULL, NULL, '', '', '', '', 0),
(13, 30, '', 'ssssssss', 'ffffffffffff', 'vfcxvc', '', '', '', 4),
(14, 33, '', NULL, NULL, '', '', '', '', 0),
(15, 34, '', NULL, NULL, '', '', '', '', 0),
(16, 35, '', NULL, NULL, '', '', '', '', 0),
(17, 36, '', NULL, NULL, '', '', '', '', 0),
(18, 37, '', NULL, NULL, '', '', '', '', 0),
(19, 38, '', NULL, NULL, '', '', '', '', 0),
(20, 39, '', NULL, NULL, '', '', '', '', 0),
(21, 40, '', NULL, NULL, '', '', '', '', 0),
(22, 41, '', NULL, NULL, '', '', '', '', 0),
(23, 42, '', NULL, NULL, '', '', '', '', 0),
(24, 43, '', NULL, NULL, '', '', '', '', 0),
(25, 44, '', '', '', '', '', '', '', 0),
(26, 45, '', NULL, NULL, '', '', '', '', 0),
(27, 46, '', NULL, NULL, '', '', '', '', 0),
(28, 47, '', NULL, NULL, '', '', '', '', 0),
(29, 48, '', NULL, NULL, '', '', '', '', 0),
(30, 49, '', NULL, NULL, '', '', '', '', 0),
(31, 50, '', NULL, NULL, '', '', '', '', 1),
(32, 51, '', 'Công Ty TNHH AMV', 'Hồ Chí Minh, Việt Nam', 'http://www.amv.com', '', '', '', 0),
(33, 52, '', NULL, NULL, '', '', '', '', 0),
(34, 53, '', 'ABC Company', NULL, '', '', '', '', 0),
(35, 54, '', NULL, NULL, '', '', '', '', 0),
(36, 55, '', NULL, NULL, '', '', '', '', 0),
(37, 56, '', NULL, NULL, '', '', '', '', 0),
(38, 57, '', NULL, NULL, '', '', '', '', 0),
(39, 58, '', NULL, NULL, '', '', '', '', 0),
(40, 59, '', NULL, NULL, '', '', '', '', 0),
(41, 60, '', NULL, NULL, '', '', '', '', 0),
(42, 61, '', NULL, NULL, '', '', '', '', 0),
(43, 62, '', NULL, NULL, '', '', '', '', 0),
(44, 63, '', NULL, NULL, '', '', '', '', 0),
(45, 64, '', NULL, NULL, '', '', '', '', 0),
(46, 65, '', NULL, NULL, '', '', '', '', 0),
(47, 66, '', NULL, NULL, '', '', '', '', 0),
(48, 67, '', NULL, NULL, '', '', '', '', 0),
(49, 68, '', NULL, NULL, '', '', '', '', 0),
(50, 69, '', NULL, NULL, '', '', '', '', 0),
(51, 70, '', NULL, NULL, '', '', '', '', 0),
(52, 71, '', NULL, NULL, '', '', '', '', 0),
(53, 72, '', NULL, NULL, '', '', '', '', 0),
(54, 73, '', NULL, NULL, '', '', '', '', 0),
(55, 74, '', NULL, NULL, '', '', '', '', 0),
(56, 75, '', NULL, NULL, '', '', '', '', 0),
(57, 76, '', NULL, NULL, '', '', '', '', 0),
(58, 77, '', NULL, NULL, '', '', '', '', 0),
(59, 78, '', NULL, NULL, '', '', '', '', 0),
(60, 79, '', NULL, NULL, '', '', '', '', 0),
(61, 80, '', 'AMV Company', '230 Lê Quang Định, Hồ Chí Minh', 'www.amv.com', '', '', '', 0),
(62, 81, '', NULL, NULL, '', '', '', '', 0),
(63, 82, '', NULL, NULL, '', '', '', '', 0);

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
(1, 'Viet Nam', 'fdfrdfs', 1, 0, '2018-05-03 12:00:10'),
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
-- Cấu trúc bảng cho bảng `list_experience`
--

CREATE TABLE `list_experience` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `language` int(5) DEFAULT NULL,
  `create_dated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `list_experience`
--

INSERT INTO `list_experience` (`id`, `name`, `code`, `status`, `language`, `create_dated`) VALUES
(1, '< 1 Year', '', 1, 1, '2018-09-09 07:33:01'),
(2, '1 + Years ', '', 1, 1, '2018-09-25 05:38:18'),
(3, '2 + Years ', '', 1, 1, '2018-09-25 05:42:01'),
(4, '3 + Years ', '', 1, 1, '2018-09-25 05:42:19'),
(5, '4 + Years ', '', 1, 1, '2018-09-25 05:42:39'),
(6, '5 + Years ', '', 1, 1, '2018-09-25 05:43:11'),
(7, '6 + Years ', '', 1, 1, '2018-09-25 05:43:55'),
(8, '7 + Years ', '', 1, 1, '2018-09-25 05:44:04'),
(9, '8 + Years ', '', 1, 1, '2018-09-25 05:44:14'),
(10, '9 + Years ', '', 1, 1, '2018-09-25 05:44:24'),
(11, '10 + Years ', '', 1, 1, '2018-09-25 05:44:34'),
(12, '11 + Years ', '', 1, 1, '2018-10-29 05:59:43'),
(13, '12 + Years ', '', 1, 1, '2018-10-29 06:02:35'),
(14, '13 + Years ', '', 1, 1, '2018-10-29 06:02:47'),
(15, '14 + Years ', '', 1, 1, '2018-10-29 06:02:58'),
(16, '15 + Years ', '', 1, 1, '2018-10-29 06:03:10');

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
-- Chỉ mục cho bảng `coupons_expert_user`
--
ALTER TABLE `coupons_expert_user`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `coupons_faq`
--
ALTER TABLE `coupons_faq`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_fee_define`
--
ALTER TABLE `coupons_fee_define`
  ADD PRIMARY KEY (`id_fee`);

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
-- Chỉ mục cho bảng `coupons_language`
--
ALTER TABLE `coupons_language`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_language_order`
--
ALTER TABLE `coupons_language_order`
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
-- Chỉ mục cho bảng `coupons_products_lang`
--
ALTER TABLE `coupons_products_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

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
-- Chỉ mục cho bảng `coupons_special_category`
--
ALTER TABLE `coupons_special_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_status`
--
ALTER TABLE `coupons_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_support`
--
ALTER TABLE `coupons_support`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_translater`
--
ALTER TABLE `coupons_translater`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_translater_notices`
--
ALTER TABLE `coupons_translater_notices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_translate_files`
--
ALTER TABLE `coupons_translate_files`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_translate_order`
--
ALTER TABLE `coupons_translate_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_users`
--
ALTER TABLE `coupons_users`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `coupons_users_cv`
--
ALTER TABLE `coupons_users_cv`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `coupons_users_cv_info`
--
ALTER TABLE `coupons_users_cv_info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_users_cv_language`
--
ALTER TABLE `coupons_users_cv_language`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_users_cv_service`
--
ALTER TABLE `coupons_users_cv_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_users_cv_software`
--
ALTER TABLE `coupons_users_cv_software`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons_users_cv_specialize`
--
ALTER TABLE `coupons_users_cv_specialize`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `list_experience`
--
ALTER TABLE `list_experience`
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
  MODIFY `action_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT cho bảng `coupons_banner`
--
ALTER TABLE `coupons_banner`
  MODIFY `banner_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `coupons_category`
--
ALTER TABLE `coupons_category`
  MODIFY `category_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

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
-- AUTO_INCREMENT cho bảng `coupons_expert_user`
--
ALTER TABLE `coupons_expert_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Coupons user Id';

--
-- AUTO_INCREMENT cho bảng `coupons_faq`
--
ALTER TABLE `coupons_faq`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_fee_define`
--
ALTER TABLE `coupons_fee_define`
  MODIFY `id_fee` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
-- AUTO_INCREMENT cho bảng `coupons_language`
--
ALTER TABLE `coupons_language`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `coupons_language_order`
--
ALTER TABLE `coupons_language_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=749;

--
-- AUTO_INCREMENT cho bảng `coupons_module`
--
ALTER TABLE `coupons_module`
  MODIFY `module_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `coupons_news`
--
ALTER TABLE `coupons_news`
  MODIFY `news_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `option_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `coupons_orders`
--
ALTER TABLE `coupons_orders`
  MODIFY `coupon_purchaseid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Purchase ID', AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT cho bảng `coupons_orders_detail`
--
ALTER TABLE `coupons_orders_detail`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT cho bảng `coupons_products`
--
ALTER TABLE `coupons_products`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_products_lang`
--
ALTER TABLE `coupons_products_lang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT cho bảng `coupons_session`
--
ALTER TABLE `coupons_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `coupons_shop`
--
ALTER TABLE `coupons_shop`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `coupons_special_category`
--
ALTER TABLE `coupons_special_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `coupons_status`
--
ALTER TABLE `coupons_status`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `coupons_support`
--
ALTER TABLE `coupons_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons_translater`
--
ALTER TABLE `coupons_translater`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `coupons_translater_notices`
--
ALTER TABLE `coupons_translater_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT cho bảng `coupons_translate_files`
--
ALTER TABLE `coupons_translate_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `coupons_translate_order`
--
ALTER TABLE `coupons_translate_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `coupons_users`
--
ALTER TABLE `coupons_users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Coupons user Id', AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `coupons_users_cv`
--
ALTER TABLE `coupons_users_cv`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Coupons user Id', AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `coupons_users_cv_info`
--
ALTER TABLE `coupons_users_cv_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `coupons_users_cv_language`
--
ALTER TABLE `coupons_users_cv_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT cho bảng `coupons_users_cv_service`
--
ALTER TABLE `coupons_users_cv_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT cho bảng `coupons_users_cv_software`
--
ALTER TABLE `coupons_users_cv_software`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT cho bảng `coupons_users_cv_specialize`
--
ALTER TABLE `coupons_users_cv_specialize`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `coupons_users_info`
--
ALTER TABLE `coupons_users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
-- AUTO_INCREMENT cho bảng `list_experience`
--
ALTER TABLE `list_experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
