-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 07, 2024 lúc 04:34 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `image`, `phone`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Hilal Ahmad', 'https://laravel.com/img/logomark.min.svg', '894849484', 'hilal@gmail.com', '$2y$10$XVK1bAD5I8FmG1rOHS/4GONyq0q5S5iBWlz4iwgddK8rZ7YlH9s/e', '2024-03-18 06:51:22', '2024-03-18 06:51:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address1` text NOT NULL,
  `address2` text DEFAULT NULL,
  `zip_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `billing_addresses`
--

INSERT INTO `billing_addresses` (`id`, `user_id`, `address1`, `address2`, `zip_code`, `city`, `company`, `created_at`, `updated_at`, `phone`) VALUES
(15, 15, ' ', ' ', ' ', ' ', ' ', '2024-03-21 22:53:01', '2024-03-21 22:53:01', ' '),
(17, 17, ' ', ' ', ' ', ' ', ' ', '2024-03-21 22:58:13', '2024-03-21 22:58:13', ' ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tags`)),
  `meta_keyword` text NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `title`, `cat_id`, `description`, `tags`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'blog/wexSFWbNTYyIggzbNxJmaSrxu3cPJQ5P0tMNVXyE.jpg', 'Review Sách Chuyện Con Mèo Dạy Hải Âu Bay: Bạn Có Nên Đọc?', 1, '<p><strong>Chuyện con mèo dạy hải âu bay? </strong>Chờ một chút, có gì đó sai sai ở đây. Con mèo dạy hải âu bay? Tên cuốn sách này nghe hết sức kỳ lạ phải không nào?</p><p>Vậy mà tiêu đề hết sức vô lý nhưng lại cực kỳ thuyết phục!</p><p>Tôi biết bạn click vào bài viết là để khám phá bí mật này. Làm sao một cuốn sách tưởng chừng như dành cho thiếu nhi mà lại được rất nhiều người lớn tìm đọc như vậy? Tại sao nó lại có sức cuốn hút đến thế?</p><p>Nếu bạn cũng tò mò về những câu hỏi như vậy, thì bài viết này là dành cho bạn.</p><p>Bạn chắc chắn sẽ đọc hết bài viết này phải không? Hãy để tôi đưa ra 1 lời đề nghị nhé!</p><p>Nếu bạn chịu đọc hết bài viết này, tôi sẽ hứa biến nó thành 1 cuộc dạo chơi thú vị, đầy ắp tiếng cười. Và hơn hết, tôi sẽ tặng bạn một món quà!</p><p>Tuyệt phải không nào? Vậy hãy thắt dây an toàn vào, chúng ta sẽ bắt đầu cuộc hành trình…</p><h2><strong>Cô bé 3 tuổi, nặng 19 kg</strong>&nbsp;</h2><p>“Cháu thích con mèo này, cháy lấy con mèo này”</p><p>“Cháu lại nhõng nhẽo chú phải không?”</p><p>“Không phải, cháu thích nó, thích lắm. Chú mua cho cháu đi, mua đi”</p><p>Nó là Huyền – cháu gái tôi. Năm nay cháu 3 tuổi, cháu có biệt tài mỗi bữa ăn 2-3 bát cơm. Và 1 mình cháu chấp hếêêêêêêêêêêêêt các bạn nam ở lớp <i>(nghĩa đen luôn)</i>. Hãy như Huyền!</p><p>Mà cháu gái tôi thì liên quan gì đến câu chuyện này vậy? Để tôi kể tiếp đã, bạn sẽ hiểu.</p><h3><strong>Tỏ vẻ “người nhớn”</strong>&nbsp;</h3><p>Đó là 1 buổi chiều thu Hà Nội vài năm trước, tiết trời se lạnh, man mác buồn. Từng đôi nam thanh nữ tú khoác tay nhau rảo bước trên đường. Thỉnh thoảng lại trao nhau những enzim béo ngậy, rất có lợi cho tiêu hóa qua những nụ hôn kêu “chụt chụt”.</p><p>Tất cả như xoáy sâu vào trái tim đầy sự tổn thương và akay của những F.A chân chính.</p><p>Tôi dắt cháu gái tôi đi bộ qua đường, hướng về phố sách Đinh Lễ. Tôi dự định sẽ mua cho nó 1 vài cuốn truyện cổ tích, sách thiếu nhi để dỗ nó ngủ ngon. Vì mấy ngày nay cháu sống với tôi <i>(bố mẹ nó đi chơi, nên vứt nó sang nhà tôi)</i>.</p><p>Bước vào nhà sách, để tỏ vẻ người nhớn, cháu tôi cũng đi lần mò từng kệ sách. Và cuối cùng nó rút ra 1 cuốn có hình con mèo to bự, bụng phệ, nằng nặc đòi mua.</p><p>Thôi thì chiều ý nó còn hơn là để nó ăn vạ. Tôi cầm cuốn sách lên đưa cho thu ngân thanh toán, và liếc qua tiêu đề.</p><p>Con mèo dạy hải âu bay? Hay chuyện con mèo dạy hải âu bay gì đó. Nhưng nhìn khá thú vị đấy. Cháu gái mình cũng biết chọn sách đấy chứ.</p><p><img src=\"http://127.0.0.1:8000/media/cuon-sach-chuyen-con-meo-day-hai-au-bay-1_1712495969.jpg\" width=\"800\" height=\"444\"></p><p><br><i>Đây là cuốn sách mà cháu gái tôi chọn</i></p><p>Tôi tin rằng cuốn sách sẽ giúp cháu Huyền ngon giấc. Tôi cũng sẽ được đánh 1 giấc êm đềm từ 11h tối đến 6h sáng hôm sau.</p><p>Và cả đêm đó tôi mất ngủ…</p><h2><strong>“Ác mộng” chuyện con mèo dạy hải âu bay</strong>&nbsp;</h2><p>Trước tiên, tôi muốn hỏi bạn 1 câu chân thành “Bạn đã có con hay có cháu độ tuổi lên 3 chưa?”</p><p>Nếu bạn có, thì xin chúc mừng, chúng ta là đồng đội.</p><p>Chắc bạn hiểu được cái cảm giác phát rồ lên khi chúng hỏi bạn chứ? Hết câu này đến câu khác. Và cháu tôi cũng không phải ngoại lệ.</p><p>Cháu tôi hỏi những câu khá đơn giản và rất dễ trả lời như “Chú ơi, tại sao con mèo lại ăn cá?”, “Tại sao cháu chưa bao giờ thấy ngựa 1 sừng?”, “Tại sao Sơn Tùng MTP lại có mối quan hệ với Trà xanh, và để Thiều Bảo Trâm còn cái nịt?” <i>(Đùa chút thôi)</i>… Và vô vàn những câu hỏi khác nữa.</p><p>Cũng với truyền thống này, đêm đó cháu tôi đã bắt tôi đọc hết cuốn sách “Chuyện con mèo dạy hải âu bay” cho nó nghe. Và tăng thêm 300% công lực để hỏi tôi về cuốn sách đó.</p><p>Tôi rất bình tĩnh hỏi chị Google và trả lời nó toàn bộ thắc mắc. Cuối cùng nó cũng chịu đi ngủ.</p><p>Nhưng tôi thì lại ngồi dậy, đọc lại cuốn sách đó 1 lần nữa, bởi vì nó quá HAY. Đó là lý do khiến tôi mất ngủ đêm hôm đó bạn à.</p><p>Tôi lên Google tìm kiếm thì thấy có đến 2.400 lượt tìm kiếm từ khóa “chuyện con mèo dạy hải âu bay”. Cũng nhiều người viết sai chính tả thành “truyện con mèo dạy hải âu bay”. Điều đó chứng tỏ, cuốn sách này rất hấp dẫn.</p><p>Và tại sao nó lại tuyệt đến vậy? Hãy xem…</p><h2><strong>Chuyện con mèo dạy hải âu bay có 1 chiếc bìa ăn tiền</strong>&nbsp;<br>&nbsp;</h2><p><img src=\"http://127.0.0.1:8000/media/cuon-sach-co-mot-chiec-bia-dep_1712497697.jpg\" width=\"610\" height=\"840\"></p><p><i>Đây là phiên bản bìa cứng</i></p><p>Đẹp, rất đẹp. Đó là hình ảnh 1 chú mèo vô cùng đáng yêu đang ngước lên bầu trời nhìn 1 chú hải âu. Với dòng chữ uốn lượn, cách điệu cùng tone màu xanh biếc càng làm cho cuốn sách thêm hút hồn.</p><p>Nó đã đánh trúng vào tâm lý thích vẻ đẹp của nhiều người. Có lẽ đó cũng là 1 phần lý do khiến cuốn sách bán chạy như vậy.</p><p>Cả cuốn sách này chỉ có 139 trang. Đúng vậy, chỉ 139 trang thôi bạn nhé. Đó là lý do mà tôi có thể đọc hết cho cháu mình nghe trong vào 1 đêm như vậy.</p><p>Với khổ 14x20cm nó như một cuốn sổ tay hình học nhỏ. Bạn có thể mang nó đi bất cứ đâu. Dùng để đọc hay dùng để sống ảo cũng là 1 ý kiến hay <i>(vì bìa đẹp mà)</i>.<br><strong>Tác giả chuyện con mèo dạy hải âu bay</strong></p><p>Ông tên là <strong>Luis Sepúlveda Calfucura</strong>&nbsp;(4/10/1949), là một&nbsp;nhà văn&nbsp;và&nbsp;phóng viên Chile. Cuốn sách chuyện con mèo dạy hải âu bay được ông xuất bản vào năm 1996. Và là tác phẩm thứ 9 của ông.</p><p>Trong quá khứ, ông là một người hoạt động chính trị, một chiến sĩ cộng sản, chống lại chế độ&nbsp;Augusto Pinochet. Đây là chế độ độc tài quân sự của Chile từ năm 1973 đến năm 1990. Ông đã bị cầm tù và tra tấn dã man trong thập niên 1970.</p><p>Sepúlveda là tác giả những tập&nbsp;thơ, truyện ngắn và những áng văn chương nổi tiếng. Ngoài tiếng Tây Ban Nha là tiếng mẹ đẻ, ông còn nói được tiếng Anh, Pháp và Ý. Vào cuối thập niên 1980, Sepúlveda chinh phục giới văn học với tiểu thuyết đầu tiên&nbsp;“Lão già mê đọc truyện tình”.</p><p><i>Bạn có thể tìm hiểu thêm về Luis Sepúlveda Calfucura </i><a href=\"https://vi.wikipedia.org/wiki/Luis_Sep%C3%BAlveda\"><i><strong>tại đây</strong></i></a><i>!</i></p><h3><strong>Sự ra đi đầy nuối tiếc</strong> <strong>của tác giả chuyện con mèo dạy hải âu bay</strong></h3><p>Đại dịch Covid 19 có thể nói là 1 thảm họa. Tại Việt Nam bây giờ, vào triều đại covid thứ 3, bạn cũng có thể thấy rõ được điều ấy phải không nào?<br>Có thể bạn bất ngờ, nhưng Luis Sepúlveda cũng là nạn nhân của những con virus đáng sợ đó.</p><p>Ông bị mắc covid 19 vào ngày 1 tháng 3 năm 2020 sau khi trở về từ một hội nghị ở Bồ Đào Nha. Ông được xác nhận là ca nhiễm&nbsp;đầu tiên tại vùng&nbsp;Asturias, Tây Ban Nha.</p><p>Đến ngày 11 tháng 3, có thông tin rằng ông đã lâm vào tình trạng nguy kịch. Ông rơi vào hôn mê và phải trợ thở bằng máy do suy đa tạng tại một bệnh viện ở&nbsp;Oviedo. Và rồi ngày 16 tháng 4, ông đã qua đời tại bệnh viện, để lại sự tiếc nuối cho nhiều thế hệ độc giả.</p><p>Đó là sơ lược tiểu sử của tác giả. Còn bây giờ là phần hấp dẫn nhất. Tiếp tục nhé!<br><strong>Câu chuyện con mèo dạy hải âu bay</strong></p><p>Tác phẩm “Chuyện con mèo dạy hải âu bay” của Luis Sepúlveda kể về chú mèo mun bụng bự đã yêu thương, và nuôi dạy một chú hải âu con. Cuốn sách là một cuộc hành trình khó khăn, là bài ca tuyệt đẹp về tình yêu thương, của các loài động vật.</p><p>Nhân vật chính của chúng ta là 1 chiếc mèo bụng bự rất thú vị và 1 bạn hải âu. Cùng băng đảng đầu mèo khét tiếng xứ cảng, chúng đã làm nên 1 tác phẩm cực kỳ hấp dẫn, đầy tiếng cười. Nhưng cũng không kém phần nhân văn sâu sắc.</p><p>Vậy tại sao lại có mèo và hải âu mà không phải là chó và đại bàng. Lý do là đây…</p><h3><strong>Sự hình thành bất ngờ</strong></h3><p>Đó lại là vào 1 buổi chiều thu, trời se lạnh, man mác buồn. Nhưng không phải ở Việt Nam, mà ở nơi cách xa tôi và bạn hơn nửa vòng trái đất – Chile.</p><p>Sau một quãng thời gian bí ý tưởng, tác giả Luis ngồi trên bàn làm việc, bất giác nhìn sang con mồn lèo tên Zorba đang nằm phè phỡn dưới sàn nhà. Và ông chợt nảy ra 1 ý tưởng: biến chiếc mồn lèo vô dụng đó trở thành nhân vật chính cho 1 câu chuyện.<br>Nhưng mà gái thì phải có trai, mai thì phải có đào mới vui. Chỉ 1 con mồn lèo thì chưa đủ, phải cần 2.</p><p>Đang lúc trầm tư suy nghĩ thì một chiếc hải âu bay qua định tặng cho tác giả 1 bãi. Nhưng ý tưởng của tác giả đã kịp lóe lên, và không thể cản phá. Thế là chúng ta có tác phẩm hư cấu ” Chuyện con mèo dạy hải âu bay”.</p><p>Và câu chuyện bắt đầu với một màn Drama.</p><h3><strong>Cuộc gặp gỡ cứ như phim Hàn</strong></h3><p>Nói giống như phim Hàn thì hơi quá, nhưng đại khái là thế này bạn à.</p><p>Có cô hải âu nọ bị lạc đàn khi đang di cư đến vùng đất mới cùng đàn. Trớ trêu thay cô lại bị dính dầu tràn trên biển <i>(bạn cứ tưởng tượng loại dầu đó là 1 cái bẫy chuột, rất dính và độc hại. Nếu đã rơi vào đó, thì sẽ rất khó để sống sót)</i> nên bị thương nặng và hoàn toàn kiệt sức.</p><p>Sau nhiều lần cố gắng cuối cùng cô vỗ cánh và bay lên được một con tàu. Lúc này, mồn lèo xuất hiện như 1 vị thần.<br>Tên của cậu là Zorba, đây là một chàng công tử đích thực. Dù khét lẹt trong giới công tử, nhưng mồn lèo khằng định chắc nịch với báo chí rằng mình là người rất healthy, lành mạnh, chưa bao giờ biết bay lắc cùng các nàng mèo khác.</p><p>Công việc thường ngày của Zorba chỉ là ăn và ngủ, thỉnh thoảng thì đi tán gẫu ngoài phố. <i>(chắc tác giả viết thiếu, vì ngoài ra mồn lèo còn ị nữa)</i></p><p>Định mệnh cho ta gặp nhau, khi mà Zorba đang say sưa sưởi nắng thì chị hải âu rơi bộp vào cậu. Không nói nhiều, gặp được Zorba, chị hải âu cố gắng sinh ra một quả trứng và giao cho cậu những nhiệm vụ không tưởng…</p><h3><strong>Lời hứa khởi đầu</strong> <strong>và cuộc hành trình</strong></h3><p>Tôi rất muốn tự mình kể cho bạn nghe về câu chuyện này, nhưng mà văn kém. Nên tôi đành để tác giả kể cho bạn nghe vậy. Nó rất vui và đầy tính giải trí.</p><p>Hãy xem…</p><h4><strong>Lời hứa của mèo mun với chị hải âu</strong></h4><p>Dưới đây là một đoạn mà tôi trích ra từ cuốn sách, đó chính là nút thắt của cả câu chuyện.</p><p>“Tôi sắp sinh một quả trứng, với tất cả sinh lực còn lại tôi sẽ sinh một quả trứng. Bạn mèo tốt của tôi, ai cũng có thể thấy anh là một con vật rất tử tế với tấm lòng nhân ái cao quý. Bởi vậy anh có thể hứa với tôi ba điều không?” – Hải âu mái cất tiếng.</p><p>Mồn lèo Zorba nghĩ cô hải âu này bị mê sảng rồi. Vì cô đang rơi vào tình trạng khốn khổ như thế, nó không còn cách nào khác ngoài việc tỏ ra rộng lượng và nói đầy thương cảm: “Tôi hứa là tôi sẽ làm những gì cô muốn.”<br>“<strong>Hãy hứa với tôi là anh sẽ không ăn quả trứng</strong>” – Kengah <i>(tên của hải âu)</i> mở mắt, thều thào.</p><p>“Tôi xin hứa rằng tôi sẽ không ăn quả trứng” – Zorba lặp lại câu nói.</p><p>“<strong>Hãy hứa với tôi anh sẽ chăm lo cho quả trứng</strong> đến khi con chim non ra đời” – cô nói, rướn cổ cao lên một chút.</p><p>“Tôi hứa sẽ chăm lo quả trứng cho đến khi chim non ra đời.”</p><p>“<strong>Và hứa với tôi anh sẽ dạy nó bay</strong>“. Kengah hổn hển nói, nhìn thẳng vào mắt con mèo.</p><p>Đến lúc này thì Zorba biết cô chim tội nghiệp không chỉ mê sảng, cô ta bị khùng hoàn toàn rồi. Nhưng cậu vẫn nói: “Tôi hứa là sẽ dạy cho nó bay.”</p><p>Kengah nhìn lên bầu trời, tạ ơn những làn gió tốt lành đã nâng cánh cô trong suốt cuộc đời. Cô trút hơi thở cuối cùng, một quả trứng trắng lốm đốm xanh lăn ra.</p><p>Và hành trình của Zorba bắt đầu từ đây…</p>', '[{\"value\":\"sachvanhoc\"}]', '[{\"value\":\"sachvanhoc\"}]', 'sachvanhoc', '2024-03-19 14:01:01', '2024-04-07 06:50:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sách văn học', 'sach-van-hoc', 1, '2024-03-19 21:00:27', '2024-04-07 05:32:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `image`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'brand/XJGLLEtKDlhbz6n6m8YeEEbNM8AEe3vWSAMXgFRN.jpg', 'Jonathan Crichton & Pieter Koster', 'jonathan-crichton-pieter-koster', 1, '2024-03-18 00:32:04', '2024-04-01 20:01:14'),
