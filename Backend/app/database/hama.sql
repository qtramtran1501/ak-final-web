-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 14, 2022 lúc 05:02 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hama`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(18) NOT NULL,
  `displayname` varchar(30) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `displayname`, `create_at`) VALUES
(1, 'qtramtran1501', 'Abcd@123', 'Quỳnh Trâm', '2022-12-10 23:52:16'),
(2, 'phamtlinh', 'Abcd@123', 'Thị Linh', '2022-12-10 23:54:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `total_money` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `order_quantity`, `total_money`, `create_at`) VALUES
(4, 'Trần Quỳnh Trâm Trem', '0376797087', 'qtramtran1501@gmail.com', 1, 388000, '2022-12-13 16:04:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `order` varchar(1000) NOT NULL,
  `total_money` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `email`, `order`, `total_money`, `status`, `create_at`) VALUES
(6, 'Trần Quỳnh Trâm Trem', '0376797087', '110 Phan Dinh Phung, Tam Ky, Quang Nam', 'qtramtran1501@gmail.com', '[{\"id\": 1, \"slug\": \"landscape-picture-wcl-09\", \"color\": \"gray\", \"size\": \"40x40\", \"price\": 194000, \"quantity\": 2}]', 388000, 'pending', '2022-12-13 16:04:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `image01` varchar(300) NOT NULL,
  `image02` varchar(300) NOT NULL,
  `categorySlug` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `image01`, `image02`, `categorySlug`, `color`, `slug`, `size`, `description`, `create_at`) VALUES
(1, '[Weverse Pre-Order Benefit] RM (BTS) – [Indigo]', 310000, 'https://bandina.vn/wp-content/uploads/GD00087359.default.2.png', 'https://bandina.vn/wp-content/uploads/GD00087359.default.2.png', 'BTS', '[\"BookEdition\", \"Weverse\"]', 'weverse-pob-rm-bts-indig', '[\"BookEdition\", \"Weverse\"]', 'THÔNG TIN SẢN PHẨM\n\nGiá niêm yết không thay đổi\n\nNgày phát hành: 02/12/2022\n\n✅ Weverse Pre-Order Benefit:\n\n* Book Edition\n: Photo card 1ea + Photo card L-Holder 1ea\n\n\n\n\n\n*Weverse Album version\n: Postcard Frame 1ea\n\n*1 SET (Book Edition + Weverse album version)\n: Photo card 1ea + Photo card L-Holder ', '2021-12-04 00:20:31'),
(2, 'TEMPEST – Mini Album Vol.3 [ON and ON] ', 400000, 'https://bandina.vn/wp-content/uploads/GD00086923.default.1.png', 'https://bandina.vn/wp-content/uploads/GD00086923.default.1.png', 'TEMPEST', '[\"white\", \"brown\", \"black\", \"gray\"]', 'tempest-mini-album-vol-3-on-and-on', '[\"Blue-ver\", \"Green-ver\"]', 'Ngày phát hành: 22/11/2022\n\n✅ Apple Music Lucky Draw Event:\n\n2 photocard ngẫu nhiên trong 17 mẫu photocard khi mua 1 album', '2021-12-04 00:24:35'),
(3, 'aespa – Mini Album Vol.2 [Girls] (Real World Ver.)', 330000, 'https://bandina.vn/wp-content/uploads/GD00079567.default.2.png', 'https://bandina.vn/wp-content/uploads/GD00079567.default.2.png', 'aespa', '[\"white\", \"brown\", \"black\", \"gray\"]', 'aespa-mini-album-vol-2-girls-real-world-ver', '[\"RealWorld-ver\"]', 'Ngày phát hành: 08/07/2022', '2021-12-04 00:27:01'),
(4, 'BTS – Anthology Album [Proof (Standard Edition)]', 1200000, 'https://bandina.vn/wp-content/uploads/GD00078399.default.1.png', 'https://bandina.vn/wp-content/uploads/GD00078399.default.1.png', 'BTS', '[\"\"]', 'bts-anthology-album-proof-standard-edition', '[\"1ver\"]', 'Giá niêm yết không thay đổi dù phát sinh cân nặng\n\nNgày phát hành: 10/06/2022', '2021-12-04 00:28:41'),
(5, 'aespa – Mini Album Vol.2 [Girls] (KWANGYA Ver.)', 330000, 'https://bandina.vn/wp-content/uploads/GD00079565.default.3.png', 'https://bandina.vn/wp-content/uploads/GD00079565.default.3.png', 'aespa', '[\"white\", \"brown\", \"black\", \"gray\"]', 'aespa-mini-album-vol-2-girls-kwangya-ver', '[\"Kwangya-ver\"]', 'Ngày phát hành: 08/07/2022\n\n ', '2021-12-04 00:37:58'),
(6, 'aespa – Mini Album Vol.2 [Girls] (Digipack Ver.)', 300000, 'https://bandina.vn/wp-content/uploads/GD00079560.default.3.png', 'https://bandina.vn/wp-content/uploads/GD00079560.default.3.png', 'aespa', '[\"white\", \"brown\", \"black\", \"gray\"]', 'aespa-mini-album-vol-2-girls-digipack-ver', '[\"Digipack-ver\"]', 'Ngày phát hành: 08/07/2022', '2021-12-04 00:39:55'),
(8, '[Weverse POB] Jin (BTS) – Solo Single [The Astronaut]', 410000, 'https://bandina.vn/wp-content/uploads/GD00086234.default.1.png', 'https://bandina.vn/wp-content/uploads/GD00086234.default.1.png', 'BTS', '[\"white\", \"brown\", \"black\", \"gray\"]', 'weverse-pob-jin-bts-solo-single-the-astronaut', '[\"Version1\", \"Version2\"]', 'Ngày phát hành: 28/10/2022\n\n✅ Weverse POB\n\n[1 ver album] :\n\nLogo Lenticular bookmark 1ea (1 out of 2)\n\n[1 set 2 album] :\n\nPhoto card 1ea : Holographic photo frame 1ea : Logo Lenticular bookmark 2ea \n\n ', '2021-12-04 00:43:54'),
(11, 'TEMPEST – IT’S ME, IT’S WE (DIGIPACK VER.)', 350000, 'https://bandina.vn/wp-content/uploads/%ED%85%9C%ED%8E%98%EC%8A%A4%ED%8A%B8-%EC%98%88%ED%8C%90%EC%9D%B4%EB%AF%B8%EC%A7%80-%EC%8D%B8%EB%84%A4%EC%9D%BC-%EB%94%94%EC%A7%80%ED%8C%A9%EB%B0%98-800x800.jpg', 'https://bandina.vn/wp-content/uploads/%ED%85%9C%ED%8E%98%EC%8A%A4%ED%8A%B8-%EC%98%88%ED%8C%90%EC%9D%B4%EB%AF%B8%EC%A7%80-%EC%8D%B8%EB%84%A4%EC%9D%BC-%EB%94%94%EC%A7%80%ED%8C%A9%EB%B0%98-800x800.jpg', 'TEMPEST', '[\"white\", \"brown\", \"black\", \"gray\"]', 'tempest-its-me-its-we-digipack-ver', '[\"Digipack\"]', 'Ngày phát hành: 02/03/2022\n\nCân nặng dự kiến: 0,5 KG', '2021-12-04 00:54:57'),
(15, 'TEMPEST – IT’S ME, IT’S WE (1ST MINI ALBUM)', 470000, 'https://bandina.vn/wp-content/uploads/%ED%85%9C%ED%8E%98%EC%8A%A4%ED%8A%B8-%EC%98%88%ED%8C%90%EC%9D%B4%EB%AF%B8%EC%A7%80-%EC%8D%B8%EB%84%A4%EC%9D%BC-%EC%9D%BC%EB%B0%98%EB%B0%98-800x800.jpg', 'https://bandina.vn/wp-content/uploads/%ED%85%9C%ED%8E%98%EC%8A%A4%ED%8A%B8-%EC%98%88%ED%8C%90%EC%9D%B4%EB%AF%B8%EC%A7%80-%EC%8D%B8%EB%84%A4%EC%9D%BC-%EC%9D%BC%EB%B0%98%EB%B0%98-800x800.jpg', 'TEMPEST', '[\"white\", \"brown\", \"black\", \"gray\"]', 'tempest-its-me-its-we-1st-mini-album', '[\"ME-ver\", \"We-ver\"]', 'Ngày phát hành: 02/03/2022', '2021-12-04 01:28:07'),
(16, '[ONLINE LUCKY DRAW EVENT] ITZY – [CHESHIRE] STANDARD', 400000, 'https://bandina.vn/wp-content/uploads/GD00086998.default.2.png', 'https://bandina.vn/wp-content/uploads/GD00086998.default.2.png', 'ITZY', '[\"white\", \"brown\", \"black\", \"gray\"]', 'itzy-cheshire-standard', '[\"Standard-ver\"]', 'Ngày phát hành: 30/11/2022', '2021-12-04 01:29:59'),
(17, 'ITZY Mini Album [CHECKMATE] ', 450000, 'https://bandina.vn/wp-content/uploads/GD00079786.default.2.png', 'https://bandina.vn/wp-content/uploads/GD00079786.default.2.png', 'ITZY', '[\"black\", \"pink\", \"green\", \"blue\"]', 'itzy-mini-album-checkmate', '[\"Version-1\", \"Version-2\"]', 'Ngày phát hành: 15/07/2022 ', '2021-12-04 01:39:50'),
(18, 'ITZY Mini Album [CHECKMATE]  -  SPECIAL EDITION', 240000, 'https://bandina.vn/wp-content/uploads/GD00081811.default.1.png', 'https://bandina.vn/wp-content/uploads/GD00081811.default.1.png', 'ITZY', '[\"black\", \"pink\", \"green\", \"blue\"]', 'itzy-checkmate-special-edition', '[\"Version-1\", \"Version-2\", \"Version-3\"]', 'Ngày phát hành: 08/08/2022 ', '2021-12-04 01:42:20'),
(19, '[ONLINE LUCKY DRAW EVENT] ITZY Mini Album [CHECKMATE] (Limited Edition Ver.)', 550000, 'https://bandina.vn/wp-content/uploads/GD00079787.default.2.png', 'https://bandina.vn/wp-content/uploads/GD00079787.default.2.png', 'ITZY', '[\"black\", \"pink\", \"green\", \"blue\"]', 'itzy-mini-album-checkmate-limited-edition-ver', '[\"Limited-edition-ver\"]', 'Ngày phát hành: 15/07/2022 ', '2021-12-04 01:44:52'),
(20, 'TWICE - Formula of Love:O+T=<3', 320000, 'https://bandina.vn/wp-content/uploads/GUEST_82e3f9d7-20c6-42d0-afcc-edb9a78feab6.jpg', 'https://bandina.vn/wp-content/uploads/GUEST_82e3f9d7-20c6-42d0-afcc-edb9a78feab6.jpg', 'TWICE', '[\"black\", \"pink\", \"green\", \"blue\"]', 'twice-formula-of-loveot', '[\"Resultfile-ver.\"]', 'Ngày phát hành: 03/01/2022', '2021-12-04 01:47:54'),
(21, 'TWICE – BETWEEN 1&2', 385000, 'https://bandina.vn/wp-content/uploads/3021936fb1eff3058307220d3ac0e7dc_45647-800x800.jpg', 'https://bandina.vn/wp-content/uploads/3021936fb1eff3058307220d3ac0e7dc_45647-800x800.jpg', 'TWICE', '[\"black\", \"pink\", \"green\", \"blue\"]', 'twice-between-12', '[\"Random-ver\"]', 'Ngày phát hành: 24/08/2022 ', '2021-12-04 01:57:03'),
(22, 'TWICE – 2023 SEASON’S GREETINGS SECRET LIFE @HOUSE', 1100000, 'https://bandina.vn/wp-content/uploads/1000001666_detail_076-800x800.jpg', 'https://bandina.vn/wp-content/uploads/1000001666_detail_076-800x800.jpg', 'TWICE', '[\"black\", \"pink\", \"green\", \"blue\"]', 'twice-2023-seasons-greetings-secret-life-house', '[\"FULL-ver\"]', 'Ngày phát hành: 26/12/2022\n\n✅ Quà Pre-order:\n\n1 bộ 9 photocard chưa công bố', '2021-12-04 01:59:15'),
(23, '(G)I-DLE – 5th Mini Album [I LOVE]', 490000, 'https://bandina.vn/wp-content/uploads/GD00084176.default.1.png', 'https://bandina.vn/wp-content/uploads/GD00084176.default.1.png', '(G)I-DLE', '[\"blue\", \"black\"]', 'gi-dle-5th-mini-album-i-love', '[\"Random-ver\"]', 'Ngày phát hành: 17/10/2022', '2021-12-04 02:03:45'),
(24, '(G)I-DLE – I NEVER DIE', 500000, 'https://bandina.vn/wp-content/uploads/GD00074728.default.1.png', 'https://bandina.vn/wp-content/uploads/GD00074728.default.1.png', '(G)I-DLE', '[\"blue\", \"black\"]', 'gi-dle-i-never-die', '[\"Random-ver\"]', 'Ngày phát hành: 14/03/2022\n\nCân nặng dự kiến: 0,5 KG', '2021-12-04 02:08:36'),
(25, 'MIYEON ((G)I-DLE) – MY (1ST MINI ALBUM)', 450000, 'https://bandina.vn/wp-content/uploads/%ED%81%90%EB%B8%8C-%EB%AF%B8%EC%97%B0-%EC%97%AC%EC%9E%90%EC%95%84%EC%9D%B4%EB%93%A4_1st-Mini-Album_MY_%EC%98%88%EC%95%BD%ED%8C%90%EB%A7%A4-%EC%84%AC%EB%84%A4%EC%9D%BC-800x800.jpg', 'https://bandina.vn/wp-content/uploads/%ED%81%90%EB%B8%8C-%EB%AF%B8%EC%97%B0-%EC%97%AC%EC%9E%90%EC%95%84%EC%9D%B4%EB%93%A4_1st-Mini-Album_MY_%EC%98%88%EC%95%BD%ED%8C%90%EB%A7%A4-%EC%84%AC%EB%84%A4%EC%9D%BC-800x800.jpg', '(G)I-DLE', '[\"blue\", \"black\"]', 'miyeon-gi-dle-my-1st-mini-album', '[\"1VERSION\"]', 'Ngày phát hành: 27/04/2022\n\nSản phẩm không bao gồm poster và 1st press', '2021-12-04 02:16:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
