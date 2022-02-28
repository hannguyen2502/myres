-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 20, 2022 lúc 06:24 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2022_02_15_040837_create_tbl_admin_table', 1),
(4, '2022_02_15_103128_create_tbl_category', 2),
(5, '2022_02_15_130605_create_tbl_product', 3),
(6, '2022_02_16_052855_drop_tbl_product_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `ad_id` int(10) UNSIGNED NOT NULL,
  `ad_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`ad_id`, `ad_email`, `ad_pass`, `ad_name`, `ad_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Han Nguyen', '0392144543', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(2, 'Sách văn học', 'Sach van hoc', 1, NULL, NULL),
(4, 'Sách kinh tế', 'Sách kinh tế', 1, NULL, NULL),
(6, 'Từ Điển', 'Từ Điển', 1, NULL, NULL),
(7, 'Tạp chí', 'Tạp chí', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(4, 'Dune Xứ Cát - Frank Herbert', 2, 'Công ty phát hành:	Nhã Nam - Hội Nhà Văn\r\nNgày xuất bản:	2021-12-01\r\nDịch Giả:	Trần Tiễn, Cao Đăng\r\nLoại bìa:	Bìa mềm\r\nSố trang:	715\r\nNhà xuất bản:	Nhà Xuất Bản Hội Nhà Văn', 'Dune Xứ Cát - Frank Herbert\r\n\r\nMột thời điểm rất xa trong tương lai…\r\nTừ đời này sang đời khác, người Fremen trên hành tinh sa mạc lưu truyền lời tiên tri về một đấng cứu tinh sẽ dẫn dắt họ giành lấy tự do đích thực…\r\nTừ thế hệ này sang thế hệ khác, những nữ phù thủy Bene Gesserit mỏi mòn chờ đợi sự xuất hiện của một B.G. nam giới duy nhất, người có thể vượt qua mọi giới hạn không gian - thời gian…\r\nLà Lisal al-Gaib của người Fremen, là Kwisatz Haderach của học viện Bene Gesserit, chàng công tước trẻ tuổi Paul Atreides đã làm tất cả những gì có thể để thay đổi định mệnh đó. Cha bị giết chết, mẹ bị cho là kẻ phản bội, gia tộc bị tàn sát, bản thân bị săn đuổi đến đường cùng, Paul đơn độc dấn thân vào một cuộc phiêu lưu sinh tử, không hề biết rằng mỗi hành động của mình sẽ góp phần quyết định vận mệnh của cả thiên hà. Sa mạc Arrakis khắc nghiệt tưởng như sẽ là nơi chôn vùi vĩnh viễn vinh quang của gia tộc Atreides, nhưng hóa ra lại thành điểm khởi đầu cho một huyền thoại mới…\r\nLà một trong những cuốn tiểu thuyết khoa học giả tưởng bán chạy nhất mọi thời đại, Xứ Cát không chỉ là lựa chọn đối với những tín đồ của Chúa nhẫn, Chiến tranh giữa các vì sao… mà còn chinh phục độc giả đủ mọi lứa tuổi, mọi tầng lớp và sở thích bởi sự đa dạng và phức tạp của con người và không gian trong truyện, bởi sự tinh tế trong xây dựng tâm lý, bởi sự hấp dẫn, căng thẳng và bất ngờ của cốt truyện, bởi sự độc đáo và thú vị của khối lượng kiến thức khổng lồ cũng như bởi sự hấp dẫn trong những tư tưởng về tôn giáo, về tự do, về tình yêu, về sự sống và cái chết…', '238500', '5d5e4a26cb029fdecd04e0c30cbef17a92.jpg', 1, NULL, NULL),
(5, 'Nhà Giả Kim', 2, 'Công ty phát hành	Nhã Nam\r\nNgày xuất bản	2020-04-01 00:00:00\r\nKích thước	13 x 20.5 cm\r\nLoại bìa	Bìa mềm\r\nSố trang	228\r\nNhà xuất bản	Nhà Xuất Bản Hà Nội', 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim', '56500', 'aa81d0a534b45706ae1eee1e344e80d928.jpg', 1, NULL, NULL),
(6, 'Hoàng Tử Bé', 2, 'Công ty phát hành	Nhà Xuất Bản Kim Đồng\r\nNgày xuất bản	2019-02-01 00:00:00\r\nKích thước	13 x 19 cm\r\nLoại bìa	Bìa mềm\r\nSố trang	112', '“Hoàng Tử Bé” (tên tiếng Pháp: Le Petit Prince) xuất bản năm 1943 và là tác phẩm nối tiếng nhất trong sự nghiệp của nhà văn phi công Pháp Antoine de Saint-Exupéry. Tác phẩm đã được dịch sang hơn 250 ngôn ngữ và cho đến nay đã bán được hơn 200 triệu bản khắp thế giới.\r\n\r\nCuốn sách đẹp như một bài thơ thanh sáng, một câu chuyện cổ tích về tình yêu thương, lòng nhân ái, ý nghĩa của sự tồn tại, về sự cảm thông giữa người với ngườ\r\n\r\nSự giản dị trong sáng tỏa khắp tác phẩm đã khiến nó trở thành một bài thơ bất hủ mà mãi mãi người ta muốn đem làm quà tặng của tình yêu. \r\n\r\n \r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', '19200', 'f2760035b59ed6a21cfbad589376e12a43.jpg', 1, NULL, NULL),
(7, 'Tôi Là Bêtô', 2, 'Công ty phát hành	NXB Trẻ', 'Tôi Là Bêtô là tác phẩm mới nhất của nhà văn chuyên viết cho thanh thiếu niên của Nguyễn Nhật Ánh. Anh đã được đông đảo bạn đọc biết đến qua các tác phẩm quen thuộc như Thằng quỷ nhỏ, Trại hoa vàng, Bong bóng lên trời, Cô gái đến từ hôm qua… và hai bộ truyện nhiều tập Kính vạn hoa và Chuyện xứ Lang Biang. Với Tôi là Bêtô, đây là lần đầu tiên anh viết một tác phẩm qua lời kể của một chú cún. Trong thiên truyện này, thế giới được nhìn một cách trong trẻo nhưng lồng trong đó không thiếu những ý tứ thâm trầm, khiến người đọc phải ngẫm nghĩ. Đây chắc chắn là tác phẩm không chỉ dành cho trẻ em.\r\n\r\n\"Tôi xa quê từ rất sớm. Có lẽ vì vậy, đối với tôi tuổi thơ là một vùng trời luôn lung linh trong ký ức. Tôi vẫn còn nhớ rõ hình ảnh những trưa hè tuổi thơ, tôi ngồi trong vườn cây nhà dì chơi đùa ra sao với các anh chị con dì, nhớ những ngày trốn học đi tắm sông, mẹ tôi phải lặn lội đi tìm, nhớ những cánh diều trong sân trường tiểu học, nhớ cây trứng cá sai trái ở ngoài cửa sổ lớp tôi… Đến bây giờ, những lúc ngồi ôn lại những kỷ niệm ngày xưa còn bé, tôi luôn cảm thấy bồi hồi. Đó là tâm trạng nuối tiếc của kẻ đã rời xa sân ga tuổi nhỏ và biết mình vĩnh viễn không quay lại được.\r\n\r\nCó lẽ chính sự ám ảnh đó đã đi vào các trang sách của tôi và tự nhiên tôi trở thành nhà văn viết cho trẻ em. Mà thực ra cũng có một phần là viết cho chính mình, như một cách giải tỏa. Và đó chính là \"thực tế\" quan trọng nhất của tôi. Vì tôi nghĩ một nhà văn chỉ viết hay, viết xúc động nhất về những gì làm cho anh ta bức xúc, khao khát - những gì gần gũi, thân thuộc, máu thịt và giàu sức ám ảnh nhất.\"\r\n\r\n(Nguyễn Nhật Ánh)', '62000', 'b9d7489cc2602bbbd45f23b0af1d8d4874.jpg', 1, NULL, NULL),
(8, 'Điều Kỳ Diệu Của Tiệm Tạp Hóa NAMIYA', 2, 'Công ty phát hành	Nhã Nam\r\nNgày xuất bản	2018-07-07 09:10:15\r\nKích thước	\r\n14 x 20.5 cm\r\n\r\nLoại bìa	Bìa mềm\r\nSố trang	358', 'Điều Kỳ Diệu Của Tiệm Tạp Hóa\r\n\r\nMột đêm vội vã lẩn trốn sau phi vụ khoắng đồ nhà người, Atsuya, Shota và Kouhei đã rẽ vào lánh tạm trong một căn nhà hoang bên con dốc vắng người qua lại. Căn nhà có vẻ khi xưa là một tiệm tạp hóa với biển hiệu cũ kỹ bám đầy bồ hóng, khiến người ta khó lòng đọc được trên đó viết gì. Định bụng nghỉ tạm một đêm rồi sáng hôm sau chuồn sớm, cả ba không ngờ chờ đợi cả bọn sẽ là một đêm không ngủ, với bao điều kỳ bí bắt đầu từ một phong thư bất ngờ gửi đến…\r\n\r\nTài kể chuyện hơn người đã giúp Keigo khéo léo thay đổi các mốc dấu thời gian và không gian, chắp nối những câu chuyện tưởng chừng hoàn toàn riêng rẽ thành một kết cấu chặt chẽ, gây bất ngờ từ đầu tới cuối.', '75000', 'ab94b8b2e35c49fc38b063fae4e8266a98.jpg', 1, NULL, NULL),
(9, 'Dấn Thân', 4, 'Công ty phát hành	NXB Trẻ\r\nNgày xuất bản	2019-04-01 00:00:00\r\nKích thước	13 x 19 cm\r\nDịch Giả	Trần Thị Ngân Tuyến\r\nLoại bìa	Bìa mềm\r\nSố trang	352', 'Sheryl Sandberg hiện là giám đốc hoạt động của facebook, là nhân vật đứng thứ hai sau tổng giám đốc và người sáng lập facebook. Cô được xem là một phụ nữ quyền lực ở thung lũng silicon. Cô từng giữ chức vụ lớn tại Google, tại bộ Tài chính Mỹ.\r\nThông qua quyển sách này, Sheryl Sandberg chia sẻ cuộc đời mình, những vươn lên cùng với thành công, để qua đó nhằm kêu gọi và truyền cảm hứng cho phụ nữ. Theo đó, phụ nữ hãy dám dấn thân, dám ngồi vào bàn để cùng tranh luận, trao đổi và theo đuổi ước mơ của cuộc đời mình. Cũng qua quyển sách này, Sandberg cũng muốn chia sẻ suy nghĩ của mình về vai trò của phụ nữ và quá trình bình đẳng giới để mọi tầng lớp trong xã hội, đặc biệt là nam giới, cùng chia sẻ để hướng tới một xã hội bình đẳng hơn.', '81500', 'b78ae9403e5e13030f3a66e3d52a296620.jpg', 1, NULL, NULL),
(10, 'Từ Tốt Đến Vĩ Đại', 4, 'Công ty phát hành	NXB Trẻ\r\nNgày xuất bản	2021-03-13 16:01:37\r\nDịch Giả	Trần Thị Ngân Tuyến\r\nLoại bìa	Bìa mềm\r\nSố trang	484\r\nNhà xuất bản	NXB Trẻ', 'Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại. Đó là những yếu tố khả năng lãnh đạo, con người, văn hóa, kỷ luật, công nghệ… Những yếu tố này được nhóm nghiên cứu xem xét tỉ mỉ và kiểm chứng cụ thể qua 11 công ty nhảy vọt lên vĩ đại. Mỗi kết luận của nhóm nghiên cứu đều hữu ích, vượt thời gian, ý nghĩa vô cùng to lớn đối với mọi lãnh đạo và quản lý ở mọi loại hình công ty (từ công ty có nền tảng và xuất phát tốt đến những công ty mới khởi nghiệp), và mọi lĩnh vực ngành nghề. Đây là cuốn sách nên đọc đối với bất kỳ lãnh đạo hay quản lý nào!', '94900', '8cd3d96f65304037a1f038c982e718e969.jpg', 1, NULL, NULL),
(11, 'Càng Kỷ Luật, Càng Tự Do', 4, 'Công ty phát hành	Bloom Books\r\nNgày xuất bản	2020-09-01 00:00:00\r\nKích thước	14.5 x 20 cm\r\nDịch Giả	Tuyết Mai\r\nLoại bìa	Bìa mềm\r\nSố trang	288\r\nNhà xuất bản	Nhà Xuất Bản Thế Giới', 'KỶ LUẬT vốn là ván cờ bạn phải tự đấu với chính mình. Thắng - bạn sẽ có được “bản năng của người mạnh mẽ nhất”, đó là sự tự kiểm soát bản thân. Thua - bạn mãi sống trong cảm giác tạm bợ, nuối tiếc. Càng dễ dàng dung túng cho những thói quen trì hoãn bao nhiêu, cuộc sống của bạn sẽ đi càng nhanh tới sự mất kiểm soát và thiếu quy hoạch bấy nhiêu.\r\n\r\nHãy kiên trì đặt ra yêu cầu cao với bản thân, từ chối sự mê hoặc của thói tùy tiện đồng thời thiết lập cho mình những thói quen tốt trong hành vi thường ngày. Sự nỗ lực sẽ luôn được đền đáp xứng đáng nếu bạn biết cách đầu tư công sức và thời gian. Bởi một ngày nào đó trong tương lai, những gì bạn làm sẽ phản chiếu đầy đủ trên chính con người và cuộc đời của bạn.\r\n\r\nCÀNG KỶ LUẬT, CÀNG TỰ DO - Mong rằng tại thời điểm kết thúc hành trình với cuốn sách, bạn đã là một phiên bản khác kỷ luật hơn, nhưng tự do hơn.', '81200', '73b6578834e8aa8e5e071b64fab93d5d7.jpg', 1, NULL, NULL),
(12, 'Rèn Luyện Tư Duy Phản Biện', 4, 'Công ty phát hành	1980 Books\r\nNgày xuất bản	2019-12-01 00:00:00\r\nKích thước	13 x 19 cm\r\nLoại bìa	Bìa mềm\r\nSố trang	204\r\nNhà xuất bản	Nhà Xuất Bản Phụ Nữ', 'Như bạn có thể thấy, chìa khóa để trở thành một người có tư duy phản biện tốt chính là sự tự nhận thức. Bạn cần phải đánh giá trung thực những điều trước đây bạn nghĩ là đúng, cũng như quá trình suy nghĩ đã dẫn bạn tới những kết luận đó. Nếu bạn không có những lý lẽ hợp lý, hoặc nếu suy nghĩ của bạn bị ảnh hưởng bởi những kinh nghiệm và cảm xúc, thì lúc đó hãy cân nhắc sử dụng tư duy phản biện! Bạn cần phải nhận ra được rằng con người, kể từ khi sinh ra, rất giỏi việc đưa ra những lý do lý giải cho những suy nghĩ khiếm khuyết của mình. Nếu bạn đang có những kết luận sai lệch này thì có một sự thật là những đức tin của bạn thường mâu thuẫn với nhau và đó thường là kết quả của thiên kiến xác nhận, nhưng nếu bạn biết điều này, thì bạn đã tiến gần hơn tới sự thật rồi!\r\n\r\nNhững người tư duy phản biện cũng biết rằng họ cần thu thập những ý tưởng và đức tin của mọi người. Tư duy phản biện không thể tự nhiên mà có.\r\n\r\nNhững người khác có thể đưa ra những góc nhìn khác mà bạn có thể chưa bao giờ nghĩ tới, và họ có thể chỉ ra những lỗ hổng trong logic của bạn mà bạn đã hoàn toàn bỏ qua. Bạn không cần phải hoàn toàn đồng ý với ý kiến của những người khác, bởi vì điều này cũng có thể dẫn tới những vấn đề liên quan đến thiên kiến, nhưng một cuộc thảo luận phản biện là một bài tập tư duy cực kỳ hiệu quả.\r\n\r\nViệc lắng nghe những ý kiến của người khác cũng có thể giúp bạn nhận ra rằng phạm vi tri thức của bạn không phải là vô hạn. Không ai có thể biết hết tất cả mọi thứ. Nhưng với việc chia sẻ và đánh giá phê bình kiến thức, chúng ta có thể mở rộng tâm trí. Nếu điều này khiến bạn cảm thấy không thoải mái, không sao cả. Trên thực tế, bước ra ngoài vùng an toàn là một điều quan trọng để mở rộng niềm tin và suy nghĩ của bạn. Tư duy phản biện không phải là chỉ biết vài thứ, và chắc chắn không phải việc xác\r\nnhận những điều bạn đã biết. Thay vào đó, nó xoay quanh việc tìm kiếm sự thật – và biến chúng trở thành thứ bạn biết.', '64900', '524a27dcd45e8a13ae6eecb3dfacba7c84.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `ad_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