(2, 'brand/cf6GEEeFj2iOKrs3qquaRk8b1XsepYHDSUbBC68P.jpg', 'Huyền Trang', 'huyen-trang', 1, '2024-03-18 00:32:15', '2024-04-01 19:58:44'),
(3, 'brand/hJel6PEV1zUZ5DENF1fUN1Br3KMfZyM1CtyJxIjn.jpg', 'Thomas Harris', 'thomas-harris', 1, '2024-03-18 00:32:50', '2024-03-30 04:52:02'),
(4, 'brand/0l8wZp5OVw9I76SYAdEMX0QsoaSzV8E90qcDIbEZ.jpg', 'Josh Malerman', 'josh-malerman', 1, '2024-03-18 00:33:03', '2024-03-30 03:59:11'),
(5, 'brand/V9Y8tcJd7jzFQUnkrw0iQpee2cCPplHADkm0ji7s.jpg', 'Stephen King', 'stephen-king', 1, '2024-03-18 00:33:24', '2024-03-30 04:01:10'),
(6, 'brand/SGzLFkqgXpwlPFGB7DS9GjYpHxCijMJidDry0nxj.jpg', 'Rainbow Rowell', 'rainbow-rowell', 1, '2024-03-18 00:34:09', '2024-03-30 04:00:58'),
(7, 'brand/prePqyX4IkD6t99xzuOpCZbfY5VOfgdSCn1MRRw3.jpg', 'Nicholas Sparks', 'nicholas-sparks', 1, '2024-03-18 00:34:27', '2024-03-30 04:00:01'),
(8, 'brand/8OMe9HgDwYAICTRetkDac5ISd3NdwUwGCtktRbeL.jpg', 'William Shakespeare', 'william-shakespeare', 1, '2024-03-18 00:34:56', '2024-03-30 03:59:43'),
(9, 'brand/2V6nOoUVgteH7sRCFyyMO8onCwYY2uP1gyTtmNvf.jpg', 'Timothy Chadwick & Lesley Koustaff', 'timothy-chadwick-lesley-koustaff', 1, '2024-04-01 20:02:24', '2024-04-01 20:02:24'),
(10, 'brand/A394Vn53lF1opJ6cRwJPSG7fJk2z4E6YUtwGLogb.jpg', 'Caroline Nixon', 'caroline-nixon', 1, '2024-04-01 20:03:21', '2024-04-01 20:03:21'),
(11, 'brand/4wgwQAgRaUSp9dMFuiq4qGkhBXUnZmXTjjwqmhRC.jpg', 'Anne Robinson', 'anne-robinson', 1, '2024-04-01 20:06:52', '2024-04-01 20:06:52'),
(12, 'brand/1ED0MpugcNWf8vnD8Z2QGIkvlUTOVutLwZSoGhmu.jpg', 'Yoko Ikeda', 'yoko-ikeda', 1, '2024-04-01 20:39:18', '2024-04-01 20:39:18'),
(13, 'brand/ZSKiFIMhvUwIEGIC7slqfkfRWUpXLO3fpVkSEVlk.jpg', 'AJALT', 'ajalt', 1, '2024-04-01 20:40:32', '2024-04-01 20:40:32'),
(14, 'brand/O6DzoOoMHGGUZrTsfd0wk4mgET8ZxVfa4c3EgRwp.jpg', 'George Trombley', 'george-trombley', 1, '2024-04-01 20:41:13', '2024-04-01 20:41:13'),
(15, 'brand/nhn1QkZFhm7bjz0HDNv9zbRCGSaCChb6cgGZlU4i.jpg', 'James W. Heisig', 'james-w-heisig', 1, '2024-04-01 20:41:50', '2024-04-01 20:41:50'),
(16, 'brand/05R7vFByWx5ioi1OvC6vZHK0Q2JKC2FWHdoBUJUn.jpg', 'Howard Zinn', 'howard-zinn', 1, '2024-04-01 21:00:29', '2024-04-01 21:00:29'),
(17, 'brand/cTuO8bgvpDw8AMwBVzmiRfjixx30lZefk8skNkX4.jpg', 'Jared Diamond', 'jared-diamond', 1, '2024-04-01 21:01:05', '2024-04-01 21:01:05'),
(18, 'brand/xAJlAjyVW8q2u1vOfiMlFgQepcWvjgJ7iRmjDbNk.jpg', 'Herodotus', 'herodotus', 1, '2024-04-01 21:02:14', '2024-04-01 21:02:14'),
(19, 'brand/ILelZDpD7xCIGoXAZGs0WGeU3dOZuaz5V8TT8UxM.jpg', 'Edward Gibbon', 'edward-gibbon', 1, '2024-04-01 21:02:58', '2024-04-01 21:02:58'),
(20, 'brand/9jLWpT4yd9LqlXTmQ6h2QDriXKnuqWvUEqEs0Z1u.jpg', 'Polybius', 'polybius', 1, '2024-04-01 21:13:40', '2024-04-01 21:13:40'),
(21, 'brand/WPziKvUZGCedSSG5mg9gNi9pxY2R4P8nH2nZjSxb.jpg', 'John Merriman', 'john-merriman', 1, '2024-04-01 21:14:52', '2024-04-01 21:14:52'),
(22, 'brand/8byCioP5BfzLisKJ7yoHDc5Fo4hv7Q9HW93Mm4Bi.jpg', 'Chris Wickham', 'chris-wickham', 1, '2024-04-01 21:15:24', '2024-04-01 21:15:24'),
(23, 'brand/d70BhAYEwpZ220ul0spGto7IIjKWKTgLZQN9wrdp.jpg', 'Brendan Nagle', 'brendan-nagle', 1, '2024-04-01 21:16:04', '2024-04-01 21:16:04'),
(24, 'brand/56CtoTBkUkmlpmlD40EFQzliiArAuuPYPcsg7fSA.jpg', 'Charles Perrault', 'charles-perrault', 1, '2024-04-02 00:49:17', '2024-04-02 00:49:17'),
(25, 'brand/kg8HlYRBJi3b5TRjSdokWuO8uDRprQD3VTJ7ImOD.jpg', 'Lewis Carroll', 'lewis-carroll', 1, '2024-04-02 00:50:05', '2024-04-02 00:50:05'),
(26, 'brand/Dv0ncPWmxrPyVfNSF5TZ2q9sjgYPrzazOcC5DW03.jpg', 'Antoine de Saint-Exupéry', 'antoine-de-saint-exupery', 1, '2024-04-02 00:52:14', '2024-04-02 00:52:14'),
(27, 'brand/oumfyg096DOOPYb2INFTZ9COQqPONngFVAaUiwdU.jpg', 'Hans Christian Andersen', 'hans-christian-andersen', 1, '2024-04-02 00:53:32', '2024-04-02 00:53:32'),
(28, 'brand/A88lHuISY0750bUUSpZJCfTorXUsjPiOTN40cdWw.jpg', 'Rudyard Kipling', 'rudyard-kipling', 1, '2024-04-02 01:05:13', '2024-04-02 01:07:16'),
(29, 'brand/MFVVOExAwdWR5CpfaqS8UULZLsCo27JnKQqihPU9.jpg', 'Sean Covey', 'sean-covey', 1, '2024-04-02 02:54:11', '2024-04-02 02:54:11'),
(30, 'brand/HnHMb6Hml64diurT3pOA9VJsrQlMMCzvigCSkLIs.jpg', 'Carol S. Dweck Carol S. Dweck', 'carol-s-dweck-carol-s-dweck', 1, '2024-04-02 03:03:20', '2024-04-02 03:03:20'),
(31, 'brand/OeNAlC4MlWBgRyGFHzz8CgrJ3czQ4jNgdbWggjAv.jpg', 'Barney Saltzberg', 'barney-saltzberg', 1, '2024-04-02 03:07:55', '2024-04-02 03:07:55'),
(32, 'brand/ugkn8e0QuJetmbMVknZRBNc9spn35QtaU6plWw3M.jpg', 'Toby Wilkinson', 'toby-wilkinson', 1, '2024-04-02 03:30:42', '2024-04-02 03:30:42'),
(33, 'brand/StPAP63JZ4HLT8lC7Qo9FXFjMr5eY3rISmhxEGQQ.jpg', 'Richard H. Wilkinson', 'richard-h-wilkinson', 1, '2024-04-02 03:47:50', '2024-04-02 03:47:50'),
(34, 'brand/e0BHkt5lcyZuWgn7gqV1pe2SQs0PITKPMcoe3FOC.jpg', 'Miroslav Verner', 'miroslav-verner', 1, '2024-04-02 03:55:51', '2024-04-02 03:55:51'),
(35, 'brand/eVnqTuWtt6PhcUtFxe4sfX4ypIcVXp6HwxINHuQW.jpg', 'Raymond Faulkner', 'raymond-faulkner', 1, '2024-04-02 04:04:07', '2024-04-02 04:04:07'),
(36, 'brand/KiuGFh26BUhTEOBzqBU7a5eMoMImkFDC9ApGsuom.jpg', 'Barbara Mertz', 'barbara-mertz', 1, '2024-04-02 04:13:33', '2024-04-02 04:13:33'),
(37, 'brand/fGNxvnn2ixy8iAvjXUGp6CvB13OUpV5WGpMPecXU.jpg', 'E.H. Gombrich', 'eh-gombrich', 1, '2024-04-02 22:33:05', '2024-04-02 22:33:05'),
(38, 'brand/cbwzSfyApPxhg4iV6BVLn4QV3V5UICvXFymnl3X4.jpg', 'Robert Henri', 'robert-henri', 1, '2024-04-02 22:41:35', '2024-04-02 22:41:35'),
(39, 'brand/1LcGJwslQ5P8eMoq5eOPjZ4eBTSSJgjiFjcJ9e4F.jpg', 'David Bayles & Ted Orland', 'david-bayles-ted-orland', 1, '2024-04-02 22:46:26', '2024-04-02 22:49:47'),
(40, 'brand/3O8IM9axcC9BphllNn5CLV3xxoLhhxXoYsc7F4qC.jpg', 'David Salle', 'david-salle', 1, '2024-04-02 22:51:34', '2024-04-02 22:51:34'),
(41, 'brand/zE0oLwsVRWyVE2q6ARKhuuZfKOi3hohTtDLsdyDK.jpg', 'Ray Bradbury', 'ray-bradbury', 1, '2024-04-02 22:58:28', '2024-04-02 22:58:28'),
(42, 'brand/K2aO3U5KE2wQmzj3a3GvsIB0AkT7HH2QUe7SjRoU.jpg', 'Helen Gardner', 'helen-gardner', 1, '2024-04-02 23:15:19', '2024-04-02 23:15:19'),
(43, 'brand/ZawatKvKbDoFRECTmckRTiKVz4xuuTp21Q0VAUKy.jpg', 'Chris Barker', 'chris-barker', 1, '2024-04-02 23:27:18', '2024-04-02 23:27:18'),
(44, 'brand/pQ27ItaRkBS61LZHAvWSTmWJ3z3XeMPdAOyZWynA.jpg', 'Clifford Geertz', 'clifford-geertz', 1, '2024-04-02 23:57:15', '2024-04-02 23:57:15'),
(45, 'brand/oureGxKHGkZIbtWMJQ6ExmiJFUXUZUiQtl4itDm2.jpg', 'Edward Said', 'edward-said', 1, '2024-04-03 00:02:16', '2024-04-03 00:02:16'),
(46, 'brand/zwv8aEwour51XQV1UgqfLG5HeXLzExHEhhxSjWL8.jpg', 'Robert Hewison', 'robert-hewison', 1, '2024-04-03 00:09:46', '2024-04-03 00:09:46'),
(47, 'brand/McYV0OQwvia4gbIvkS7MjDCUOTshnzWSCuC1LqgK.jpg', 'Sara Ahmed', 'sara-ahmed', 1, '2024-04-03 00:15:03', '2024-04-03 00:15:03'),
(48, 'brand/z7drYNpMm8D8pUPb9SEMYu9PgStcwLQw8jJWttZi.jpg', 'Doug Lemov', 'doug-lemov', 1, '2024-04-03 00:25:35', '2024-04-03 00:25:35'),
(49, 'brand/IQCdcm8pzHhH9HUiKNIzSRG3TgO2t5w9ryLi04jn.jpg', 'Parker J. Palmer', 'parker-j-palmer', 1, '2024-04-03 00:32:24', '2024-04-03 00:32:24'),
(50, 'brand/s0PqazlYlOUPOWoghPRZYg9ZFbFdSzbfYjvqQftH.jpg', 'John Holt', 'john-holt', 1, '2024-04-03 00:37:58', '2024-04-03 00:40:52'),
(51, 'brand/SNB3fcK2jk38rhh4XFTDIUjF51IfFnyxy37uDhXI.jpg', 'Amanda Ripley', 'amanda-ripley', 1, '2024-04-03 00:43:08', '2024-04-03 00:43:08'),
(52, 'brand/x4MwBAsy9uHkPq981csCQswm0AeTLKswD9GW9dnl.jpg', 'Paulo Freire', 'paulo-freire', 1, '2024-04-03 00:47:13', '2024-04-03 00:47:13'),
(53, 'brand/1bAp8Mw0KXZj7RfCgdeptPqEp0YvX9Lpox5RxOko.jpg', 'Arthur Conan Doyle', 'arthur-conan-doyle', 1, '2024-04-03 01:18:55', '2024-04-03 01:18:55'),
(54, 'brand/cehy9olMUWfBR6g9p0Un1lZ8p6WCSTRbT617B7l5.jpg', 'Carl Sagan', 'carl-sagan', 1, '2024-04-03 04:37:11', '2024-04-03 04:37:11'),
(55, 'brand/yFVZ7JzVeE0cUTAJ4185QOYq4ZBwIgA3Q1uBjo5u.jpg', 'Stephen Hawking', 'stephen-hawking', 1, '2024-04-03 04:41:27', '2024-04-03 04:41:27'),
(56, 'brand/BZehso7PTmw1GtYfsigui48OnelxeudZhrO8RqJx.jpg', 'Yuval Noah Harari', 'yuval-noah-harari', 1, '2024-04-03 04:45:42', '2024-04-03 04:45:42'),
(57, 'brand/AtU906KxE3Ou1D1XIGVoJiBKMUcx90owl41Sc7RH.jpg', 'Gregg D Thompson', 'gregg-d-thompson', 1, '2024-04-03 05:04:20', '2024-04-03 05:04:20'),
(58, 'brand/LMF8pcNY5j2S9ok2spGL3pdZLAb5uSVKqwBrMbsN.jpg', 'Carl J. Pratt', 'carl-j-pratt', 1, '2024-04-03 05:16:26', '2024-04-03 05:16:26'),
(59, 'brand/85EGDzzH2gDA5gKNSVJm865mNYFyyUoSpSvqzswH.jpg', 'Robert J. Nemiroff', 'robert-j-nemiroff', 1, '2024-04-03 05:23:51', '2024-04-03 05:28:13'),
(60, 'brand/K3Y8fYzALSKZMXfbmWhWVmKA5jUYvlU92FXnLwWB.jpg', 'Eckhart Tolle', 'eckhart-tolle', 1, '2024-04-03 05:47:42', '2024-04-03 05:47:42'),
(61, 'brand/Nv7STNHYnCT0FoHtmQdbyBBEvjpc64wZEDHNyJK3.jpg', 'Romilla Ready', 'romilla-ready', 1, '2024-04-03 06:01:52', '2024-04-03 06:01:52'),
(62, 'brand/Z7LOGK0cBv9BngKpumcrpW9uHhRXGbJRH6CZUCDX.jpg', 'Megan Logan MSW LCSW', 'megan-logan-msw-lcsw', 1, '2024-04-03 06:10:45', '2024-04-03 06:10:45'),
(63, 'brand/zYl8ee4RpjX9SpkIrXoXda4xhfwMJWfY8oKf23vg.jpg', 'Jordan Brown LPC', 'jordan-brown-lpc', 1, '2024-04-03 06:26:17', '2024-04-03 06:26:17'),
(64, 'brand/RH5tdoDqA91mTZb8bB9d0DZpz2JxDxmTR5gjlOKD.jpg', 'Nick Trenton', 'nick-trenton', 1, '2024-04-03 06:32:58', '2024-04-03 06:32:58'),
(65, 'brand/7jX0qsial1in9iJfPBRuYzsHBDSVSmVElbk5ZJAr.jpg', 'Joseph Nguyen', 'joseph-nguyen', 1, '2024-04-03 07:12:39', '2024-04-03 07:12:39'),
(66, 'brand/vqTThZLxnX6R3UssNdFfjQHlvGoK7J6ql5AHWkGr.jpg', 'Bob Garrett', 'bob-garrett', 1, '2024-04-03 07:21:25', '2024-04-03 07:21:25'),
(67, 'brand/9cVMxR4VvqY6zgAJspql7WyHrG5Np1uXdSbclfCQ.jpg', 'Z. HENRY', 'z-henry', 1, '2024-04-03 07:29:16', '2024-04-03 07:29:16'),
(68, 'brand/icVFu1rehoj25LQ45XxDInHTbcThwPLBsI5gOTh8.jpg', 'Marci Fox', 'marci-fox', 1, '2024-04-03 07:43:06', '2024-04-03 07:43:06'),
(69, 'brand/1t08LOItm6Wyl89WetvsX0y1f0tNCoKrYmbNMT86.jpg', 'Seth J. Gillihan PhD', 'seth-j-gillihan-phd', 1, '2024-04-03 07:48:22', '2024-04-03 07:48:22'),
(70, 'brand/XoYwxpkFx6Q4IqWE1N4UqmtiWBL7gta7uZhGn0Ea.jpg', 'Laurence Heller', 'laurence-heller', 1, '2024-04-03 08:36:07', '2024-04-03 08:36:07'),
(71, 'brand/L4QBouASEy1wOjnMM62EEdZpM4QUEATf0B7EFX14.jpg', 'Daniel J. SiegelD', 'daniel-j-siegeld', 1, '2024-04-03 09:06:14', '2024-04-03 09:06:14'),
(72, 'brand/8RcUSjjhX5OsNtyY9vgzkahJ8o2zT95TFY8WdmVq.jpg', 'Benjamin D. Garber', 'benjamin-d-garber', 1, '2024-04-03 09:19:24', '2024-04-03 09:19:24'),
(73, 'brand/c1HU1RcHVXTgG7Zzzc1QoJFqqB8s2Mpn9AXiUCbJ.jpg', 'Amos N. Wilson', 'amos-n-wilson', 1, '2024-04-03 22:22:38', '2024-04-03 22:22:38'),
(74, 'brand/CNEnmMXpZrwvVYayIGEa0seZyj5EYTFCNmQEZW3i.jpg', 'Alan Slater', 'alan-slater', 1, '2024-04-03 22:33:53', '2024-04-03 22:33:53'),
(75, 'brand/XrlTwaEgYxOklol2slLJwNlpxnMZnTnk73vGvx1e.jpg', 'Gina Kolata', 'gina-kolata', 1, '2024-04-03 22:52:16', '2024-04-03 22:52:24'),
(76, 'brand/WpVFA5JOPAqOGGAFFt1hjOwev8KtPVKooI8s60a0.jpg', 'Arthur Hailey', 'arthur-hailey', 1, '2024-04-03 23:20:41', '2024-04-03 23:20:41'),
(77, 'brand/Ceiuwiq6koGkn6eX8KU2aCp7jOkycKrUUOXRJaAL.jpg', 'John Firth', 'john-firth', 1, '2024-04-03 23:35:12', '2024-04-03 23:35:12'),
(78, 'brand/CShuHY5V0k4Ec5VdpkCdTAmItkO6eQVf3yTEZTyR.jpg', 'Michael B. Gotway', 'michael-b-gotway', 1, '2024-04-03 23:46:13', '2024-04-03 23:46:13'),
(79, 'brand/dBwmdZzj6CwsSsKg3njRD3gRYCyZ6etnIhUS03Rg.jpg', 'Joseph Alton M.D.', 'joseph-alton-md', 1, '2024-04-03 23:52:28', '2024-04-03 23:52:28'),
(80, 'brand/gA3raUQKAbodxnuUYQpjJK6LjemCPT9aB1fsZNiA.jpg', 'Logan Clendening', 'logan-clendening', 1, '2024-04-04 00:09:35', '2024-04-04 00:09:35'),
(81, 'brand/EVvrn2VqcXIJQJRqrS09tHyouG3UEoaY3RngVBSL.jpg', 'The Editors of Health', 'the-editors-of-health', 1, '2024-04-04 00:29:01', '2024-04-04 00:29:01'),
(82, 'brand/z5fx3R4jxbdQ28SscOllBckChJojmrprbYKYiMIp.jpg', 'Latoya Davis', 'latoya-davis', 1, '2024-04-04 00:42:26', '2024-04-04 00:42:26'),
(83, 'brand/ygfgnbEqUT7uwjlSJ9S8LO2SKKmAjWFy8VlBTB1W.jpg', 'Chinese Edition', 'chinese-edition', 1, '2024-04-04 00:52:20', '2024-04-04 00:52:20'),
(84, 'brand/0B90BY7ajyZu5SIHVhB8AycziHPVtQIFzAVce0En.jpg', 'Glenda Greco', 'glenda-greco', 1, '2024-04-04 00:52:37', '2024-04-04 00:52:37'),
(85, 'brand/6aTIpU8bj7TsjJ7WmjhE7U7Bj1wP27LhLpNEtMVx.jpg', 'Kevin Marx', 'kevin-marx', 1, '2024-04-04 01:14:38', '2024-04-04 01:14:38'),
(86, 'brand/IuSLOgPzVr59QxHDzm18rjJoGv6RZEoghY7mjOkt.jpg', 'J.K. Rowling', 'jk-rowling', 1, '2024-04-04 01:20:43', '2024-04-04 01:20:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `total`, `sub_total`, `qty`, `created_at`, `updated_at`) VALUES
(26, 12, 15, 9, 9, 1, '2024-04-07 04:17:10', '2024-04-07 04:17:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` longtext NOT NULL,
  `serial` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `image`, `name`, `slug`, `meta_keyword`, `meta_description`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(4, 'category/GtT4QdqxCdqMvVR4ZcyGp9Bqoq85SBN5XllNrqpu.jpg', 'Sách Kinh tế - Tài chính', 'sach-kinh-te-tai-chinh', '[{\"value\":\"Marketing\"},{\"value\":\"sales\"},{\"value\":\"Economics\"},{\"value\":\"Finance\"}]', 'Economics - Finance Book', 1, 1, '2023-08-10 23:11:48', '2024-04-07 05:34:08'),
(7, 'category/azlGESVBX5C4s0DhyZI5tHzxaKYtOkcnrYaOB9m8.png', 'Sách văn học', 'sach-van-hoc', '[{\"value\":\"novel\"},{\"value\":\"story\"},{\"value\":\"literature\"},{\"value\":\"chapte\"},{\"value\":\"plot\"},{\"value\":\"horror\"},{\"value\":\"scary\"},{\"value\":\"ghostly\"},{\"value\":\"creepy\"},{\"value\":\"detective\"},{\"value\":\"crime\"},{\"value\":\"mystery\"},{\"value\":\"homicide\"},{\"value\":\"bestseler\"}]', 'literature', 2, 1, '2023-09-01 21:53:24', '2024-04-07 05:33:58'),
(8, 'category/Shx5WTgBaM2KAHlPIvedCfoH7CdIsTIZjIluYzEA.jpg', 'Sách tâm lý', 'sach-tam-ly', '[{\"value\":\"psychological\"}]', 'psychological book', 1, 1, '2024-03-25 13:15:58', '2024-04-07 05:33:50'),
(12, 'category/ehvawIetuJEycY3t6LzfLDNQmtMFxc01OKhHGgeu.jpg', 'Sách Y Học - Sức Khỏe', 'sach-y-hoc-suc-khoe', '[{\"value\":\"Medicine\"},{\"value\":\"Health\"},{\"value\":\"doctor\"}]', 'Medicine - Health Books', 2, 1, '2024-03-29 02:17:28', '2024-04-07 05:33:44'),
(13, 'category/WOg1ZKzG00QI1bHRrJWwzkuRmLkepqD96y6vZ07i.jpg', 'Sách lịch sử', 'sach-lich-su', '[{\"value\":\"history\"}]', 'history', 3, 1, '2024-03-29 02:21:52', '2024-04-07 05:33:36'),
(14, 'category/T3qGyvBntgmbRcYcBTgbXGvY15KHk2s3VtW703ur.png', 'Sách Khoa Học - Giáo Dục', 'sach-khoa-hoc-giao-duc', '[{\"value\":\"education\"},{\"value\":\"science\"}]', 'Science - Education Books', 1, 1, '2024-03-29 02:27:03', '2024-04-07 05:33:27'),
(15, 'category/pEMbWhzkqDWbrO2RltnapuBDGJtSzf0UAdc9YQCl.jpg', 'Sách Văn Hóa - Nghệ Thuật', 'sach-van-hoa-nghe-thuat', '[{\"value\":\"Culture\"},{\"value\":\"Art\"}]', 'Culture - Art Books', 3, 1, '2024-03-29 02:32:44', '2024-04-07 05:33:20'),
(16, 'category/cYoJxGTVNkipze9SQat8Vc7DoHAfNw7Eho58e9VF.jpg', 'Sách thiếu nhi', 'sach-thieu-nhi', '[{\"value\":\"Children\"}]', 'children', 2, 1, '2024-03-29 10:33:04', '2024-04-07 05:33:12'),
(17, 'category/EWwALMYMuKMEN7fFwq4FFJ52TT8rwlNEhvyQLwRY.jpg', 'Sách ngoại ngữ', 'sach-ngoai-ngu', '[{\"value\":\"English\"},{\"value\":\"Japan\"}]', 'Sách ngoại ngữ', 2, 1, '2024-03-29 10:34:42', '2024-04-07 05:32:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `sub_cat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `email_verifications`
--

INSERT INTO `email_verifications` (`id`, `email`, `otp`, `created_at`) VALUES
(1, 'hodaccuong06@gmail.com', '452859', 1711086781),
(2, 'hoviethung29032002@gmail.com', '296643', 1710820272),
(3, 'ewn04070@omeie.com', '224089', 1710821925),
(4, 'hodaccuong17032002@gmail.com', '401545', 1711087116);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `details` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manage_sites`
--

CREATE TABLE `manage_sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manage_sites`
--

INSERT INTO `manage_sites` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'media', '{\"logo\":\"media\\/PPsmYSBkfKgsGfIGpAiPNMp5RO1o0x8ZPVY9Wson.png\",\"favicon\":\"media\\/rdnXd1yVQ2rCImLGhA9tILg1ZanpzvJ8paNeQjSt.png\",\"loader\":\"media\\/5yejPpdIBpKv95RAIyNa2g716LNfcwoh85J3JAyr.gif\"}', '2023-08-29 06:33:05', '2024-04-07 03:20:13'),
(2, 'basic_setting', '{\"app_name\":\"Pakistan Online Store ( Online Bazaar )\",\"home_page_title\":\"Pakistan Online Store ( Online Bazaar )\"}', '2023-08-29 06:33:05', '2023-08-30 11:39:15'),
(3, 'home_page', '{\"image1\":\"home_page\\/8Ld60rqPugUoCXMQ5DHaJ7sUaxGLc99IYNDzbdbi.png\",\"image2\":\"home_page\\/poFtQ9ZZJSx9L6z95amE8oYPqOdodAFsB8Me6xvL.png\",\"title1\":\"Medicine Book\",\"title2\":\"Children Book\",\"sub_title1\":null,\"sub_title2\":null,\"url1\":\"http:\\/\\/127.0.0.1:8000\\/shop\\/category\\/37\\/12\",\"url2\":\"http:\\/\\/127.0.0.1:8000\\/category\\/product\\/children-book\"}', '2023-08-30 11:47:59', '2024-04-04 02:09:30'),
(4, 'home_page_meta', '{\"meta_keyword\":\"$request->meta_keyword\",\"meta_description\":\"$request->meta_description\"}', '2023-08-30 12:43:38', '2023-08-30 12:43:38'),
(5, 'seo', '{\"meta_keyword\":\"[{\\\"value\\\":\\\"asdfasdf\\\"},{\\\"value\\\":\\\"asdfa\\\"},{\\\"value\\\":\\\"sdf\\\"}]\",\"meta_description\":\"asdfasdf\"}', '2023-08-30 12:43:43', '2023-08-30 12:44:43'),
(6, 'footer', '{\"address\":null,\"phone\":\"123456789\",\"email\":\"nhom@gmail.com\",\"copyright\":\"https:\\/\\/localhost:900\",\"facebook\":\"https:\\/\\/www.facebook.com\",\"twitter\":\"https:\\/\\/www.facebook.com\",\"youtube\":\"https:\\/\\/www.facebook.com\",\"linkedin\":\"https:\\/\\/www.facebook.com\"}', '2023-08-30 13:02:00', '2024-03-18 07:30:48'),
(11, 'first_three_column', '{\"image1\":\"home_page\\/JfF8weZgP9vn8rXTH6XUSfgXujnPk7FpAG4KzZ9b.png\",\"image2\":\"home_page\\/dVzmunSXdYd9rre6LzkITpDZ91UpQj1oEaZJuvmH.png\",\"image3\":\"home_page\\/eVV9QNJDVCinpayjj8VB1nXdYFIq3C4k60Gua8xW.png\",\"title1\":\"10% OFF\",\"title2\":\"20% OFF\",\"sub_title1\":\"English Made Easy\",\"sub_title2\":\"IT\",\"url1\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/english-made-easy-learning-english-through-pictures\",\"title3\":\"60% OFF\",\"sub_title3\":\"The Ultimate Guide to Stargazing\",\"url3\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/cosmology-volume-4-the-ultimate-guide-to-stargazing\",\"url2\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/it\"}', '2023-08-31 06:36:27', '2024-04-07 03:47:33'),
(12, 'second_three_column', '{\"image1\":\"home_page\\/xQ41s6FHpOCcrCPFgiMVvyPct8kCQEl1VBhDYv88.png\",\"image2\":\"home_page\\/FxhDtr5wSm6JQn5q04YhFQJpTWWJe9OxHCrrcO8r.png\",\"image3\":\"home_page\\/YUlUoUm9aMbBzAB4VyYeM6R7IIno0d5C7FovYxv6.png\",\"title1\":\"10% OFF\",\"title2\":\"15% OFF\",\"sub_title1\":\"The Psychology\",\"sub_title2\":\"Medical History\",\"url1\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/the-psychology-of-human-behavior\",\"title3\":\"20% OFF\",\"sub_title3\":\"Cardiothoracic Anatomy\",\"url3\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/netters-correlative-imaging-cardiothoracic-anatomy\",\"url2\":\"http:\\/\\/127.0.0.1:8000\\/http:\\/\\/127.0.0.1:8000\\/product-details\\/source-book-of-medical-history\"}', '2023-08-31 06:37:00', '2024-04-07 03:53:43'),
(13, 'third_two_column', '{\"image1\":\"home_page\\/P2jDZQjKYwe3WVJIGnJmd4YdNqp4EY0qVgYhC8gc.png\",\"image2\":\"home_page\\/bszHBweaN8E0kKbH0TfckRaUImD81MAnh43pGrlW.png\",\"title1\":\"5% OFF\",\"title2\":\"50% OFF\",\"sub_title1\":\"Faster than Light\",\"sub_title2\":\"Harry Potter\",\"url1\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/faster-than-light-how-your-shadow-can-do-it-but-you-cant\",\"url2\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/harry-potter-and-the-prisoner-of-azkaban\"}', '2023-08-31 06:37:34', '2024-04-07 03:57:08'),
(14, 'four_three_column', '{\"image1\":\"home_page\\/lGbguHdGKyRa9dDus0E3zfajSIwBF0jmrf1mSvTS.png\",\"image2\":\"home_page\\/XkUdIOBmn9Q1SEALtaorl9fGXdbF5ny3rWXO3nuJ.png\",\"image3\":\"home_page\\/IEiWtC4UQrT50q1EYhmCxrTF29RegAq0zjBK8E4l.png\",\"title1\":\"25% OFF\",\"title2\":\"50% OFF\",\"sub_title1\":\"The Cultural Politics of Emotion\",\"sub_title2\":\"A Brief History of Time\",\"url1\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/the-cultural-politics-of-emotion\",\"title3\":\"9%OFF\",\"sub_title3\":\"Quantum Physics for Beginners\",\"url3\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/quantum-physics-for-beginners\",\"url2\":\"http:\\/\\/127.0.0.1:8000\\/product-details\\/a-brief-history-of-time\"}', '2023-08-31 06:38:17', '2024-04-07 04:01:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_27_162621_email_verification', 1),
(6, '2023_08_06_032636_create_admins_table', 1),
(7, '2023_08_06_034116_create_categories_table', 1),
(8, '2023_08_06_035815_create_sub_categories_table', 1),
(9, '2023_08_06_040751_create_child_categories_table', 1),
(10, '2023_08_06_041648_create_brands_table', 1),
(11, '2023_08_06_042245_create_products_table', 1),
(12, '2023_08_06_045831_create_manage_sites_table', 1),
(13, '2023_08_06_052209_create_sliders_table', 1),
(14, '2023_08_06_053046_create_services_table', 1),
(15, '2023_08_06_071702_create_faq_categories_table', 1),
(16, '2023_08_06_072502_create_faqs_table', 1),
(17, '2023_08_06_073005_create_blog_categories_table', 1),
(18, '2023_08_06_073310_create_blogs_table', 1),
(19, '2023_08_06_092028_create_billing_addresses_table', 1),
(20, '2023_08_06_093017_create_shipping_addresses_table', 1),
(21, '2023_08_06_094451_create_wishlists_table', 1),
(22, '2023_08_06_145523_create_compares_table', 1),
(23, '2023_08_06_145726_create_carts_table', 1),
(24, '2023_08_06_155435_create_subscribes_table', 1),
(25, '2023_08_06_162048_create_contacts_table', 1),
(26, '2023_09_05_182525_add_phone_to_billing_addresses', 1),
(27, '2023_09_06_062848_create_orders_table', 1),
(28, '2023_09_06_062856_create_transactions_table', 1),
(29, '2023_09_11_091731_add_photo_to_users', 1),
(30, '2023_09_12_154611_create_review_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `transaction_id` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `qlys` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(200) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `uuid`, `transaction_id`, `user_id`, `total_amount`, `payment_status`, `order_status`, `product_id`, `qlys`, `payment_method`, `created_at`, `updated_at`, `address_id`) VALUES
(1, 'X1yUCiJQaq', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-22 23:50:00', '2024-03-22 23:50:00', 24),
(2, 'YgctivLazb', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-22 23:50:43', '2024-03-22 23:50:43', 25),
(3, 'XYlGsnQ2wL', 'null', 15, '9', 'unpaid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-04-06 05:03:54', '2024-04-06 05:03:54', 26),
(4, '0ibpP68xQw', 'null', 15, '9', 'paid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-04-06 05:04:12', '2024-04-06 06:25:18', 27),
(5, '0ibpP68xQa', 'null', 17, '32', 'paid', 'pending', '[12][46]', '[1][2]', 'Cash On Delivery', '2024-05-06 15:04:12', '2024-05-06 15:04:00', 25),
(6, '0ibpP68xQb', 'null', 17, '20', 'unpaid', 'pending', '[20]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(7, '0ibpP68xQc', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 25),
(8, '0ibpP68xQd', 'null', 15, '28', 'paid', 'pending', '[12][60]', '[1][2]', 'Cash On Delivery', '2024-10-06 15:04:12', '2024-11-06 15:04:00', 25),
(9, '0ibpP68xQe', 'null', 17, '8', 'unpaid', 'pending', '[100][99]', '[1][2]', 'Cash On Delivery', '2024-02-07 11:04:12', '2024-08-04 12:05:00', 24),
(10, '0ibpP68xQf', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-10-01 15:04:00', 25),
(11, '0ibpP68xQg', 'null', 17, '11', 'paid', 'pending', '[88]', '[1]', 'Cash On Delivery', '2024-03-11 15:04:12', '2024-05-12 15:04:00', 27),
(12, '0ibpP68xQh', 'null', 15, '9', 'unpaid', 'pending', '[27]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(13, '0ibpP68xQi', 'null', 18, '10', 'paid', 'pending', '[26]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 26),
(14, '0ibpP68xQj', 'null', 15, '46', 'paid', 'pending', '[77[66]', '[1][2]', 'Cash On Delivery', '2024-10-15 16:04:12', '2024-11-06 15:04:00', 25),
(15, '0ibpP68xQk', 'null', 17, '10', 'unpaid', 'pending', '[10]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-08-09 14:05:00', 27),
(16, '0ibpP68xQl', 'null', 17, '18', 'paid', 'pending', '[55]', '[1]', 'Cash On Delivery', '2024-03-09 11:04:12', '2024-10-01 12:05:00', 25),
(17, '0ibpP68xQm', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-24 23:50:00', '2024-03-24 23:50:00', 24),
(18, '0ibpP68xQn', 'null', 15, '11', 'unpaid', 'pending', '[4]', '[1]', 'Cash On Delivery', '2024-03-25 23:50:43', '2024-03-25 23:50:43', 25),
(19, '0ibpP68xQo', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-04-13 05:03:54', '2024-08-16 05:03:54', 26),
(20, '0ibpP68xQp', 'null', 15, '6.5', 'paid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-05-06 05:04:12', '2024-07-06 06:25:18', 27),
(21, '0ibpP68xQq', 'null', 17, '51', 'paid', 'pending', '[15][47]', '[1][2]', 'Cash On Delivery', '2024-05-10 15:04:12', '2024-05-19 15:04:00', 25),
(22, '0ibpP68xQr', 'null', 17, '40', 'unpaid', 'pending', '[21]', '[1]', 'Cash On Delivery', '2024-02-16 11:04:12', '2024-09-14 12:05:00', 24),
(23, '0ibpP68xQs', 'null', 18, '8', 'paid', 'pending', '[31]', '[1]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-09-04 12:05:00', 25),
(24, '0ibpP68xQt', 'null', 15, '116.5', 'paid', 'pending', '[14][61]', '[1][2]', 'Cash On Delivery', '2024-12-06 15:04:12', '2024-12-07 15:04:00', 25),
(25, '0ibpP68xQu', 'null', 17, '30', 'unpaid', 'pending', '[100][98]', '[1][2]', 'Cash On Delivery', '2024-03-07 11:04:12', '2024-08-05 12:05:00', 24),
(26, '0ibpP68xQv', 'null', 18, '11', 'paid', 'pending', '[33]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-02 15:04:00', 25),
(27, '0ibpP68xQw', 'null', 17, '11.5', 'paid', 'pending', '[89]', '[1]', 'Cash On Delivery', '2024-03-17 15:04:12', '2024-06-12 15:04:00', 27),
(28, '0ibpP68xQx', 'null', 15, '9', 'unpaid', 'pending', '[25]', '[1]', 'Cash On Delivery', '2024-03-06 11:04:12', '2024-09-04 12:05:00', 24),
(29, '0ibpP68xQy', 'null', 18, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-01-06 11:04:12', '2024-10-04 12:05:00', 26),
(30, '0ibpP68xQz', 'null', 17, '57.5', 'paid', 'pending', '[11][22]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-16 15:04:00', 25),
(31, '0ibpP68xQA', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-05-26 15:04:00', 25),
(32, '0ibpP68xQB', 'null', 17, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-12-04 12:05:00', 24),
(33, '0ibpP68xQC', 'null', 18, '26', 'paid', 'pending', '[30][4]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-09-09 12:05:00', 25),
(34, '0ibpP68xQD', 'null', 15, '105', 'paid', 'pending', '[30][61]', '[1][2]', 'Cash On Delivery', '2024-11-06 15:04:12', '2024-11-07 15:04:00', 25),
(35, '0ibpP68xQE', 'null', 17, '41', 'unpaid', 'pending', '[78][79]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-08-05 12:05:00', 24),
(36, '0ibpP68xQF', 'null', 18, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-11 15:04:00', 25),
(37, '0ibpP68xQG', 'null', 17, '41', 'paid', 'pending', '[68][69]', '[1][2]', 'Cash On Delivery', '2024-03-13 15:04:12', '2024-05-12 15:04:00', 27),
(38, '0ibpP68xQH', 'null', 15, '12.5', 'unpaid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-02-28 11:04:12', '2024-09-05 12:05:00', 24),
(39, '0ibpP68xQI', 'null', 18, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-02-29 11:04:12', '2024-09-02 12:05:00', 26),
(40, '0ibpP68xQJ', 'null', 15, '45', 'paid', 'pending', '[17][16]', '[1][2]', 'Cash On Delivery', '2024-10-25 16:04:12', '2024-12-26 15:04:00', 25),
(41, '0ibpP68xQK', 'null', 17, '7', 'unpaid', 'pending', '[15]', '[1]', 'Cash On Delivery', '2024-06-17 11:04:12', '2024-08-10 14:05:00', 27),
(42, '0ibpP68xQL', 'null', 17, '11.5', 'paid', 'pending', '[54]', '[1]', 'Cash On Delivery', '2024-05-09 11:04:12', '2024-10-11 12:05:00', 25),
(43, '0ibpP68xQM', 'null', 15, '7.5', 'unpaid', 'pending', '[9]', '[1]', 'Cash On Delivery', '2024-02-24 23:50:00', '2024-03-24 23:50:00', 24),
(44, '0ibpP68xQN', 'null', 17, '12', 'unpaid', 'pending', '[57]', '[1]', 'Cash On Delivery', '2024-03-26 23:50:43', '2024-08-25 23:50:43', 25),
(45, '0ibpP68xQO', 'null', 15, '12.5', 'unpaid', 'pending', '[45]', '[1]', 'Cash On Delivery', '2024-07-13 05:03:54', '2024-08-16 05:03:54', 26),
(46, '0ibpP68xQP', 'null', 15, '9', 'paid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-01-06 05:04:12', '2024-07-09 06:25:18', 27),
(47, '0ibpP68xQQ', 'null', 17, '34', 'paid', 'pending', '[13][37]', '[1][2]', 'Cash On Delivery', '2024-04-12 15:04:12', '2024-05-20 15:04:00', 25),
(48, '0ibpP68xQR', 'null', 17, '60', 'unpaid', 'pending', '[27][56]', '[1][2]', 'Cash On Delivery', '2024-03-16 11:04:12', '2024-09-16 12:05:00', 24),
(49, '0ibpP68xQS', 'null', 18, '11.5', 'paid', 'pending', '[32]', '[1]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-07-04 12:05:00', 25),
(50, '0ibpP68xQT', 'null', 15, '60', 'paid', 'pending', '[23][61]', '[1][2]', 'Cash On Delivery', '2024-11-08 15:04:12', '2024-12-07 15:04:00', 25),
(51, '0ibpP68xQU', 'null', 17, '39', 'unpaid', 'pending', '[100][48]', '[1][2]', 'Cash On Delivery', '2024-04-08 11:04:12', '2024-08-04 12:05:00', 24),
(52, '0ibpP68xQV', 'null', 18, '11', 'paid', 'pending', '[67]', '[1]', 'Cash On Delivery', '2024-05-12 11:04:12', '2024-10-03 15:04:00', 25),
(53, '0ibpP68xQW', 'null', 17, '18', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-03-15 15:04:12', '2024-06-13 15:04:00', 27),
(54, '0ibpP68xQX', 'null', 15, '18', 'unpaid', 'pending', '[59]', '[1]', 'Cash On Delivery', '2024-05-06 11:04:12', '2024-10-04 12:05:00', 24),
(55, '0ibpP68xQY', 'null', 18, '12', 'unpaid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-06-03 12:05:00', 26),
(56, '0ibpP68xQZ', 'null', 17, '25.5', 'paid', 'pending', '[11][12]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-17 15:04:00', 25),
(57, '0ibpP68xQAa', 'null', 17, '67', 'paid', 'pending', '[36][38]', '[1][2]', 'Cash On Delivery', '2024-05-17 15:04:12', '2024-05-26 15:04:00', 25),
(58, '0ibpP68xQBb', 'null', 17, '11', 'unpaid', 'pending', '[79]', '[1]', 'Cash On Delivery', '2024-03-26 11:04:12', '2024-12-04 12:05:00', 24),
(59, '0ibpP68xQCc', 'null', 18, '47.5', 'paid', 'pending', '[16][17]', '[1][2]', 'Cash On Delivery', '2024-04-09 11:04:12', '2024-09-19 12:05:00', 25),
(60, '0ibpP68xQDd', 'null', 15, '41.5', 'paid', 'pending', '[60][62]', '[1][2]', 'Cash On Delivery', '2024-10-07 15:04:12', '2024-11-07 15:04:00', 25),
(61, '0ibpP68xQEe', 'null', 17, '37', 'unpaid', 'pending', '[17][19]', '[1][2]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-08-05 12:05:00', 27),
(62, '0ibpP68xQFf', 'null', 18, '7', 'paid', 'pending', '[91]', '[1]', 'Cash On Delivery', '2024-03-10 11:04:12', '2024-10-13 15:04:00', 27),
(63, '0ibpP68xQGg', 'null', 17, '27', 'paid', 'pending', '[6][7]', '[1][2]', 'Cash On Delivery', '2024-04-13 15:04:12', '2024-05-13 15:04:00', 25),
(64, '0ibpP68xQHh', 'null', 15, '226', 'unpaid', 'pending', '[85]', '[1]', 'Cash On Delivery', '2024-02-29 11:04:12', '2024-10-05 12:05:00', 24),
(65, '0ibpP68xQIi', 'null', 18, '12', 'paid', 'pending', '[57]', '[1]', 'Cash On Delivery', '2024-02-29 11:04:12', '2024-09-02 12:05:00', 26),
(66, '0ibpP68xQJj', 'null', 15, '351', 'paid', 'pending', '[86[82]', '[1][2]', 'Cash On Delivery', '2024-11-25 16:04:12', '2024-12-26 15:04:00', 25),
(67, '0ibpP68xQKk', 'null', 17, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-08-09 14:05:00', 27),
(68, '0ibpP68xQLl', 'null', 17, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-05-16 11:04:12', '2024-10-13 12:05:00', 25),
(69, '0ibpP68xQMm', 'null', 15, '6.5', 'unpaid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-07-24 23:50:00', '2024-12-24 23:50:00', 26),
(70, '0ibpP68xQNn', 'null', 17, '10', 'unpaid', 'pending', '[58]', '[1]', 'Cash On Delivery', '2024-06-26 23:50:43', '2024-09-25 23:50:43', 25),
(71, '0ibpP68xQOo', 'null', 15, '11.5', 'unpaid', 'pending', '[46]', '[1]', 'Cash On Delivery', '2024-10-13 05:03:54', '2024-12-16 05:03:54', 26),
(72, '0ibpP68xQPp', 'null', 15, '10.5', 'paid', 'pending', '[18]', '[1]', 'Cash On Delivery', '2024-01-26 05:04:12', '2024-07-19 06:25:18', 27),
(73, '0ibpP68xQQq', 'null', 17, '37', 'paid', 'pending', '[17][19]', '[1][2]', 'Cash On Delivery', '2024-04-12 15:04:12', '2024-07-12 15:04:00', 25),
(74, '0ibpP68xQRr', 'null', 17, '83', 'unpaid', 'pending', '[53][56]', '[1][2]', 'Cash On Delivery', '2024-03-16 11:04:12', '2024-06-16 12:05:00', 24),
(75, '0ibpP68xQSs', 'null', 18, '3', 'paid', 'pending', '[92]', '[1]', 'Cash On Delivery', '2024-09-18 11:04:12', '2024-10-04 12:05:00', 25),
(76, '0ibpP68xQTt', 'null', 15, '51', 'paid', 'pending', '[18][20]', '[1][2]', 'Cash On Delivery', '2024-11-08 15:04:12', '2024-12-08 15:04:00', 25),
(77, '0ibpP68xQUu', 'null', 17, '60', 'unpaid', 'pending', '[41][44]', '[1][2]', 'Cash On Delivery', '2024-06-08 11:04:12', '2024-09-08 12:05:00', 24),
(78, '0ibpP68xQVv', 'null', 18, '12.5', 'paid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-07-12 11:04:12', '2024-10-05 15:04:00', 25),
(79, '0ibpP68xQWw', 'null', 17, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-03-13 15:04:12', '2024-06-13 15:04:00', 27),
(80, '0ibpP68xQXx', 'null', 15, '18', 'unpaid', 'pending', '[59]', '[1]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-08-18 12:05:00', 24),
(81, '0ibpP68xQYy', 'null', 18, '7', 'unpaid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-04 11:04:12', '2024-07-03 12:05:00', 26),
(82, '0ibpP68xQZz', 'null', 17, '12', 'paid', 'pending', '[51][52]', '[1][2]', 'Cash On Delivery', '2024-12-15 16:04:12', '2024-12-17 15:04:00', 25),
(83, '0ibpP68xQAa1', 'null', 17, '12', 'paid', 'pending', '[102][101]', '[1][2]', 'Cash On Delivery', '2024-01-19 15:04:12', '2024-04-26 15:04:00', 25),
(84, '0ibpP68xQBb2', 'null', 17, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-05-26 11:04:12', '2024-10-04 12:05:00', 24),
(85, '0ibpP68xQCc3', 'null', 18, '12', 'paid', 'pending', '[102][100]', '[1][2]', 'Cash On Delivery', '2024-05-09 11:04:12', '2024-11-19 12:05:00', 25),
(86, '0ibpP68xQDd4', 'null', 15, '15.5', 'paid', 'pending', '[5][6]', '[1][2]', 'Cash On Delivery', '2024-06-07 15:04:12', '2024-10-07 15:04:00', 25),
(87, '0ibpP68xQEe5', 'null', 17, '31', 'unpaid', 'pending', '[18][19]', '[1][2]', 'Cash On Delivery', '2024-04-18 11:04:12', '2024-07-05 12:05:00', 27),
(88, '0ibpP68xQFf6', 'null', 18, '7', 'paid', 'pending', '[91]', '[1]', 'Cash On Delivery', '2024-05-10 11:04:12', '2024-10-29 15:04:00', 27),
(89, '0ibpP68xQGg7', 'null', 17, '37.5', 'paid', 'pending', '[60][65]', '[1][2]', 'Cash On Delivery', '2024-04-17 15:04:12', '2024-05-17 15:04:00', 25),
(90, 'ibpP68xQHh8', 'null', 15, '52', 'unpaid', 'pending', '[75]', '[1]', 'Cash On Delivery', '2024-05-29 11:04:12', '2024-10-05 12:05:00', 24),
(91, '0ibpP68xQIi9', 'null', 18, '12.5', 'paid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-02-29 11:04:12', '2024-05-02 12:05:00', 26),
(92, '0ibpP68xQJj10', 'null', 15, '26', 'paid', 'pending', '[95[96]', '[1][2]', 'Cash On Delivery', '2024-04-25 16:04:12', '2024-08-26 15:04:00', 25),
(93, '0ibpP68xQKk11', 'null', 17, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-08-07 11:04:12', '2024-11-09 14:05:00', 27),
(94, '0ibpP68xQLl12', 'null', 17, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-07-16 11:04:12', '2024-10-13 12:05:00', 25),
(95, '0ibpP68xQMm13', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-09-24 23:50:00', '2024-12-24 23:50:00', 26),
(96, '0ibpP68xQNn14', 'null', 17, '10', 'unpaid', 'pending', '[58]', '[1]', 'Cash On Delivery', '2024-03-26 23:50:43', '2024-06-25 23:50:43', 25),
(97, '0ibpP68xQOo15', 'null', 15, '11.5', 'unpaid', 'pending', '[46]', '[1]', 'Cash On Delivery', '2024-07-13 05:03:54', '2024-11-16 05:03:54', 26),
(98, '0ibpP68xQPp16', 'null', 15, '10.5', 'paid', 'pending', '[18]', '[1]', 'Cash On Delivery', '2024-10-26 05:04:12', '2024-12-19 06:25:18', 27),
(99, '0ibpP68xQQq17', 'null', 17, '26', 'paid', 'pending', '[17][101]', '[1][2]', 'Cash On Delivery', '2024-01-12 15:04:12', '2024-03-12 15:04:00', 25),
(100, '0ibpP68xQRr18', 'null', 17, '62', 'unpaid', 'pending', '[57][56]', '[1][2]', 'Cash On Delivery', '2024-04-16 11:04:12', '2024-07-16 12:05:00', 24),
(101, '0ibpP68xQSs19', 'null', 18, '3', 'paid', 'pending', '[92]', '[1]', 'Cash On Delivery', '2024-09-18 11:04:12', '2024-12-04 12:05:00', 25),
(102, '0ibpP68xQTt20', 'null', 15, '52', 'paid', 'pending', '[57][51]', '[1][2]', 'Cash On Delivery', '2024-06-08 15:04:12', '2024-09-08 15:04:00', 25),
(103, '0ibpP68xQUu21', 'null', 17, '81', 'unpaid', 'pending', '[70][72]', '[1][2]', 'Cash On Delivery', '2024-10-08 11:04:12', '2024-12-08 12:05:00', 24),
(104, '0ibpP68xQVv22', 'null', 18, '184.5', 'paid', 'pending', '[87][84]', '[1][2]', 'Cash On Delivery', '2024-06-12 11:04:12', '2024-09-05 15:04:00', 25),
(105, '0ibpP68xQWw23', 'null', 17, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-04-13 15:04:12', '2024-07-13 15:04:00', 27),
(106, '0ibpP68xQXx24', 'null', 15, '119', 'unpaid', 'pending', '[59][61]', '[1][2]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-06-18 12:05:00', 24),
(107, '0ibpP68xQYy25', 'null', 18, '12', 'unpaid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-14 11:04:12', '2024-04-03 12:05:00', 26),
(108, '0ibpP68xQZz26', 'null', 17, '70', 'paid', 'pending', '[51][56]', '[1][2]', 'Cash On Delivery', '2024-02-15 16:04:12', '2024-07-17 15:04:00', 25),
(109, '1ibpP68xQa', 'null', 17, '32', 'paid', 'pending', '[12][46]', '[1][2]', 'Cash On Delivery', '2024-06-06 15:04:12', '2024-08-06 15:04:00', 25),
(110, '1ibpP68xQb', 'null', 17, '20', 'unpaid', 'pending', '[20]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(111, '1ibpP68xQc', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 25),
(112, '1ibpP68xQd', 'null', 15, '28', 'paid', 'pending', '[12][60]', '[1][2]', 'Cash On Delivery', '2024-10-06 15:04:12', '2024-11-06 15:04:00', 25),
(113, '1ibpP68xQe', 'null', 17, '8', 'unpaid', 'pending', '[100][99]', '[1][2]', 'Cash On Delivery', '2024-05-07 11:04:12', '2024-08-04 12:05:00', 24),
(114, '1ibpP68xQf', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-10-01 15:04:00', 25),
(115, '1ibpP68xQg', 'null', 17, '11', 'paid', 'pending', '[88]', '[1]', 'Cash On Delivery', '2024-03-11 15:04:12', '2024-05-12 15:04:00', 27),
(116, '1ibpP68xQh', 'null', 15, '9', 'unpaid', 'pending', '[27]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(117, '1ibpP68xQi', 'null', 18, '10', 'paid', 'pending', '[26]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 26),
(118, '1ibpP68xQj', 'null', 15, '46', 'paid', 'pending', '[77[66]', '[1][2]', 'Cash On Delivery', '2024-10-15 16:04:12', '2024-11-06 15:04:00', 25),
(119, '1ibpP68xQk', 'null', 17, '10', 'unpaid', 'pending', '[10]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-08-09 14:05:00', 27),
(120, '1ibpP68xQl', 'null', 17, '18', 'paid', 'pending', '[55]', '[1]', 'Cash On Delivery', '2024-03-09 11:04:12', '2024-10-01 12:05:00', 25),
(121, '1ibpP68xQm', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-24 23:50:00', '2024-03-24 23:50:00', 24),
(122, '1ibpP68xQn', 'null', 15, '11', 'unpaid', 'pending', '[4]', '[1]', 'Cash On Delivery', '2024-03-25 23:50:43', '2024-03-25 23:50:43', 25),
(123, '1ibpP68xQo', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-04-13 05:03:54', '2024-08-16 05:03:54', 26),
(124, '1ibpP68xQp', 'null', 15, '6.5', 'paid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-05-06 05:04:12', '2024-07-06 06:25:18', 27),
(125, '1ibpP68xQq', 'null', 17, '51', 'paid', 'pending', '[15][47]', '[1][2]', 'Cash On Delivery', '2024-06-10 15:04:12', '2024-09-19 15:04:00', 25),
(126, '1ibpP68xQr', 'null', 17, '40', 'unpaid', 'pending', '[21]', '[1]', 'Cash On Delivery', '2024-02-16 11:04:12', '2024-09-14 12:05:00', 24),
(127, '1ibpP68xQs', 'null', 18, '8', 'paid', 'pending', '[31]', '[1]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-09-04 12:05:00', 25),
(128, '1ibpP68xQt', 'null', 15, '116.5', 'paid', 'pending', '[14][61]', '[1][2]', 'Cash On Delivery', '2024-12-06 15:04:12', '2024-12-07 15:04:00', 25),
(129, '1ibpP68xQu', 'null', 17, '30', 'unpaid', 'pending', '[100][98]', '[1][2]', 'Cash On Delivery', '2024-03-07 11:04:12', '2024-08-05 12:05:00', 24),
(130, '1ibpP68xQv', 'null', 18, '11', 'paid', 'pending', '[33]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-02 15:04:00', 25),
(131, '1ibpP68xQw', 'null', 17, '11.5', 'paid', 'pending', '[89]', '[1]', 'Cash On Delivery', '2024-03-17 15:04:12', '2024-06-12 15:04:00', 27),
(132, '1ibpP68xQx', 'null', 15, '9', 'unpaid', 'pending', '[25]', '[1]', 'Cash On Delivery', '2024-03-06 11:04:12', '2024-09-04 12:05:00', 24),
(133, '1ibpP68xQy', 'null', 18, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-01-06 11:04:12', '2024-10-04 12:05:00', 26),
(134, '1ibpP68xQz', 'null', 17, '57.5', 'paid', 'pending', '[11][22]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-16 15:04:00', 25),
(135, '1ibpP68xQA', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-05-26 15:04:00', 25),
(136, '1ibpP68xQB', 'null', 17, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-12-04 12:05:00', 24),
(137, '1ibpP68xQC', 'null', 18, '26', 'paid', 'pending', '[30][4]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-09-09 12:05:00', 25),
(138, '1ibpP68xQD', 'null', 15, '105', 'paid', 'pending', '[30][61]', '[1][2]', 'Cash On Delivery', '2024-11-06 15:04:12', '2024-11-07 15:04:00', 25),
(139, '1ibpP68xQE', 'null', 17, '41', 'unpaid', 'pending', '[78][79]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-08-05 12:05:00', 24),
(140, '1ibpP68xQF', 'null', 18, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-11 15:04:00', 25),
(141, '1ibpP68xQG', 'null', 17, '41', 'paid', 'pending', '[68][69]', '[1][2]', 'Cash On Delivery', '2024-03-13 15:04:12', '2024-05-12 15:04:00', 27),
(142, '1ibpP68xQH', 'null', 15, '12.5', 'unpaid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-02-28 11:04:12', '2024-09-05 12:05:00', 24),
(143, '1ibpP68xQI', 'null', 18, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-02-29 11:04:12', '2024-09-02 12:05:00', 26),
(144, '1ibpP68xQJ', 'null', 15, '45', 'paid', 'pending', '[17][16]', '[1][2]', 'Cash On Delivery', '2024-10-25 16:04:12', '2024-12-26 15:04:00', 25),
(145, '1ibpP68xQK', 'null', 17, '7', 'unpaid', 'pending', '[15]', '[1]', 'Cash On Delivery', '2024-06-17 11:04:12', '2024-08-10 14:05:00', 27),
(146, '1ibpP68xQL', 'null', 17, '11.5', 'paid', 'pending', '[54]', '[1]', 'Cash On Delivery', '2024-05-09 11:04:12', '2024-10-11 12:05:00', 25),
(147, '1ibpP68xQM', 'null', 15, '7.5', 'unpaid', 'pending', '[9]', '[1]', 'Cash On Delivery', '2024-02-24 23:50:00', '2024-03-24 23:50:00', 24),
(148, '1ibpP68xQN', 'null', 17, '12', 'unpaid', 'pending', '[57]', '[1]', 'Cash On Delivery', '2024-03-26 23:50:43', '2024-08-25 23:50:43', 25),
(149, '1ibpP68xQO', 'null', 15, '12.5', 'unpaid', 'pending', '[45]', '[1]', 'Cash On Delivery', '2024-07-13 05:03:54', '2024-10-16 05:03:54', 26),
(150, '1ibpP68xQP', 'null', 15, '9', 'paid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-01-16 05:04:12', '2024-07-09 06:25:18', 27),
(151, '1ibpP68xQQ', 'null', 17, '34', 'paid', 'pending', '[13][37]', '[1][2]', 'Cash On Delivery', '2024-04-12 15:04:12', '2024-05-20 15:04:00', 25),
(152, '1ibpP68xQR', 'null', 17, '60', 'unpaid', 'pending', '[27][56]', '[1][2]', 'Cash On Delivery', '2024-03-16 11:04:12', '2024-09-16 12:05:00', 24),
(153, '1ibpP68xQS', 'null', 18, '11.5', 'paid', 'pending', '[32]', '[1]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-07-17 12:05:00', 25),
(154, '1ibpP68xQT', 'null', 15, '60', 'paid', 'pending', '[23][61]', '[1][2]', 'Cash On Delivery', '2024-10-08 15:04:12', '2024-12-07 15:04:00', 25),
(155, '1ibpP68xQU', 'null', 17, '39', 'unpaid', 'pending', '[100][48]', '[1][2]', 'Cash On Delivery', '2024-04-08 11:04:12', '2024-08-04 12:05:00', 24),
(156, '1ibpP68xQV', 'null', 18, '11', 'unpaid', 'pending', '[67]', '[1]', 'Cash On Delivery', '2024-05-12 11:04:12', '2024-10-03 15:04:00', 25),
(157, '1ibpP68xQW', 'null', 17, '18', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-03-15 15:04:12', '2024-04-13 15:04:00', 27),
(158, '1ibpP68xQX', 'null', 15, '18', 'unpaid', 'pending', '[59]', '[1]', 'Cash On Delivery', '2024-05-06 11:04:12', '2024-08-04 12:05:00', 24),
(159, '1ibpP68xQY', 'null', 18, '12', 'paid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-05-03 12:05:00', 26),
(160, '1ibpP68xQZ', 'null', 17, '25.5', 'paid', 'pending', '[11][12]', '[1][2]', 'Cash On Delivery', '2024-08-15 16:04:12', '2024-11-17 15:04:00', 25),
(161, '2ibpP68xQa', 'null', 17, '32', 'paid', 'pending', '[12][46]', '[1][2]', 'Cash On Delivery', '2024-06-01 15:04:12', '2024-09-06 15:04:00', 25),
(162, '2ibpP68xQb', 'null', 17, '20', 'unpaid', 'pending', '[20]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-05-04 12:05:00', 24),
(163, '2ibpP68xQc', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-03 11:04:12', '2024-05-04 12:05:00', 25),
(164, '2ibpP68xQd', 'null', 15, '28', 'paid', 'pending', '[12][60]', '[1][2]', 'Cash On Delivery', '2024-10-06 15:04:12', '2024-11-07 15:04:00', 25),
(165, '2ibpP68xQe', 'null', 17, '8', 'unpaid', 'pending', '[100][99]', '[1][2]', 'Cash On Delivery', '2024-05-07 11:04:12', '2024-08-04 12:05:00', 24),
(166, '2ibpP68xQf', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-07-09 11:04:12', '2024-10-01 15:04:00', 25),
(167, '2ibpP68xQg', 'null', 17, '11', 'paid', 'pending', '[88]', '[1]', 'Cash On Delivery', '2024-03-11 15:04:12', '2024-06-12 15:04:00', 27),
(168, '2ibpP68xQh', 'null', 15, '9', 'unpaid', 'pending', '[27]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(169, '2ibpP68xQi', 'null', 18, '10', 'paid', 'pending', '[26]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 26),
(170, '2ibpP68xQj', 'null', 15, '46', 'paid', 'pending', '[77[66]', '[1][2]', 'Cash On Delivery', '2024-10-15 16:04:12', '2024-12-06 15:04:00', 25),
(171, '2ibpP68xQk', 'null', 17, '10', 'unpaid', 'pending', '[10]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-09-09 14:05:00', 27),
(172, '2ibpP68xQl', 'null', 17, '18', 'paid', 'pending', '[55]', '[1]', 'Cash On Delivery', '2024-03-09 11:04:12', '2024-10-01 12:05:00', 25),
(173, '2ibpP68xQm', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-24 23:50:00', '2024-06-24 23:50:00', 24),
(174, '2ibpP68xQn', 'null', 15, '11', 'unpaid', 'pending', '[4]', '[1]', 'Cash On Delivery', '2024-03-25 23:50:43', '2024-09-25 23:50:43', 25),
(175, '2ibpP68xQo', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-04-13 05:03:54', '2024-08-16 05:03:54', 26),
(176, '2ibpP68xQp', 'null', 15, '6.5', 'paid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-05-06 05:04:12', '2024-07-06 06:25:18', 27),
(177, '2ibpP68xQq', 'null', 17, '51', 'paid', 'pending', '[15][47]', '[1][2]', 'Cash On Delivery', '2024-06-10 15:04:12', '2024-09-19 15:04:00', 25),
(178, '2ibpP68xQr', 'null', 17, '40', 'unpaid', 'pending', '[21]', '[1]', 'Cash On Delivery', '2024-02-16 11:04:12', '2024-09-14 12:05:00', 24),
(179, '2ibpP68xQs', 'null', 18, '8', 'paid', 'pending', '[31]', '[1]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-09-04 12:05:00', 25),
(180, '2ibpP68xQt', 'null', 15, '116.5', 'paid', 'pending', '[14][61]', '[1][2]', 'Cash On Delivery', '2024-12-06 15:04:12', '2024-12-07 15:04:00', 25),
(181, '2ibpP68xQu', 'null', 17, '30', 'unpaid', 'pending', '[100][98]', '[1][2]', 'Cash On Delivery', '2024-03-07 11:04:12', '2024-08-05 12:05:00', 24),
(182, '2ibpP68xQv', 'null', 18, '11', 'paid', 'pending', '[33]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-02 15:04:00', 25),
(183, '2ibpP68xQw', 'null', 17, '11.5', 'paid', 'pending', '[89]', '[1]', 'Cash On Delivery', '2024-03-17 15:04:12', '2024-06-12 15:04:00', 27),
(184, '2ibpP68xQx', 'null', 15, '9', 'unpaid', 'pending', '[25]', '[1]', 'Cash On Delivery', '2024-03-06 11:04:12', '2024-09-04 12:05:00', 24),
(185, '2ibpP68xQy', 'null', 18, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-01-06 11:04:12', '2024-10-04 12:05:00', 26),
(186, '2ibpP68xQz', 'null', 17, '57.5', 'paid', 'pending', '[11][22]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-16 15:04:00', 25),
(187, '2ibpP68xQA', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-05-26 15:04:00', 25),
(188, '2ibpP68xQB', 'null', 17, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-12-04 12:05:00', 24),
(189, '2ibpP68xQC', 'null', 18, '26', 'paid', 'pending', '[30][4]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-09-09 12:05:00', 25),
(190, '2ibpP68xQD', 'null', 15, '105', 'paid', 'pending', '[30][61]', '[1][2]', 'Cash On Delivery', '2024-11-06 15:04:12', '2024-11-07 15:04:00', 25),
(191, '2ibpP68xQE', 'null', 17, '41', 'unpaid', 'pending', '[78][79]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-08-05 12:05:00', 24),
(192, '2ibpP68xQF', 'null', 18, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-11 15:04:00', 25),
(193, '2ibpP68xQG', 'null', 17, '41', 'paid', 'pending', '[68][69]', '[1][2]', 'Cash On Delivery', '2024-03-13 15:04:12', '2024-05-12 15:04:00', 27),
(194, '2ibpP68xQH', 'null', 15, '12.5', 'unpaid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-03-28 11:04:12', '2024-09-05 12:05:00', 24),
(195, '2ibpP68xQI', 'null', 18, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-06-29 11:04:12', '2024-09-02 12:05:00', 26),
(196, '2ibpP68xQJ', 'null', 15, '45', 'paid', 'pending', '[17][16]', '[1][2]', 'Cash On Delivery', '2024-10-25 16:04:12', '2024-12-26 15:04:00', 25),
(197, '2ibpP68xQK', 'null', 17, '7', 'unpaid', 'pending', '[15]', '[1]', 'Cash On Delivery', '2024-06-17 11:04:12', '2024-08-10 14:05:00', 27),
(198, '2ibpP68xQL', 'null', 17, '11.5', 'paid', 'pending', '[54]', '[1]', 'Cash On Delivery', '2024-05-09 11:04:12', '2024-10-11 12:05:00', 25),
(199, '2ibpP68xQM', 'null', 15, '7.5', 'unpaid', 'pending', '[9]', '[1]', 'Cash On Delivery', '2024-02-24 23:50:00', '2024-05-24 23:50:00', 24),
(200, '2ibpP68xQN', 'null', 17, '12', 'unpaid', 'pending', '[57]', '[1]', 'Cash On Delivery', '2024-03-26 23:50:43', '2024-08-25 23:50:43', 25),
(201, '2ibpP68xQO', 'null', 15, '12.5', 'unpaid', 'pending', '[45]', '[1]', 'Cash On Delivery', '2024-07-13 05:03:54', '2024-10-16 05:03:54', 26),
(202, '2ibpP68xQP', 'null', 15, '9', 'paid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-01-16 05:04:12', '2024-07-09 06:25:18', 27),
(203, '2ibpP68xQQ', 'null', 17, '34', 'paid', 'pending', '[13][37]', '[1][2]', 'Cash On Delivery', '2024-04-12 15:04:12', '2024-05-20 15:04:00', 25),
(204, '2ibpP68xQR', 'null', 17, '60', 'unpaid', 'pending', '[27][56]', '[1][2]', 'Cash On Delivery', '2024-04-16 11:04:12', '2024-09-16 12:05:00', 24),
(205, '2ibpP68xQS', 'null', 18, '11.5', 'paid', 'pending', '[32]', '[1]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-07-17 12:05:00', 25),
(206, '2ibpP68xQT', 'null', 15, '60', 'paid', 'pending', '[23][61]', '[1][2]', 'Cash On Delivery', '2024-10-08 15:04:12', '2024-12-07 15:04:00', 25),
(207, '2ibpP68xQU', 'null', 17, '39', 'unpaid', 'pending', '[100][48]', '[1][2]', 'Cash On Delivery', '2024-04-08 11:04:12', '2024-08-04 12:05:00', 24),
(208, '2ibpP68xQV', 'null', 18, '11', 'unpaid', 'pending', '[67]', '[1]', 'Cash On Delivery', '2024-05-12 11:04:12', '2024-10-03 15:04:00', 25),
(209, '2ibpP68xQW', 'null', 17, '18', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-03-15 15:04:12', '2024-04-13 15:04:00', 27),
(210, '2ibpP68xQX', 'null', 15, '18', 'unpaid', 'pending', '[59]', '[1]', 'Cash On Delivery', '2024-05-06 11:04:12', '2024-08-04 12:05:00', 24),
(211, '2ibpP68xQY', 'null', 18, '12', 'paid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-05-03 12:05:00', 26),
(212, '2ibpP68xQZ', 'null', 17, '25.5', 'paid', 'pending', '[11][12]', '[1][2]', 'Cash On Delivery', '2024-08-15 16:04:12', '2024-12-17 15:04:00', 25),
(213, '3ibpP68xQa', 'null', 17, '32', 'paid', 'pending', '[12][46]', '[1][2]', 'Cash On Delivery', '2024-06-01 15:04:12', '2024-09-06 15:04:00', 25),
(214, '3ibpP68xQb', 'null', 17, '20', 'unpaid', 'pending', '[20]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-05-04 12:05:00', 24),
(215, '3ibpP68xQc', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-03 11:04:12', '2024-05-04 12:05:00', 25),
(216, '3ibpP68xQd', 'null', 15, '28', 'paid', 'pending', '[12][60]', '[1][2]', 'Cash On Delivery', '2024-10-06 15:04:12', '2024-11-07 15:04:00', 25),
(217, '3ibpP68xQe', 'null', 17, '8', 'unpaid', 'pending', '[100][99]', '[1][2]', 'Cash On Delivery', '2024-05-07 11:04:12', '2024-08-04 12:05:00', 24),
(218, '3ibpP68xQf', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-07-09 11:04:12', '2024-10-01 15:04:00', 25),
(219, '3ibpP68xQg', 'null', 17, '11', 'paid', 'pending', '[88]', '[1]', 'Cash On Delivery', '2024-03-11 15:04:12', '2024-06-12 15:04:00', 27),
(220, '3ibpP68xQh', 'null', 15, '9', 'unpaid', 'pending', '[27]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(221, '3ibpP68xQi', 'null', 18, '10', 'paid', 'pending', '[26]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 26),
(222, '3ibpP68xQj', 'null', 15, '46', 'paid', 'pending', '[77[66]', '[1][2]', 'Cash On Delivery', '2024-10-15 16:04:12', '2024-12-06 15:04:00', 25),
(223, '3ibpP68xQk', 'null', 17, '10', 'unpaid', 'pending', '[10]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-09-09 14:05:00', 27),
(224, '3ibpP68xQl', 'null', 17, '18', 'paid', 'pending', '[55]', '[1]', 'Cash On Delivery', '2024-03-09 11:04:12', '2024-10-01 12:05:00', 25),
(225, '3ibpP68xQm', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-24 23:50:00', '2024-06-24 23:50:00', 24),
(226, '3ibpP68xQn', 'null', 15, '11', 'unpaid', 'pending', '[4]', '[1]', 'Cash On Delivery', '2024-03-25 23:50:43', '2024-09-25 23:50:43', 25),
(227, '3ibpP68xQo', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-04-13 05:03:54', '2024-08-16 05:03:54', 26),
(228, '3ibpP68xQp', 'null', 15, '6.5', 'paid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-05-06 05:04:12', '2024-07-06 06:25:18', 27),
(229, '3ibpP68xQq', 'null', 17, '51', 'paid', 'pending', '[15][47]', '[1][2]', 'Cash On Delivery', '2024-06-10 15:04:12', '2024-09-19 15:04:00', 25),
(230, '3ibpP68xQr', 'null', 17, '40', 'unpaid', 'pending', '[21]', '[1]', 'Cash On Delivery', '2024-02-16 11:04:12', '2024-09-14 12:05:00', 24),
(231, '3ibpP68xQs', 'null', 18, '8', 'paid', 'pending', '[31]', '[1]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-09-04 12:05:00', 25),
(232, '3ibpP68xQt', 'null', 15, '116.5', 'paid', 'pending', '[14][61]', '[1][2]', 'Cash On Delivery', '2024-12-06 15:04:12', '2024-12-07 15:04:00', 25),
(233, '3ibpP68xQu', 'null', 17, '30', 'unpaid', 'pending', '[100][98]', '[1][2]', 'Cash On Delivery', '2024-03-07 11:04:12', '2024-08-05 12:05:00', 24),
(234, '3ibpP68xQv', 'null', 18, '11', 'paid', 'pending', '[33]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-02 15:04:00', 25),
(235, '3ibpP68xQw', 'null', 17, '11.5', 'paid', 'pending', '[89]', '[1]', 'Cash On Delivery', '2024-03-17 15:04:12', '2024-06-12 15:04:00', 27),
(236, '3ibpP68xQx', 'null', 15, '9', 'unpaid', 'pending', '[25]', '[1]', 'Cash On Delivery', '2024-03-06 11:04:12', '2024-06-04 12:05:00', 24),
(237, '3ibpP68xQy', 'null', 18, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-01-06 11:04:12', '2024-10-04 12:05:00', 26),
(238, '3ibpP68xQz', 'null', 17, '57.5', 'paid', 'pending', '[11][22]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-16 15:04:00', 25),
(239, '3ibpP68xQA', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-06-26 15:04:00', 25),
(240, '3ibpP68xQB', 'null', 17, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-12-04 12:05:00', 24),
(241, '3ibpP68xQC', 'null', 18, '26', 'paid', 'pending', '[30][4]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-08-09 12:05:00', 25),
(242, '3ibpP68xQD', 'null', 15, '105', 'paid', 'pending', '[30][61]', '[1][2]', 'Cash On Delivery', '2024-11-06 15:04:12', '2024-11-07 15:04:00', 25),
(243, '3ibpP68xQE', 'null', 17, '41', 'unpaid', 'pending', '[78][79]', '[1][2]', 'Cash On Delivery', '2024-03-09 11:04:12', '2024-09-03 12:05:00', 24),
(244, '3ibpP68xQF', 'null', 18, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-11 15:04:00', 25),
(245, '3ibpP68xQG', 'null', 17, '41', 'paid', 'pending', '[68][69]', '[1][2]', 'Cash On Delivery', '2024-03-13 15:04:12', '2024-05-12 15:04:00', 27),
(246, '3ibpP68xQH', 'null', 15, '12.5', 'unpaid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-03-28 11:04:12', '2024-09-05 12:05:00', 24),
(247, '3ibpP68xQI', 'null', 18, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-06-29 11:04:12', '2024-09-02 12:05:00', 24),
(248, '3ibpP68xQJ', 'null', 15, '45', 'paid', 'pending', '[17][16]', '[1][2]', 'Cash On Delivery', '2024-10-25 16:04:12', '2024-12-26 15:04:00', 25),
(249, '3ibpP68xQK', 'null', 17, '7', 'unpaid', 'pending', '[15]', '[1]', 'Cash On Delivery', '2024-06-17 11:04:12', '2024-08-10 14:05:00', 27),
(250, '3ibpP68xQL', 'null', 17, '11.5', 'paid', 'pending', '[54]', '[1]', 'Cash On Delivery', '2024-05-09 11:04:12', '2024-10-11 12:05:00', 25),
(251, '3ibpP68xQM', 'null', 15, '7.5', 'unpaid', 'pending', '[9]', '[1]', 'Cash On Delivery', '2024-02-24 23:50:00', '2024-05-24 23:50:00', 24),
(252, '3ibpP68xQN', 'null', 17, '12', 'unpaid', 'pending', '[57]', '[1]', 'Cash On Delivery', '2024-03-26 23:50:43', '2024-08-25 23:50:43', 25),
(253, '3ibpP68xQO', 'null', 15, '12.5', 'unpaid', 'pending', '[45]', '[1]', 'Cash On Delivery', '2024-07-13 05:03:54', '2024-10-16 05:03:54', 24),
(254, '3ibpP68xQP', 'null', 15, '9', 'paid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-02-16 05:04:12', '2024-05-09 06:25:18', 27),
(255, '3ibpP68xQQ', 'null', 17, '34', 'paid', 'pending', '[13][37]', '[1][2]', 'Cash On Delivery', '2024-04-12 15:04:12', '2024-05-20 15:04:00', 25),
(256, '3ibpP68xQR', 'null', 17, '60', 'unpaid', 'pending', '[27][56]', '[1][2]', 'Cash On Delivery', '2024-04-16 11:04:12', '2024-09-16 12:05:00', 24),
(257, '3ibpP68xQS', 'null', 18, '11.5', 'paid', 'pending', '[32]', '[1]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-07-17 12:05:00', 25),
(258, '3ibpP68xQT', 'null', 15, '60', 'paid', 'pending', '[23][61]', '[1][2]', 'Cash On Delivery', '2024-10-08 15:04:12', '2024-12-07 15:04:00', 25),
(259, '3ibpP68xQU', 'null', 17, '39', 'unpaid', 'pending', '[100][48]', '[1][2]', 'Cash On Delivery', '2024-04-08 11:04:12', '2024-08-04 12:05:00', 24),
(260, '3ibpP68xQV', 'null', 18, '11', 'unpaid', 'pending', '[67]', '[1]', 'Cash On Delivery', '2024-05-12 11:04:12', '2024-10-03 15:04:00', 25),
(261, '3ibpP68xQW', 'null', 17, '18', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-03-15 15:04:12', '2024-05-19 15:04:00', 26),
(262, '3ibpP68xQX', 'null', 15, '18', 'unpaid', 'pending', '[59]', '[1]', 'Cash On Delivery', '2024-05-06 11:04:12', '2024-08-04 12:05:00', 24),
(263, '3ibpP68xQY', 'null', 18, '12', 'paid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-05-03 12:05:00', 26),
(264, '3ibpP68xQZ', 'null', 17, '25.5', 'paid', 'pending', '[11][12]', '[1][2]', 'Cash On Delivery', '2024-08-15 16:04:12', '2024-12-17 15:04:00', 25),
(265, '4ibpP68xQa', 'null', 17, '32', 'paid', 'pending', '[12][46]', '[1][2]', 'Cash On Delivery', '2024-06-12 15:04:12', '2024-09-06 15:04:00', 25),
(266, '4ibpP68xQb', 'null', 17, '20', 'unpaid', 'pending', '[20]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-05-04 12:05:00', 24),
(267, '4ibpP68xQc', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-17 11:04:12', '2024-05-04 12:05:00', 25),
(268, '4ibpP68xQd', 'null', 15, '28', 'paid', 'pending', '[12][60]', '[1][2]', 'Cash On Delivery', '2024-10-30 15:04:12', '2024-11-07 15:04:00', 25),
(269, '4ibpP68xQe', 'null', 17, '8', 'unpaid', 'pending', '[100][99]', '[1][2]', 'Cash On Delivery', '2024-05-13 11:04:12', '2024-08-14 12:05:00', 24),
(270, '4ibpP68xQf', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-07-09 11:04:12', '2024-10-01 15:04:00', 25),
(271, '4ibpP68xQg', 'null', 17, '11', 'paid', 'pending', '[88]', '[1]', 'Cash On Delivery', '2024-03-11 15:04:12', '2024-06-12 15:04:00', 27),
(272, '4ibpP68xQh', 'null', 15, '9', 'unpaid', 'pending', '[27]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(273, '4ibpP68xQi', 'null', 18, '10', 'paid', 'pending', '[26]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 26),
(274, '4ibpP68xQj', 'null', 15, '46', 'paid', 'pending', '[77[66]', '[1][2]', 'Cash On Delivery', '2024-10-15 16:04:12', '2024-12-06 15:04:00', 25),
(275, '4ibpP68xQk', 'null', 17, '10', 'unpaid', 'pending', '[10]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-10-09 14:05:00', 27),
(276, '4ibpP68xQl', 'null', 17, '18', 'paid', 'pending', '[55]', '[1]', 'Cash On Delivery', '2024-06-09 11:04:12', '2024-10-11 12:05:00', 25),
(277, '4ibpP68xQm', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-24 23:50:00', '2024-06-24 23:50:00', 24),
(278, '4ibpP68xQn', 'null', 15, '11', 'unpaid', 'pending', '[4]', '[1]', 'Cash On Delivery', '2024-03-25 23:50:43', '2024-09-25 23:50:43', 25),
(279, '4ibpP68xQo', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-04-13 05:03:54', '2024-08-16 05:03:54', 26),
(280, '4ibpP68xQp', 'null', 15, '6.5', 'paid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-05-06 05:04:12', '2024-07-06 06:25:18', 27),
(281, '4ibpP68xQq', 'null', 17, '51', 'paid', 'pending', '[15][47]', '[1][2]', 'Cash On Delivery', '2024-06-10 15:04:12', '2024-09-19 15:04:00', 25),
(282, '4ibpP68xQr', 'null', 17, '40', 'unpaid', 'pending', '[21]', '[1]', 'Cash On Delivery', '2024-02-16 11:04:12', '2024-09-14 12:05:00', 24),
(283, '4ibpP68xQs', 'null', 18, '8', 'paid', 'pending', '[31]', '[1]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-09-04 12:05:00', 25),
(284, '4ibpP68xQt', 'null', 15, '116.5', 'paid', 'pending', '[14][61]', '[1][2]', 'Cash On Delivery', '2024-12-06 15:04:12', '2024-12-07 15:04:00', 25),
(285, '4ibpP68xQu', 'null', 17, '30', 'unpaid', 'pending', '[100][98]', '[1][2]', 'Cash On Delivery', '2024-03-07 11:04:12', '2024-08-05 12:05:00', 24),
(286, '4ibpP68xQv', 'null', 18, '11', 'paid', 'pending', '[33]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-02 15:04:00', 25),
(287, '4ibpP68xQw', 'null', 17, '11.5', 'paid', 'pending', '[89]', '[1]', 'Cash On Delivery', '2024-03-17 15:04:12', '2024-06-12 15:04:00', 27),
(288, '4ibpP68xQx', 'null', 15, '9', 'unpaid', 'pending', '[25]', '[1]', 'Cash On Delivery', '2024-03-06 11:04:12', '2024-06-04 12:05:00', 24),
(289, '4ibpP68xQy', 'null', 18, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-01-06 11:04:12', '2024-10-04 12:05:00', 26),
(290, '4ibpP68xQz', 'null', 17, '57.5', 'paid', 'pending', '[11][22]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-16 15:04:00', 25),
(291, '4ibpP68xQA', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-06-26 15:04:00', 25),
(292, '4ibpP68xQB', 'null', 17, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-12-04 12:05:00', 24),
(293, '4ibpP68xQC', 'null', 18, '26', 'paid', 'pending', '[30][4]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-08-09 12:05:00', 25),
(294, '4ibpP68xQD', 'null', 15, '105', 'paid', 'pending', '[30][61]', '[1][2]', 'Cash On Delivery', '2024-11-06 15:04:12', '2024-11-07 15:04:00', 25),
(295, '4ibpP68xQE', 'null', 17, '41', 'unpaid', 'pending', '[78][79]', '[1][2]', 'Cash On Delivery', '2024-03-09 11:04:12', '2024-09-03 12:05:00', 24),
(296, '4ibpP68xQF', 'null', 18, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-11 15:04:00', 25),
(297, '4ibpP68xQG', 'null', 17, '41', 'paid', 'pending', '[68][69]', '[1][2]', 'Cash On Delivery', '2024-03-13 15:04:12', '2024-05-12 15:04:00', 27),
(298, '4ibpP68xQH', 'null', 15, '12.5', 'unpaid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-03-28 11:04:12', '2024-09-05 12:05:00', 24),
(299, '4ibpP68xQI', 'null', 18, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-06-29 11:04:12', '2024-09-02 12:05:00', 24),
(300, '4ibpP68xQJ', 'null', 15, '45', 'paid', 'pending', '[17][16]', '[1][2]', 'Cash On Delivery', '2024-10-25 16:04:12', '2024-12-26 15:04:00', 25),
(301, '4ibpP68xQK', 'null', 17, '7', 'unpaid', 'pending', '[15]', '[1]', 'Cash On Delivery', '2024-06-17 11:04:12', '2024-08-10 14:05:00', 27),
(302, '4ibpP68xQL', 'null', 17, '11.5', 'paid', 'pending', '[54]', '[1]', 'Cash On Delivery', '2024-05-09 11:04:12', '2024-10-11 12:05:00', 25),
(303, '4ibpP68xQM', 'null', 15, '7.5', 'unpaid', 'pending', '[9]', '[1]', 'Cash On Delivery', '2024-02-24 23:50:00', '2024-05-24 23:50:00', 24),
(304, '4ibpP68xQN', 'null', 17, '12', 'unpaid', 'pending', '[57]', '[1]', 'Cash On Delivery', '2024-03-26 23:50:43', '2024-08-25 23:50:43', 25),
(305, '4ibpP68xQO', 'null', 15, '12.5', 'unpaid', 'pending', '[45]', '[1]', 'Cash On Delivery', '2024-07-13 05:03:54', '2024-10-16 05:03:54', 24),
(306, '4ibpP68xQP', 'null', 15, '9', 'paid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-02-16 05:04:12', '2024-05-09 06:25:18', 27),
(307, '4ibpP68xQQ', 'null', 17, '34', 'paid', 'pending', '[13][37]', '[1][2]', 'Cash On Delivery', '2024-04-12 15:04:12', '2024-05-20 15:04:00', 25),
(308, '4ibpP68xQR', 'null', 17, '60', 'unpaid', 'pending', '[27][56]', '[1][2]', 'Cash On Delivery', '2024-04-16 11:04:12', '2024-09-16 12:05:00', 24),
(309, '4ibpP68xQS', 'null', 18, '11.5', 'paid', 'pending', '[32]', '[1]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-07-17 12:05:00', 25),
(310, '4ibpP68xQT', 'null', 15, '60', 'paid', 'pending', '[23][61]', '[1][2]', 'Cash On Delivery', '2024-10-18 15:04:12', '2024-12-07 15:04:00', 25),
(311, '4ibpP68xQU', 'null', 17, '39', 'unpaid', 'pending', '[100][48]', '[1][2]', 'Cash On Delivery', '2024-04-08 11:04:12', '2024-08-24 12:05:00', 24),
(312, '4ibpP68xQV', 'null', 18, '11', 'unpaid', 'pending', '[67]', '[1]', 'Cash On Delivery', '2024-05-22 11:04:12', '2024-09-30 15:04:00', 25),
(313, '4ibpP68xQW', 'null', 17, '18', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-03-15 15:04:12', '2024-05-19 15:04:00', 26),
(314, '4ibpP68xQX', 'null', 15, '18', 'unpaid', 'pending', '[59]', '[1]', 'Cash On Delivery', '2024-05-06 11:04:12', '2024-08-04 12:05:00', 24),
(315, '4ibpP68xQY', 'null', 18, '12', 'paid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-05-17 12:05:00', 26),
(316, '4ibpP68xQZ', 'null', 17, '25.5', 'paid', 'pending', '[11][12]', '[1][2]', 'Cash On Delivery', '2024-08-15 16:04:12', '2024-12-17 15:04:00', 25),
(317, '5ibpP68xQa', 'null', 17, '32', 'paid', 'pending', '[12][46]', '[1][2]', 'Cash On Delivery', '2024-07-12 15:04:12', '2024-11-06 15:04:00', 25),
(318, '5ibpP68xQb', 'null', 17, '20', 'unpaid', 'pending', '[20]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-05-24 12:05:00', 24),
(319, '5ibpP68xQc', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-27 11:04:12', '2024-06-04 12:05:00', 25),
(320, '5ibpP68xQd', 'null', 15, '28', 'paid', 'pending', '[12][60]', '[1][2]', 'Cash On Delivery', '2024-09-30 15:04:12', '2024-11-07 15:04:00', 25),
(321, '5ibpP68xQe', 'null', 17, '8', 'unpaid', 'pending', '[100][99]', '[1][2]', 'Cash On Delivery', '2024-06-13 11:04:12', '2024-08-14 12:05:00', 24),
(322, '5ibpP68xQf', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-06-09 11:04:12', '2024-10-01 15:04:00', 25),
(323, '5ibpP68xQg', 'null', 17, '11', 'paid', 'pending', '[88]', '[1]', 'Cash On Delivery', '2024-03-11 15:04:12', '2024-06-12 15:04:00', 27),
(324, '5ibpP68xQh', 'null', 15, '9', 'unpaid', 'pending', '[27]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(325, '5ibpP68xQi', 'null', 18, '10', 'paid', 'pending', '[26]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 26),
(326, '5ibpP68xQj', 'null', 15, '46', 'paid', 'pending', '[77[66]', '[1][2]', 'Cash On Delivery', '2024-10-15 16:04:12', '2024-12-06 15:04:00', 25),
(327, '5ibpP68xQk', 'null', 17, '10', 'unpaid', 'pending', '[10]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-10-09 14:05:00', 27),
(328, '5ibpP68xQl', 'null', 17, '18', 'paid', 'pending', '[55]', '[1]', 'Cash On Delivery', '2024-06-09 11:04:12', '2024-10-11 12:05:00', 25),
(329, '5ibpP68xQm', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-24 23:50:00', '2024-06-24 23:50:00', 24),
(330, '5ibpP68xQn', 'null', 15, '11', 'unpaid', 'pending', '[4]', '[1]', 'Cash On Delivery', '2024-03-25 23:50:43', '2024-09-25 23:50:43', 25),
(331, '5ibpP68xQo', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-04-13 05:03:54', '2024-08-16 05:03:54', 26),
(332, '5ibpP68xQp', 'null', 15, '6.5', 'paid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-05-06 05:04:12', '2024-07-06 06:25:18', 27),
(333, '5ibpP68xQq', 'null', 17, '51', 'paid', 'pending', '[15][47]', '[1][2]', 'Cash On Delivery', '2024-06-10 15:04:12', '2024-09-19 15:04:00', 25),
(334, '5ibpP68xQr', 'null', 17, '40', 'unpaid', 'pending', '[21]', '[1]', 'Cash On Delivery', '2024-02-16 11:04:12', '2024-09-14 12:05:00', 24),
(335, '5ibpP68xQs', 'null', 18, '8', 'paid', 'pending', '[31]', '[1]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-09-04 12:05:00', 25),
(336, '5ibpP68xQt', 'null', 15, '116.5', 'paid', 'pending', '[14][61]', '[1][2]', 'Cash On Delivery', '2024-12-06 15:04:12', '2024-12-07 15:04:00', 25),
(337, '5ibpP68xQu', 'null', 17, '30', 'unpaid', 'pending', '[100][98]', '[1][2]', 'Cash On Delivery', '2024-03-07 11:04:12', '2024-08-05 12:05:00', 24),
(338, '5ibpP68xQv', 'null', 18, '11', 'paid', 'pending', '[33]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-02 15:04:00', 25),
(339, '5ibpP68xQw', 'null', 17, '11.5', 'paid', 'pending', '[89]', '[1]', 'Cash On Delivery', '2024-03-17 15:04:12', '2024-06-12 15:04:00', 27),
(340, '5ibpP68xQx', 'null', 15, '9', 'unpaid', 'pending', '[25]', '[1]', 'Cash On Delivery', '2024-03-06 11:04:12', '2024-06-04 12:05:00', 24),
(341, '5ibpP68xQy', 'null', 18, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-01-06 11:04:12', '2024-10-04 12:05:00', 26),
(342, '5ibpP68xQz', 'null', 17, '57.5', 'paid', 'pending', '[11][22]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-16 15:04:00', 25),
(343, '5ibpP68xQA', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-06-26 15:04:00', 25),
(344, '5ibpP68xQB', 'null', 17, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-12-04 12:05:00', 24);
INSERT INTO `orders` (`id`, `uuid`, `transaction_id`, `user_id`, `total_amount`, `payment_status`, `order_status`, `product_id`, `qlys`, `payment_method`, `created_at`, `updated_at`, `address_id`) VALUES
(345, '5ibpP68xQC', 'null', 18, '26', 'paid', 'pending', '[30][4]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-08-09 12:05:00', 25),
(346, '5ibpP68xQD', 'null', 15, '105', 'paid', 'pending', '[30][61]', '[1][2]', 'Cash On Delivery', '2024-11-06 15:04:12', '2024-11-07 15:04:00', 25),
(347, '5ibpP68xQE', 'null', 17, '41', 'unpaid', 'pending', '[78][79]', '[1][2]', 'Cash On Delivery', '2024-03-09 11:04:12', '2024-09-03 12:05:00', 24),
(348, '5ibpP68xQF', 'null', 18, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-11 15:04:00', 25),
(349, '5ibpP68xQG', 'null', 17, '41', 'paid', 'pending', '[68][69]', '[1][2]', 'Cash On Delivery', '2024-03-13 15:04:12', '2024-05-12 15:04:00', 27),
(350, '5ibpP68xQH', 'null', 15, '12.5', 'unpaid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-03-28 11:04:12', '2024-09-05 12:05:00', 24),
(351, '5ibpP68xQI', 'null', 18, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-06-29 11:04:12', '2024-09-02 12:05:00', 24),
(352, '5ibpP68xQJ', 'null', 15, '45', 'paid', 'pending', '[17][16]', '[1][2]', 'Cash On Delivery', '2024-10-25 16:04:12', '2024-12-26 15:04:00', 25),
(353, '5ibpP68xQK', 'null', 17, '7', 'unpaid', 'pending', '[15]', '[1]', 'Cash On Delivery', '2024-06-17 11:04:12', '2024-08-10 14:05:00', 27),
(354, '5ibpP68xQL', 'null', 17, '11.5', 'paid', 'pending', '[54]', '[1]', 'Cash On Delivery', '2024-05-09 11:04:12', '2024-10-11 12:05:00', 25),
(355, '5ibpP68xQM', 'null', 15, '7.5', 'unpaid', 'pending', '[9]', '[1]', 'Cash On Delivery', '2024-02-24 23:50:00', '2024-05-24 23:50:00', 24),
(356, '5ibpP68xQN', 'null', 17, '12', 'unpaid', 'pending', '[57]', '[1]', 'Cash On Delivery', '2024-03-26 23:50:43', '2024-08-25 23:50:43', 25),
(357, '5ibpP68xQO', 'null', 15, '12.5', 'unpaid', 'pending', '[45]', '[1]', 'Cash On Delivery', '2024-07-13 05:03:54', '2024-10-16 05:03:54', 24),
(358, '5ibpP68xQP', 'null', 15, '9', 'paid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-02-16 05:04:12', '2024-05-09 06:25:18', 27),
(359, '5ibpP68xQQ', 'null', 17, '34', 'paid', 'pending', '[13][37]', '[1][2]', 'Cash On Delivery', '2024-04-12 15:04:12', '2024-05-20 15:04:00', 25),
(360, '5ibpP68xQR', 'null', 17, '60', 'unpaid', 'pending', '[27][56]', '[1][2]', 'Cash On Delivery', '2024-04-16 11:04:12', '2024-09-16 12:05:00', 24),
(361, '5ibpP68xQS', 'null', 18, '11.5', 'paid', 'pending', '[32]', '[1]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-07-17 12:05:00', 25),
(362, '5ibpP68xQT', 'null', 15, '60', 'paid', 'pending', '[23][61]', '[1][2]', 'Cash On Delivery', '2024-10-18 15:04:12', '2024-12-07 15:04:00', 25),
(363, '5ibpP68xQU', 'null', 17, '39', 'unpaid', 'pending', '[100][48]', '[1][2]', 'Cash On Delivery', '2024-04-08 11:04:12', '2024-08-24 12:05:00', 24),
(364, '5ibpP68xQV', 'null', 18, '11', 'unpaid', 'pending', '[67]', '[1]', 'Cash On Delivery', '2024-05-22 11:04:12', '2024-09-30 15:04:00', 25),
(365, '5ibpP68xQW', 'null', 17, '18', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-03-15 15:04:12', '2024-05-19 15:04:00', 26),
(366, '5ibpP68xQX', 'null', 15, '18', 'unpaid', 'pending', '[59]', '[1]', 'Cash On Delivery', '2024-05-06 11:04:12', '2024-08-04 12:05:00', 24),
(367, '5ibpP68xQY', 'null', 18, '12', 'paid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-05-17 12:05:00', 26),
(368, '5ibpP68xQZ', 'null', 17, '25.5', 'paid', 'pending', '[11][12]', '[1][2]', 'Cash On Delivery', '2024-08-15 16:04:12', '2024-12-17 15:04:00', 25),
(369, '6ibpP68xQa', 'null', 17, '32', 'paid', 'pending', '[12][46]', '[1][2]', 'Cash On Delivery', '2024-07-12 15:04:12', '2024-11-06 15:04:00', 25),
(370, '6ibpP68xQb', 'null', 17, '20', 'unpaid', 'pending', '[20]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-05-24 12:05:00', 24),
(371, '6ibpP68xQc', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-27 11:04:12', '2024-06-04 12:05:00', 25),
(372, '6ibpP68xQd', 'null', 15, '28', 'paid', 'pending', '[12][60]', '[1][2]', 'Cash On Delivery', '2024-09-30 15:04:12', '2024-11-07 15:04:00', 25),
(373, '6ibpP68xQe', 'null', 17, '8', 'unpaid', 'pending', '[100][99]', '[1][2]', 'Cash On Delivery', '2024-06-13 11:04:12', '2024-08-14 12:05:00', 24),
(374, '6ibpP68xQf', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-06-09 11:04:12', '2024-10-01 15:04:00', 25),
(375, '6ibpP68xQg', 'null', 17, '11', 'paid', 'pending', '[88]', '[1]', 'Cash On Delivery', '2024-03-11 15:04:12', '2024-06-12 15:04:00', 27),
(376, '6ibpP68xQh', 'null', 15, '9', 'unpaid', 'pending', '[27]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(377, '6ibpP68xQi', 'null', 18, '10', 'paid', 'pending', '[26]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 26),
(378, '6ibpP68xQj', 'null', 15, '46', 'paid', 'pending', '[77[66]', '[1][2]', 'Cash On Delivery', '2024-10-15 16:04:12', '2024-12-06 15:04:00', 25),
(379, '6ibpP68xQk', 'null', 17, '10', 'unpaid', 'pending', '[10]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-10-09 14:05:00', 27),
(380, '6ibpP68xQl', 'null', 17, '18', 'paid', 'pending', '[55]', '[1]', 'Cash On Delivery', '2024-06-09 11:04:12', '2024-10-11 12:05:00', 25),
(381, '6ibpP68xQm', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-24 23:50:00', '2024-06-24 23:50:00', 24),
(382, '6ibpP68xQn', 'null', 15, '11', 'unpaid', 'pending', '[4]', '[1]', 'Cash On Delivery', '2024-03-25 23:50:43', '2024-09-25 23:50:43', 25),
(383, '6ibpP68xQo', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-04-13 05:03:54', '2024-08-16 05:03:54', 26),
(384, '6ibpP68xQp', 'null', 15, '6.5', 'paid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-05-06 05:04:12', '2024-07-06 06:25:18', 27),
(385, '6ibpP68xQq', 'null', 17, '51', 'paid', 'pending', '[15][47]', '[1][2]', 'Cash On Delivery', '2024-06-10 15:04:12', '2024-09-19 15:04:00', 25),
(386, '6ibpP68xQr', 'null', 17, '40', 'unpaid', 'pending', '[21]', '[1]', 'Cash On Delivery', '2024-02-16 11:04:12', '2024-09-14 12:05:00', 24),
(387, '6ibpP68xQs', 'null', 18, '8', 'paid', 'pending', '[31]', '[1]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-09-04 12:05:00', 25),
(388, '6ibpP68xQt', 'null', 15, '116.5', 'paid', 'pending', '[14][61]', '[1][2]', 'Cash On Delivery', '2024-12-06 15:04:12', '2024-12-07 15:04:00', 25),
(389, '6ibpP68xQu', 'null', 17, '30', 'unpaid', 'pending', '[100][98]', '[1][2]', 'Cash On Delivery', '2024-03-07 11:04:12', '2024-08-05 12:05:00', 24),
(390, '6ibpP68xQv', 'null', 18, '11', 'paid', 'pending', '[33]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-02 15:04:00', 25),
(391, '6ibpP68xQw', 'null', 17, '11.5', 'paid', 'pending', '[89]', '[1]', 'Cash On Delivery', '2024-03-17 15:04:12', '2024-06-12 15:04:00', 27),
(392, '6ibpP68xQx', 'null', 15, '9', 'unpaid', 'pending', '[25]', '[1]', 'Cash On Delivery', '2024-03-06 11:04:12', '2024-06-04 12:05:00', 24),
(393, '6ibpP68xQy', 'null', 18, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-01-06 11:04:12', '2024-10-04 12:05:00', 26),
(394, '6ibpP68xQz', 'null', 17, '57.5', 'paid', 'pending', '[11][22]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-16 15:04:00', 25),
(395, '6ibpP68xQA', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-06-26 15:04:00', 25),
(396, '6ibpP68xQB', 'null', 17, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-12-04 12:05:00', 24),
(397, '6ibpP68xQC', 'null', 18, '26', 'paid', 'pending', '[30][4]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-08-09 12:05:00', 25),
(398, '6ibpP68xQD', 'null', 15, '105', 'paid', 'pending', '[30][61]', '[1][2]', 'Cash On Delivery', '2024-11-06 15:04:12', '2024-11-07 15:04:00', 25),
(399, '6ibpP68xQE', 'null', 17, '41', 'unpaid', 'pending', '[78][79]', '[1][2]', 'Cash On Delivery', '2024-03-09 11:04:12', '2024-09-03 12:05:00', 24),
(400, '6ibpP68xQF', 'null', 18, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-11 15:04:00', 25),
(401, '6ibpP68xQG', 'null', 17, '41', 'paid', 'pending', '[68][69]', '[1][2]', 'Cash On Delivery', '2024-03-13 15:04:12', '2024-05-12 15:04:00', 27),
(402, '6ibpP68xQH', 'null', 15, '12.5', 'unpaid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-03-28 11:04:12', '2024-09-05 12:05:00', 24),
(403, '6ibpP68xQI', 'null', 18, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-06-29 11:04:12', '2024-09-02 12:05:00', 24),
(404, '6ibpP68xQJ', 'null', 15, '45', 'paid', 'pending', '[17][16]', '[1][2]', 'Cash On Delivery', '2024-10-25 16:04:12', '2024-12-26 15:04:00', 25),
(405, '6ibpP68xQK', 'null', 17, '7', 'unpaid', 'pending', '[15]', '[1]', 'Cash On Delivery', '2024-06-17 11:04:12', '2024-08-10 14:05:00', 27),
(406, '6ibpP68xQL', 'null', 17, '11.5', 'paid', 'pending', '[54]', '[1]', 'Cash On Delivery', '2024-05-09 11:04:12', '2024-10-11 12:05:00', 25),
(407, '6ibpP68xQM', 'null', 15, '7.5', 'unpaid', 'pending', '[9]', '[1]', 'Cash On Delivery', '2024-02-24 23:50:00', '2024-05-24 23:50:00', 24),
(408, '6ibpP68xQN', 'null', 17, '12', 'unpaid', 'pending', '[57]', '[1]', 'Cash On Delivery', '2024-03-26 23:50:43', '2024-08-25 23:50:43', 25),
(409, '6ibpP68xQO', 'null', 15, '12.5', 'unpaid', 'pending', '[45]', '[1]', 'Cash On Delivery', '2024-07-13 05:03:54', '2024-10-16 05:03:54', 24),
(410, '6ibpP68xQP', 'null', 15, '9', 'paid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-02-16 05:04:12', '2024-05-09 06:25:18', 27),
(411, '6ibpP68xQQ', 'null', 17, '34', 'paid', 'pending', '[13][37]', '[1][2]', 'Cash On Delivery', '2024-04-12 15:04:12', '2024-05-20 15:04:00', 25),
(412, '6ibpP68xQR', 'null', 17, '60', 'unpaid', 'pending', '[27][56]', '[1][2]', 'Cash On Delivery', '2024-04-16 11:04:12', '2024-09-16 12:05:00', 24),
(413, '6ibpP68xQS', 'null', 18, '11.5', 'paid', 'pending', '[32]', '[1]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-07-17 12:05:00', 25),
(414, '6ibpP68xQT', 'null', 15, '60', 'paid', 'pending', '[23][61]', '[1][2]', 'Cash On Delivery', '2024-10-18 15:04:12', '2024-12-07 15:04:00', 25),
(415, '6ibpP68xQU', 'null', 17, '39', 'unpaid', 'pending', '[100][48]', '[1][2]', 'Cash On Delivery', '2024-04-08 11:04:12', '2024-08-24 12:05:00', 24),
(416, '6ibpP68xQV', 'null', 18, '11', 'unpaid', 'pending', '[67]', '[1]', 'Cash On Delivery', '2024-05-22 11:04:12', '2024-09-30 15:04:00', 25),
(417, '6ibpP68xQW', 'null', 17, '18', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-03-15 15:04:12', '2024-05-19 15:04:00', 26),
(418, '6ibpP68xQX', 'null', 15, '18', 'unpaid', 'pending', '[59]', '[1]', 'Cash On Delivery', '2024-05-06 11:04:12', '2024-08-04 12:05:00', 24),
(419, '6ibpP68xQY', 'null', 18, '12', 'paid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-05-17 12:05:00', 26),
(420, '6ibpP68xQZ', 'null', 17, '25.5', 'paid', 'pending', '[11][12]', '[1][2]', 'Cash On Delivery', '2024-08-15 16:04:12', '2024-12-17 15:04:00', 25),
(421, '7ibpP68xQa', 'null', 17, '32', 'paid', 'pending', '[12][46]', '[1][2]', 'Cash On Delivery', '2024-07-12 15:04:12', '2024-11-06 15:04:00', 25),
(422, '7ibpP68xQb', 'null', 17, '20', 'unpaid', 'pending', '[20]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-05-24 12:05:00', 24),
(423, '7ibpP68xQc', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-27 11:04:12', '2024-06-04 12:05:00', 25),
(424, '7ibpP68xQd', 'null', 15, '28', 'paid', 'pending', '[12][60]', '[1][2]', 'Cash On Delivery', '2024-09-30 15:04:12', '2024-11-07 15:04:00', 25),
(425, '7ibpP68xQe', 'null', 17, '8', 'unpaid', 'pending', '[100][99]', '[1][2]', 'Cash On Delivery', '2024-06-13 11:04:12', '2024-08-14 12:05:00', 24),
(426, '7ibpP68xQf', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-06-09 11:04:12', '2024-10-01 15:04:00', 25),
(427, '7ibpP68xQg', 'null', 17, '11', 'paid', 'pending', '[88]', '[1]', 'Cash On Delivery', '2024-03-11 15:04:12', '2024-06-12 15:04:00', 27),
(428, '7ibpP68xQh', 'null', 15, '9', 'unpaid', 'pending', '[27]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(429, '7ibpP68xQi', 'null', 18, '10', 'paid', 'pending', '[26]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 26),
(430, '7ibpP68xQj', 'null', 15, '46', 'paid', 'pending', '[77[66]', '[1][2]', 'Cash On Delivery', '2024-10-15 16:04:12', '2024-12-06 15:04:00', 25),
(431, '7ibpP68xQk', 'null', 17, '10', 'unpaid', 'pending', '[10]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-10-09 14:05:00', 27),
(432, '7ibpP68xQl', 'null', 17, '18', 'paid', 'pending', '[55]', '[1]', 'Cash On Delivery', '2024-06-09 11:04:12', '2024-10-11 12:05:00', 25),
(433, '7ibpP68xQm', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-24 23:50:00', '2024-06-24 23:50:00', 24),
(434, '7ibpP68xQn', 'null', 15, '11', 'unpaid', 'pending', '[4]', '[1]', 'Cash On Delivery', '2024-03-25 23:50:43', '2024-09-25 23:50:43', 25),
(435, '7ibpP68xQo', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-04-13 05:03:54', '2024-08-16 05:03:54', 26),
(436, '7ibpP68xQp', 'null', 15, '6.5', 'paid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-05-06 05:04:12', '2024-07-06 06:25:18', 27),
(437, '7ibpP68xQq', 'null', 17, '51', 'paid', 'pending', '[15][47]', '[1][2]', 'Cash On Delivery', '2024-06-10 15:04:12', '2024-09-19 15:04:00', 25),
(438, '7ibpP68xQr', 'null', 17, '40', 'unpaid', 'pending', '[21]', '[1]', 'Cash On Delivery', '2024-02-16 11:04:12', '2024-09-14 12:05:00', 24),
(439, '7ibpP68xQs', 'null', 18, '8', 'paid', 'pending', '[31]', '[1]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-09-04 12:05:00', 25),
(440, '7ibpP68xQt', 'null', 15, '116.5', 'paid', 'pending', '[14][61]', '[1][2]', 'Cash On Delivery', '2024-12-06 15:04:12', '2024-12-07 15:04:00', 25),
(441, '7ibpP68xQu', 'null', 17, '30', 'unpaid', 'pending', '[100][98]', '[1][2]', 'Cash On Delivery', '2024-03-07 11:04:12', '2024-08-05 12:05:00', 24),
(442, '7ibpP68xQv', 'null', 18, '11', 'paid', 'pending', '[33]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-02 15:04:00', 25),
(443, '7ibpP68xQw', 'null', 17, '11.5', 'paid', 'pending', '[89]', '[1]', 'Cash On Delivery', '2024-03-17 15:04:12', '2024-06-12 15:04:00', 27),
(444, '7ibpP68xQx', 'null', 15, '9', 'unpaid', 'pending', '[25]', '[1]', 'Cash On Delivery', '2024-03-06 11:04:12', '2024-06-04 12:05:00', 24),
(445, '7ibpP68xQy', 'null', 18, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-01-06 11:04:12', '2024-10-04 12:05:00', 26),
(446, '7ibpP68xQz', 'null', 17, '57.5', 'paid', 'pending', '[11][22]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-16 15:04:00', 25),
(447, '7ibpP68xQA', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-06-26 15:04:00', 25),
(448, '7ibpP68xQB', 'null', 17, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-12-04 12:05:00', 24),
(449, '7ibpP68xQC', 'null', 18, '26', 'paid', 'pending', '[30][4]', '[1][2]', 'Cash On Delivery', '2024-02-09 11:04:12', '2024-08-09 12:05:00', 25),
(450, '7ibpP68xQD', 'null', 15, '105', 'paid', 'pending', '[30][61]', '[1][2]', 'Cash On Delivery', '2024-11-06 15:04:12', '2024-11-07 15:04:00', 25),
(451, '7ibpP68xQE', 'null', 17, '41', 'unpaid', 'pending', '[78][79]', '[1][2]', 'Cash On Delivery', '2024-03-09 11:04:12', '2024-09-03 12:05:00', 24),
(452, '7ibpP68xQF', 'null', 18, '7', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-11 15:04:00', 25),
(453, '7ibpP68xQG', 'null', 17, '41', 'paid', 'pending', '[68][69]', '[1][2]', 'Cash On Delivery', '2024-03-13 15:04:12', '2024-05-12 15:04:00', 27),
(454, '7ibpP68xQH', 'null', 15, '12.5', 'unpaid', 'pending', '[87]', '[1]', 'Cash On Delivery', '2024-03-28 11:04:12', '2024-09-05 12:05:00', 24),
(455, '7ibpP68xQI', 'null', 18, '25', 'paid', 'pending', '[56]', '[1]', 'Cash On Delivery', '2024-06-29 11:04:12', '2024-09-02 12:05:00', 24),
(456, '7ibpP68xQJ', 'null', 15, '45', 'paid', 'pending', '[17][16]', '[1][2]', 'Cash On Delivery', '2024-10-25 16:04:12', '2024-12-26 15:04:00', 25),
(457, '7ibpP68xQK', 'null', 17, '7', 'unpaid', 'pending', '[15]', '[1]', 'Cash On Delivery', '2024-06-17 11:04:12', '2024-08-10 14:05:00', 27),
(458, '7ibpP68xQL', 'null', 17, '11.5', 'paid', 'pending', '[54]', '[1]', 'Cash On Delivery', '2024-05-09 11:04:12', '2024-10-11 12:05:00', 25),
(459, '7ibpP68xQM', 'null', 15, '7.5', 'unpaid', 'pending', '[9]', '[1]', 'Cash On Delivery', '2024-02-24 23:50:00', '2024-05-24 23:50:00', 24),
(460, '7ibpP68xQN', 'null', 17, '12', 'unpaid', 'pending', '[57]', '[1]', 'Cash On Delivery', '2024-03-26 23:50:43', '2024-08-25 23:50:43', 25),
(461, '7ibpP68xQO', 'null', 15, '12.5', 'unpaid', 'pending', '[45]', '[1]', 'Cash On Delivery', '2024-07-13 05:03:54', '2024-10-16 05:03:54', 24),
(462, '7ibpP68xQP', 'null', 15, '9', 'paid', 'pending', '[12]', '[1]', 'Cash On Delivery', '2024-02-16 05:04:12', '2024-05-09 06:25:18', 27),
(463, '7ibpP68xQQ', 'null', 17, '34', 'paid', 'pending', '[13][37]', '[1][2]', 'Cash On Delivery', '2024-04-12 15:04:12', '2024-05-20 15:04:00', 25),
(464, '7ibpP68xQR', 'null', 17, '60', 'unpaid', 'pending', '[27][56]', '[1][2]', 'Cash On Delivery', '2024-04-16 11:04:12', '2024-09-16 12:05:00', 24),
(465, '7ibpP68xQS', 'null', 18, '11.5', 'paid', 'pending', '[32]', '[1]', 'Cash On Delivery', '2024-05-18 11:04:12', '2024-07-17 12:05:00', 25),
(466, '7ibpP68xQT', 'null', 15, '60', 'paid', 'pending', '[23][61]', '[1][2]', 'Cash On Delivery', '2024-10-18 15:04:12', '2024-12-07 15:04:00', 25),
(467, '7ibpP68xQU', 'null', 17, '39', 'unpaid', 'pending', '[100][48]', '[1][2]', 'Cash On Delivery', '2024-04-08 11:04:12', '2024-08-24 12:05:00', 24),
(468, '7ibpP68xQV', 'null', 18, '11', 'unpaid', 'pending', '[67]', '[1]', 'Cash On Delivery', '2024-05-22 11:04:12', '2024-09-30 15:04:00', 25),
(469, '7ibpP68xQW', 'null', 17, '18', 'paid', 'pending', '[90]', '[1]', 'Cash On Delivery', '2024-03-15 15:04:12', '2024-05-19 15:04:00', 26),
(470, '7ibpP68xQX', 'null', 15, '18', 'unpaid', 'pending', '[59]', '[1]', 'Cash On Delivery', '2024-05-06 11:04:12', '2024-08-04 12:05:00', 24),
(471, '7ibpP68xQY', 'null', 18, '12', 'paid', 'pending', '[34]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-05-17 12:05:00', 26),
(472, '7ibpP68xQZ', 'null', 17, '25.5', 'paid', 'pending', '[11][12]', '[1][2]', 'Cash On Delivery', '2024-08-15 16:04:12', '2024-12-17 15:04:00', 25),
(473, '8ibpP68xQa', 'null', 17, '32', 'paid', 'pending', '[12][46]', '[1][2]', 'Cash On Delivery', '2024-07-12 15:04:12', '2024-11-06 15:04:00', 25),
(474, '8ibpP68xQb', 'null', 17, '20', 'unpaid', 'pending', '[20]', '[1]', 'Cash On Delivery', '2024-02-26 11:04:12', '2024-05-24 12:05:00', 24),
(475, '8ibpP68xQc', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-02-27 11:04:12', '2024-06-04 12:05:00', 25),
(476, '8ibpP68xQd', 'null', 15, '28', 'paid', 'pending', '[12][60]', '[1][2]', 'Cash On Delivery', '2024-09-30 15:04:12', '2024-11-07 15:04:00', 25),
(477, '8ibpP68xQe', 'null', 17, '8', 'unpaid', 'pending', '[100][99]', '[1][2]', 'Cash On Delivery', '2024-06-13 11:04:12', '2024-08-14 12:05:00', 24),
(478, '8ibpP68xQf', 'null', 18, '4', 'paid', 'pending', '[30]', '[1]', 'Cash On Delivery', '2024-06-09 11:04:12', '2024-10-01 15:04:00', 25),
(479, '8ibpP68xQg', 'null', 17, '11', 'paid', 'pending', '[88]', '[1]', 'Cash On Delivery', '2024-03-11 15:04:12', '2024-06-12 15:04:00', 27),
(480, '8ibpP68xQh', 'null', 15, '9', 'unpaid', 'pending', '[27]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 24),
(481, '8ibpP68xQi', 'null', 18, '10', 'paid', 'pending', '[26]', '[1]', 'Cash On Delivery', '2024-02-06 11:04:12', '2024-09-04 12:05:00', 26),
(482, '8ibpP68xQj', 'null', 15, '46', 'paid', 'pending', '[77[66]', '[1][2]', 'Cash On Delivery', '2024-10-15 16:04:12', '2024-12-06 15:04:00', 25),
(483, '8ibpP68xQk', 'null', 17, '10', 'unpaid', 'pending', '[10]', '[1]', 'Cash On Delivery', '2024-06-07 11:04:12', '2024-10-09 14:05:00', 27),
(484, '8ibpP68xQl', 'null', 17, '18', 'paid', 'pending', '[55]', '[1]', 'Cash On Delivery', '2024-06-09 11:04:12', '2024-10-11 12:05:00', 25),
(485, '8ibpP68xQm', 'null', 15, '9.5', 'unpaid', 'pending', '[3]', '[1]', 'Cash On Delivery', '2024-03-24 23:50:00', '2024-06-24 23:50:00', 24),
(486, '8ibpP68xQn', 'null', 15, '11', 'unpaid', 'pending', '[4]', '[1]', 'Cash On Delivery', '2024-03-25 23:50:43', '2024-09-25 23:50:43', 25),
(487, '8ibpP68xQo', 'null', 15, '10', 'unpaid', 'pending', '[13]', '[1]', 'Cash On Delivery', '2024-04-13 05:03:54', '2024-08-16 05:03:54', 26),
(488, '8ibpP68xQp', 'null', 15, '6.5', 'paid', 'pending', '[14]', '[1]', 'Cash On Delivery', '2024-05-06 05:04:12', '2024-07-06 06:25:18', 27),
(489, '8ibpP68xQq', 'null', 17, '51', 'paid', 'pending', '[15][47]', '[1][2]', 'Cash On Delivery', '2024-06-10 15:04:12', '2024-09-19 15:04:00', 25),
(490, '8ibpP68xQr', 'null', 17, '40', 'unpaid', 'pending', '[21]', '[1]', 'Cash On Delivery', '2024-02-16 11:04:12', '2024-09-14 12:05:00', 24),
(491, '8ibpP68xQs', 'null', 18, '8', 'paid', 'pending', '[31]', '[1]', 'Cash On Delivery', '2024-02-18 11:04:12', '2024-09-04 12:05:00', 25),
(492, '8ibpP68xQt', 'null', 15, '116.5', 'paid', 'pending', '[14][61]', '[1][2]', 'Cash On Delivery', '2024-12-06 15:04:12', '2024-12-07 15:04:00', 25),
(493, '8ibpP68xQu', 'null', 17, '30', 'unpaid', 'pending', '[100][98]', '[1][2]', 'Cash On Delivery', '2024-03-07 11:04:12', '2024-08-05 12:05:00', 24),
(494, '8ibpP68xQv', 'null', 18, '11', 'paid', 'pending', '[33]', '[1]', 'Cash On Delivery', '2024-02-10 11:04:12', '2024-10-02 15:04:00', 25),
(495, '8ibpP68xQw', 'null', 17, '11.5', 'paid', 'pending', '[89]', '[1]', 'Cash On Delivery', '2024-03-17 15:04:12', '2024-06-12 15:04:00', 27),
(496, '8ibpP68xQx', 'null', 15, '9', 'unpaid', 'pending', '[25]', '[1]', 'Cash On Delivery', '2024-03-06 11:04:12', '2024-06-04 12:05:00', 24),
(497, '8ibpP68xQy', 'null', 18, '9.5', 'unpaid', 'pending', '[29]', '[1]', 'Cash On Delivery', '2024-01-06 11:04:12', '2024-10-04 12:05:00', 26),
(498, '8ibpP68xQz', 'null', 17, '57.5', 'paid', 'pending', '[11][22]', '[1][2]', 'Cash On Delivery', '2024-11-15 16:04:12', '2024-11-16 15:04:00', 25),
(499, '8ibpP68xQA', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-06-26 15:04:00', 25),
(500, '9ibpP68miu', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-06-26 15:04:00', 25),
(501, '9ibpP68miz', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-06-26 15:04:00', 25),
(502, '9ibpP68mip', 'null', 17, '63', 'paid', 'pending', '[16][56]', '[1][2]', 'Cash On Delivery', '2024-05-16 15:04:12', '2024-06-26 15:04:00', 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `featured_image` text NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`images`)),
  `short_description` longtext NOT NULL,
  `description` longtext NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tags`)),
  `specifications` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`specifications`)),
  `meta_keyword` text NOT NULL,
  `meta_description` longtext NOT NULL,
  `current_price` varchar(255) NOT NULL,
  `previous_price` varchar(255) NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `sub_cat_id` bigint(20) UNSIGNED NOT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `total_stock` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `featured_image`, `images`, `short_description`, `description`, `tags`, `specifications`, `meta_keyword`, `meta_description`, `current_price`, `previous_price`, `cat_id`, `sub_cat_id`, `child_cat_id`, `brand_id`, `total_stock`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Bird Box', 'bird-box', 'products/JpECvAC8aSXHLnZJ4pCuBI89P8WTbhAGdweccRFG.jpg.jpg', '[\"\",\"\"]', 'The book follows Malorie and her two young children surviving in a world ravaged by an unknown terror. They attempt to leave their safe haven in search of a new place, but the journey ahead is perilous.', 'Something is out there . . .\r\nSomething terrifying that must not be seen. One glimpse and a person is driven to deadly violence. No one knows what it is or where it came from.\r\nFive years after it began, a handful of scattered survivors remain, including Malorie and her two young children. Living in an abandoned house near the river, she has dreamed of fleeing to a place where they might be safe. Now, that the boy and girl are four, it is time to go. But the journey ahead will be terrifying: twenty miles downriver in a rowboat—blindfolded—with nothing to rely on but her wits and the children’s trained ears. One wrong choice and they will die. And something is following them. But is it man, animal, or monster?\r\nEngulfed in darkness, surrounded by sounds both familiar and frightening, Malorie embarks on a harrowing odyssey—a trip that takes her into an unseen world and back into the past, to the companions who once saved her. Under the guidance of the stalwart Tom, a motely group of strangers banded together against the unseen terror, creating order from the chaos. But when supplies ran low, they were forced to venture outside—and confront the ultimate question: in a world gone mad, who can really be trusted?\r\nInterweaving past and present, Malerman’s breathtaking debut is a horrific and gripping snapshot of a world unraveled that will have you racing to the final page.', '[{\"value\":\"Fiction\"},{\"value\":\"Fantasy Horror\"},{\"value\":\"Thriller\"},{\"value\":\"Suspense\"},{\"value\":\"edge and post-apocalyptic\"}]', 'null', '[{\"value\":\"Bird Box\"},{\"value\":\"Josh Malerman\"},{\"value\":\"two young children\"},{\"value\":\"horror\"}]', 'horror', '9.39', '12.06', 7, 21, NULL, 4, '12', 1, '2024-03-29 03:16:21', '2024-03-29 03:47:01'),
(4, 'Romeo and Juliet', 'romeo-and-juliet', 'products/ACOXJN9p0TmoOSp6JyPwsdcWx3IPqPvo9xtotlCW.jpg.jpg', '[\"\",\"\"]', 'Romeo and Juliet is a tragedy about two young star-crossed lovers whose deaths ultimately reconcile their feuding families.', 'In Romeo and Juliet, Shakespeare creates a violent world, in which two young people fall in love. It is not simply that their families disapprove; the Montagues and the Capulets are engaged in a blood feud.\r\nIn this death-filled setting, the movement from love at first sight to the lovers’ final union in death seems almost inevitable. And yet, this play set in an extraordinary world has become the quintessential story of young love. In part because of its exquisite language, it is easy to respond as if it were about all young lovers.', '[{\"value\":\"roman\"}]', 'null', '[{\"value\":\"romantic\"},{\"value\":\"Romeo and Juliet\"},{\"value\":\"William Shakespeare\"}]', 'romantic', '10.99', '11.99', 7, 23, NULL, 8, '50', 1, '2024-03-25 06:52:19', '2024-03-29 21:49:36'),
(5, 'Safe Haven', 'safe-haven', 'products/U7N0XrAmX8M5FZom5IFtMUXtlHIlGfnUqJ9F4EFM.jpg.jpg', '[\"\",\"\"]', 'Safe Haven follows the story of a woman named Katie, who moves to a small town in North Carolina to escape her past, and falls in love with a widower named Alex.', 'Safe Haven follows the story of a woman named Katie, who moves to a small town in North Carolina to escape her past, and falls in love with a widower named Alex.', '[{\"value\":\"roman\"}]', 'null', '[{\"value\":\"roman\"}]', 'roman', '5.72', '6.72', 7, 23, NULL, 7, '30', 1, '2024-03-25 07:35:52', '2024-03-29 03:42:15'),
(6, 'The Best Of Me', 'the-best-of-me', 'products/utWGhhXUimZpiocMzCU5nxDJ7MTQhzlhXECHW64F.jpg.jpg', '[\"\",\"\"]', 'The Best of Me follows the story of former high school sweethearts, Amanda Collier and Dawson Cole, who are reunited after 20 years and confront the choices they made in the past.', '\"Everyone wanted to believe that endless love was possible. She\'d believed in it once, too, back when she was eighteen.\"\r\nIn the spring of 1984, high school students Amanda Collier and Dawson Cole fell deeply, irrevocably in love. Though they were from opposite sides of the tracks, their love for one another seemed to defy the realities of life in their small town in North Carolina. But as the summer of their senior year came to a close, unforeseen events would tear the young couple apart, setting them on radically divergent paths.\r\nNow, twenty-five years later, Amanda and Dawson are summoned back home for the funeral of Tuck Hostetler, the mentor who once gave shelter to their high school romance. Neither has lived the life they imagined . . . and neither can forget the passionate first love that forever changed their lives. As Amanda and Dawson carry out the instructions Tuck left behind for them, they realize that everything they thought they knew—about Tuck, about themselves, and about the dreams they held dear—was not as it seemed.\r\nForced to confront painful memories, the former lovers will discover undeniable truths about the choices they have made. And in the course of a single, searing weekend, they will ask of the living, and the dead: Can love truly rewrite the past?', '[{\"value\":\"noval\"},{\"value\":\"Romance\"},{\"value\":\"Fiction\"},{\"value\":\"Nicholas Sparks\"}]', 'null', '[{\"value\":\"noval\"},{\"value\":\"Nicholas Sparks\"}]', 'noval', '4.99', '7.35', 7, 23, NULL, 7, '20', 1, '2024-03-25 11:49:38', '2024-03-29 03:41:42'),
(7, 'Eleanor & Park', 'eleanor-park', 'products/SrrYrPe8R1VrfSVKaABOIUQprgXHqOoHj9Sendcu.jpg.jpg', '[\"\",\"\"]', 'Eleanor & Park tells the story of two misfit teenagers who fall in love over comic books and mixtapes in 1980s Omaha, Nebraska.', 'Eleanor is the new girl in town, and she\'s never felt more alone. All mismatched clothes, mad red hair and chaotic home life, she couldn\'t stick out more if she tried.\r\nThen she takes the seat on the bus next to Park. Quiet, careful and - in Eleanor\'s eyes - impossibly cool, Park\'s worked out that flying under the radar is the best way to get by.\r\nSlowly, steadily, through late-night conversations and an ever-growing stack of mix tapes, Eleanor and Park fall in love. They fall in love the way you do the first time, when you\'re 16, and you have nothing and everything to lose.\r\nSet over the course of one school year in 1986, Eleanor & Park is funny, sad, shocking and true - an exquisite nostalgia trip for anyone who has never forgotten their first love.', '[{\"value\":\"noval\"},{\"value\":\"Eleanor & Park\"},{\"value\":\"Rainbow Rowell\"},{\"value\":\"social\"}]', 'null', '[{\"value\":\"Rainbow Rowell\"},{\"value\":\"Eleanor & Park\"}]', 'noval', '10.83', '19.00', 7, 23, NULL, 6, '15', 1, '2024-03-25 12:00:13', '2024-03-29 03:39:47'),
(8, 'IT', 'it', 'products/nD6xFneuraVPiyb912OY2OXvO7nbikcePzEvFj2I.jpg.jpg', '[\"\",\"\"]', 'It is a horror novel by American author Stephen King.', 'Welcome to Derry, Maine. It’s a small city, a place as hauntingly familiar as your own hometown. Only in Derry the haunting is real.\r\nThey were seven teenagers when they first stumbled upon the horror. Now they are grown-up men and women who have gone out into the big world to gain success and happiness. But the promise they made twenty-eight years ago calls them reunite in the same place where, as teenagers, they battled an evil creature that preyed on the city’s children. Now, children are being murdered again and their repressed memories of that terrifying summer return as they prepare to once again battle the monster lurking in Derry’s sewers.\r\nReaders of Stephen King know that Derry, Maine, is a place with a deep, dark hold on the author. It reappears in many of his books, including Bag of Bones, Hearts in Atlantis, and 11/22/63. But it all starts with It.\r\n“Stephen King’s most mature work” (St. Petersburg Times), “It will overwhelm you…to be read in a well-lit room only” (Los Angeles Times).', '[{\"value\":\"horror\"},{\"value\":\"novel\"},{\"value\":\"it\"},{\"value\":\"Stephen King\"},{\"value\":\"scary\"},{\"value\":\"creepy\"},{\"value\":\"nightmare\"}]', 'null', '[{\"value\":\"Stephen King\"},{\"value\":\"IT\"},{\"value\":\"horror\"}]', 'horror', '14.36', '15.99', 7, 21, NULL, 5, '10', 1, '2024-03-25 13:12:46', '2024-03-29 03:38:11'),
(9, 'The Shining', 'the-shining', 'products/Ou2kRkv1maDzJf0YvZcpO4ZvPDilmSdtVEueziLW.jpg.jpg', '[\"\",\"\"]', 'Jack Torrance’s new job at the Overlook Hotel is the perfect chance for a fresh start. As the off-season caretaker at the atmospheric old hotel, he’ll have plenty of time to spend reconnecting with his family and working on his writing.', 'Jack Torrance’s new job at the Overlook Hotel is the perfect chance for a fresh start. As the off-season caretaker at the atmospheric old hotel, he’ll have plenty of time to spend reconnecting with his family and working on his writing. But as the harsh winter weather sets in, the idyllic location feels ever more remote . . . and more sinister. And the only one to notice the strange and terrible forces gathering around the Overlook is Danny Torrance, a uniquely gifted five-year-old.', '[{\"value\":\"horror\"}]', 'null', '[{\"value\":\"horror\"},{\"value\":\"hotel\"},{\"value\":\"Stephen King\"},{\"value\":\"The Shining\"}]', 'horror', '7.69', '9.99', 7, 21, NULL, 4, '32', 1, '2024-03-29 03:19:09', '2024-03-29 03:56:08'),
(10, 'The Silence Of The Lambs', 'the-silence-of-the-lambs', 'products/ZAtocymw3k6vOmgQvWFDszE1W0llZwtwafWTNIW4.jpg.jpg', '[\"\",\"\"]', 'A serial murderer known only by a grotesquely apt nickname―Buffalo Bill―is stalking particular women. He has a purpose, but no one can fathom it, for the bodies are discovered in different states.', 'A serial murderer known only by a grotesquely apt nickname―Buffalo Bill―is stalking particular women. He has a purpose, but no one can fathom it, for the bodies are discovered in different states. Clarice Starling, a young trainee at the F.B.I. Academy, is surprised to be summoned by Jack Crawford, Chief of the Bureau\'s Behavioral Science section. Her assignment: to interview Dr. Hannibal Lecter, a brilliant psychiatrist and grisly killer now kept under close watch in the Baltimore State Hospital for the Criminally Insane. Lecter\'s insight into the minds of murderers could help track and capture Buffalo Bill.\r\nSmart and attractive, Starling is shaken to find herself in a strange, intense relationship with the acutely perceptive Lecter. His cryptic clues―about Buffalo Bill and about her―launch Clarice on a search that every reader will find startling, harrowing, and totally compelling.', '[{\"value\":\"Psychological horror\"},{\"value\":\"thriller\"},{\"value\":\"mystery\"}]', 'null', '[{\"value\":\"horror\"},{\"value\":\"The Silence of the Lambs\"},{\"value\":\"Thomas Harris\"},{\"value\":\"Psychological horror\"},{\"value\":\"thriller\"},{\"value\":\"mystery\"}]', 'horror', '9.79', '10.47', 7, 21, NULL, 3, '100', 1, '2024-03-29 22:01:14', '2024-03-29 22:01:14'),
(11, 'English for Children', 'english-for-children', 'products/7ykxGh0Z3smKUERe8lF6yxwvR53sSlnOrjPppGYH.png.png', '[\"\",\"\"]', 'LIKE TEST PREP presents its English for Children Series (Book 1-3) LIKE English (ESL/EFL) Series English for Kids 1-4 (Pre-Kindergarten) English for Children 1-3 (K-6) Open Door to English 1-6 (K-6) 200 English Dialogues (Grade 6-Adults)', 'LIKE TEST PREP presents its English for Children Series (Book 1-3) LIKE English (ESL/EFL) Series English for Kids 1-4 (Pre-Kindergarten) English for Children 1-3 (K-6) Open Door to English 1-6 (K-6) 200 English Dialogues (Grade 6-Adults)', '[{\"value\":\"English\"}]', 'null', '[{\"value\":\"English\"},{\"value\":\"English Children\"},{\"value\":\"Huyền Trang\"}]', 'English', '7.30', '8.00', 17, 24, NULL, 2, '10', 1, '2024-04-01 13:18:03', '2024-04-01 13:18:03'),
(12, 'English Made Easy: Learning English through Pictures', 'english-made-easy-learning-english-through-pictures', 'products/84tdfT7k1tltqtSU6tydNSL91fDrP2iORDEwzw6U.png.png', '[\"\",\"\"]', 'English Made Easy is a breakthrough in English language learning—imaginatively exploiting how pictures and text can work together to create understanding and help readers learn more productively.', 'It gives beginner English learners easy access to the vocabulary, grammar and functions of English as it is actually used in a comprehensive range of social situations. Self-guided students and classroom learners alike will be delighted by the way they are helped to progress effortlessly from one unit to the next, using a combination of pictures and text to discover for themselves how English works. The pictorial method used in this book is based on a thorough understanding of language structure and how language is successfully learned. The authors are experienced English language teachers with strong backgrounds in language analysis and language learning.', '[{\"value\":\"English\"}]', 'null', '[{\"value\":\"English Basic\"},{\"value\":\"English Easy\"},{\"value\":\"Jonathan Crichton & Pieter Koster\"},{\"value\":\"Learning Pictures\"}]', 'English', '8.90', '10.00', 17, 24, NULL, 1, '5', 1, '2024-04-01 13:22:33', '2024-04-01 13:22:33'),
(13, 'Oxford Discover', 'oxford-discover', 'products/qV0wcOi9vhU4Q6QJql2Pfl1T1w086YTQP9e5l2sx.png.png', '[\"\",\"\"]', 'Brand NEW. We ship worldwide', 'Brand NEW. We ship worldwide', '[{\"value\":\"English\"}]', 'null', '[{\"value\":\"Discovery\"},{\"value\":\"Oxford\"},{\"value\":\"English\"},{\"value\":\"Timothy Chadwick & Lesley Koustaff\"}]', 'English', '9.99', '12.00', 17, 24, NULL, 9, '10', 1, '2024-04-01 13:26:25', '2024-04-01 13:35:57'),
(14, 'Kid\'s Box', 'kids-box', 'products/J76bWqbnHtyXM7uozK2zaKeYvISdKt7Y4xKvF8qO.png.png', '[\"\",\"\"]', 'Kid\'s Box Second edition is a seven-level course and official preparation material for the Cambridge English Qualifications for young learners', 'Kid\'s Box Second edition is a seven-level course and official preparation material for the Cambridge English Qualifications for young learners. The fun course for seriously good results! This seven-level course delights children and inspires teachers with bright ideas for the English classroom. Perfect for general use Kid\'s Box Second edition is now updated with new vocabulary and activities so that it fully covers the syllabus of the revised Cambridge English: Young Learners tests. The Student\'s Book 1 presents and practices new language through amusing stories and fantastic songs and activities to give children an enjoyable and confident start to learning English. Cambridge English: Starters-type tests evaluate progress and familiarize children with the international tests format.', '[{\"value\":\"English\"}]', 'null', '[{\"value\":\"English Kid\"},{\"value\":\"American English\"},{\"value\":\"Caroline Nixon\"}]', 'English', '6.50', '9.00', 17, 24, NULL, 10, '8', 1, '2024-04-01 13:30:30', '2024-04-01 13:30:30'),
(15, 'Fun for Starters, Movers, and Flyers', 'fun-for-starters-movers-and-flyers', 'products/QbqKxvHSZiEQiDgw28ZdGApvNPwiBt7xbyFmgccq.png.png', '[\"\",\"\"]', 'Full-colour preparation material for the 2007 updated Cambridge Young Learners English Tests.', 'Fun activities balanced with exam-style questions practise all the areas of the syllabus in a communicative way. The material is specifically designed to focus on those areas most likely to cause problems for young learners at these levels.', '[{\"value\":\"English\"}]', 'null', '[{\"value\":\"English\"},{\"value\":\"Cambridge\"},{\"value\":\"Anne Robinson\"}]', 'English', '7.20', '8.00', 17, 24, NULL, 11, '10', 1, '2024-04-01 13:34:30', '2024-04-01 13:34:30'),
(16, 'An Integrated Course in Elementary Japanese', 'an-integrated-course-in-elementary-japanese', 'products/KbWYgC561FEgKC7bxtyYzu7zQeqUvfkORXrZ0Q1n.png.png', '[\"\",\"\"]', 'GENKI: An Integrated Course in Elementary Japanese is a study resource for people who are starting to learn Japanese.', 'It is designed to comprehensively build communication competencies across all four skill areas--listening, speaking, reading, and writing. GENKI consists of 23 lessons, divided into two volumes of textbooks and workbooks. Vol. 1 contains Lessons 1-12, and Vol. 2 covers Lessons 13-23. The audio material of the textbooks and workbooks can be downloaded and played on mobile devices by using an app called OTO Navi.', '[{\"value\":\"Japanese\"}]', 'null', '[{\"value\":\"Japanese\"},{\"value\":\"Genki\"},{\"value\":\"Eri Banno\"},{\"value\":\"Yoko Ikeda\"},{\"value\":\"Yutaka Ohno\"}]', 'Japanese', '13.70', '15.00', 17, 25, NULL, 12, '10', 1, '2024-04-01 13:45:50', '2024-04-01 13:45:50'),
(17, 'Japanese for Busy People', 'japanese-for-busy-people', 'products/bHCi0N5TTK3Ot9BDQZVfW6Ba7eky0iDAn3mbGacZ.png.png', '[\"\",\"\"]', 'Since it was first published in 1984, the focus of the Japanese for Busy People series has always been to teach Japanese for effective communication.', 'As suggested in the title, this is a concise course for busy students who want to learn natural, spoken Japanese as efficiently as possible in a limited amount of time.\r\nThe new Japanese for Busy People: Revised 4th Edition is made up of three volumes: Book I, Book II, and Book III. Book I is available in both romanized and kana versions, similar to the Revised 3rd Edition.\r\nThe Kana Version is exactly the same as the Romanized Version except for the scripts used throughout the book: hiragana and katakana.\r\nThe Kana Version is therefore recommended for those who have already learned kana (as these scripts are collectively called) or are learning them with Japanese for Busy People Kana Workbook or another such text. Studying Japanese in kana, rather than in romanized script, can lead to fluent pronunciation and facilitate a smooth transition to the study of kanji.', '[{\"value\":\"Japanese\"}]', 'null', '[{\"value\":\"Japanese people\"},{\"value\":\"Japanese Busy\"},{\"value\":\"AJALT\"}]', 'Japanese', '17.00', '12.99', 17, 25, NULL, 13, '10', 1, '2024-04-01 13:48:57', '2024-04-01 13:48:57'),
(18, 'Japanese from Zero', 'japanese-from-zero', 'products/2OHtwhV5FccKbSPxUtKOSQxVJ2Y0soUBmocfJi3h.png.png', '[\"\",\"\"]', 'Japanese From Zero! is an innovative and integrated approach to learning Japanese developed by professional Japanese interpreter George Trombley and co-writer Yukari Takenaka.', 'The lessons and techniques used in this series have been taught successfully for over ten years in classrooms throughout the world. Using up-to-date and easy-to-grasp grammar, Japanese From Zero! is the perfect course for current students of Japanese as well as absolute beginners.\r\n\r\nIn Book 1 of the Japanese From Zero! series, readers are taught new grammar concepts, over 800 new words and expressions, and also learn the hiragana writing system.', '[{\"value\":\"Japanese\"}]', 'null', '[{\"value\":\"Japanese\"},{\"value\":\"Japanese zero\"},{\"value\":\"George Trombley\"}]', 'Japanese', '10.50', '12.00', 17, 25, NULL, 14, '10', 1, '2024-04-01 13:52:05', '2024-04-01 13:52:05'),
(19, 'Remembering the Kanji', 'remembering-the-kanji', 'products/WNPU8bGtmtgbyfHLbRY1GdtNaQGsJBwWHVXGQnLF.jpg.jpg', '[\"\",\"\"]', 'Updated to include the 196 new kanji approved by the Japanese government in 2010 as “general-use” kanji, the sixth edition of this popular text aims to provide students with a simple method for correlating the writing and the meaning of Japanese characters in such a way as to make them both easy to remember.', 'It is intended not only for the beginner, but also for the more advanced student looking for some relief from the constant frustration of forgetting how to write the kanji, or for a way to systematize what he or she already knows.\r\n\r\nThe author begins with writing the kanji because―contrary to first impressions―it is in fact simpler than learning how to the pronounce them. By ordering the kanji according to their component parts or “primitive elements,” and then assigning each of these parts a distinct meaning with its own distinct image, the student is led to harness the powers of “imaginative memory” to learn the various combinations that make up the kanji. In addition, each kanji is given its own key word to represent the meaning, or one of the principal meanings, of that character. These key words provide the setting for a particular kanji’s “story,” whose protagonists are the primitive elements.', '[{\"value\":\"Japanese\"}]', 'null', '[{\"value\":\"Kanji\"},{\"value\":\"Japanese\"},{\"value\":\"James W. Heisig\"}]', 'Japanese', '10.20', '13.00', 17, 25, NULL, 15, '10', 1, '2024-04-01 13:57:46', '2024-04-01 13:57:46'),
(20, 'The Rise of the Roman Empire', 'the-rise-of-the-roman-empire', 'products/uXgJtfh23aQFGJtsubooo1AZiG3p4Xr8weElNL0Y.jpg.jpg', '[\"\",\"\"]', 'On the horizons of many warring tribes, Roman warriors, knights from chivalric orders, and the devoted penniless appeared on a divine mission ready to conquer with an appetite for destruction, salvation, and a higher purpose. Pax Romana.', 'Had the world ever seen the magnitude of empires as it did in the Roman Empires that would unhinge themselves from their very foundation in their attempt to dominate over kings, lords, and tribes? What caused the Romans to proclaim themselves worthy of answering a seemingly providential call to spread the Roman way?\r\n\r\nThis is the story of their shifting identity over the course of a mind-boggling history in their steep ascents and defiant schisms transfixed with glory and virtue that lasted for thousands of years. It is the story of Rome\'s lingering origin and Rome\'s spirit of conquest as their enemies encircled them. The perilous protection they would offer to a papacy, besieged by perpetual land grabs of powerful nobles and distant tribes, was often compromised by their own faults, negligence and the nature of where their empire stopped and their Romanness began. They fought their own with just as much fervor as those who appeared at their fronts. Did their very spirit and ascent imperil that which united them, dividing them, as the world around them embraced or rejected their very foundation', '[{\"value\":\"History\"}]', 'null', '[{\"value\":\"History\"},{\"value\":\"Roman Empire\"},{\"value\":\"Polybius\"}]', 'History', '20.00', '30.00', 13, 26, NULL, 20, '10', 1, '2024-04-01 14:20:36', '2024-04-01 14:20:36'),
(21, 'A History of Modern Europe: From the French Revolution to the Present', 'a-history-of-modern-europe-from-the-french-revolution-to-the-present', 'products/OpzYQ49AtRzp4gJh2BSvj8q38j8xy6O0E2nHSxrU.jpg.jpg', '[\"\",\"\"]', 'A classic in its field, loved by instructors and students for its narrative flair, humor, authority, and comprehensive coverage. More than 100,000 copies sold!', 'Available in both one-volume and two-volume paperback editions, A History of Modern Europe presents a panoramic survey of modern Europe from the Renaissance to the present day. A single author lends a unified approach and consistent style throughout, with an emphasis on the connections of events and people over time.\r\n\r\nThe Third Edition, like the two before it, is authoritative and up-to-date. New to the Third Edition is the theme of empire. From the imperial rivalries between France and Spain in the sixteenth and seventeenth centuries, through the rise and fall of the Ottoman Turkish empire, and on into the imperial history of the twentieth century―decolonization, the spread of the Soviet empire, and the imperial power of the United States―the theme of empire helps students find commonalities among the events of European history.', '[{\"value\":\"History\"}]', 'null', '[{\"value\":\"History Europe\"},{\"value\":\"John Merriman\"}]', 'History', '40.00', '50.00', 13, 26, NULL, 21, '10', 1, '2024-04-01 14:24:13', '2024-04-01 14:24:13'),
(22, 'Medieval Europe: 400-1500', 'medieval-europe-400-1500', 'products/cKTOxaYmwP5oCH8VdZXOMAAocCK6fgrxMbM9Vj5i.jpg.jpg', '[\"\",\"\"]', 'A spirited and thought-provoking history of the vast changes that transformed Europe during the 1,000-year span of the Middle Ages', 'The millennium between the breakup of the western Roman Empire and the Reformation was a long and hugely transformative period—one not easily chronicled within the scope of a few hundred pages. Yet distinguished historian Chris Wickham has taken up the challenge in this landmark book, and he succeeds in producing the most riveting account of medieval Europe in a generation.\r\n \r\nTracking the entire sweep of the Middle Ages across Europe, Wickham focuses on important changes century by century, including such pivotal crises and moments as the fall of the western Roman Empire, Charlemagne’s reforms, the feudal revolution, the challenge of heresy, the destruction of the Byzantine Empire, the rebuilding of late medieval states, and the appalling devastation of the Black Death. He provides illuminating vignettes that underscore how shifting social, economic, and political circumstances affected individual lives and international events. Wickham offers both a new conception of Europe’s medieval period and a provocative revision of exactly how and why the Middle Ages matter.', '[{\"value\":\"History\"}]', 'null', '[{\"value\":\"History Europe\"},{\"value\":\"History\"},{\"value\":\"Chris Wickham\"}]', 'History', '25.00', '33.30', 13, 26, NULL, 22, '10', 1, '2024-04-01 14:27:26', '2024-04-01 14:27:26'),
(23, 'The Arrival of Greeks, Celts, and Romans', 'the-arrival-of-greeks-celts-and-romans', 'products/U6lsQeS7EJO5qfw9TVyipcCCKqRodP52MYgeVLLD.jpg.jpg', '[\"\",\"\"]', 'The Arrival of Greeks, Celts, and Romans is a book about European historical periods', 'The Arrival of Greeks, Celts, and Romans is a book about European historical periods', '[{\"value\":\"History\"}]', 'null', '[{\"value\":\"History Europe\"},{\"value\":\"Brendan Nagle\"}]', 'History', '30.00', '45.00', 13, 26, NULL, 23, '10', 1, '2024-04-01 14:30:58', '2024-04-01 14:30:58'),
(24, 'Cinderella', 'cinderella', 'products/Azwmqmu6WwgHbX1bCvFkrZ21rTuj4W9RHvSk3LUS.jpg.jpg', '[\"\",\"\"]', 'A young woman, mistreated by her stepmother and stepsisters, but carrying within her a good and gracious heart, wins the love of prince with the help of her fairy godmother.', 'e original tale of Cinderella was written by Charles Perrault, inventor of the modern fairy tale and creator of such timeless characters as Little Red Riding Hood, Sleeping Beauty, and Puss in Boots. It is among the most beautiful and enduring of all stories, and has inspired hundreds of adaptations, including two Disney films and hundreds of plays and books.\r\nThis edition combines Soren Filipski’s lively modern translation with two famous sets of vintage illustrations: A. Jacques’s lavish engravings from the great 1843 Curmer edition, and those of the French master Gustave Doré, from Tales from Mother Goose. Both sets provide a rich, dramatic visual compliment to this charming tale of love and the rewards of virtue.', '[{\"value\":\"Children\"},{\"value\":\"fairy Tale\"}]', 'null', '[{\"value\":\"Children\"},{\"value\":\"fairy\"},{\"value\":\"Charles Perrault\"}]', 'children', '9.85', '10.00', 16, 28, NULL, 24, '16', 1, '2024-04-01 18:14:15', '2024-04-01 18:14:15'),
(25, 'Little Red Riding Hood', 'little-red-riding-hood', 'products/1AcTOsIvBm0mO22OpwfliHC7Y4DopMAg7qxGqWQ8.jpg.jpg', '[\"\",\"\"]', 'This story is about a young girl named Little Red Riding Hood (original French name Le Petit Chaperon Rouge) and her adventures when she is tasked with delivering food to her grandmother.', 'In the story, Little Red Riding Hood\'s mother warned her not to leave the path, but she became enchanted and lost her way in the forest. While walking, she met a wolf, who then started talking to her and asked what she was carrying. At first, Little Red Riding Hood focused on keeping it a secret and said nothing, but in the end, she revealed that she was bringing food to her grandmother.', '[{\"value\":\"Children\"},{\"value\":\"Fairy Tale\"}]', 'null', '[{\"value\":\"children\"},{\"value\":\"fairy tale\"},{\"value\":\"In the story\"},{\"value\":\"Little Red Riding Hood\"},{\"value\":\"Charles Perrault\"}]', 'children', '8.99', '10.00', 16, 28, NULL, 24, '10', 1, '2024-04-01 18:20:25', '2024-04-01 18:20:25'),
(26, 'Puss in Boots', 'puss-in-boots', 'products/ubUvhByc35oiwfMl0oyZvKWP9H2WdhjeT53mf4z3.jpg.jpg', '[\"\",\"\"]', 'The story is about a clever and sinister cat who helps his poor owner become a rich and powerful man.', 'In the story, this cat is inherited by a poor guy after his father\'s death. The cat decided to use his intelligence and planning to improve his master\'s situation. The cat first invests a pair of shoes for its owner and then goes out, starting a chain of unpredictable events.\r\nThe cat made elaborate plans to deceive a tiger, a devil, and a royal family, helping his master gain fortune and fame. During this process, the cat helped its owner become a rich man and marry a princess.', '[{\"value\":\"children\"},{\"value\":\"fairy tale\"},{\"value\":\"Ages: 4 - 8 years\"}]', 'null', '[{\"value\":\"children\"},{\"value\":\"fairy\"},{\"value\":\"Ages: 4 - 8 years\"},{\"value\":\"Puss in Boots\"},{\"value\":\"Charles Perrault\"}]', 'chlidren', '9.89', '9.99', 16, 28, NULL, 24, '14', 1, '2024-04-01 18:25:24', '2024-04-01 18:25:24'),
(27, 'Sleeping Beauty', 'sleeping-beauty', 'products/v5KG9Yx1s4LSg9OP4nHvMw7AfVQ1y44OIidfdye1.jpg.jpg', '[\"\",\"\"]', 'The story of a young princess who is put to sleep by a curse and can only be awakened by a kiss from a brave prince.', 'In the story, a queen gives birth to a beautiful princess named Aurora. During a celebration for a little girl\'s birthday, three fairies are invited, each with a spell they consider auspicious. But an evil fairy felt offended and cast a curse: on the day Aurora turns sixteen, she will crash into a thorn flower and will sleep soundly until a prince comes to rescue her through a kiss. Firstly.\r\nWanting to protect their daughter, the king and queen issued a ban on the use of any type of hemp flower in the kingdom. But on Aurora\'s sixteenth birthday, she was accidentally led into her forbidden bedroom and ignited by a thorn flower. She fell into a deep sleep.\r\nOver the years that followed, the surrounding forest gradually grew back and covered the princess\'s castle. Finally, a brave prince found the castle and woke up the princess with a kiss. The prince and princess then lived happily together and lived forever in love and peace.', '[{\"value\":\"chlidren\"},{\"value\":\"fairy tale\"}]', 'null', '[{\"value\":\"children\"},{\"value\":\"Sleeping Beauty\"},{\"value\":\"Charles Perrault\"}]', 'children', '9.85', '10.00', 16, 28, NULL, 24, '10', 1, '2024-04-01 18:49:15', '2024-04-01 18:49:15'),
(28, 'Alice\'s Adventures in Wonderland', 'alices-adventures-in-wonderland', 'products/oeJgzDnJ7zFUvdQbb8MQpxiu4RVub0VF3q7PuY8q.jpg.jpg', '[\"\",\"\"]', '\"Alice\'s Adventures in Wonderland\" is a classic literary work by the British author Lewis Carroll, first published in 1865. The story follows the adventures of a girl named Alice, who unexpectedly falls into a strange and magical world after following a white rabbit into a rabbit hole.', 'In this peculiar world, Alice encounters a series of eccentric characters and experiences various humorous and perilous situations. She meets the White Rabbit, a forgetful Caterpillar, a grinning creature called the Cheshire Cat, and a Queen of Hearts who often demands the execution of others.\r\nAlice undergoes many different adventures in this world, each challenging the notions of logic, reality, and societal norms. Ultimately, after a series of trials, Alice finally wakes up and realizes that everything was just a dream.', '[{\"value\":\"children\"},{\"value\":\"fairy tale\"}]', 'null', '[{\"value\":\"children\"},{\"value\":\"Alice\'s Adventures in Wonderland\"}]', 'children', '5.97', '6.00', 16, 28, NULL, 25, '13', 1, '2024-04-01 19:00:54', '2024-04-01 19:00:54'),
(29, 'The Little Prince', 'the-little-prince', 'products/jFJX9UKKVhV89LBS5qeYyBuhCeQNhWtfXYiznODB.jpg.jpg', '[\"\",\"\"]', 'A pilot crashes in the Sahara Desert and encounters a strange young boy who calls himself the Little Prince. The Little Prince has traveled there from his home on a lonely, distant asteroid with a single rose. The story that follows is a beautiful and at times heartbreaking meditation on human nature.', 'A pilot crashes in the Sahara Desert and encounters a strange young boy who calls himself the Little Prince. The Little Prince has traveled there from his home on a lonely, distant asteroid with a single rose. The story that follows is a beautiful and at times heartbreaking meditation on human nature.\r\nThe Little Prince is one of the best-selling and most translated books of all time, universally cherished by children and adults alike, and Richard Howard\'s translation of the beloved classic beautifully reflects Saint-Exupéry\'s unique and gifted style, bringing the English text as close as possible to the French in language, style, and spirit. In this special edition, the artwork has been restored to match in detail and in color Saint-Exupéry\'s original artwork.', '[{\"value\":\"children\"},{\"value\":\"fairy tale\"}]', 'null', '[{\"value\":\"chlidren\"},{\"value\":\"fairy\"}]', 'children', '9.49', '12.99', 16, 28, NULL, 26, '13', 1, '2024-04-01 19:32:59', '2024-04-01 19:32:59'),
(30, 'The Ugly Duckling', 'the-ugly-duckling', 'products/Q6ozaKkTBRdWeiFgwtmOM5nN8RZV6iuKjmUeFCQw.jpg.jpg', '[\"\",\"\"]', 'Based on Walt Disney’s The Ugly Duckling Silly Symphonies animated short from 1939, this classic Little Golden Book was originally published in 1952. Now the beloved book is back to delight a new generation of boys and girls ages 2 to 5—as well as collectors of all ages!', 'Based on Walt Disney’s The Ugly Duckling Silly Symphonies animated short from 1939, this classic Little Golden Book was originally published in 1952. Now the beloved book is back to delight a new generation of boys and girls ages 2 to 5—as well as collectors of all ages!', '[{\"value\":\"children\"},{\"value\":\"fairy tale\"}]', 'null', '[{\"value\":\"children\"},{\"value\":\"The Ugly Duckling\"}]', 'children', '3.99', '5.99', 16, 28, NULL, 27, '15', 1, '2024-04-01 19:44:23', '2024-04-01 19:44:23'),
(31, 'The Jungle Book', 'the-jungle-book', 'products/O2YVuKN9HZRdXbAayoWADPQKtHKOElLQ8VkQoNCp.jpg.jpg', '[\"\",\"\"]', 'When Mowgli loses his parents to a vicious tiger attack in a deep forest in India, he is taken in by a pack of wolves. Adopted by the Wolf Mother Raksha and their leader Akela, young Mowgli learns to adapt to the jungle life and becomes best friends with Baloo the bear and Bagheera the panther, who know the ways of men well and will do anything to protect the boy.', 'When Mowgli loses his parents to a vicious tiger attack in a deep forest in India, he is taken in by a pack of wolves. Adopted by the Wolf Mother Raksha and their leader Akela, young Mowgli learns to adapt to the jungle life and becomes best friends with Baloo the bear and Bagheera the panther, who know the ways of men well and will do anything to protect the boy.\r\nBut when Shere Khan, a tiger who hates humans with a passion, returns to hunt down Mowgli, Bagheera decides the boy should return to civilization. Mowgli is torn between leaving behind his beloved jungle and animal companions, but their adventures teach him valuable lessons about survival and life in the jungle.\r\nWhen he reaches the nearby human village at last, Mowgli will have to make an impossible choice. Can he bid farewell to the animal friends he’s come to know as his family just to save his life?', '[{\"value\":\"children\"},{\"value\":\"fairy tale\"}]', 'null', '[{\"value\":\"children\"}]', 'children', '7.99', '8.50', 16, 28, NULL, 28, '13', 1, '2024-04-01 19:50:46', '2024-04-01 19:50:46'),
(32, 'The 7 Habits of Happy Kids', 'the-7-habits-of-happy-kids', 'products/GCWywHkoxnDfVlerailuTY60leBTrPxrXYA4fZGH.jpg.jpg', '[\"\",\"\"]', 'For the Seven Oaks friends, there is always something to do. Whether they\'re singing along with Pokey Porcupine\'s harmonica or playing soccer with Jumper Rabbit, everyone is having fun and learning all sorts of things. These seven stories show how practicing the 7 Habits makes this possible for the whole Seven Oaks Community.', 'For the Seven Oaks friends, there is always something to do. Whether they\'re singing along with Pokey Porcupine\'s harmonica or playing soccer with Jumper Rabbit, everyone is having fun and learning all sorts of things. These seven stories show how practicing the 7 Habits makes this possible for the whole Seven Oaks Community.\r\nFrom learning how to take charge of their own lives to discovering how balance is best, the Seven Oaks friends have tons of adventures and find out how each and every kid can be a happy kid!', '[{\"value\":\"life style\"},{\"value\":\"kid\"}]', 'null', '[{\"value\":\"Sean Covey\"},{\"value\":\"The 7 Habits of Happy Kids\"}]', 'children', '11.61', '19.99', 16, 27, NULL, 29, '5', 1, '2024-04-01 19:57:46', '2024-04-01 19:57:46'),
(33, 'Mindset: The New Psychology of Success for Kids', 'mindset-the-new-psychology-of-success-for-kids', 'products/nxhskaS4hccQPwh16yJJ9BESsZzVFefW8Z4nbZyE.jpg.jpg', '[\"\",\"\"]', 'This book helps children understand the concept of \"mindset\" and how to recognize and develop a positive mindset to overcome formulas and achieve goals.', 'In this edition, Dweck offers new insights into her now famous and broad concept. She introduces a phenomenon she calls false growth mindset and guides people toward adopting a deeper, truer growth mindset. She also expands the thinking concept beyond the individual, applying it to the cultures of groups and organizations. With the right mindset, you can motivate those you lead, teach, and love—to transform their lives and your own.', '[{\"value\":\"life style\"}]', 'null', '[{\"value\":\"life style\"}]', 'children', '10.80', '17.00', 16, 27, NULL, 30, '4', 1, '2024-04-01 20:06:00', '2024-04-01 20:06:00'),
(34, 'Beautiful Oops!', 'beautiful-oops', 'products/MQrKTMgwb18QdCIPgYDNTv7UTgyGHmcH0w8AFyk4.jpg.jpg', '[\"\",\"\"]', 'This book encourages children to recognize the value of making mistakes and learn how to turn them into exciting, creative opportunities.', '*Holiday Gifts that Give Back! Orders Feed & Care for Rescued Animals* Beautiful Oops! from Workman Publishing says \"Hooray for mistakes!\" This interactive book demonstrates how every mistake is an opportunity to make something beautiful. Unique in every respect, this book is full of pop-ups, lift-the-flaps, tears, holes, overlays, bends, smudges, and more, each demonstrating how blunders can become wonders. Celebrate all life\'s Beautiful Oops! and teach kids that it\'s perfectly fine, and sometimes fortuitous, to make a mistake.', '[{\"value\":\"children\"},{\"value\":\"life style\"}]', 'null', '[{\"value\":\"children\"},{\"value\":\"life style\"},{\"value\":\"Barney Saltzberg\"},{\"value\":\"Beautiful Oops!\"}]', 'children', '11.99', '16.99', 16, 27, NULL, 31, '10', 1, '2024-04-01 20:17:34', '2024-04-01 20:17:34'),
(35, 'The Rise and Fall of Ancient Egypt', 'the-rise-and-fall-of-ancient-egypt', 'products/WinLKWHTleohELkaGrvrKeOPSpN3jDmKyLEPWWr4.jpg.jpg', '[\"\",\"\"]', 'This book provides an overview of the history of ancient Egypt from the classical period to the Ptolemaic and Roman periods.', 'In this landmark work, one of the world\'s most renowned Egyptologists tells the epic story of this great civilization, from its birth as the first nation-state to its final absorption into the Roman Empire - 3,000 years of wild drama, bold spectacle, and unforgettable characters.\r\nAward-winning scholar Toby Wilkinson captures not only the lavish pomp and artistic grandeur of this land of pyramids and pharaohs but for the first time reveals the constant propaganda and repression that were its foundations. Drawing upon 40 years of archaeological research, Wilkinson takes us inside an exotic tribal society with a pre-monetary economy and decadent, divine kings who ruled with all-too-recognizable human emotions.\r\nRiveting and revelatory, filled with new information and unique interpretations, The Rise and Fall of Ancient Egypt will become the standard source about this great civilization, one that lasted - so far - longer than any other.', '[{\"value\":\"History\"},{\"value\":\"Egyptian\"}]', 'null', '[{\"value\":\"history\"},{\"value\":\"Egyptian history\"},{\"value\":\"Toby Wilkinson:\"},{\"value\":\"The Rise and Fall of Ancient Egypt\"}]', 'history', '22.45', '25.99', 13, 29, NULL, 32, '24', 1, '2024-04-01 20:42:32', '2024-04-01 20:42:32'),
(36, 'The Complete Gods and Goddesses of Ancient Egypt', 'the-complete-gods-and-goddesses-of-ancient-egypt', 'products/X2bNVwE73D4JuhSb8svpefa3gByasIonUWspfIaT.jpg.jpg', '[\"\",\"\"]', '\"The Complete Gods and Goddesses of Ancient Egypt\" explores the mythology and religion of ancient Egypt, helping readers better understand the beliefs and religious system of the ancient Egyptians.', 'A comprehensive guide to the deities of ancient Egypt: their origins and their central role in the lives of the Egyptian people\r\nWorshipped for over three-fifths of recorded history, Egypt’s gods and goddesses are among the most fascinating of human civilization. The lives of pharaohs and commoners alike were dominated by the need to honor, worship, and pacify the huge pantheon of deities, from the benevolent to the malevolent. The richness and complexity of their mythology is reflected in countless tributes throughout Egypt, from lavish tomb paintings and imposing temple reliefs to humble household shrines.\r\nThis book examines the evolution, worship, and eventual decline of the numerous gods and goddesses―from minor household figures such as Bes and Tawaret to the all-powerful deities Amun and Re―that made Egypt the most theocratic society of the ancient world, and made Egyptians, according to Herodotus, “more religious than any other people.”\r\nNow available in paperback, with hundreds of illustrations and specially commissioned drawings, this title remains the most comprehensive and authoritative guide to the deities that lay at the heart of Egyptian religion and society.', '[{\"value\":\"Egyptian\"},{\"value\":\"history\"}]', 'null', '[{\"value\":\"history\"},{\"value\":\"Egyptian history\"}]', 'history', '20.21', '26.95', 13, 29, NULL, 33, '6', 1, '2024-04-01 20:52:34', '2024-04-01 20:52:34'),
(37, 'The Pyramids: The Mystery, Culture, and Science of Egypt\'s Great Monuments', 'the-pyramids-the-mystery-culture-and-science-of-egypts-great-monuments', 'products/ii8J2ilnjUGp5yZtT7WPZRhVHhu2hXhCGI4wCfhR.jpg.jpg', '[\"\",\"\"]', 'Hailed by Science News as “the new seminal text,” The Pyramids is a comprehensive record of Egypt’s most awe-inspiring monuments and what Egyptologists now know about them today—from their construction and purpose to the culture that surrounded them. Distinguished Egyptologist Miroslav Verner draws from the research of the earliest Egyptologists as well as the startling discoveries made with late twentieth century technology.', 'Hailed by Science News as “the new seminal text,” The Pyramids is a comprehensive record of Egypt’s most awe-inspiring monuments and what Egyptologists now know about them today—from their construction and purpose to the culture that surrounded them. Distinguished Egyptologist Miroslav Verner draws from the research of the earliest Egyptologists as well as the startling discoveries made with late twentieth century technology.\r\nHere you will find a clear, authoritative guide to the ancient culture that created the pyramids five thousand years ago without iron or bronze, and with only the most elementary systems of calculation. As Verner explains the magnitude of this accomplishment, he also traces the stories and ideas of the intrepid scientists who uncovered the mysteries of the pyramids.', '[{\"value\":\"history\"},{\"value\":\"Egyptian history\"}]', 'null', '[{\"value\":\"history\"},{\"value\":\"Miroslav Verner\"},{\"value\":\"The Pyramids: The Mystery\"},{\"value\":\"Culture\"},{\"value\":\"and Science of Egypt\'s Great Monuments\"}]', 'history', '11.99', '17.99', 13, 29, NULL, 34, '6', 1, '2024-04-01 21:00:45', '2024-04-01 21:00:45'),
(38, 'The Egyptian Book of the Dead: The Book of Going Forth by Day', 'the-egyptian-book-of-the-dead-the-book-of-going-forth-by-day', 'products/2dszPdI1Ps9dqSQGKZbuNXNysOw6wEhKgNCqVktG.jpg.jpg', '[\"\",\"\"]', 'A set of mythological and historical texts authorized to be used to guide the dead on their journey to the afterlife.', 'For the first time in 3,300 years, The Egyptian Book of the Dead: The Book of Going Forth by Day: The Papyrus of Ani is showcased in its entirety in seventy four magnificent color pages.\r\nMaybe the most stunning presentation of this book in 3300 years: Upon death, it was the practice for some Egyptians to produce a papyrus manuscript called the Book of Going Forth by Day or the Book of the Dead. A Book of the Dead includes declarations and spells to help the deceased in the afterlife. The Papyrus of Ani is the manuscript compiled for Ani, the royal scribe of Thebes. Written and illustrated almost 3,300 years ago, The Papyrus of Ani is a papyrus manuscript with cursive hieroglyphs and color illustrations. It is the most beautiful, best preserved, and complete example of ancient Egyptian philosophical and religious thought known to exist.\r\nThe Egyptian Book of the Dead is an integral part of the world\'s spiritual heritage. It is an artistic rendering of the mysteries of life and death. For the first time since its creation, this ancient papyrus is now available in full color below with an integrated English translation directly each image.', '[{\"value\":\"Egyptian history\"},{\"value\":\"history\"}]', 'null', '[{\"value\":\"history\"},{\"value\":\"Egyptian\"},{\"value\":\"Raymond Faulkner\"},{\"value\":\"The Egyptian Book of the Dead: The Book of Going Forth by Day\"}]', 'history', '23.26', '35.00', 13, 29, NULL, 35, '6', 1, '2024-04-01 21:09:52', '2024-04-01 21:09:52'),
(39, 'Temples, Tombs, and Hieroglyphs: A Popular History of Ancient Egypt', 'temples-tombs-and-hieroglyphs-a-popular-history-of-ancient-egypt', 'products/uGft3AW7tEx1JcjW7SYznivrriEa4C4dzPuthtgE.jpg.jpg', '[\"\",\"\"]', 'This book is a popular book about the history of ancient Egypt, focusing on the culture and development of this country through different periods.', 'World-renowned Egyptologist Barbara Mertz explores the reality behind the bestselling fiction she writes (as Elizabeth Peters) and casts a dazzling light on a remarkable civilization.\r\nAfascinating chronicle of an extraordinary people—from the first Stone Age settlements through the reign of Cleopatra and the Roman invasions—Temples, Tombs, and Hieroglyphs brings ancient Egypt to life as never before. Lavishly illustrated with pictures, maps, and photographs, it offers tantalizing glimpses into Egyptian society; amazing stories of the pharaohs and the rise and fall of great dynasties; a sampling of culture, religion, and folklore; stories of explorers, scientists, and scoundrels who sought to unravel or exploit the ageless mysteries; and new insights into the architectural wonders that were raised along the banks of the Nile.', '[{\"value\":\"history\"},{\"value\":\"Egyptian Style\"}]', 'null', '[{\"value\":\"Barbara Mertz\"},{\"value\":\"Temples\"},{\"value\":\"Tombs\"},{\"value\":\"and Hieroglyphs: A Popular History of Ancient Egypt\"}]', 'history', '6.00', '14.49', 13, 29, NULL, 36, '5', 1, '2024-04-01 21:14:48', '2024-04-01 21:17:46'),
(40, 'The Story of Art', 'the-story-of-art', 'products/CuYPFOEt9GKo3Z5HOdLR2vOlq1eEMzL1kG58ld1Y.jpg.jpg', '[\"\",\"\"]', '\'Anyone looking for the most readable survey of the history of art from the [sic] cave paintings to the 20th century should buy the new, beautifully produced pocket edition of The Story of Art, still one of the great classics of art criticism.\'', 'A cornerstone of art history – in a compact yet readable format and with a new preface by the author\'s granddaughter \r\nThe Story of Art has been a global bestseller for over half a century – the finest and most popular introduction ever written, published globally in more than 30 languages. Attracted by the simplicity and clarity of his writing, readers of all ages and backgrounds have found in Professor Gombrich a true master, who combines knowledge and wisdom with a unique gift for communicating his deep love of the subject.\r\nUpdated with a stunning new cover and a preface written specially by Professor Gombrich\'s granddaughter Leonie, this pocket format allows Gombrich\'s classic work to continue its triumphant progress for another generation, and to remain the title of first choice for all newcomers to art and its history.', '[{\"value\":\"Art\"},{\"value\":\"History\"}]', 'null', '[{\"value\":\"art\"},{\"value\":\"The Story of Art\"},{\"value\":\"E.H. Gombrich\"}]', 'art', '29.49', '34.95', 15, 31, NULL, 37, '5', 1, '2024-04-02 15:38:51', '2024-04-02 15:38:51');
INSERT INTO `products` (`id`, `name`, `slug`, `featured_image`, `images`, `short_description`, `description`, `tags`, `specifications`, `meta_keyword`, `meta_description`, `current_price`, `previous_price`, `cat_id`, `sub_cat_id`, `child_cat_id`, `brand_id`, `total_stock`, `status`, `created_at`, `updated_at`) VALUES
(41, 'The Art Spirit', 'the-art-spirit', 'products/dfOiaCfQPvRGLABfAozvwOB2IlD06alqPeKBSOV6.jpg.jpg', '[\"\",\"\"]', 'A classic work of advice, criticism, and inspiration for aspiring artists and lovers of art. \"Art when really understood is the province of every human being\".', '\"Art when really understood is the province of every human being.\" So begins The Art Spirit, the collected words, teachings, and wisdom of innovative artist and beloved teacher Robert Henri. Henri, who painted in the Realist style and was a founding member of the Ashcan School, was known for his belief in interactive nature of creativity and inspiration, and the enduring power of art. Since its first publication in 1923, The Art Spirit, has been a source of inspiration for artists and creatives from David Lynch to George Bellows. Filled with valuable technical advice as well as wisdom about the place of art and the artist in American society, this classic work continues to be a must-read for anyone interested in the power of creation and the beauty of art.', '[{\"value\":\"Art\"}]', 'null', '[{\"value\":\"art\"}]', 'art', '15.99', '19.99', 15, 31, NULL, 38, '7', 1, '2024-04-02 15:44:25', '2024-04-02 15:44:25'),
(42, 'Art & Fear: Observations on the Perils (and Rewards) of Artmaking', 'art-fear-observations-on-the-perils-and-rewards-of-artmaking', 'products/XgOsoZFOb5ySyWPv49gFsxrqVqzPF2R3Mb8Chrmk.jpg.jpg', '[\"\",\"\"]', '\"Art & Fear: Observations on the Perils (and Rewards) of Artmaking\" is about exploring the challenges and fears of creating art and how to overcome them.', '\"This is a book about making art. Ordinary art. Ordinary art means something like: all art not made by Mozart. After all, art is rarely made by Mozart-like people; essentially—statistically speaking—there aren\'t any people like that. Geniuses get made once-a-century or so, yet good art gets made all the time, so to equate the making of art with the workings of genius removes this intimately human activity to a strangely unreachable and unknowable place. For all practical purposes making art can be examined in great detail without ever getting entangled in the very remote problems of genius.\"\r\n—-from the Introduction\r\nArt & Fear explores the way art gets made, the reasons it often doesn\'t get made, and the nature of the difficulties that cause so many artists to give up along the way. The book\'s co-authors, David Bayles and Ted Orland, are themselves both working artists, grappling daily with the problems of making art in the real world. Their insights and observations, drawn from personal experience, provide an incisive view into the world of art as it is expeienced by artmakers themselves.\r\nThis is not your typical self-help book. This is a book written by artists, for artists -— it\'s about what it feels like when artists sit down at their easel or keyboard, in their studio or performance space, trying to do the work they need to do. First published in 1994, Art & Fear quickly became an underground classic. Word-of-mouth response alone—now enhanced by internet posting—has placed it among the best-selling books on artmaking and creativity nationally.\r\nArt & Fear has attracted a remarkably diverse audience, ranging from beginning to accomplished artists in every medium, and including an exceptional concentration among students and teachers. The original Capra Press edition of Art & Fear sold 80,000 copies.', '[{\"value\":\"Art\"}]', 'null', '[{\"value\":\"art\"}]', 'art', '9.99', '12.95', 15, 31, NULL, 39, '7', 1, '2024-04-02 15:49:33', '2024-04-02 15:49:33'),
(43, 'How to See: Looking, Talking, and Thinking about Art', 'how-to-see-looking-talking-and-thinking-about-art', 'products/bti0PbPnFuSYj003ujesK1iPYAC464DYTucSgK6u.jpg.jpg', '[\"\",\"\"]', '“If John Berger’s Ways of Seeing is a classic of art criticism, looking at the ‘what’ of art, then David Salle’s How to See is the artist’s reply, a brilliant series of reflections on how artists think when they make their work. The ‘how’ of art has perhaps never been better explored”.', '“If John Berger’s Ways of Seeing is a classic of art criticism, looking at the ‘what’ of art, then David Salle’s How to See is the artist’s reply, a brilliant series of reflections on how artists think when they make their work. The ‘how’ of art has perhaps never been better explored.” ―Salman Rushdie\r\nHow does art work? How does it move us, inform us, challenge us? Internationally renowned painter David Salle’s incisive essay collection illuminates these questions by exploring the work of influential twentieth-century artists. Engaging with a wide range of Salle’s friends and contemporaries―from painters to conceptual artists such as Jeff Koons, John Baldessari, Roy Lichtenstein, and Alex Katz, among others―How to See explores not only the multilayered personalities of the artists themselves but also the distinctive character of their oeuvres.\r\nSalle writes with humor and verve, replacing the jargon of art theory with precise and evocative descriptions that help the reader develop a personal and intuitive engagement with art. The result: a master class on how to see with an artist’s eye.', '[{\"value\":\"Art\"}]', 'null', '[{\"value\":\"art\"}]', 'art', '11.69', '17.99', 15, 31, NULL, 40, '6', 1, '2024-04-02 15:54:03', '2024-04-02 15:54:03'),
(44, 'Zen in the Art of Writing', 'zen-in-the-art-of-writing', 'products/a9g8piKXS8bzHHi4KKEBgeHIVnpts0ODLJxIdQxf.jpg.jpg', '[\"\",\"\"]', 'This work shares about the creative process and how to create art from the author\'s deep soul.', 'The celebrated author of Fahrenheit 451 and The Martian Chronicles offers inspiration and insight on finding one’s muse and channeling it onto the page.\r\nAcclaimed writer of novels and short stories as well as screen- and stage plays, Ray Bradbury has established himself as one of the most legendary voices in science fiction and fantasy. In Zen in the Art of Writing, he shares how his unbridled passion for creating worlds made him a master of the craft.\r\nPart memoir, part philosophical guide, the essays in this book teach the joy of writing. Rather than focusing on the mechanics of putting words together, Bradbury’s zen is found in the celebration of storytelling that drove him to write every day. Bringing together eleven essays and a series of poems written with his own unique style and fervor, Zen in the Art of Writing is a must read for all prospective writers and Bradbury fans.', '[{\"value\":\"Art\"}]', 'null', '[{\"value\":\"art\"}]', 'art', '11.99', '17.99', 15, 31, NULL, 41, '14', 1, '2024-04-02 16:01:51', '2024-04-02 16:01:51'),
(45, 'Gardner\'s Art Through the Ages', 'gardners-art-through-the-ages', 'products/IXq7jmi7gKk0Whufm7s2IjSw5hcWB1XOxyE6bVKg.jpg.jpg', '[\"\",\"\"]', '\"Gardner\'s Art Through the Ages\" is a series of art history textbooks written by Helen Gardner and later continued and expanded by Fred S. Kleiner, Christin J. Mamiya, and Richard G. Tansey. The book has become one of the most important reference sources in the field of art history.', '\"Gardner\'s Art Through the Ages\" is a series of art history textbooks written by Helen Gardner and later continued and expanded by Fred S. Kleiner, Christin J. Mamiya, and Richard G. Tansey. The book has become one of the most important reference sources in the field of art history.\r\nThe series includes a range of chapters divided into different historical periods, starting from ancient civilizations to modern art. Each chapter focuses on a specific period and analyzes the characteristic art expressions of that era, including architecture, sculpture, painting, and more.\r\nThe book provides readers with an overview and detailed insight into the development of art from the past to the present, helping them understand the artistic currents, trends, and styles of each historical period. It also serves as a valuable reference for students and art enthusiasts who want to delve deeper into the history and styles of art worldwide.', '[{\"value\":\"Art\"}]', 'null', '[{\"value\":\"art\"}]', 'art', '12.74', '18.20', 15, 31, NULL, 42, '6', 1, '2024-04-02 16:21:04', '2024-04-02 16:21:04'),
(46, '\"Cultural Studies: Theory and Practice\"', 'cultural-studies-theory-and-practice', 'products/PKsqeird5kefwYKHOeZDcKDKOHNjA6eFzkScvu0V.jpg.jpg', '[\"\",\"\"]', '\"Cultural Studies: Theory and Practice\" book provides an overview of theory and practice in cultural studies, including methods and means of analyzing contemporary culture.', 'The Fourth Edition of Chris Barker′s best-selling text builds upon the scope and authority of previous editions; the book represents a definitive benchmark in understanding and applying the foundations and developments of cultural studies. It provides those new to the field with an authoritative introduction to everything they need to know. An indispensible resource for any student or lecturer, it is packed with concise, accessible definitions, clear chapter summaries, inspiring student activities, biographical snapshots of key figures, and a full glossary.', '[{\"value\":\"Culture\"},{\"value\":\"Society.\"}]', 'null', '[{\"value\":\"culture and society.\"}]', 'culture and society.', '11.32', '16.95', 15, 30, NULL, 43, '50', 1, '2024-04-02 16:30:40', '2024-04-02 16:30:40'),
(47, 'The Interpretation of Cultures', 'the-interpretation-of-cultures', 'products/UPTSqcmhsiqTOYoNiv85lRlKLfuVP6zVpOFN77q4.jpg.jpg', '[\"\",\"\"]', 'This book explores how we understand and interpret cultures, focusing on the meanings of cultural expressions within society.', 'One of the twentieth century\'s most influential books, this classic work of anthropology offers a groundbreaking exploration of what culture is\r\nWith The Interpretation of Cultures, the distinguished anthropologist Clifford Geertz developed the concept of thick description, and in so doing, he virtually rewrote the rules of his field. Culture, Geertz argues, does not drive human behavior. Rather, it is a web of symbols that can help us better understand what that behavior means. A thick description explains not only the behavior, but the context in which it occurs, and to describe something thickly, Geertz argues, is the fundamental role of the anthropologist.\r\nNamed one of the 100 most important books published since World War II by the Times Literary Supplement, The Interpretation of Cultures transformed how we think about others\' cultures and our own. This definitive edition, with a foreword by Robert Darnton, remains an essential book for anthropologists, historians, and anyone else seeking to better understand human cultures.', '[{\"value\":\"Anthropology\"},{\"value\":\"Cultural\"}]', 'null', '[{\"value\":\"Anthropology and cultural studies\"}]', 'cultural', '21.75', '22.49', 15, 30, NULL, 44, '8', 1, '2024-04-02 17:00:38', '2024-04-02 17:00:38'),
(48, 'Culture and Imperialism', 'culture-and-imperialism', 'products/fJN278w1DmxpO7JAqhdwgFA1O5IfKj3Okg2MI70O.jpg.jpg', '[\"\",\"\"]', '\"Culture and Imperialism\" - Edward Said\'s book focuses on the relationship between culture and politics, emphasizing the role of culture in processes of domination and resistance.', 'A landmark work from the author of Orientalism that explores the long-overlooked connections between the Western imperial endeavor and the culture that both reflected and reinforced it.\r\nIn the nineteenth and early twentieth centuries, as the Western powers built empires that stretched from Australia to the West Indies, Western artists created masterpieces ranging from Mansfield Park to Heart of Darkness and Aida. Yet most cultural critics continue to see these phenomena as separate. Edward Said looks at these works alongside those of such writers as W. B. Yeats, Chinua Achebe, and Salman Rushdie to show how subject peoples produced their own vigorous cultures of opposition and resistance. Vast in scope and stunning in its erudition, Culture and Imperialism reopens the dialogue between literature and the life of its time.', '[{\"value\":\"Culture\"},{\"value\":\"Politics\"}]', 'null', '[{\"value\":\"Culture and politics\"}]', 'Culture and politics', '15.37', '19.00', 15, 30, NULL, 45, '8', 1, '2024-04-02 17:05:49', '2024-04-02 17:05:49'),
(49, 'Cultural Capital: The Rise and Fall of Creative Britain', 'cultural-capital-the-rise-and-fall-of-creative-britain', 'products/3DVZpyjgXOoxPWbzOF7svFEZ3APSsAVwcEziCYgY.jpg.jpg', '[\"\",\"\"]', 'Research on the role of culture in the development of a country, with an emphasis on factors that influence cultural creativity and diversity.', 'Britain began the twenty-first century convinced of its creativity. Throughout the New Labour era, the visual and performing arts, museums and galleries, were ceaselessly promoted as a stimulus to national economic revival, a post-industrial revolution where spending on culture would solve everything, from national decline to crime. Tony Blair heralded it a “golden age.” Yet despite huge investment, the audience for the arts remained a privileged minority. So what went wrong?\r\nIn Cultural Capital, leading historian Robert Hewison gives an in-depth account of how creative Britain lost its way. From Cool Britannia and the Millennium Dome to the Olympics and beyond, he shows how culture became a commodity, and how target-obsessed managerialism stifled creativity. In response to the failures of New Labour and the austerity measures of the Coalition government, Hewison argues for a new relationship between politics and the arts.', '[{\"value\":\"Cultural\"},{\"value\":\"Sociology\"}]', 'null', '[{\"value\":\"Cultural studies and sociology.\"}]', 'cultural', '9.99', '14.96', 15, 30, NULL, 46, '9', 1, '2024-04-02 17:13:09', '2024-04-02 17:13:09'),
(50, 'The Cultural Politics of Emotion', 'the-cultural-politics-of-emotion', 'products/JmSfQyBGWwxqF6ihuGkFCTZeoiK10kKzfgnyQIuK.jpg.jpg', '[\"\",\"\"]', 'This book explores how emotions are constructed and expressed in culture, especially in social and political contexts.', 'This book examines how emotions are crucial to politics. Emotions work to define who we are as well as shape what we do. With reference to topical issues, the book suggests that emotions circulate within public culture, as well as shape our encounters with others in everyday life.', '[{\"value\":\"Cultural\"},{\"value\":\"Sociological\"}]', 'null', '[{\"value\":\"Cultural and sociological research.\"}]', 'Cultural', '17.12', '25.00', 15, 30, NULL, 47, '15', 1, '2024-04-02 17:17:45', '2024-04-02 17:17:45'),
(51, 'Teach Like a Champion 3.0: 63 Techniques that Put Students on the Path to College', 'teach-like-a-champion-30-63-techniques-that-put-students-on-the-path-to-college', 'products/wLv0m49Ki3dVX7TsyqKDOHECE8KeH32DsvQZzVjp.jpg.jpg', '[\"\",\"\"]', 'Teach Like a Champion 3.0 is the long-awaited update to Doug Lemov’s highly regarded guide to the craft of teaching.', 'Teach Like a Champion 3.0 is the long-awaited update to Doug Lemov’s highly regarded guide to the craft of teaching. This book teaches you how to create a positive and productive classroom that encourages student engagement, trust, respect, accountability, and excellence. In this edition, you’ll find new and updated teaching techniques, the latest evidence from cognitive science and culturally responsive teaching practices, and an expanded companion video collection. Learn how to build students’ background knowledge, move learning into long-term memory, and connect your teaching with the curriculum content for tangible improvement in learning outcomes.', '[{\"value\":\"Education\"},{\"value\":\"Teaching methods.\"}]', 'null', '[{\"value\":\"Education\"},{\"value\":\"Teaching methods.\"}]', 'Education', '19.95', '27.00', 14, 33, NULL, 48, '10', 1, '2024-04-02 17:28:00', '2024-04-02 17:28:00'),
(52, 'The Courage to Teach: Exploring the Inner Landscape of a Teacher\'s Life, 20th Anniversary Edition', 'the-courage-to-teach-exploring-the-inner-landscape-of-a-teachers-life-20th-anniversary-edition', 'products/smCi807Thz8CdYX4WW3kjqwVXREMJ2ytm7JMltvw.jpg.jpg', '[\"\",\"\"]', 'Wisdom that\'s been inspiring, motivating, and guiding teachers for two decadesThe Courage to Teach speaks to the joys and pains that teachers of every sort know well. Over the last 20 years, the book has helped countless educators reignite their passion, redirect their practice, and deal with the many pressures that accompany their vital work.', 'Wisdom that\'s been inspiring, motivating, and guiding teachers for two decadesThe Courage to Teach speaks to the joys and pains that teachers of every sort know well. Over the last 20 years, the book has helped countless educators reignite their passion, redirect their practice, and deal with the many pressures that accompany their vital work. \r\nEnriched by a new Foreword from Diana Chapman Walsh, the book builds on a simple premise: good teaching can never be reduced to technique. Good teaching comes from the identity and integrity of the teacher, that core of self where intellect, emotion, and spirit converge--enabling \'live encounters\' between teachers, students, and subjects that are the key to deep and lasting learning.\r\n Good teachers love learners, learning, and the teaching life in a way that builds trust with students and colleagues, animates their daily practice, and keeps them coming back tomorrow.', '[{\"value\":\"Education\"},{\"value\":\"Personal Development.\"}]', 'null', '[{\"value\":\"Education\"},{\"value\":\"Personal Development.\"}]', 'Education', '20.41', '32.00', 14, 33, NULL, 49, '5', 1, '2024-04-02 17:35:28', '2024-04-02 17:35:28'),
(53, 'How Children Learn (Classics in Child Development)', 'how-children-learn-classics-in-child-development', 'products/T4qaaOeLPijZyd1NXJYDUiistkx57N09pzQd0wE2.jpg.jpg', '[\"\",\"\"]', 'This enduring classic of educational thought offers teachers and parents deep, original insight into the nature of early learning.', 'This enduring classic of educational thought offers teachers and parents deep, original insight into the nature of early learning. John Holt was the first to make clear that, for small children, learning is as natural as breathing.” In this delightful yet profound book, he looks at how we learn to talk, to read, to count, and to reason, and how we can nurture and encourage these natural abilities in our children.”', '[{\"value\":\"Education\"},{\"value\":\"Child Development.\"}]', 'null', '[{\"value\":\"Education\"},{\"value\":\"Child Development.\"}]', 'education', '33.20', '34.95', 14, 33, NULL, 50, '20', 1, '2024-04-02 17:40:39', '2024-04-02 17:40:39'),
(54, 'The Smartest Kids in the World: And How They Got That Way', 'the-smartest-kids-in-the-world-and-how-they-got-that-way', 'products/87CTxeCKmngr5KoCB2ZCRSKagzu73J5oVOt13Cb5.jpg.jpg', '[\"\",\"\"]', 'In a handful of nations, virtually all children are learning to make complex arguments and solve problems they’ve never seen before. They are learning to think, in other words, and to thrive in the modern economy. Inspired to find answers for our own children, author and Time magazine journalist Amanda Ripley follows three Americans embed­ded in these countries for one year.', 'In a handful of nations, virtually all children are learning to make complex arguments and solve problems they’ve never seen before. They are learning to think, in other words, and to thrive in the modern economy. Inspired to find answers for our own children, author and Time magazine journalist Amanda Ripley follows three Americans embed­ded in these countries for one year. Kim, fifteen, raises $10,000 so she can move from Oklahoma to Finland; Eric, eighteen, trades his high-achieving Minnesota suburb for a booming city in South Korea; and Tom, seventeen, leaves a historic Pennsylvania village for Poland.\r\nThrough these young informants, Ripley meets battle-scarred reformers, sleep-deprived zombie students, and a teacher who earns $4 million a year. Their stories, along with groundbreaking research into learning in other cultures, reveal a pattern of startling transformation: none of these countries had many “smart” kids a few decades ago. Things had changed. Teaching had become more rigorous; parents had focused on things that mattered; and children had bought into the promise of education.', '[{\"value\":\"Education\"},{\"value\":\"Social Research.\"}]', 'null', '[{\"value\":\"Education\"},{\"value\":\"Social Research.\"}]', 'Education', '11.29', '18.00', 14, 33, NULL, 51, '38', 1, '2024-04-02 17:45:27', '2024-04-02 17:45:27'),
(55, 'Pedagogy of the Oppressed', 'pedagogy-of-the-oppressed', 'products/0Au4FvwiGU53YcTkjlPnfbpsZzqmtRuuMt54BfqU.jpg.jpg', '[\"\",\"\"]', 'This book examines education and the role of teachers in liberating the oppressed and facilitating personal and social development.', 'This book examines education and the role of teachers in liberating the oppressed and facilitating personal and social development.', '[{\"value\":\"Education\"},{\"value\":\"Social Philosophy.\"}]', 'null', '[{\"value\":\"Education\"},{\"value\":\"Social Philosophy.\"}]', 'Education', '18.16', '25.99', 14, 33, NULL, 52, '45', 1, '2024-04-02 17:48:43', '2024-04-02 17:48:43'),
(56, 'The Complete Sherlock Holmes Collection (Wordsworth Box Sets)', 'the-complete-sherlock-holmes-collection-wordsworth-box-sets', 'products/MKf2Fv9QHzvx3QwRZaoY7XtApNcOFhOASXOtbAlp.jpg.jpg', '[\"\",\"\"]', 'The Complete Sherlock Holmes Collection by Sir Arthur Conan Doyle. The perfect gift for any Sherlock Holmes fan. Each box set contains six books, together creating a comprehensive collection of the famous detective\'s cases and adventures. They are beautifully packaged in a ridged, matt-laminated slipcase with metallic detailing, complete with strikingly attractive, bespoke artwork. Includes: Adventures & Memoirs of Sherlock Holmes Best of Sherlock Holmes Casebook of Sherlock Holmes & His Last Bow Hound of the Baskervilles & The Valley of Fear, Study in Scarlet & Sign of the Four', 'The Sherlock Holmes series by Sir Arthur Conan Doyle focuses on the adventurous investigations of the brilliant detective Sherlock Holmes and his loyal companion, Dr. John H. Watson. Holmes is portrayed as a master of logical analysis and keen observation, always employing his intelligence and sharp wit to solve complex cases.\r\nIn each story, Holmes and Watson encounter various murder cases and mysteries, ranging from simple homicides to intricate and fascinating puzzles. They often confront cunning criminals and unravel extremely challenging clues.\r\nApart from solving crimes, Sherlock Holmes stories also delve into the development of the relationship between Holmes and Watson, characterized by profound loyalty and mutual understanding.\r\nThe Sherlock Holmes series has become an icon of detective fiction, and Sherlock Holmes himself remains one of the most famous literary characters worldwide.', '[{\"value\":\"Mystery fiction\"},{\"value\":\"Detective fiction\"}]', 'null', '[{\"value\":\"detective fiction or mystery fiction\"}]', 'detective', '24.99', '33.33', 7, 22, NULL, 53, '32', 1, '2024-04-02 18:24:07', '2024-04-02 18:24:07'),
(57, 'Cosmos', 'cosmos', 'products/4iF5D0F63gmra6eneRka4cGaMYvwER3SnSefWvCq.jpg.jpg', '[\"\",\"\"]', 'This book takes readers on a journey to explore the universe, from the cause of the universe to distant planets.', 'Cosmos is one of the bestselling science books of all time. In clear-eyed prose, Sagan reveals a jewel-like blue world inhabited by a life form that is just beginning to discover its own identity and to venture into the vast ocean of space. Featuring a new Introduction by Sagan’s collaborator, Ann Druyan, full color illustrations, and a new Foreword by astrophysicist Neil deGrasse Tyson, Cosmos retraces the fourteen billion years of cosmic evolution that have transformed matter into consciousness, exploring such topics as the origin of life, the human brain, Egyptian hieroglyphics, spacecraft missions, the death of the Sun, the evolution of galaxies, and the forces and individuals who helped to shape modern science.', '[{\"value\":\"Natural Sciences\"},{\"value\":\"Astronomy.\"}]', 'null', '[{\"value\":\"Natural Sciences\"},{\"value\":\"Astronomy.\"}]', 'Sciences', '11.99', '18.99', 14, 32, NULL, 54, '35', 1, '2024-04-02 21:40:01', '2024-04-02 21:40:01'),
(58, 'A Brief History of Time', 'a-brief-history-of-time', 'products/COtdMH9pGsELvWpOonXjcdx2VEoDQoXgg8TmSUOJ.jpg.jpg', '[\"\",\"\"]', 'A landmark volume in science writing by one of the great minds of our time, Stephen Hawking’s book explores such profound questions', 'A landmark volume in science writing by one of the great minds of our time, Stephen Hawking’s book explores such profound questions as: How did the universe begin—and what made its start possible? Does time always flow forward? Is the universe unending—or are there boundaries? Are there other dimensions in space? What will happen when it all ends?\r\nTold in language we all can understand, A Brief History of Time plunges into the exotic realms of black holes and quarks, of antimatter and “arrows of time,” of the big bang and a bigger God—where the possibilities are wondrous and unexpected. With exciting images and profound imagination, Stephen Hawking brings us closer to the ultimate secrets at the very heart of creation.', '[{\"value\":\"Physics\"},{\"value\":\"Astronomy\"}]', 'null', '[{\"value\":\"Physics\"},{\"value\":\"Astronomy\"},{\"value\":\"science\"}]', 'science', '9.99', '18.00', 14, 32, NULL, 55, '35', 1, '2024-04-02 21:44:13', '2024-04-02 21:44:13'),
(59, 'Sapiens: A Brief History of Humankind', 'sapiens-a-brief-history-of-humankind', 'products/KCRKuQTTIeWnNAiaWBken14Mx1sSB9fWgZSe00XS.jpg.jpg', '[\"\",\"\"]', 'This book spans human history from hunters to the modern age, raising important questions about our future.', 'This book spans human history from hunters to the modern age, raising important questions about our future.', '[{\"value\":\"History\"},{\"value\":\"Survival and evolution\"},{\"value\":\"Science\"}]', 'null', '[{\"value\":\"History\"},{\"value\":\"Survival and evolution\"},{\"value\":\"science\"}]', 'Science', '18.09', '47.21', 14, 32, NULL, 56, '25', 1, '2024-04-02 21:49:13', '2024-04-02 21:49:13'),
(60, 'COSMOLOGY - Volume 4: The Ultimate Guide to Stargazing', 'cosmology-volume-4-the-ultimate-guide-to-stargazing', 'products/NYrIlTcpsQWJAIMI7RINZHK75o4WnkcG2o28S1Hd.jpg.jpg', '[\"\",\"\"]', 'The Ultimate Guide to STARGAZING: Volume 4 : COSMOLOGY is a truly mind-expanding journey that explains how the universe came into being, how and why it is expanding as it evolves, and how it is likely to die. You’ll see how its accelerating expansion will cause the universe to change dramatically in the future.', 'The Ultimate Guide to STARGAZING: Volume 4 : COSMOLOGY is a truly mind-expanding journey that explains how the universe came into being, how and why it is expanding as it evolves, and how it is likely to die. You’ll see how its accelerating expansion will cause the universe to change dramatically in the future. You’ll discover its amazing, unexpected structure, and why we can see back to the beginning of time! COSMOLOGY explains in layman’s terms why we can only see a part of the universe - our ‘observable’ universe. What might lie beyond this?\r\nYou will understand why enormous clusters of galaxies are growing ever larger and why we exist at a special time in the universe’s evolution. It analyses the possibility of whether there are other universes or parallel ones. You will be mind-blown by how our universe is ‘programmed’ to be incredibly finely-tuned, exceedingly beyond chance to create unbounded complexity. How could this be? Could a god have designed this?\r\nYou’ll discover the brain-teasing answers to the very strange implications of the speed of light - the photon paradox - how gravity curves space – and why, at the speed of light, time stops, and mass becomes infinite! This volume discusses how many dimensions the universe may have, and what its geometry may be. Could there be a multiverse of infinite universes? Could space go on forever? Why do astronomers think there is this strange, dark energy and invisible dark matter? You’ll discover what the two opposing universal properties are that cause the universe to evolve life, and possibly unbounded levels of intelligence far beyond ours.', '[{\"value\":\"Astronomy\"},{\"value\":\"Space science.\"}]', 'null', '[{\"value\":\"Astronomy\"},{\"value\":\"Space science.\"}]', 'science', '9.25', '23.35', 14, 32, NULL, 57, '26', 1, '2024-04-02 22:07:37', '2024-04-02 22:07:37'),
(61, 'The Ultimate Guide to Stargazing (4 books)', 'the-ultimate-guide-to-stargazing-4-books', 'products/jAmyuMVbDB7x2rJGQIAsg61xFyjIvenYc93Rpf1y.png.png', '[\"\",\"\"]', 'This is a collection of guides on observing celestial bodies in the universe, including basic and advanced instructions on how to identify and observe stars, planets, stars, and other celestial phenomena. Another text in the night sky. These books often provide knowledge about the universe, galaxies, and other astronomical phenomena, as well as how to use instruments such as telescopes to enhance observations.', 'They are an extraordinary collection of everything you want to know about observational astronomy, all types of celestial objects and phenomena, the scale and evolution of the universe, and the amazing discoveries that have been made.\r\nEach volume overflows with mind-blowing concepts, easy-to-grasp explanatory analogies, amusing personal anecdotes, amazing discoveries, and the most incredible gallery of colourful, hi-resolution images ever assembled in any astronomy book. It is perfectly suited to both beginners and advanced amateur astronomers.', '[{\"value\":\"Astronomy\"},{\"value\":\"Astronomical Science\"}]', 'null', '[{\"value\":\"Astronomy\"},{\"value\":\"Astronomical Science\"}]', 'Science', '50.49', '58.80', 14, 32, NULL, 57, '8', 1, '2024-04-02 22:14:05', '2024-04-02 22:14:05'),
(62, 'Quantum Physics for Beginners', 'quantum-physics-for-beginners', 'products/JYZ8lBjMjLfAMeXaR8BpySPEWegmMP8cNEzEMzjM.jpg.jpg', '[\"\",\"\"]', 'This book provides a basic introduction to the field of quantum physics from wave theory to quantum computing. It explains the basic principles and concepts of quantum physics in a simple and straightforward manner, giving readers consistent access to one of the most complex areas of science.', 'This book provides a basic introduction to the field of quantum physics from wave theory to quantum computing. It explains the basic principles and concepts of quantum physics in a simple and straightforward manner, giving readers consistent access to one of the most complex areas of science.', '[{\"value\":\"Science\"},{\"value\":\"Quantum Physics\"}]', 'null', '[{\"value\":\"Science\"},{\"value\":\"Quantum Physics\"}]', 'Science, Quantum Physics', '16.22', '17.00', 14, 32, NULL, 58, '27', 1, '2024-04-02 22:21:49', '2024-04-02 22:21:49'),
(63, 'Faster than Light: How Your Shadow Can Do It but You Can\'t', 'faster-than-light-how-your-shadow-can-do-it-but-you-cant', 'products/4vVIQRLtzMzAiVdLDdmjrzPrO71CcnVOLDPa4wpr.jpg.jpg', '[\"\",\"\"]', 'Albert Einstein knew already in the early 1900s, when he first published his famous paper about the constancy of the speed of light, that not only did this constancy imply that mass contains energy (E = m c squared), but that faster-than-light motion could lead to paradoxes -- some that seemed to involve backwards time travel.', 'Albert Einstein knew already in the early 1900s, when he first published his famous paper about the constancy of the speed of light, that not only did this constancy imply that mass contains energy (E = m c squared), but that faster-than-light motion could lead to paradoxes -- some that seemed to involve backwards time travel.\r\nWhat are these paradoxes? Why is light and its speed relevant? This book will lead you through an obstacle course of conundrums and oddities, building up your understanding of how light\'s speed creates simple but mind-expanding paradoxes -- one conceptual riddle at a time.\r\nThis is not your average popular science book. This is also not a textbook. This book takes one theme -- the universally constant speed of light -- and shows how it may appear compromised on scales from the quantum mechanics of the very small to the cosmology of the very large, and the resulting surprising implications can result.', '[{\"value\":\"Science\"},{\"value\":\"Theoretical Physics\"}]', 'null', '[{\"value\":\"Science\"},{\"value\":\"Theoretical Physics\"}]', 'Science, Theoretical Physics', '26.98', '29.98', 14, 32, NULL, 59, '20', 1, '2024-04-02 22:30:16', '2024-04-02 22:30:16'),
(64, 'The Power of Now: A Guide to Spiritual Enlightenment', 'the-power-of-now-a-guide-to-spiritual-enlightenment', 'products/FlPX8HCdUGvCodMDME58xkctcmkBYzddCr72fakL.jpg.jpg', '[\"\",\"\"]', 'It\'s no wonder that The Power of Now has sold over 2 million copies worldwide and has been translated into over 30 foreign languages. Much more than simple principles and platitudes, the book takes readers on an inspiring spiritual journey to find their true and deepest self and reach the ultimate in personal growth and spirituality: the discovery of truth and light.', 'It\'s no wonder that The Power of Now has sold over 2 million copies worldwide and has been translated into over 30 foreign languages. Much more than simple principles and platitudes, the book takes readers on an inspiring spiritual journey to find their true and deepest self and reach the ultimate in personal growth and spirituality: the discovery of truth and light.\r\nIn the first chapter, Tolle introduces readers to enlightenment and its natural enemy, the mind. He awakens readers to their role as a creator of pain and shows them how to have a pain-free identity by living fully in the present. The journey is thrilling, and along the way, the author shows how to connect to the indestructible essence of our Being, \"the eternal, ever-present One Life beyond the myriad forms of life that are subject to birth and death.\"\r\nFeaturing a new preface by the author, this paperback shows that only after regaining awareness of Being, liberated from Mind and intensely in the Now, is there Enlightenment.', '[{\"value\":\"Personal Development Psychology\"},{\"value\":\"Spirituality.\"}]', 'null', '[{\"value\":\"Personal Development Psychology\"},{\"value\":\"Spirituality.\"}]', 'Psychology', '8.89', '17.00', 8, 34, NULL, 60, '30', 1, '2024-04-02 22:54:58', '2024-04-02 22:54:58'),
(65, 'Neuro-linguistic Programming For Dummies', 'neuro-linguistic-programming-for-dummies', 'products/WcQKCaZvMh74X3NP46sUIdqAaAna8LQR72MfZkHk.jpg.jpg', '[\"\",\"\"]', 'Turn thoughts into positive action with neuro-linguistic programming\r\nNeuro-linguistic programming (NLP) has taken the psychology world by storm. So much more than just another quick-fix or a run-of-the-mill self-help technique, NLP shows real people how to evaluate the ways in which they think, strategise, manage their emotional state and view the world.', 'Turn thoughts into positive action with neuro-linguistic programming\r\nNeuro-linguistic programming (NLP) has taken the psychology world by storm. So much more than just another quick-fix or a run-of-the-mill self-help technique, NLP shows real people how to evaluate the ways in which they think, strategise, manage their emotional state and view the world. This then enables them to positively change the way they set and achieve goals, build relationships with others, communicate and enhance their overall life skills. Sounds great, right? But where do you begin? Thankfully, that\'s where this friendly and accessible guide comes in!\r\nFree of intimidating jargon and packed with lots of easy-to-follow guidance which you can put in to use straight away, Neuro-linguistic Programming For Dummies provides the essential building blocks of NLP and shows you how to get to grips with this powerful self-help technique. Highlighting key NLP topics, it helps you recognize and leverage your psychological perspective in a positive fashion to build self-confidence, communicate effectively and make life-changing decisions with confidence and ease.', '[{\"value\":\"Applied Psychology\"},{\"value\":\"Personal Development\"}]', 'null', '[{\"value\":\"Applied Psychology\"},{\"value\":\"Personal Development\"}]', 'Psychology, Personal Development', '13.99', '24.99', 8, 34, NULL, 61, '27', 1, '2024-04-02 23:06:29', '2024-04-02 23:06:29'),
(66, 'Self-Love Workbook for Women: Release Self-Doubt, Build Self-Compassion, and Embrace Who You Are', 'self-love-workbook-for-women-release-self-doubt-build-self-compassion-and-embrace-who-you-are', 'products/kYRvPGQYXmIh7XApyGjaB1VMvbaPmqgSBkV7PmzH.jpg.jpg', '[\"\",\"\"]', 'This is a guide to help women release self-doubt, build self-compassion, and accept themselves. This book focuses on developing self-esteem, confidence and self-love, and provides exercises and techniques to assist in this process.', 'Discover how much there is to love about yourself with this bestselling workbook. And then keep your journey going with the official companion, the Self-Love Journal for Women.\r\nEmbrace who you are with this guided self-love book for women of any age and any background. You\'ll embark on your journey of self-discovery by learning what self-love is, and then immersing yourself in activities that help you build your self-esteem and improve your relationships. This book includes a variety of exercises to engage with your sense of self-love, and the companion journal encourages you to go even deeper with writing and reflection.\r\nProven techniques—Fall in love with yourself using a variety of compassionate exercises rooted in mindfulness, self-care, and positive psychology.\r\nInspiring activities—This self-esteem workbook features prompts like quizzing yourself on what matters to you, making a happy playlist, and writing a message to your younger self to help you tap into your emotions and let go of limiting beliefs.\r\nEmpowering affirmations—Boost your positivity and nurture yourself with the uplifting affirmations interspersed throughout the book.\r\nShare the self-love—This book makes an amazing gift for yourself—or any woman in your life who deserves to put herself first and explore how awesome she is!', '[{\"value\":\"Personal development\"},{\"value\":\"Self-help psychology\"}]', 'null', '[{\"value\":\"Personal development\"},{\"value\":\"Self-help psychology\"}]', 'Self-help psychology', '9.59', '15.99', 8, 34, NULL, 62, '30', 1, '2024-04-02 23:15:54', '2024-04-02 23:15:54'),
(67, 'Self-Love Journal for Women: Prompts and Practices for Your Journey to Self-Worth, Self-Care, and Self-Acceptance', 'self-love-journal-for-women-prompts-and-practices-for-your-journey-to-self-worth-self-care-and-self-acceptance', 'products/KnNjKxMFyUkVDiVHBbZGGBmCga4821hF2j1HKLzV.jpg.jpg', '[\"\",\"\"]', 'This book serves as a useful tool to help women discover and improve self-esteem, self-care and self-acceptance through implementing the exercises and practices provided in the book. This book provides encouragement and support for your journey to self-worth and self-acceptance.', 'The official companion to the bestselling Self Love Workbook for Women! Continue your journey to total self-love with this journal of inspiring prompts and practices.\r\nWomen are often faced with unrealistic social expectations that can make them feel overwhelmed and unhappy with themselves. But learning how to love yourself and embrace what makes you unique can give you a whole new outlook on life—and this guided journal is here to help you. A companion to the popular Self-Love Workbook for Women, this journal features thoughtful writing prompts and simple practices that encourage you to manage negative self-talk, reflect on who you truly want to be, and find the confidence to achieve anything.', '[{\"value\":\"Personal development\"},{\"value\":\"Self-help psychology\"}]', 'null', '[{\"value\":\"Personal development\"},{\"value\":\"Self-help psychology\"}]', 'Self-help psychology', '10.19', '14.99', 8, 34, NULL, 63, '30', 1, '2024-04-02 23:29:47', '2024-04-02 23:29:47'),
(68, 'Stop Overthinking: 23 Techniques to Relieve Stress, Stop Negative Spirals, Declutter Your Mind, and Focus on the Present (The Path to Calm)', 'stop-overthinking-23-techniques-to-relieve-stress-stop-negative-spirals-declutter-your-mind-and-focus-on-the-present-the-path-to-calm', 'products/ZMvRQZ8YFF4S5k3fJDBXEiIpKO6IK9cALe90sLn2.jpg.jpg', '[\"\",\"\"]', 'This is a useful resource for reducing stress and anxiety by implementing certain techniques and methods. The book focuses on preventing overthinking, allowing the mind to relax and focus on the present, thereby helping to achieve peace and a sense of well-being.', 'This is a useful resource for reducing stress and anxiety by implementing certain techniques and methods. The book focuses on preventing overthinking, allowing the mind to relax and focus on the present, thereby helping to achieve peace and a sense of well-being.', '[{\"value\":\"Applied Psychology\"},{\"value\":\"Personal Development\"}]', 'null', '[{\"value\":\"Applied Psychology\"},{\"value\":\"Personal Development\"}]', 'Psychology', '9.99', '10.99', 8, 34, NULL, 64, '27', 1, '2024-04-03 00:08:57', '2024-04-03 00:08:57'),
(69, 'Don\'t Believe Everything You Think: Why Your Thinking Is The Beginning & End Of Suffering (Beyond Suffering)', 'dont-believe-everything-you-think-why-your-thinking-is-the-beginning-end-of-suffering-beyond-suffering', 'products/xXzLJ0PdD8KpjLXPYYy9fA4nF5fyKM08XYkqoSsN.jpg.jpg', '[\"\",\"\"]', 'Learn how to overcome anxiety, self-doubt & self-sabotage without needing to rely on motivation or willpower.', 'Learn how to overcome anxiety, self-doubt & self-sabotage without needing to rely on motivation or willpower.\r\nIn this book, you\'ll discover the root cause of all psychological and emotional suffering and how to achieve freedom of mind to effortlessly create the life you\'ve always wanted to live.\r\nAlthough pain is inevitable, suffering is optional.\r\nThis book offers a completely new paradigm and understanding of where our human experience comes from, allowing us to end our own suffering and create how we want to feel at any moment.', '[{\"value\":\"Applied Psychology\"},{\"value\":\"Personal Development\"}]', 'null', '[{\"value\":\"Applied Psychology\"},{\"value\":\"Personal Development\"}]', 'Psychology', '15.50', '16.35', 8, 34, NULL, 65, '35', 1, '2024-04-03 00:16:44', '2024-04-03 00:16:44'),
(70, 'Brain & Behavior: An Introduction to Behavioral Neuroscience', 'brain-behavior-an-introduction-to-behavioral-neuroscience', 'products/Qpmqr27kXj5tiAINzXKmue5Tzmu63YRTxbiDvicb.jpg.jpg', '[\"\",\"\"]', 'In Brain & Behavior: An Introduction to Behavioral Neuroscience, authors Bob Garrett and Gerald Hough showcase the ever-expanding body of research into the biological foundations of human behavior through a big-picture approach.', 'In Brain & Behavior: An Introduction to Behavioral Neuroscience, authors Bob Garrett and Gerald Hough showcase the ever-expanding body of research into the biological foundations of human behavior through a big-picture approach. With thought-provoking examples and a carefully crafted, vibrant visual program, the text allows any student to appreciate the importance and relevance of this field of study. New features to the Sixth Edition include fully revised learning objectives, a streamlined box feature program, an expanded collection of foundational animations, and updated research on timely topics such as drugs and addiction, sex and gender, and emotions and health.', '[{\"value\":\"Brain Science\"},{\"value\":\"Behavioral Psychology.\"}]', 'null', '[{\"value\":\"Brain Science\"},{\"value\":\"Behavioral Psychology.\"}]', 'Psychology.', '21.00', '38.12', 8, 35, NULL, 66, '32', 1, '2024-04-03 00:26:15', '2024-04-03 00:26:15'),
(71, 'The Psychology of Human Behavior', 'the-psychology-of-human-behavior', 'products/VIzSaGvkjFPOpwD8oGFduAnKmJvxfGTG6NeD6jm5.jpg.jpg', '[\"\",\"\"]', 'If you\'re curious about the science of human psychology, the intricacies of personalities, and the practicality of social psychology, The Psychology of Human Behavior has your answers. This book stands out as one of the most succinct resources on the internet, offering quality knowledge in a highly practical writing style.', 'If you\'re curious about the science of human psychology, the intricacies of personalities, and the practicality of social psychology, The Psychology of Human Behavior has your answers. This book stands out as one of the most succinct resources on the internet, offering quality knowledge in a highly practical writing style. From relating psychology to everyday life to understanding diverse personalities and the significance of social psychology, this book is your compact guide. Dive in and gain instant insights into the complexities of human behavior.\r\nThe book starts with a brief introduction regarding how psychology can be related to human behavior and how important it is in our lives. A top highlight is that the writer has used real-life examples in a practical manner to signify the importance of learning psychology in relation to human behavior.\r\nA major portion of the book is about understanding people with different types of personalities so that they can be dealt with in an effective manner. Similarly, the concept of social psychology has also been discussed in detail, along with its significance in our lives.\r\nThe last portion of the book is about modern-day behavioral therapies like CBT and DBT that are crucial in handling issues like stress, anxiety, and other behavioral problems.\r\nSo, what are you thinking about? You must not miss out on such a perfect opportunity to get your hands on a book that offers it all.', '[{\"value\":\"Brain Science\"},{\"value\":\"Behavioral Psychology.\"}]', 'null', '[{\"value\":\"Brain Science\"},{\"value\":\"Behavioral Psychology.\"}]', 'Psychology', '14.99', '15.43', 8, 35, NULL, 67, '34', 1, '2024-04-03 00:39:20', '2024-04-03 00:40:53'),
(72, 'The Comprehensive Clinician\'s Guide to Cognitive Behavioral Therapy', 'the-comprehensive-clinicians-guide-to-cognitive-behavioral-therapy', 'products/xSV641BHQbpZBuMSUW6qlpYVew2UTn7zq61wePzg.jpg.jpg', '[\"\",\"\"]', 'Drs. Fox have the knowledge base to bring you the most comprehensive and up-to-date information regarding CBT.', 'Drs. Fox have the knowledge base to bring you the most comprehensive and up-to-date information regarding CBT.\r\nWritten for mental health professionals, students, trainers, supervisors, teachers and clinicians of all levels, this workbook is filled with practical, easy-to-understand tools to help you put theory into practice.\r\nFilled with worksheets, coping cards, step-by-step plans and activities, this accessible guide will help you teach clients effective coping skills, which builds their confidence, and eliminates self-doubt -- the most crucial part of treatment. These tools will help clients become their own therapist and sustain recovery across a variety of issues, including:\r\n- Depression\r\n- Bipolar Disorder\r\n- Anxiety\r\n- Anger\r\n- Substance Abuse\r\n- Personality Disorders\r\n- PTSD\r\n- Self-Harm and Suicidality\r\n- Psychosis', '[{\"value\":\"Brain Science\"},{\"value\":\"Behavioral Psychology.\"}]', 'null', '[{\"value\":\"Brain Science\"},{\"value\":\"Behavioral Psychology.\"}]', 'Psychology', '30.12', '42.46', 8, 35, NULL, 68, '32', 1, '2024-04-03 00:45:44', '2024-04-03 00:45:44'),
(73, 'Retrain Your Brain: Cognitive Behavioral Therapy in 7 Weeks: A Workbook for Managing Depression and Anxiety', 'retrain-your-brain-cognitive-behavioral-therapy-in-7-weeks-a-workbook-for-managing-depression-and-anxiety', 'products/bg12PsF1ODklLJ61qBDvXXkiIXgeWqbwdoZDpETe.jpg.jpg', '[\"\",\"\"]', 'The groundbreaking 7-week plan for managing anxiety and depression using cognitive behavioral therapy.', 'The groundbreaking 7-week plan for managing anxiety and depression using cognitive behavioral therapy.\r\nResearch has shown that cognitive behavioral therapy (CBT) is one of the most effective techniques for finding relief from depression and anxiety. After 15 years of successfully treating patients using cognitive behavioral therapy, Psychologist Dr. Seth Gillihan developed this self-directed 7-week plan that teaches you practical CBT techniques that can help you feel better.', '[{\"value\":\"Brain Science\"},{\"value\":\"Behavioral Psychology.\"}]', 'null', '[{\"value\":\"Brain Science\"},{\"value\":\"Behavioral Psychology.\"}]', 'Psychology', '10.99', '15.99', 8, 35, NULL, 69, '24', 1, '2024-04-03 00:50:47', '2024-04-03 00:50:47');
INSERT INTO `products` (`id`, `name`, `slug`, `featured_image`, `images`, `short_description`, `description`, `tags`, `specifications`, `meta_keyword`, `meta_description`, `current_price`, `previous_price`, `cat_id`, `sub_cat_id`, `child_cat_id`, `brand_id`, `total_stock`, `status`, `created_at`, `updated_at`) VALUES
(74, 'Healing Developmental Trauma', 'healing-developmental-trauma', 'products/3xDZNJuE1AcPr4M6DLHSta7YQrqb6wMIbn88C7Iv.jpg.jpg', '[\"\",\"\"]', 'Although it may seem that people suffer from an endless number of emotional problems and challenges, Laurence Heller and Aline LaPierre maintain that most of these can be traced to five biologically based organizing principles: the need for connection, attunement, trust, autonomy, and love -sexuality.', 'This “well-organized, valuable” guide draws from somatic-based psychotherapy and neuroscience to offer “clear guidance” for coping with childhood trauma (Peter Levine, author of Waking the Tiger and In an Unspoken Voice).\r\nAlthough it may seem that people suffer from an endless number of emotional problems and challenges, Laurence Heller and Aline LaPierre maintain that most of these can be traced to five biologically based organizing principles: the need for connection, attunement, trust, autonomy, and love-sexuality. They describe how early trauma impairs the capacity for connection to self and others and how the ensuing diminished aliveness is the hidden dimension that underlies most psychological and many physiological problems.\r\nHeller and LaPierre introduce the NeuroAffective Relational Model® (NARM), a method that integrates bottom-up and top-down approaches to regulate the nervous system and resolve distortions of identity such as low self-esteem, shame, and chronic self-judgment that are the outcome of developmental and relational trauma. While not ignoring a person’s past, NARM emphasizes working in the present moment to focus on clients’ strengths, resources, and resiliency in order to integrate the experience of connection that sustains our physiology, psychology, and capacity for relationship.', '[{\"value\":\"Developmental Psychology\"},{\"value\":\"Trauma Recovery\"}]', 'null', '[{\"value\":\"Developmental Psychology\"},{\"value\":\"Trauma Recovery\"}]', 'Psychology', '14.29', '22.95', 8, 36, NULL, 70, '10', 1, '2024-04-03 01:40:49', '2024-04-03 01:40:49'),
(75, 'The Developing Mind', 'the-developing-mind', 'products/U95L5A2mllXUFrDNBEyrmcFj5lXmTXaO4JlXGlRQ.jpg.jpg', '[\"\",\"\"]', 'This is an insightful study of the development of the mind from childhood to adulthood. This book focuses on understanding the formation and transformation of the human mind, including elements of psychology, neurology, and emotion. It provides insight into how environments, experiences and relationships influence the development of the mind, and how they influence human behavior and mood.', 'This is an insightful study of the development of the mind from childhood to adulthood. This book focuses on understanding the formation and transformation of the human mind, including elements of psychology, neurology, and emotion. It provides insight into how environments, experiences and relationships influence the development of the mind, and how they influence human behavior and mood.', '[{\"value\":\"Developmental psychology\"},{\"value\":\"Child psychology\"}]', 'null', '[{\"value\":\"Developmental psychology\"},{\"value\":\"Child psychology\"}]', 'psychology', '51.99', '69.00', 8, 36, NULL, 71, '23', 1, '2024-04-03 02:11:14', '2024-04-03 02:11:14'),
(76, 'Developmental Psychology for Family Law Professionals: Theory, Application and the Best Interests of the Child', 'developmental-psychology-for-family-law-professionals-theory-application-and-the-best-interests-of-the-child', 'products/xLmdloQDMK9TXy14mWTR5WnKodIxQ62xyEnb2pIb.jpg.jpg', '[\"\",\"\"]', 'The best and most useful social science text I have read in a decade√ñ.It is comprehensive in its research and scope, clearly written and uses excellent case studies and examples to illustrate in simple terms what might otherwise be complex phenomena.', 'The best and most useful social science text I have read in a decade√ñ.It is comprehensive in its research and scope, clearly written and uses excellent case studies and examples to illustrate in simple terms what might otherwise be complex phenomena.\r\n--Dr. Tom Altobelli\r\nFederal Magistrate, Family Law Courts\r\nSydney, Australia\r\nThe goal of every family law professional and mental health practitioner is to improve family court outcomes in the best interests of the child. This book will assist readers in meeting this critical goal. Developmental Psychology for Family Law Professionals serves as a practical application of developmental theory to the practice of family law.\r\nThis book helps family law and mental health professionals gain a broader understanding of each child\'s unique needs when in the midst of family crisis. It presents developmental theories with which professionals might better assess the developmental needs, synchronies, and trajectories of a given child. Ultimately, this book presents guidelines for making appropriate legal decisions and recommendations for children who have experienced crises such as abuse, neglect, relocation, divorce, and much more.', '[{\"value\":\"Developmental psychology\"},{\"value\":\"Child psychology\"}]', 'null', '[{\"value\":\"Developmental psychology\"},{\"value\":\"Child psychology\"}]', 'Psychology', '35.78', '40.55', 8, 36, NULL, 72, '6', 1, '2024-04-03 02:25:01', '2024-04-03 02:25:01'),
(77, 'Developmental Psychology of the Black Child', 'developmental-psychology-of-the-black-child', 'products/5yi8lmnzANmEwE424NwXjn608TdFJ1h0aiRBnyFF.jpg.jpg', '[\"\",\"\"]', 'The Developmental Psychology of the Black Child  is a study and analysis of the development of African or African-descended children in the context of psychology. This book focuses on understanding how culture, history, and the social environment impact the development of children of black or African descent, including the about emotions, thinking, and behavior.', 'The Developmental Psychology of the Black Child and Professor Amos Wilson hold an unassailable position in the field of black psychology. Conceived 40+ years ago, this Wilsonian classic offers to a new generation, both lay and professional, sterling insights into understanding the black child; focus that scrutinizes familial interactions together with parental responsibilities, local and national environmental factors, educators, as well as national dynamics. He keenly examines the milieu black children are born into and are expected to strive in.', '[{\"value\":\"Developmental Psychology\"},{\"value\":\"Etnic Psychology\"}]', 'null', '[{\"value\":\"Developmental Psychology\"},{\"value\":\"Etnic Psychology\"}]', 'Psychology', '27.45', '29.45', 8, 36, NULL, 73, '12', 1, '2024-04-03 15:29:35', '2024-04-03 15:29:35'),
(78, 'An Introduction to Developmental Psychology', 'an-introduction-to-developmental-psychology', 'products/h3Fjtcklnv1jtQSHgPk2kmz5ILFBkrX1qNA9x9k8.jpg.jpg', '[\"\",\"\"]', 'An Introduction to Developmental Psychology, 3rd Edition is a representative and authoritative \'state of the art\' account of human development from conception to adolescence. The text is organised chronologically and also thematically and written by renowned experts in the field, and presents a truly international account of theories, findings and issues.  The content is designed with a broad range of readers in mind, and in particular those with little previous exposure to developmental psychology.', 'This is a basic introduction to the field of Developmental Psychology, focusing on human development from birth to adulthood. This book may cover topics such as neurological, emotional, language, thinking, and other stages of human development. It provides an overview and theory of development from infancy to adulthood.', '[{\"value\":\"Developmental Psychology\"}]', 'null', '[{\"value\":\"Developmental Psychology\"}]', 'Psychology', '19.12', '20.37', 8, 36, NULL, 74, '24', 1, '2024-04-03 15:37:42', '2024-04-03 15:37:42'),
(79, 'The New York Times Book of Medicine: More than 150 Years of Reporting on the Evolution of Medicine', 'the-new-york-times-book-of-medicine-more-than-150-years-of-reporting-on-the-evolution-of-medicine', 'products/xA2atqJalq0bE1pCn1aYtCcFfU6IhRtjevUgXu7e.jpg.jpg', '[\"\",\"\"]', 'Today we live longer, healthier lives than ever before in history—a transformation due almost entirely to tremendous advances in medicine.', 'Today we live longer, healthier lives than ever before in history—a transformation due almost entirely to tremendous advances in medicine. This change is so profound, with many major illnesses nearly wiped out, that it\'s hard now to imagine what the world was like in 1851, when the New York Times began publishing. Treatments for depression, blood pressure, heart disease, ulcers, and diabetes came later; antibiotics were nonexistent, viruses unheard of, and no one realized yet that DNA carried blueprints for life or the importance of stem cells. Edited by award-winning writer Gina Kolata, this eye-opening collection of 150 articles from the New York Times archive charts the developing scientific insights and breakthroughs into diagnosing and treating conditions like typhoid, tuberculosis, cancer, diabetes, Alzheimer\'s, and AIDS, and chronicles the struggles to treat mental illness and the enormous success of vaccines. It also reveals medical mistakes, lapses in ethics, and wrong paths taken in hopes of curing disease. Every illness, every landmark has a tale, and the newspaper\'s top reporters tell each one with perceptiveness and skill.', '[{\"value\":\"History of Medicine\"}]', 'null', '[{\"value\":\"History of Medicine\"}]', 'Medicine', '10,99', '12.34', 12, 37, NULL, 75, '22', 1, '2024-04-03 16:15:45', '2024-04-03 16:15:45'),
(80, 'Strong Medicine', 'strong-medicine', 'products/u0nGVuffQJRHvw7tatjUFGmq78t319JletvXniiR.jpg.jpg', '[\"\",\"\"]', 'Master storyteller Arthur Hailey’s New York Times–bestselling novel takes readers behind the scenes of the billion-dollar pharmaceutical drug industry', 'Master storyteller Arthur Hailey’s New York Times–bestselling novel takes readers behind the scenes of the billion-dollar pharmaceutical drug industry\r\nIt starts as a routine case: Mary Rowe contracts hepatitis from unclean drinking water, and the infection should work its way out of her system in a few days. But when the illness worsens and she slips into a coma, Dr. Andrew Jordan is forced to tell Rowe’s husband that his wife is dying. It’s 1957 and there simply isn’t a drug that can save her. Pharmaceutical saleswoman Celia de Grey then offers Dr. Jordan a sample of an experimental drug that cures the dying woman overnight. This marks the beginning of an epic journey—and a great romance—for a dedicated internist and an idealistic, ambitious woman.\r\nThe miracle cure establishes de Grey as a rising star within the industry. But as the years pass, she and her husband, Dr. Jordan, begin to realize that her bosses are driven not by the desire to eradicate disease, but by greed. Millions can be made in matters of life and death—for those who don’t mind getting blood on their hands.', '[{\"value\":\"Novel\"},{\"value\":\"Medicine\"}]', 'null', '[{\"value\":\"Medicine\"},{\"value\":\"novel\"}]', 'medicine', '8.99', '11.99', 12, 37, NULL, 76, '14', 1, '2024-04-03 16:29:35', '2024-04-03 16:29:35'),
(81, 'The Final Diagnosis', 'the-final-diagnosis', 'products/fnZPKfS6mcBZ2SpDGkQQ7nScea5bg8SfWAP1QZcs.jpg.jpg', '[\"\",\"\"]', 'This book focuses on a doctor\'s journey in diagnosing and treating patients. By detailing the medical procedure, Hailey creates a tense and compelling story about life and work in a medical environment. This book has received positive reviews for creating an in-depth look and understanding of the medical profession and the challenges that doctors face every day.', 'Change is in the air when a new board chairman sets out to modernize and expand Three Counties Hospital in Burlington, Pennsylvania—a once venerable institution whose standards have slipped. Dynamic Dr. Kent O’Donnell, a Harvard Medical School–trained surgeon, accepts the board’s offer to lead and reform the rundown, disorganized hospital because he wants to make his mark on the world.\r\nAs medical-board president, O’Donnell faces his greatest challenge in Dr. Joe Pearson, Three Counties’ elderly head pathologist. Once an excellent diagnostician, Pearson is now out of touch with the latest research and procedures in laboratory medicine. But if the hospital lets the imperious doctor go, it risks losing an important benefactor’s financial support.', '[{\"value\":\"Medicine\"}]', 'null', '[{\"value\":\"Noval\"},{\"value\":\"Medicine\"}]', 'Medicine', '8.99', '18,99', 12, 37, NULL, 76, '12', 1, '2024-04-03 16:32:59', '2024-04-03 16:33:46'),
(82, 'Oxford Textbook of Medicine, Volume 1 - 4', 'oxford-textbook-of-medicine-volume-1-4', 'products/Wwqw5qnpPQApmZH0lCySPvPJ8Q5Edu9sZQ8VC9i7.jpg.jpg', '[\"\",\"\"]', 'The Oxford Textbook of Medicine is the foremost international textbook of medicine. Unrivalled in its coverage of the scientific aspects and clinical practice of internal medicine and its subspecialties, it is a fixture in the offices and wards of physicians around the world , as well as being a key resource for medico legal practitioners.', 'The Oxford Textbook of Medicine is the foremost international textbook of medicine. Unrivalled in its coverage of the scientific aspects and clinical practice of internal medicine and its subspecialties, it is a fixture in the offices and wards of physicians around the world , as well as being a key resource for medico legal practitioners. Accessible digitally with regular updates, as well as in print, readers are provided with multiple avenues of access depending on their need and preference.\r\nMore comprehensive, more authoritative, and more international than any other textbook; Oxford Textbook of Medicine focuses on offering both perspective and practical guidance on clinical management and prevention of disease.\r\nIntroductory sections focus on the patient experience, medical ethics and clinical decision making, outlining a philosophy which has always characterized the Oxford Textbook of Medicine. It is humane, thought provoking, and aims to instill in readers an understanding of the role of medicine in society and the contribution it can make to the health of populations, and it does not shy away from discussion of controversial aspects of modern medicine.\r\n\r\nAs always, there is detailed coverage of all areas of internal medicine by the world\'s very best authors. The Oxford Textbook of Medicine seeks to embody advances in understanding and practice that have arisen through scientific research. The integration of basic science and clinical practice is unparalleled, and throughout the book the implications of research for medical practice are explained. The core clinical medicine sections offer in depth coverage of the traditional specialty areas. The Oxford Textbook of Medicine has unsurpassed detail on infectious diseases: the most comprehensive coverage to be found in any textbook of medicine. Other sections of note include stem cells and regenerative medicine; inequalities in health; medical aspects of pollution and climate change; travel and expedition medicine; bioterrorism and forensic medicine; pain; medical disorders in pregnancy; nutrition; and psychiatry and drug related problems in general medical practice. The section on acute medicine is designed to give rapid access to information when it is needed quickly.\r\nIn response to ongoing user feedback there have been substantial changes to ensure that the Oxford Textbook of Medicine continues to meet the needs of its readers. Chapter essentials give accessible overviews of the content and a new design ensures that the textbook is easy to read and navigate. The evidence base and references continue to be at the forefront of research.\r\nNew to this edition is that purchasers of the print version of the Oxford Textbook of Medicine sixth edition will have free access on Oxford Medicine Online to all the content plus regular updates for the life of the edition.', '[{\"value\":\"Medicine\"}]', 'null', '[{\"value\":\"Medicine\"}]', 'Medicine', '157.73', '189.00', 12, 37, NULL, 77, '4', 1, '2024-04-03 16:38:34', '2024-04-03 16:38:34'),
(83, 'Oxford Textbook of Medicine: Infection', 'oxford-textbook-of-medicine-infection', 'products/b5nv90hvxgZNYyUJcS2hrEdMRIdfYyJRFEFBnUUS.jpg.jpg', '[\"\",\"\"]', 'This Oxford Textbook of Infectious and Tropical Diseases is derived from the Oxford Textbook of Medicine 5e, the foremost international textbook of medicine. The text has been updated and revised to offer a uniquely comprehensive coverage focusing on offering practical guidenace on present-day clinical management and the prevention of a wide range of familiar and emerging infectious and tropical diseases. The textbook is illustrated in full colour throughout.', 'This Oxford Textbook of Infectious and Tropical Diseases is derived from the Oxford Textbook of Medicine 5e, the foremost international textbook of medicine. The text has been updated and revised to offer a uniquely comprehensive coverage focusing on offering practical guidenace on present-day clinical management and the prevention of a wide range of familiar and emerging infectious and tropical diseases. The textbook is illustrated in full colour throughout.', '[{\"value\":\"Medicine\"}]', 'null', '[{\"value\":\"Medicine\"}]', 'Medicine', '45.48', '50.00', 12, 37, NULL, 77, '7', 1, '2024-04-03 16:41:21', '2024-04-03 16:41:21'),
(84, 'Netter’s Correlative Imaging: Cardiothoracic Anatomy', 'netters-correlative-imaging-cardiothoracic-anatomy', 'products/ujahrZ1khMu5EME3lv8tYJV5ZXSTYPJF4TLSboe8.jpg.jpg', '[\"\",\"\"]', 'Cardiothoracic Anatomy, the third title in the brand-new Netter\'s Correlative Imaging series, provides exceptional visual guidance for thoracic, chest wall, lung, and heart anatomy.', 'Cardiothoracic Anatomy, the third title in the brand-new Netter\'s Correlative Imaging series, provides exceptional visual guidance for thoracic, chest wall, lung, and heart anatomy. Dr. Michael Gotway presents Netter\'s beautiful and instructive paintings and illustrated cross sections created in the Netter style side-by-side with high-quality patient images from breath-hold cardiac MR, multislice thoracic CT, and CT coronary angiography to help you visualize the anatomy section by section. With in-depth coverage and concise descriptive text for at-a-glance information, this atlas is a comprehensive reference that\'s ideal for today\'s busy imaging specialists.', '[{\"value\":\"Medicine\"}]', 'null', '[{\"value\":\"Medicine\"}]', 'Medicine', '85.95', '95.00', 12, 37, NULL, 78, '7', 1, '2024-04-03 16:49:24', '2024-04-03 16:49:24'),
(85, 'Murray & Nadel\'s Textbook of Respiratory Medicine, 2-Volume Set', 'murray-nadels-textbook-of-respiratory-medicine-2-volume-set', 'products/darmmCcGAKmKJ0hUWL17FClokENPkcLm3B3NZ29T.jpg.jpg', '[\"\",\"\"]', 'Known for its clear readability, thorough coverage, and expert authorship, Murray & Nadel’s Textbook of Respiratory Medicine has long been the gold standard text in the fast-changing field of pulmonary medicine. The new 7th Edition brings you fully up to date with newly expanded content, numerous new chapters, and extensive updates throughout. It covers the entire spectrum of pulmonology in one authoritative point-of-care reference, making it an ideal resource for pulmonary physicians, fellows, and other pulmonary practitioners.\r\nOffers definitive, full-color coverage of basic science, diagnosis, evaluation, and treatment of the full range of respiratory diseases.', 'Known for its clear readability, thorough coverage, and expert authorship, Murray & Nadel’s Textbook of Respiratory Medicine has long been the gold standard text in the fast-changing field of pulmonary medicine. The new 7th Edition brings you fully up to date with newly expanded content, numerous new chapters, and extensive updates throughout. It covers the entire spectrum of pulmonology in one authoritative point-of-care reference, making it an ideal resource for pulmonary physicians, fellows, and other pulmonary practitioners.\r\nOffers definitive, full-color coverage of basic science, diagnosis, evaluation, and treatment of the full range of respiratory diseases.\r\nProvides detailed explanations of each disease entity and differential diagnoses with state-of-the-art, evidence-based content by global leaders in the field.\r\nContains a newly expanded section on common presentations of respiratory disease, plus new chapters on COVID-19, asthma and obesity, airplane travel, lung cancer screening, noninvasive support of oxygenation, lung microbiome, thoracic surgery, inhaled substances, treatment of lung cancer, and more.\r\nCovers hot topics such as vaping; advanced ultrasound applications and procedures; interventional pulmonology; immunotherapy; lung cancer targeted therapy; outbreaks, pandemics and bioterrorism; point-of-care ultrasound; use of high-flow oxygen, and more.\r\nIncludes extensively reorganized sections on basic science, pleural disease, and sleep, with new chapters and approaches to the topics. \r\nFeatures more than 1,450 anatomic, algorithmic, and radiologic images (400 are new!) including CT, PET, MR, and HRCT, plus extensive online-only content: 200 procedural and conceptual videos plus audio clips of lung sounds.\r\nBrings you up to date with the latest respiratory drugs, mechanisms of action, indications, precautions, adverse effects, and recommendations, with increased emphasis on algorithms to illustrate decision making.\r\nEnhanced eBook version included with purchase. Your enhanced eBook allows you access to all of the text, figures, reporting templates, and references from the book on a variety of devices.', '[{\"value\":\"Medicine\"}]', 'null', '[{\"value\":\"Medicine\"}]', 'Medicine', '226.14', '230.76', 12, 37, NULL, 78, '8', 1, '2024-04-03 16:51:24', '2024-04-03 16:51:24'),
(86, 'The Survival Medicine Handbook: The Essential Guide for When Help is NOT on the Way', 'the-survival-medicine-handbook-the-essential-guide-for-when-help-is-not-on-the-way', 'products/WH2anjPPoaGKdnmvAo0Dn7fGMbNApj58PX8PikUA.jpg.jpg', '[\"\",\"\"]', 'Black & White Version. If a disaster took away the high-technology we take for granted, would you be prepared to keep you family healthy? Could you be an effective medic when hospitals are overcrowded and the ambulance is heading in the other direction? Can you take over if you were the highest medical asset left? Medical preparedness advocates Joe Alton, MD and Amy Alton, NP’s award-winning “Survival Medicine Handbook: A guide for when help is NOT on the way” is now out in its greatly expanded and revised 4th edition!', 'Black & White Version. If a disaster took away the high-technology we take for granted, would you be prepared to keep you family healthy? Could you be an effective medic when hospitals are overcrowded and the ambulance is heading in the other direction? Can you take over if you were the highest medical asset left? Medical preparedness advocates Joe Alton, MD and Amy Alton, NP’s award-winning “Survival Medicine Handbook: A guide for when help is NOT on the way” is now out in its greatly expanded and revised 4th edition!\r\nPrevious editions have been 1st place winners in the Book Excellence Awards in Medicine, and this one has many more topics and almost triple the illustrations to give you the info needed to keep it together, even when everything else falls apart. Called “America’s favorite survival medic” by American Outdoor Guide, NY Times/Amazon bestselling author Dr. Joe Alton and Nurse Practitioner Amy Alton have put together a 700 page book that encompasses trauma care, first aid, chronic care, medical procedures, and much more. It’ll be an essential reference for anyone concerned about the uncertain future.\r\nThe Survival Medicine Handbook is written in plain English that anyone can understand, but it’s not just another medical first aid book. It’s unique in that it assumes that a disaster, natural or man-made, has removed all access to hospitals or doctors for the foreseeable future; you, the average person, are now the highest medical resource left to your family. The book’s goal is to make you effective in that role.', '[{\"value\":\"Medicine\"},{\"value\":\"Tips\"}]', 'null', '[{\"value\":\"Medicine\"}]', 'Medicine', '36.00', '39.89', 12, 37, NULL, 79, '8', 1, '2024-04-03 16:56:58', '2024-04-03 16:56:58'),
(87, 'The Ultimate Survival Medicine Guide: Emergency Preparedness for ANY Disaster', 'the-ultimate-survival-medicine-guide-emergency-preparedness-for-any-disaster', 'products/9gnPP2DyMQkFx4CRTERcB6Vo5oRiXh1Qyi1RgpQa.jpg.jpg', '[\"\",\"\"]', 'The Ultimate Survival Medicine Guide: Emergency Preparedness for any Disaster is the new abridged version of the bestselling book The Survival Medicine Handbook.', 'The Ultimate Survival Medicine Guide: Emergency Preparedness for any Disaster is the new abridged version of the bestselling book The Survival Medicine Handbook.\r\nThis unique medical book is meant to enable the average person to handle injuries and illness in situations in which modern medical facilities and professionals aren’t available due to a disaster.\r\nThis book is written by America’s top medical preparedness experts: Joe Alton, MD, and Amy Alton, ARNP. Their mission: to put a medically prepared person in every family for when medical help is not on the way. Using decades of medical experience, they address, in plain language, dozens of medical issues associated with surviving disasters and epidemics. The Altons also discuss the medical supplies needed to become a medical asset to your family and community as well as alternative and natural strategies for when pharmaceuticals aren’t available.\r\nMost medical books will send you to the doctor or hospital when an emergency happens. The Ultimate Survival Medicine Guide assumes what might actually happen—that the average person could be left without medical help in a disaster. With this unique book, you’ll have a head start on keeping your family healthy in times of trouble.', '[{\"value\":\"Medicine\"},{\"value\":\"Tips\"}]', 'null', '[{\"value\":\"Medicine\"},{\"value\":\"Tips\"}]', 'Medicine', '12.25', '18.25', 12, 37, NULL, 79, '5', 1, '2024-04-03 17:04:46', '2024-04-03 17:04:46'),
(88, 'The Survival Medicine Handbook: A Guide for When Help is Not on the Way', 'the-survival-medicine-handbook-a-guide-for-when-help-is-not-on-the-way', 'products/MWtzBjGCM7xNcYhGMQjdmJv3YzsBXpoErJVW9m51.jpg.jpg', '[\"\",\"\"]', 'The 2nd edition Survival Medicine Handbook(tm) is a guide for those who want to be medically prepared for any disaster where help is NOT on the way.', 'The 2nd edition Survival Medicine Handbook(tm) is a guide for those who want to be medically prepared for any disaster where help is NOT on the way. This book is written by Joe Alton, M.D. and Amy Alton, A.R.N.P., the premiere Medical Preparedness Professionals from the top ten survival website doomandbloom dot net. This book is available in print and kindle, and print book buyers can take advantage of Kindle\'s matchbook program to also buy the digital version for just $2.99 (normal retail $24.99). The expanded second edition of the 3 category Amazon bestseller (Survival Skills, Disaster Relief, Safety/First Aid) is geared to enable the non-medical professional to deal with all the likely issues they will encounter in catastrophic scenarios. The Survival Medicine Handbook (tm) is not your standard first aid book. It assumes that no hospital or doctor is available in the aftermath of a catastrophic event. This book will give you the tools to handle injuries and illness for when YOU might be the end of the line with regards to your family\'s medical well-being. In circumstances where medical personnel are overwhelmed and access to modern technology is limited or non-existent, The Survival Medicine Handbook(tm) is the essential reference book for every library. Written in plain English, you\'ll find step-by-step instructions on how to identify and treat over 100 different medical issues. The second edition also covers alternative remedies for almost every possible medical condition in situations where modern healthcare is inaccessible.', '[{\"value\":\"Medicine\"}]', 'null', '[{\"value\":\"Medicine\"},{\"value\":\"Tips\"}]', 'Medicine', '10.99', '11.20', 12, 37, NULL, 79, '8', 1, '2024-04-03 17:08:29', '2024-04-03 17:08:29'),
(89, 'Source Book of Medical History', 'source-book-of-medical-history', 'products/uk6wZ9dbgflR9MRQWEmkofvF778lgh6YApGaXbG1.jpg.jpg', '[\"\",\"\"]', 'This book provides a comprehensive overview of the development of medicine from ancient times to modern times, including important medical discoveries, historical events, and pioneers in medicine. medical field. It is an important reference for those interested in the history of medicine and can also be used as a teaching material in the medical sciences and history of medicine.', 'Dr. Clendening, who was Professor of the History of Medicine at the University of Kansas, brings together in this work the most significant medical writings of 4,000 years. One hundred twenty-four papers by 120 authors are presented in chronological order, each with an introduction and short biography of its author. They cover almost every area of medical thought and practice — pathology, asepsis, preventive medicine, bacteriology, physiology, etc. — from the Egyptian Kahun Papyrus of 1900 B.C. to W. C. Roentgen\'s discovery of X-rays. Dr. Clendening has carefully selected the important sections of each paper, to save you reading time. Several of these works were specially translated for this collection. This book will give anybody interested in medicine a view of his profession unequalled for its immediacy. He will witness the dramatic growth of knowledge and skills, with each advance announced by its originator, each great concept presented in its original form. The breadth of these writings alone makes this book unique. An additional feature is the inclusion of selections from non-medical literature, showing lay views of medicine at different ages. Here are accounts of Greek medicine by Aristophanes, Plato, and Thucydides; of Arabian medicine from the Arabian Nights; glimpses of contemporary medical life by Chaucer, Molière, Dickens, Thackeray, and others.', '[{\"value\":\"History\"},{\"value\":\"Medicine\"}]', 'null', '[{\"value\":\"Medicine\"}]', 'Medicine', '11.45', '17.95', 12, 37, NULL, 80, '6', 1, '2024-04-03 17:17:23', '2024-04-03 17:17:23'),
(90, 'Health Anti-Inflammation', 'health-anti-inflammation', 'products/NTRo2oIaDVHq6jT4ZHpWrXurXqTRH8cWF6Kvjnio.jpg.jpg', '[\"\",\"\"]', 'Inflammation is the body’s vital natural defense system, protecting us from threats such as illness and injury.', 'Inflammation is the body’s vital natural defense system, protecting us from threats such as illness and injury. However, too much can be catastrophic. This special edition of Health explores the root causes and effects of inflammation, including a roadmap to inflammation, the connection to weight management, and anti-inflammatory exercises and meals for any day of the week. Please note that this product is an authorized edition published by the Meredith Corporation and sold by Amazon. This edition is printed using a high quality matte interior paper and printed on demand for immediate fulfillment.', '[{\"value\":\"Health\"}]', 'null', '[{\"value\":\"Health\"}]', 'Health', '6.78', '12.99', 12, 38, NULL, 81, '88', 1, '2024-04-03 17:33:40', '2024-04-03 17:33:40'),
(91, 'EatingWell Anti-Inflammation', 'eatingwell-anti-inflammation', 'products/HBU3yRWLgra6jZeJhXpFHbA0g4wih43Eyn4uLOrq.jpg.jpg', '[\"\",\"\"]', 'Inflammation contributes to every major chronic condition, from heart disease to cancer to diabetes. Under normal circumstances, some inflammation is a good thing: It’s your body’s natural protective response to an illness or injury.', 'Inflammation contributes to every major chronic condition, from heart disease to cancer to diabetes. Under normal circumstances, some inflammation is a good thing: It’s your body’s natural protective response to an illness or injury. This special edition from EatingWell presents the research-driven science surrounding the body’s inflammatory response, along with what to eat to help stave off the side effects. Here, doctors weigh in on their secrets to taming inflammation, and what lesser-known symptoms to look out for. Plus: Researchers break down the many ways that inflammation intersects with sleep, stress, weight and skin conditions. This edition also includes recipes that highlight anti-inflammatory ingredients, and some pantry staples and spices that can keep inflammation at bay. Please note that this product is an authorized edition published by the Meredith Corporation and sold by Amazon. This edition is printed using a high quality matte interior paper and printed on demand for immediate fulfillment.', '[{\"value\":\"Health\"}]', 'null', '[{\"value\":\"Health\"}]', 'Health', '6.78', '12.99', 12, 38, NULL, 81, '9', 1, '2024-04-03 17:37:11', '2024-04-03 17:37:11'),
(92, 'The Women\'s Health Big Book of Exercises: Four Weeks to a Leaner, Sexier, Healthier You!', 'the-womens-health-big-book-of-exercises-four-weeks-to-a-leaner-sexier-healthier-you', 'products/CeUk5gGq64Tyc59eYBNruvoNosIHkjcgVHPeBbCV.jpg.jpg', '[\"\",\"\"]', 'The Women\'s Health Big Book of Exercises is the essential workout guide for anyone who wants a better body. As the most comprehensive collection of exercises ever written specifically for women, this book is a body-shaping power tool for both beginners and longtime fitness buffs alike.', 'Revised edition includes 100 new exercises!\r\nThe Women\'s Health Big Book of Exercises is the essential workout guide for anyone who wants a better body. As the most comprehensive collection of exercises ever written specifically for women, this book is a body-shaping power tool for both beginners and longtime fitness buffs alike. This book contains hundreds of useful tips, the latest findings in exercise science, and cutting-edge workouts from the world\'s top trainers.\r\nBacked by the authority of Women\'s Health magazine, this updated and revised edition features 100 new exercises in 20 workouts designed by BJ Gaddour, the Fitness Director of Men\'s Health magazine, and 1,350 photographs, showing movements for every muscle and training plan to match every fitness goal.', '[{\"value\":\"Health\"}]', 'null', '[{\"value\":\"Health\"}]', 'Health', '2.89', '19.65', 12, 38, NULL, 81, '14', 1, '2024-04-03 17:40:28', '2024-04-03 17:40:28'),
(93, 'Body & Health: Her Body, Her Health: A Woman\'s Guide to Well-being', 'body-health-her-body-her-health-a-womans-guide-to-well-being', 'products/hoyWrj25PuKfTDgOtN4ZZAO0NbtetUR8Rxzfzrbs.jpg.jpg', '[\"\",\"\"]', 'A woman\'s guide to health and wellness. This guide was created by a registered nurse to help women fully understand their bodies and the changes they experience from puberty to adulthood. This guide will address issues that some women face and the importance of regular checkups and preventive care measures. As you explore this woman\'s guide to wellness, you will have a better understanding of your body and how to maintain health.', 'A woman\'s guide to health and wellness. This guide was created by a registered nurse to help women fully understand their bodies and the changes they experience from puberty to adulthood. This guide will address issues that some women face and the importance of regular checkups and preventive care measures. As you explore this woman\'s guide to wellness, you will have a better understanding of your body and how to maintain health.', '[{\"value\":\"Health\"}]', 'null', '[{\"value\":\"Health\"}]', 'Health', '9.99', '12.68', 12, 38, NULL, 82, '23', 1, '2024-04-03 17:43:59', '2024-04-03 17:43:59'),
(94, 'Beginners\' Chinese', 'beginners-chinese', 'products/xpgUoET1pXbGxtEfM8hLcH19XlN1FPA3xSub1jcV.jpg.jpg', '[\"\",\"\"]', 'Learn about Mandarin Chinese as a tool for communication and gain insights into Chinese society and culture. This free course, Beginners’ Chinese, provides a brief introduction to the Chinese language, its scripts and sounds, and how words are formed. You will hear short conversations where people greet each other, introduce themselves, describe where they come from and what they do for a living. You’ll hear them talk about their daily activities and order food and drinks in a restaurant. This OpenLearn course will be easily accessible for those with some basic knowledge of Chinese.', 'Learn about Mandarin Chinese as a tool for communication and gain insights into Chinese society and culture. This free course, Beginners’ Chinese, provides a brief introduction to the Chinese language, its scripts and sounds, and how words are formed. You will hear short conversations where people greet each other, introduce themselves, describe where they come from and what they do for a living. You’ll hear them talk about their daily activities and order food and drinks in a restaurant. This OpenLearn course will be easily accessible for those with some basic knowledge of Chinese.', '[{\"value\":\"Language\"},{\"value\":\"Chinese\"}]', 'null', '[{\"value\":\"Chinese\"},{\"value\":\"language\"}]', 'language', '12.90', '17.56', 17, 39, NULL, 83, '27', 1, '2024-04-03 17:55:30', '2024-04-03 17:55:30'),
(95, 'Teach Yourself to Read Modern Medical Chinese: A Step-by-Step Workbook & Guide', 'teach-yourself-to-read-modern-medical-chinese-a-step-by-step-workbook-guide', 'products/DWwFHWASGJMw7gOwVSTyfXC1jXCnd1OKS3eydqj9.jpg.jpg', '[\"\",\"\"]', 'This is the 1st workbook ever written specifically to help acupuncturists and practitioners of Chiense medicine to directly access the Chinese medical literature in Chinese. Conversational and easy to follow, the author shares all the \"quick & dirty\" methods he\'s used to teach himself. You can begin translating modern medical Chinese within hourse! You wil learn: how to look up a Chinese character in a dictionary; how to interpret characters once you\'ve found them; how to use quick \"cheat-sheets\" for identifying acupuncture point names, medicinals, formulas, and commonly used medical words and phrases; how to purchase medical books and journals by mail; what to translate and what not to as a beginner. The book is wire-bound for ease of use.', 'This is the 1st workbook ever written specifically to help acupuncturists and practitioners of Chiense medicine to directly access the Chinese medical literature in Chinese. Conversational and easy to follow, the author shares all the \"quick & dirty\" methods he\'s used to teach himself. You can begin translating modern medical Chinese within hourse! You wil learn: how to look up a Chinese character in a dictionary; how to interpret characters once you\'ve found them; how to use quick \"cheat-sheets\" for identifying acupuncture point names, medicinals, formulas, and commonly used medical words and phrases; how to purchase medical books and journals by mail; what to translate and what not to as a beginner. The book is wire-bound for ease of use.', '[{\"value\":\"Language\"},{\"value\":\"Chinese\"}]', 'null', '[{\"value\":\"Chinese\"}]', 'Language', '9.99', '5.48', 17, 39, NULL, 83, '24', 1, '2024-04-03 17:58:28', '2024-04-03 17:58:28'),
(96, 'Chinese Express: Talk Chinese', 'chinese-express-talk-chinese', 'products/JVT8MOYtwDh3xj7tDGAcPHjrhoIOCrcvLxbBC8Pm.jpg.jpg', '[\"\",\"\"]', 'Chinese Express---Talk Chinese is designed for English speakers studying Chinese at beginner\'s level. This is essential book for those determined to learn enough Chinese to not only survive, but also enjoy interaction with native speakers. English, Pinyin and Chinese characters are used in parallel, making learners more at ease. It is designed for use in the classroom or at home. It is includes practice for everyday situations, grammar explanations, exercises and cultural insights. Communication The emphasis is on learning communication skills. 188 key sentences covering most useful situations in everyday life. Learning through doing, different types of exercises to help learners grasp the language in an enjoyable way. Grammar items are explained in simple English. And in a logical step by step order so as to be easy to understand and learn. Concise and direct topics and sentences are prefect for practical use.', 'Chinese Express---Talk Chinese is designed for English speakers studying Chinese at beginner\'s level. This is essential book for those determined to learn enough Chinese to not only survive, but also enjoy interaction with native speakers. English, Pinyin and Chinese characters are used in parallel, making learners more at ease. It is designed for use in the classroom or at home. It is includes practice for everyday situations, grammar explanations, exercises and cultural insights. Communication The emphasis is on learning communication skills. 188 key sentences covering most useful situations in everyday life. Learning through doing, different types of exercises to help learners grasp the language in an enjoyable way. Grammar items are explained in simple English. And in a logical step by step order so as to be easy to understand and learn. Concise and direct topics and sentences are prefect for practical use.', '[{\"value\":\"Chinese\"},{\"value\":\"Communicate\"}]', 'null', '[{\"value\":\"Chinese\"},{\"value\":\"communicate\"}]', 'Chinese', '7.79', '10.03', 17, 39, NULL, 83, '24', 1, '2024-04-03 18:06:17', '2024-04-03 18:06:17'),
(97, 'How to Grasp the Bird\'s Tail If You Don\'t Speak Chinese', 'how-to-grasp-the-birds-tail-if-you-dont-speak-chinese', 'products/4IUgaQctGaBYHQDBfQQ5lutVDi7khIzPmiVYur38.jpg.jpg', '[\"\",\"\"]', 'A beautiful exploration of the Chinese calligraphy and meanings of the Taijiquan posture names. This text reveals the mystery, imagery, and poetic ambiguity in the Chinese language. Much in the names in of Taiji movements is lost in the English translation. This book asks the reader to consider the Chinese character, which conveys much of the inner essence of Taiji.This book was originally copyrighted by the author, Jane Schorre and published by North Atlantic Books in Berkeley California. A group of taijiquan enthusiasts felt that such a beautiful book should not be out of print, so after an exhaustive search, we determined that the only route to go was to republish this book ourselves. All proceeds go to Health, Prosperity, & Leadership Institute, a 501c3 non-profit organization dedicated to spreading Health, Prosperity, and Leadership to everyone, everywhere.', 'A beautiful exploration of the Chinese calligraphy and meanings of the Taijiquan posture names. This text reveals the mystery, imagery, and poetic ambiguity in the Chinese language. Much in the names in of Taiji movements is lost in the English translation. This book asks the reader to consider the Chinese character, which conveys much of the inner essence of Taiji.This book was originally copyrighted by the author, Jane Schorre and published by North Atlantic Books in Berkeley California. A group of taijiquan enthusiasts felt that such a beautiful book should not be out of print, so after an exhaustive search, we determined that the only route to go was to republish this book ourselves. All proceeds go to Health, Prosperity, & Leadership Institute, a 501c3 non-profit organization dedicated to spreading Health, Prosperity, and Leadership to everyone, everywhere.', '[{\"value\":\"Chinese Talk\"}]', 'null', '[{\"value\":\"Language\"},{\"value\":\"Chinese\"}]', 'Language', '29.00', '32.56', 17, 39, NULL, 83, '7', 1, '2024-04-03 18:09:57', '2024-04-03 18:09:57'),
(98, 'Japanese Readings 2000: Master 1000 More Words with 20 Short Stories', 'japanese-readings-2000-master-1000-more-words-with-20-short-stories', 'products/DlsPOApRbPGKqwaSeqZSQssmBZmwipmEX5diYmyN.jpg.jpg', '[\"\",\"\"]', 'Continue your reading practice of hiragana, katakana, and kanji with the next volume in the series Japanese Readings.', 'Continue to master the most common vocabulary words by reading them in interesting contextual situations! Continue your reading practice of hiragana, katakana, and kanji with the next volume in the series Japanese Readings. Japanese Readings 2000 contains 1000 more of the most common Japanese vocabulary words, with 20 engaging short stories to help you practice the words in context. Each story is written three times, first using only kana, a second time using the kanji tested in the JLPT N5 & N4, and a final time as it would normally appear. No matter your Japanese reading level, you can get started right away! The stories center around four colorful characters, who each speak differently, which will allow you to expose yourself to the different ways Japanese is spoken based on politeness and the gender of the speaker. With Japanese Readings 2000 you can start reading Japanese and master the most common 2000 vocabulary words now!', '[{\"value\":\"Japanese\"},{\"value\":\"Language\"}]', 'null', '[{\"value\":\"Japanese\"}]', 'Language', '12.95', '14.39', 17, 25, NULL, 85, '22', 1, '2024-04-03 18:17:04', '2024-04-03 18:17:04'),
(99, 'Harry Potter and the Deathly Hallows', 'harry-potter-and-the-deathly-hallows', 'products/ga1n3O3qN7IONNSrIkcPcj2IizG99nfJvZ0i0G0j.jpg.jpg', '[\"\",\"\"]', '\'Give me Harry Potter,\' said Voldemort\'s voice, \'and none shall be harmed. Give me Harry Potter, and I shall leave the school untouched. Give me Harry Potter, and you will be rewarded.\'\r\nAs he climbs into the sidecar of Hagrid\'s motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy...\r\nHaving become classics of our time, the Harry Potter eBooks never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new readers.', '\'Give me Harry Potter,\' said Voldemort\'s voice, \'and none shall be harmed. Give me Harry Potter, and I shall leave the school untouched. Give me Harry Potter, and you will be rewarded.\'\r\nAs he climbs into the sidecar of Hagrid\'s motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy...\r\nHaving become classics of our time, the Harry Potter eBooks never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new readers.', '[{\"value\":\"Adventure \"},{\"value\":\"Mystery\"}]', 'null', '[{\"value\":\"Adventure - Mystery\"}]', 'Novel', '2.12', '6.79', 7, 40, NULL, 86, '34', 1, '2024-04-03 18:27:59', '2024-04-03 18:27:59'),
(100, 'Harry Potter and the Order of the Phoenix', 'harry-potter-and-the-order-of-the-phoenix', 'products/DUZNrtpQrC6cniWU8L9S7IOoKCT8FQxvK6YcaE4n.jpg.jpg', '[\"\",\"\"]', '\'You are sharing the Dark Lord\'s thoughts and emotions. The Headmaster thinks it inadvisable for this to continue. He wishes me to teach you how to close your mind to the Dark Lord.\'\r\nDark times have come to Hogwarts. After the Dementors\' attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lord\'s return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemort\'s savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time ...', '\'You are sharing the Dark Lord\'s thoughts and emotions. The Headmaster thinks it inadvisable for this to continue. He wishes me to teach you how to close your mind to the Dark Lord.\'\r\nDark times have come to Hogwarts. After the Dementors\' attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lord\'s return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemort\'s savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time ...', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'null', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'Adventure, Mystery', '3.98', '8.30', 7, 40, NULL, 86, '22', 1, '2024-04-03 18:29:55', '2024-04-03 18:29:55');
INSERT INTO `products` (`id`, `name`, `slug`, `featured_image`, `images`, `short_description`, `description`, `tags`, `specifications`, `meta_keyword`, `meta_description`, `current_price`, `previous_price`, `cat_id`, `sub_cat_id`, `child_cat_id`, `brand_id`, `total_stock`, `status`, `created_at`, `updated_at`) VALUES
(101, 'Harry Potter and the Prisoner of Azkaban', 'harry-potter-and-the-prisoner-of-azkaban', 'products/LGiY3UgWgLMWf3FjheKREbI9nBcv4kmXUp8r1xNJ.jpg.jpg', '[\"\",\"\"]', 'Welcome to the Knight Bus, emergency transport for the stranded witch or wizard. Just stick out your wand hand, step on board and we can take you anywhere you want to go.\'', 'Welcome to the Knight Bus, emergency transport for the stranded witch or wizard. Just stick out your wand hand, step on board and we can take you anywhere you want to go.\'\r\nWhen the Knight Bus crashes through the darkness and screeches to a halt in front of him, it\'s the start of another far from ordinary year at Hogwarts for Harry Potter. Sirius Black, escaped mass-murderer and follower of Lord Voldemort, is on the run - and they say he is coming after Harry. In his first ever Divination class, Professor Trelawney sees an omen of death in Harry\'s tea leaves... But perhaps most terrifying of all are the Dementors patrolling the school grounds, with their soul-sucking kiss...\r\nHaving become classics of our time, the Harry Potter eBooks never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new readers.', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'null', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'Adventure, Mystery', '4.30', '8.47', 7, 40, NULL, 86, '10', 1, '2024-04-03 18:31:54', '2024-04-03 18:31:54'),
(102, 'Harry Potter and the Chamber of Secrets', 'harry-potter-and-the-chamber-of-secrets', 'products/NXry2jx0ZRLNFmZhXUaggMQCVkzw9MZ0lmGp9C2n.jpg.jpg', '[\"\",\"\"]', 'Harry Potter\'s summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car!', 'There is a plot, Harry Potter. A plot to make most terrible things happen at Hogwarts School of Witchcraft and Wizardry this year.\'\r\nHarry Potter\'s summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone... Dobby\'s sinister predictions seem to be coming true.\r\nHaving become classics of our time, the Harry Potter eBooks never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new readers.', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'null', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'Adventure, Mystery', '3.12', '6.98', 7, 40, NULL, 86, '8', 1, '2024-04-03 18:34:01', '2024-04-03 18:34:01'),
(103, 'Harry Potter and the Sorcerer\'s Stone', 'harry-potter-and-the-sorcerers-stone', 'products/eSLDfAeairj9ncpJyKvilkLtefqjeKASilx5HQf6.jpg.jpg', '[\"\",\"\"]', 'Turning the envelope over, his hand trembling, Harry saw a purple wax seal bearing a coat of arms; a lion, an eagle, a badger and a snake surrounding a large letter \'H\'.', 'Turning the envelope over, his hand trembling, Harry saw a purple wax seal bearing a coat of arms; a lion, an eagle, a badger and a snake surrounding a large letter \'H\'.\r\nHarry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry\'s eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!\r\nHaving become classics of our time, the Harry Potter eBooks never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new readers.', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'null', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'Adventure, Mystery', '4.29', '9.38', 7, 40, NULL, 86, '34', 1, '2024-04-03 18:36:25', '2024-04-03 18:36:25'),
(104, 'Harry Potter Box Set: The Complete Collection', 'harry-potter-box-set-the-complete-collection', 'products/7NAzzMbhSPoxG2N6WrvVcbesZASMOYOwAwmZh7jx.jpg.jpg', '[\"\",\"\"]', 'It\'s time to pass the magic on – with brand new children\'s editions of the classic and internationally bestselling series.', 'It\'s time to pass the magic on – with brand new children\'s editions of the classic and internationally bestselling series.', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'null', '[{\"value\":\"Adventure\"},{\"value\":\"Mystery\"}]', 'Adventure, Mystery', '130.85', '169.69', 7, 40, NULL, 86, '5', 1, '2024-04-03 18:40:40', '2024-04-03 18:40:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `rating` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `image`, `title`, `details`, `created_at`, `updated_at`) VALUES
(1, 'service/0t4Y99UU7g6psysNByyfYdLOCsI4Tk9glaqzRVyB.png', 'Free Worldwide Shipping', 'Free shipping for all orders over $100 Contrary to popular belie', '2024-03-18 07:11:46', '2024-03-18 07:13:00'),
(2, 'service/B6yNsWq63TxIBpAuJrrBvmkSxY6UAJgcn1VDjdVz.png', 'Money Back Guarantee', 'We return money within 30 days', '2024-03-18 07:13:29', '2024-03-18 07:13:29'),
(3, 'service/6nJMI0GDnlLY9VtLAT09rqK22Snuxp10FCOiT16W.png', '24/7 Customer Support', 'Friendly 24/7 customer support', '2024-03-18 07:13:59', '2024-03-18 07:13:59'),
(4, 'service/nz5lbinJywwZkPRlK2W7M5uI30xpnRB3ZVPVL8Mr.png', 'Secure Online Payment', 'We posess SSL / Secure Certificate', '2024-03-18 07:14:28', '2024-03-18 07:14:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address1` text NOT NULL,
  `address2` text DEFAULT NULL,
  `zip_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `user_id`, `address1`, `address2`, `zip_code`, `city`, `company`, `created_at`, `updated_at`, `phone`) VALUES
(24, 15, 'Phường 17, Phú Nhuận', '123', '700000', 'Ho Chi Minh', 'No', '2024-03-22 23:49:57', '2024-03-22 23:49:57', '+84962036050'),
(25, 15, 'Phường 17, Phú Nhuận', '123', '700000', 'Ho Chi Minh', 'No', '2024-03-22 23:50:17', '2024-03-22 23:50:17', '+84962036050'),
(26, 18, '240 NVL', '240/4 NVL', '1000', 'Quận 6', NULL, '2024-04-05 23:29:21', '2024-04-05 23:29:21', '0934197361'),
(27, 18, '240 PH', '48 PH', '1000', 'Quận 6', NULL, '2024-04-05 23:40:30', '2024-04-05 23:40:30', '0934197361');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `url` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `details`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'NEW BOX SET', 'Adventure - Mystery Book', 'http://127.0.0.1:8000/product-details/harry-potter-box-set-the-complete-collection', 'slider/CN7jyYau0BHesWvtEeZ93odVoL87a4OM1Jphg4Vc.png', '2024-03-18 07:04:29', '2024-04-04 01:49:47'),
(2, 'SALE UPTO 70%', 'History Book', 'http://127.0.0.1:8000/category/product/history-books', 'slider/DJ9d2cmQf4a0c7odgNhAQYUS1WgAG0sq7uiYQ82X.png', '2024-03-18 07:05:38', '2024-04-04 01:50:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(21, 7, 'Kinh dị', 'horror', 1, '2024-03-25 13:33:24', '2024-03-25 13:33:24'),
(22, 7, 'Thám tử', 'detective', 1, '2024-03-25 13:33:34', '2024-03-25 13:33:34'),
(23, 7, 'Tiểu thuyết', 'novel', 1, '2024-03-25 13:33:48', '2024-03-25 13:33:48'),
(24, 17, 'Sách tiếng Anh', 'english-book', 1, '2024-04-01 20:13:44', '2024-04-01 20:13:44'),
(25, 17, 'Sách tiếng Nhật', 'japanese-book', 1, '2024-04-01 20:14:47', '2024-04-01 20:14:47'),
(26, 13, 'Lịch sử châu Âu', 'european-history', 1, '2024-04-01 21:12:21', '2024-04-01 21:12:21'),
(27, 16, 'Sách cuộc sống', 'life-style', 1, '2024-04-02 00:38:28', '2024-04-02 00:38:28'),
(28, 16, 'Truyện cổ tích', 'fairy-tales', 1, '2024-04-02 00:39:54', '2024-04-02 00:39:54'),
(29, 13, 'Lịch sử Ai Cập', 'egyptian-history', 1, '2024-04-02 03:27:10', '2024-04-02 03:27:10'),
(30, 15, 'Sách văn hóa', 'culture-book', 1, '2024-04-02 22:29:46', '2024-04-02 22:29:46'),
(31, 15, 'Sách Mỹ thuật', 'art-book', 1, '2024-04-02 22:30:00', '2024-04-02 22:30:00'),
(32, 14, 'Sách khoa học', 'science-books', 1, '2024-04-03 00:24:17', '2024-04-03 00:24:17'),
(33, 14, 'Sách giáo dục', 'education-books', 1, '2024-04-03 00:24:47', '2024-04-03 00:24:47'),
(34, 8, 'Sách tâm lý', 'self-help-psychology', 1, '2024-04-03 05:36:45', '2024-04-03 05:36:45'),
(35, 8, 'Tâm lý học hành vi', 'behavioral-psychology', 1, '2024-04-03 05:37:11', '2024-04-03 05:37:11'),
(36, 8, 'Tâm lý học phát triển', 'developmental-psychology', 1, '2024-04-03 05:37:41', '2024-04-03 05:37:41'),
(37, 12, 'Sách dược', 'medicine-book', 1, '2024-04-03 23:13:37', '2024-04-03 23:13:37'),
(38, 12, 'Sách sức khỏe', 'health-book', 1, '2024-04-04 00:32:17', '2024-04-04 00:32:17'),
(39, 17, 'Sách Trung Quốc', 'chinese-book', 1, '2024-04-04 00:51:28', '2024-04-04 00:51:28'),
(40, 7, 'Phiêu lưu - Bí ẩn', 'adventure-mystery', 1, '2024-04-04 01:24:17', '2024-04-04 01:24:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `user_id`, `order_status`, `payment_status`, `total_amount`, `created_at`, `updated_at`) VALUES
(14, 'X1yUCiJQaq', 15, 'pending', 'unpaid', '1331', '2024-03-22 23:50:00', '2024-03-22 23:50:00'),
(15, 'YgctivLazb', 15, 'pending', 'unpaid', '1331', '2024-03-22 23:50:43', '2024-03-22 23:50:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `name`, `email`, `phone`, `email_verified_at`, `is_verified`, `password`, `remember_token`, `created_at`, `updated_at`, `photo`) VALUES
(15, 'HO', 'CUONG', 'HO CUONG', 'hodaccuong06@gmail.com', '0962036050', NULL, 1, '$2y$10$ROHJfSEr8JLLOH3KAfkXju4pGuYJHm6eROTr4ChaNFsZajXdDQu3y', NULL, '2024-03-21 22:53:01', '2024-03-21 22:53:41', 'null'),
(17, 'HO', 'CUONG', 'HO CUONG', 'hodaccuong17032002@gmail.com', '0962036051', NULL, 0, '$2y$10$tS/VK9AQDUuDlMlui2RSSuGRD6YifTjiKxN70z3hHZypTiPw.Y7Ni', NULL, '2024-03-21 22:58:13', '2024-03-21 22:58:13', 'null'),
(18, 'Nguyen', 'Linh', 'Nguyen Linh', 'ntkimlinh123@gmail.com', '0934197361', NULL, 1, '$2y$10$djuAXHsUIlAeH6uAelLDiurjsCtNNUbLVjnox91pe/hbP5xnNUa6K', NULL, '2024-04-05 23:20:44', '2024-04-05 23:21:34', 'null');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 12, 15, '2024-04-07 04:40:34', '2024-04-07 04:40:34');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Chỉ mục cho bảng `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_addresses_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_cat_id_foreign` (`cat_id`);

--
-- Chỉ mục cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`) USING HASH,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING HASH;

--
-- Chỉ mục cho bảng `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `child_categories_name_unique` (`name`),
  ADD UNIQUE KEY `child_categories_slug_unique` (`slug`),
  ADD KEY `child_categories_cat_id_foreign` (`cat_id`),
  ADD KEY `child_categories_sub_cat_id_foreign` (`sub_cat_id`);

--
-- Chỉ mục cho bảng `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compares_product_id_foreign` (`product_id`),
  ADD KEY `compares_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_verifications_email_index` (`email`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_cat_id_foreign` (`cat_id`);

--
-- Chỉ mục cho bảng `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faq_categories_name_unique` (`name`),
  ADD UNIQUE KEY `faq_categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `manage_sites`
--
ALTER TABLE `manage_sites`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_address_id _foreign` (`address_id`) USING BTREE,
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`) USING HASH,
  ADD UNIQUE KEY `products_slug_unique` (`slug`) USING HASH,
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_sub_cat_id_foreign` (`sub_cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_addresses_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`),
  ADD KEY `sub_categories_cat_id_foreign` (`cat_id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `manage_sites`
--
ALTER TABLE `manage_sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD CONSTRAINT `billing_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `child_categories`
--
ALTER TABLE `child_categories`
  ADD CONSTRAINT `child_categories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `child_categories_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `compares`
--
ALTER TABLE `compares`
  ADD CONSTRAINT `compares_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `compares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `child_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD CONSTRAINT `shipping_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
