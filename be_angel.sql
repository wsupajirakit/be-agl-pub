-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2021 at 03:38 PM
-- Server version: 5.7.32-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xa_angel`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `artist_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `artist_status`) VALUES
(1, 'เป๊ก ผลิตโชค', 1),
(3, 'Potato', 1),
(4, 'ลุลา', 1),
(5, 'Pinky', 1),
(6, 'อ๊อฟ ปองศักดิ์', 1),
(7, 'ไอซ์ ศรันยู', 1),
(9, 'เสก โลโซ', 1),
(10, 'Bodyslam', 1),
(11, 'Green Day', 1),
(12, 'Linkin Park', 1),
(13, 'Aerosmith', 1),
(14, 'ZZ Top', 1),
(16, 'เบญ ชลาทิศ', 1),
(17, 'Clash', 1),
(18, 'AB Normal', 1),
(19, 'Nickelback', 1),
(21, 'ป๊อบ Pongkun', 1),
(22, 'พี่ป้าง นครินทร์', 1),
(25, 'เบิร์ด ธงไชย', 1),
(26, 'Wanyai', 1),
(28, 'Hollaphonic', 1),
(29, 'AIM SATIDA', 1),
(30, 'SIRPOPPA', 1),
(31, 'P-HOT', 1),
(32, 'MEAN', 1),
(33, 'BURIN', 1),
(34, 'TWOPEE Southside', 1),
(35, 'รุจ ศุภรุจ', 1),
(36, 'GLISS', 1),
(37, 'Stamp', 1),
(38, 'ป๊อด ธนชัย อุชชิน', 1),
(39, 'มาเรียม เกรย์', 1),
(40, 'Daboyway', 1),
(41, 'Da Endorphine', 1),
(42, 'INK WARUNTORN', 1),
(43, 'SIN', 1),
(44, 'BOWKYLION', 1),
(45, 'คชา นนทนันท์', 1),
(46, 'DAX ROCK RIDER', 1),
(47, 'Dome Pakorn Lam', 1),
(48, 'ONEONE', 1),
(49, 'Dak Rock Rider', 1),
(50, 'Aliz', 1),
(53, 'Season Five', 1),
(54, 'Fongbeer', 1),
(55, 'FYMME', 1),
(56, 'KANGSOMEKS', 1),
(57, 'ชบา', 1),
(58, 'Kob Flat Boy', 1),
(59, 'Bank Smith', 1),
(60, 'INDIGO', 1),
(61, 'getsunova', 1),
(62, 'ปู่จ๋าน ลองไมค์', 1),
(63, 'ส้ม มารี', 1),
(64, 'Lazyloxy', 1),
(65, 'MARSHA', 1),
(66, 'POLYCAT', 1),
(67, 'The Pakinson', 1),
(68, 'Sweet Mullet', 1),
(69, 'Ammy The Bottom Blues', 1),
(70, 'Na Polycat', 1),
(71, 'JoeyBoy', 1),
(72, 'Cocktail', 1),
(73, 'ป้าง นครินทร์', 1),
(74, 'PATTIE', 1),
(75, 'LIPTA', 1),
(76, 'PAUSE', 1),
(77, 'เล็ก พงษธร', 1),
(78, 'BEAN NAPASON', 1),
(79, 'Marc Tachapon', 1),
(80, 'ต้น ธนษิต', 1),
(81, 'MEYOU', 1),
(82, 'Three Man Down', 1),
(83, 'ETC', 1),
(85, 'Scrubb', 1),
(86, 'ไอซ์ พาริส', 1),
(87, 'แพรวา ณิชาภัทร', 1),
(88, 'THE DRIVE', 1),
(89, 'น้ำ Aliz', 1),
(90, 'Alyn', 1),
(91, 'PALMY', 1),
(92, 'GUNGUN', 1),
(93, 'Tilly Birds', 1),
(94, 'Milli', 1),
(95, 'The Parkinson', 1),
(96, 'Mirrr', 1),
(98, 'Jaylerr', 1),
(99, 'Paris', 1),
(100, 'GOLF', 1),
(101, 'rooftop', 1),
(102, 'AUTTA', 1),
(103, 'ILLSLICK', 1),
(104, 'ไบรท์ วชิรวิชญ์', 1),
(105, 'wonderframe', 1),
(106, 'spidermei', 1),
(107, 'Zom Marie', 1),
(108, 'หนุ่ม กะลา', 1),
(109, 'เบล สุพล', 1),
(110, 'Bellkin', 1),
(111, 'นนท์ ธนนท์', 1),
(112, 'fellow fellow', 1),
(113, 'ลำเพลิน วงศกร', 1),
(114, 'sdf', 1),
(115, 'klear', 1),
(116, 'F.HERO', 1),
(117, 'ว่าน ธนกฤต', 1),
(118, 'สิงโต นำโชค', 1),
(119, 'Gx2', 1),
(120, 'Copter', 1),
(121, 'เต้ย อภิวัฒน์', 1),
(122, 'ลำไย ไหทองคำ', 1),
(123, 'NANA', 1),
(124, 'แอ๊ด คาราบาว', 1),
(125, 'วิน เมธวิน', 1),
(126, 'น้อย Pru', 1),
(127, 'SOPHANA', 1),
(128, 'TJAME UNO', 1),
(129, 'แบกื  BIGYAI', 1),
(130, 'DTK BOY BAND', 1),
(131, 'Morvasu', 1),
(132, 'TangBadVoice', 1),
(133, 'First Anuwat', 1),
(134, 'The Mousses', 1),
(135, 'TRINITY', 1),
(136, 'War Wanarat', 1),
(137, 'MVL', 1),
(138, 'Mindset', 1),
(139, 'Labanoon', 1),
(140, 'Maiyarap', 1),
(141, 'Billkin', 1),
(142, 'ตั๊ก ศิริพร อยู่ยอด', 1),
(143, 'BIG ASS X WANYAi', 1),
(144, 'YOUNGOHM', 1),
(145, 'BamBam', 1),
(146, 'POP PONGKOOL', 1),
(147, 'VANGOE', 1),
(148, 'DIAMOND MQT', 1),
(149, 'แจ็ค แฟนฉัน', 1),
(150, 'PEARWAH', 1),
(151, 'PP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_content` text NOT NULL,
  `post_cover` varchar(100) NOT NULL,
  `post_slug` varchar(100) NOT NULL,
  `publish_date` datetime NOT NULL,
  `publish_status` tinyint(1) NOT NULL,
  `pin_status` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_content`, `post_cover`, `post_slug`, `publish_date`, `publish_status`, `pin_status`, `user_id`) VALUES
(14, 'พลิกโฉมศิลปินนาม “DK” (ดัง - พันกร บุณยะจินดา)', '&lt;p style=\\&quot;text-align: left;\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; style=\\&quot;display: block; margin-left: auto; margin-right: auto;\\&quot; title=\\&quot;9b8f3da26ea2fbf340de80d58f274ab8.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/9b8f3da26ea2fbf340de80d58f274ab8.jpg\\&quot; alt=\\&quot;พลิกโฉมศิลปินนาม &amp;ldquo;DK&amp;rdquo; (ดัง - พันกร บุณยะจินดา)\\&quot; width=\\&quot;950\\&quot; height=\\&quot;950\\&quot; /&gt;&lt;/p&gt;\n&lt;p style=\\&quot;text-align: left;\\&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Universal Music พร้อมแล้วที่จะสร้างเซอร์ไพรส์ใหญ่ให้กับแฟนเพลง พลิกโฉมศิลปินนาม &amp;ldquo;DK&amp;rdquo; (ดัง - พันกร บุณยะจินดา) ศิลปินไทยหนึ่งเดียวที่มีสไตล์จัดจ้านเฉพาะตัว และโดดเด่นด้วยเสียงร้องที่เป็นเอกลักษณ์ โดยครั้งนี้ทาง &amp;ldquo;DK&amp;rdquo; ได้จับมือกับ Clinton Sparks, Kamau Georges สองโปรดิวเซอร์มือพระกาฬ และผู้กำกับมิวสิควิดีโอชื่อดังอย่าง Leslie Kee ที่เคยร่วมงานกับศิลปินแถวหน้าของโลก ผนึกกำลังร่วมกันสร้างปรากฏการณ์ในครั้งนี้ ให้ก้าวไปอีกขั้นสู่สายตาคนทั่วโลก โดยการนำเอาศาสตร์ของแฟชั่น ศิลปะ และดนตรีมาผสมผสานกันอย่างสร้างสรรค์และลงตัว ในมาสเตอร์พีซอัลบั้มที่ใช้ชื่อว่า &amp;ldquo;RUNWAY THRILLER&amp;rdquo; &lt;br /&gt;&lt;br /&gt;&lt;span style=\\&quot;font-family: dindanmai-bold; font-size: 18px;\\&quot;&gt;พบกับปรากฏการณ์ &amp;ldquo;DK&amp;rdquo; REBORN ได้แล้วทั่วประเทศ!!!&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\\&quot;text-align: left;\\&quot;&gt;&lt;span style=\\&quot;font-family: dindanmai-bold; font-size: 18px;\\&quot;&gt;&lt;br /&gt;&lt;!--more--&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\\&quot;text-align: left;\\&quot;&gt;&lt;span style=\\&quot;font-family: dindanmai-bold; font-size: 18px;\\&quot;&gt;&lt;iframe class=\\&quot;iframe-vdo\\&quot; src=\\&quot;//www.youtube.com/embed/oTs7xAYZHwk\\&quot; width=\\&quot;560\\&quot; height=\\&quot;315\\&quot; frameborder=\\&quot;0\\&quot; allowfullscreen=\\&quot;allowfullscreen\\&quot;&gt;&lt;/iframe&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\\&quot;text-align: left;\\&quot;&gt;&lt;span style=\\&quot;font-family: dindanmai-bold; font-size: 18px;\\&quot;&gt;&lt;a href=\\&quot;https://www.youtube.com/watch?v=oTs7xAYZHwk&amp;amp;feature=youtu.be&amp;amp;fbclid=IwAR1fXBSr3CeXVHZM0gl0HZplnRfTbojKZqRnleXNh-caxy9RBmksZ35J3M8\\&quot;&gt;https://www.youtube.com/watch?v=oTs7xAYZHwk&amp;amp;feature=youtu.be&amp;amp;fbclid=IwAR1fXBSr3CeXVHZM0gl0HZplnRfTbojKZqRnleXNh-caxy9RBmksZ35J3M8&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;', 'a915e7084c307ae7fb1b4895db4a5b9a.png', 'IwantyourFashion-DK', '2019-06-12 17:00:00', 1, 0, 1),
(16, 'The Mask วรรณคดีไทย กับ 4 หน้ากาก ถอดหน้ากากแล้ว', '&lt;p style=\\&quot;text-align: left;\\&quot;&gt;&lt;span id=\\&quot;fbPhotoSnowliftCaption\\&quot; class=\\&quot;fbPhotosPhotoCaption\\&quot; tabindex=\\&quot;0\\&quot; aria-live=\\&quot;polite\\&quot; data-ft=\\&quot;{&amp;quot;tn&amp;quot;:&amp;quot;K&amp;quot;}\\&quot;&gt;&lt;span class=\\&quot;hasCaption\\&quot;&gt;The Mask วรรณคดีไทย กับ 4 หน้ากาก&lt;/span&gt;&lt;/span&gt;&lt;span id=\\&quot;fbPhotoSnowliftCaption\\&quot; class=\\&quot;fbPhotosPhotoCaption\\&quot; tabindex=\\&quot;0\\&quot; aria-live=\\&quot;polite\\&quot; data-ft=\\&quot;{&amp;quot;tn&amp;quot;:&amp;quot;K&amp;quot;}\\&quot;&gt;&lt;span class=\\&quot;hasCaption\\&quot;&gt;ถอดหน้ากาก แล้ว เดากันหนักมาก&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;div id=\\&quot;fbPhotoSnowliftProductTags\\&quot; class=\\&quot;fbPhotoProductTags\\&quot;&gt;\n&lt;p style=\\&quot;text-align: left;\\&quot;&gt;&lt;span id=\\&quot;fbPhotoSnowliftCaption\\&quot; class=\\&quot;fbPhotosPhotoCaption\\&quot; tabindex=\\&quot;0\\&quot; aria-live=\\&quot;polite\\&quot; data-ft=\\&quot;{&amp;quot;tn&amp;quot;:&amp;quot;K&amp;quot;}\\&quot;&gt;&lt;span class=\\&quot;hasCaption\\&quot;&gt;&lt;!--more--&gt;&lt;br /&gt;ก่อนจะถอดหน้ากากแฟนๆก็ลุ้น&lt;wbr /&gt;กันหนักมากว่าจะเป็นใคร&lt;br /&gt;และภายใต้หน้ากาก หน้ากากม้านิลมังกร ตัวจริงก็คือนักร้องนักแสดง&lt;wbr /&gt;หนุ่ม เต๋า เศรษฐพงศ์ หรือ เต๋า AF นั่นเอง&lt;br /&gt;&lt;br /&gt;&lt;a href=\\&quot;https://www.facebook.com/Taosattaphongfanclub/?__xts__%5B0%5D=68.ARAAxqfZ22qc1mlNFzrxHz-mWxrHNsln_TEZC_PjTJe-lW0-SfkP3ebfYXjsqfPbMe-maE9skQg6WqMgIdRFL0vV-8fnOKma39HxtDvgOk_hQMKoWOzexnE4am67xaF2FitkNX0fn7U1JSUfdzRMi6ss0Rl459m-WujLjTemiGSRjV5dGpaasCcbz3e_b3RgOIPl3AzFf1u18FEw1CVAT61T3Q79Qa3dI6DxwR4FB4n7eyR_HTD95P5pjua23iicJEKtlmliYh04Ieevsm2K3UjQz5dOe1mGPNGgWEDtD7KSJeCHjM7k0wZ18l3HjSOHGNRYTlTlsLg1hLNtZsa9M4NjYg&amp;amp;__tn__=%2CdK%2AF-R&amp;amp;eid=ARD6dyFE-1ZquqN4tJqFDNrS_MgG9rVEI9ZEwDGk4TQYQ9gapMvHZapul2U0CQBpIRfvWKmRJh5-GwOk\\&quot; data-hovercard=\\&quot;/ajax/hovercard/page.php?id=216923161659398&amp;amp;extragetparams=%7B%22__tn__%22%3A%22%2CdK%2AF-R%22%2C%22eid%22%3A%22ARD6dyFE-1ZquqN4tJqFDNrS_MgG9rVEI9ZEwDGk4TQYQ9gapMvHZapul2U0CQBpIRfvWKmRJh5-GwOk%22%2C%22directed_target_id%22%3Anull%2C%22groups_location%22%3Anull%7D\\&quot; data-hovercard-prefer-more-content-show=\\&quot;1\\&quot;&gt;FC_เต๋า เศรษฐพงศ์&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;span id=\\&quot;fbPhotoSnowliftCaption\\&quot; class=\\&quot;fbPhotosPhotoCaption\\&quot; tabindex=\\&quot;0\\&quot; aria-live=\\&quot;polite\\&quot; data-ft=\\&quot;{&amp;quot;tn&amp;quot;:&amp;quot;K&amp;quot;}\\&quot;&gt;&lt;span class=\\&quot;hasCaption\\&quot;&gt;&lt;a href=\\&quot;https://www.facebook.com/FC_เต๋า-เศรษฐพงศ์-702765136447945/?__xts__%5B0%5D=68.ARAAxqfZ22qc1mlNFzrxHz-mWxrHNsln_TEZC_PjTJe-lW0-SfkP3ebfYXjsqfPbMe-maE9skQg6WqMgIdRFL0vV-8fnOKma39HxtDvgOk_hQMKoWOzexnE4am67xaF2FitkNX0fn7U1JSUfdzRMi6ss0Rl459m-WujLjTemiGSRjV5dGpaasCcbz3e_b3RgOIPl3AzFf1u18FEw1CVAT61T3Q79Qa3dI6DxwR4FB4n7eyR_HTD95P5pjua23iicJEKtlmliYh04Ieevsm2K3UjQz5dOe1mGPNGgWEDtD7KSJeCHjM7k0wZ18l3HjSOHGNRYTlTlsLg1hLNtZsa9M4NjYg&amp;amp;__tn__=%2CdK%2AF-R&amp;amp;eid=ARCyQWHaNbKld8KvT4luumRviHp2j72eVzZVVPrnZuJo4WhD7Ga2Mu8VxH9tJQhSMBQqDeNfdcmvJIQU\\&quot; data-hovercard=\\&quot;/ajax/hovercard/page.php?id=702765136447945&amp;amp;extragetparams=%7B%22__tn__%22%3A%22%2CdK%2AF-R%22%2C%22eid%22%3A%22ARCyQWHaNbKld8KvT4luumRviHp2j72eVzZVVPrnZuJo4WhD7Ga2Mu8VxH9tJQhSMBQqDeNfdcmvJIQU%22%2C%22directed_target_id%22%3Anull%2C%22groups_location%22%3Anull%7D\\&quot; data-hovercard-prefer-more-content-show=\\&quot;1\\&quot;&gt;FC_เต๋า เศรษฐพงศ์&lt;/a&gt;&lt;a href=\\&quot;https://www.facebook.com/doubletree.tao/?__xts__%5B0%5D=68.ARAAxqfZ22qc1mlNFzrxHz-mWxrHNsln_TEZC_PjTJe-lW0-SfkP3ebfYXjsqfPbMe-maE9skQg6WqMgIdRFL0vV-8fnOKma39HxtDvgOk_hQMKoWOzexnE4am67xaF2FitkNX0fn7U1JSUfdzRMi6ss0Rl459m-WujLjTemiGSRjV5dGpaasCcbz3e_b3RgOIPl3AzFf1u18FEw1CVAT61T3Q79Qa3dI6DxwR4FB4n7eyR_HTD95P5pjua23iicJEKtlmliYh04Ieevsm2K3UjQz5dOe1mGPNGgWEDtD7KSJeCHjM7k0wZ18l3HjSOHGNRYTlTlsLg1hLNtZsa9M4NjYg&amp;amp;__tn__=%2CdK%2AF-R&amp;amp;eid=ARBIHGW3UKu8RYk6zbueIkgQCRLqD5OVhdSlBzjO6dhgNuFymJ3DVFXAkFuQyD8wFIlJKRJ3zgOgVQng\\&quot; data-hovercard=\\&quot;/ajax/hovercard/page.php?id=281145685998235&amp;amp;extragetparams=%7B%22__tn__%22%3A%22%2CdK%2AF-R%22%2C%22eid%22%3A%22ARBIHGW3UKu8RYk6zbueIkgQCRLqD5OVhdSlBzjO6dhgNuFymJ3DVFXAkFuQyD8wFIlJKRJ3zgOgVQng%22%2C%22directed_target_id%22%3Anull%2C%22groups_location%22%3Anull%7D\\&quot; data-hovercard-prefer-more-content-show=\\&quot;1\\&quot;&gt;TaoPhiangphor - DoubleTree&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;div id=\\&quot;fbPhotoSnowliftCTMButton\\&quot; style=\\&quot;display: block; width: 95%; padding-top: 5%;\\&quot;&gt;&lt;a title=\\&quot;The Mask วรรณคดีไทย\\&quot; href=\\&quot;https://www.facebook.com/example/photos/a.197218803666551/2268437813211296/?type=3&amp;amp;theater\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener\\&quot;&gt;The Mask วรรณคดีไทย&lt;/a&gt;&lt;/div&gt;\n&lt;div id=\\&quot;fbPhotoSnowliftProductMiniListHscroll\\&quot; class=\\&quot;fbCommerceProductMiniListHscroll\\&quot;&gt;\n&lt;p style=\\&quot;text-align: left;\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;3d7c77c318812d4cefb9f18510602c33.png\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/3d7c77c318812d4cefb9f18510602c33.png\\&quot; alt=\\&quot;The Mask วรรณคดีไทย\\&quot; width=\\&quot;624\\&quot; height=\\&quot;613\\&quot; /&gt;&lt;/p&gt;\n&lt;/div&gt;\n&lt;div id=\\&quot;fbPhotoSnowliftProductTags\\&quot; class=\\&quot;fbPhotoProductTags\\&quot;&gt;&amp;nbsp;&lt;/div&gt;\n&lt;/div&gt;', '6ef7ecdcaf9fac6d13494579e7095c95.png', 'TheMaskTaoPhiangphor', '2019-06-13 17:00:00', 1, 0, 1),
(17, 'สัมภาษณ์สด ฟิล์ม บงกช    ( 1/7/62 14.00 น. )', '&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; style=\\&quot;display: block; margin-left: auto; margin-right: auto;\\&quot; title=\\&quot;aca07786201726cde35198deef59d63f.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/aca07786201726cde35198deef59d63f.jpg\\&quot; alt=\\&quot;สัมภาษณ์สด \\&quot; /&gt;&lt;/p&gt;', 'f4ec85e404af576093571df275133cd8.png', '1V3TocbtpOzG', '2019-06-29 17:00:00', 1, 0, 1),
(18, 'Single  “รอหรือพอ (STAY)”  Ink Waruntorn', '&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;strong&gt;&lt;span style=\\&quot;font-size: 30pt; line-height: 115%; font-family: Tahoma, sans-serif, serif, EmojiFont; color: maroon;\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;a23c0cd5405515744b6ca658ee67e2c6.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/a23c0cd5405515744b6ca658ee67e2c6.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;h1 style=\\&quot;text-align: center;\\&quot;&gt;&lt;span style=\\&quot;color: #e63636;\\&quot;&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;การไม่มี อาจยังไม่เศร้า เท่าเคยมี&lt;/span&gt;&amp;rdquo;&lt;/span&gt;&lt;/h1&gt;\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;รอหรือพอ (&lt;/span&gt;STAY)&amp;rdquo;&amp;nbsp;Single &lt;span lang=\\&quot;TH\\&quot;&gt;ใหม่จาก &lt;/span&gt;Ink Waruntorn &lt;span lang=\\&quot;TH\\&quot;&gt;เพลงที่สะท้อนมุมมองของคนคนนึงที่วันนี้ยัง&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;ไม่พร้อมจะก้าวเดินต่อไปแม้อีกคนจะ &lt;/span&gt;Move on &lt;span lang=\\&quot;TH\\&quot;&gt;ไปตั้งนานแล้ว และรู้ตัวดีว่าสุดท้ายเราก็ต้องพอกับความรู้สึกนี้&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;แต่ตอนนี้ยังขอเลือกที่จะ&amp;nbsp;&lt;/span&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;รอ&lt;/span&gt;&amp;rdquo; &lt;span lang=\\&quot;TH\\&quot;&gt;ต่อไปกับดนตรี &lt;/span&gt;Synth Pop &lt;span lang=\\&quot;TH\\&quot;&gt;กลิ่นอาย &lt;/span&gt;&amp;rsquo;&lt;span lang=\\&quot;TH\\&quot;&gt;80 ตามสไตล์ของอิ้งค์ วรันธร ที่ยังได้ร่วม&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;งานกับ &lt;/span&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;แทน ลิปตา&lt;/span&gt;&amp;rdquo; &lt;span lang=\\&quot;TH\\&quot;&gt;และ &lt;/span&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;ข้าว &lt;/span&gt;Fellow Fellow\\&quot; &lt;span lang=\\&quot;TH\\&quot;&gt;เช่นเดิม และเพลงนี้ยังไง ปิ้ว จากวง &lt;/span&gt;TELEx TELEXs &lt;span lang=\\&quot;TH\\&quot;&gt;มาร่วม&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;Arranged &lt;span lang=\\&quot;TH\\&quot;&gt;ดนตรีให้มีความเท่และจัดจ้านขึ้น แต่ยังคงเอกลักษณ์ของอิ้งค์ วรันธรไว้ด้วย&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-family: \\\'Cordia New\\\', sans-serif, serif, EmojiFont; font-size: 26pt;\\&quot;&gt;&lt;br /&gt;&lt;!--more--&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-family: \\\'Cordia New\\\', sans-serif, serif, EmojiFont; font-size: 26pt;\\&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-family: \\\'Cordia New\\\', sans-serif, serif, EmojiFont; font-size: 26pt;\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;d524a3f76b21cf02e73fd22c0224a263.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/d524a3f76b21cf02e73fd22c0224a263.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;span style=\\&quot;color: #660000; font-size: large;\\&quot;&gt;&lt;strong&gt;&lt;a class=\\&quot;x_gmail-_58cn\\&quot; style=\\&quot;text-decoration-line: none; font-family: Helvetica,Arial,sans-serif; text-align: start;\\&quot; href=\\&quot;https://www.facebook.com/hashtag/%E0%B8%A3%E0%B8%AD%E0%B8%AB%E0%B8%A3%E0%B8%B7%E0%B8%AD%E0%B8%9E%E0%B8%AD?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARDst5t8Mc16N3PKMDp4n-wm_Yae8hs8I3vZyJO-8xZTvqXBCIeuovYilwgXCdkC2Yf3uuoq-XCG45DgjqydNK-H53LjhyxXJjKZ6nVkwC5wXiMsprtzgrnNofC2d0dXKFYuqyxnlIc2mtKhVMuKRJNQ5mELkBStSVulFW8-ZwBDVAIDBhPO6jNgtDdHoF7jxoP6VyiyEhx8fwR3yooX0HAJFHylhzgOHUxUkqNn_lS_315km5YvDl4DLOHbKw1yEUWZIaBzt3EXzl1gIPcw8sewiSsEqNgR7IrNe6Kz2QbBpV1wQvBViOmusRrsWZa0SZBG6rByLEBW1Fw7H7PSCB8&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span class=\\&quot;x_gmail-_5afx\\&quot; style=\\&quot;direction: ltr; unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;&lt;span class=\\&quot;x_gmail-_58cl x_gmail-_5afz\\&quot; style=\\&quot;unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;#&lt;/span&gt;&lt;span class=\\&quot;x_gmail-_58cm\\&quot; style=\\&quot;text-decoration-line: underline; font-family: inherit;\\&quot;&gt;รอหรือพอ&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;font-family: Helvetica, Arial, sans-serif, serif, EmojiFont; text-align: start;\\&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;a class=\\&quot;x_gmail-_58cn\\&quot; style=\\&quot;text-decoration-line: none; font-family: Helvetica,Arial,sans-serif; text-align: start;\\&quot; href=\\&quot;https://www.facebook.com/hashtag/stay?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARDst5t8Mc16N3PKMDp4n-wm_Yae8hs8I3vZyJO-8xZTvqXBCIeuovYilwgXCdkC2Yf3uuoq-XCG45DgjqydNK-H53LjhyxXJjKZ6nVkwC5wXiMsprtzgrnNofC2d0dXKFYuqyxnlIc2mtKhVMuKRJNQ5mELkBStSVulFW8-ZwBDVAIDBhPO6jNgtDdHoF7jxoP6VyiyEhx8fwR3yooX0HAJFHylhzgOHUxUkqNn_lS_315km5YvDl4DLOHbKw1yEUWZIaBzt3EXzl1gIPcw8sewiSsEqNgR7IrNe6Kz2QbBpV1wQvBViOmusRrsWZa0SZBG6rByLEBW1Fw7H7PSCB8&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span class=\\&quot;x_gmail-_5afx\\&quot; style=\\&quot;direction: ltr; unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;&lt;span class=\\&quot;x_gmail-_58cl x_gmail-_5afz\\&quot; style=\\&quot;unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;#&lt;/span&gt;&lt;span class=\\&quot;x_gmail-_58cm\\&quot; style=\\&quot;font-family: inherit;\\&quot;&gt;stay&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;font-family: Helvetica, Arial, sans-serif, serif, EmojiFont; text-align: start;\\&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span class=\\&quot;x_gmail-_5afx\\&quot; style=\\&quot;text-decoration-line: none; font-family: inherit; text-align: start; direction: ltr; unicode-bidi: isolate;\\&quot;&gt;&lt;a class=\\&quot;x_gmail-_58cn\\&quot; style=\\&quot;text-decoration-line: none; font-family: Helvetica,Arial,sans-serif; text-align: start;\\&quot; href=\\&quot;https://www.facebook.com/hashtag/inkwaruntorn?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARDst5t8Mc16N3PKMDp4n-wm_Yae8hs8I3vZyJO-8xZTvqXBCIeuovYilwgXCdkC2Yf3uuoq-XCG45DgjqydNK-H53LjhyxXJjKZ6nVkwC5wXiMsprtzgrnNofC2d0dXKFYuqyxnlIc2mtKhVMuKRJNQ5mELkBStSVulFW8-ZwBDVAIDBhPO6jNgtDdHoF7jxoP6VyiyEhx8fwR3yooX0HAJFHylhzgOHUxUkqNn_lS_315km5YvDl4DLOHbKw1yEUWZIaBzt3EXzl1gIPcw8sewiSsEqNgR7IrNe6Kz2QbBpV1wQvBViOmusRrsWZa0SZBG6rByLEBW1Fw7H7PSCB8&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span class=\\&quot;x_gmail-_58cl x_gmail-_5afz\\&quot; style=\\&quot;unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;#&lt;/span&gt;&lt;span class=\\&quot;x_gmail-_58cm\\&quot; style=\\&quot;font-family: inherit;\\&quot;&gt;inkwaruntorn&lt;/span&gt;&lt;/a&gt;&amp;nbsp;&lt;/span&gt;&lt;a class=\\&quot;x_gmail-_58cn\\&quot; style=\\&quot;text-decoration-line: none; font-family: Helvetica,Arial,sans-serif; text-align: start;\\&quot; href=\\&quot;https://www.facebook.com/hashtag/boxxmusic?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARDst5t8Mc16N3PKMDp4n-wm_Yae8hs8I3vZyJO-8xZTvqXBCIeuovYilwgXCdkC2Yf3uuoq-XCG45DgjqydNK-H53LjhyxXJjKZ6nVkwC5wXiMsprtzgrnNofC2d0dXKFYuqyxnlIc2mtKhVMuKRJNQ5mELkBStSVulFW8-ZwBDVAIDBhPO6jNgtDdHoF7jxoP6VyiyEhx8fwR3yooX0HAJFHylhzgOHUxUkqNn_lS_315km5YvDl4DLOHbKw1yEUWZIaBzt3EXzl1gIPcw8sewiSsEqNgR7IrNe6Kz2QbBpV1wQvBViOmusRrsWZa0SZBG6rByLEBW1Fw7H7PSCB8&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span class=\\&quot;x_gmail-_5afx\\&quot; style=\\&quot;direction: ltr; unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;&lt;span class=\\&quot;x_gmail-_58cl x_gmail-_5afz\\&quot; style=\\&quot;unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;#&lt;/span&gt;&lt;span class=\\&quot;x_gmail-_58cm\\&quot; style=\\&quot;font-family: inherit;\\&quot;&gt;boxxmusic&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;font-family: Helvetica, Arial, sans-serif, serif, EmojiFont; text-align: start;\\&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;a class=\\&quot;x_gmail-_58cn\\&quot; style=\\&quot;text-decoration-line: none; font-family: Helvetica,Arial,sans-serif; text-align: start;\\&quot; href=\\&quot;https://www.facebook.com/hashtag/muzikmove?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARDst5t8Mc16N3PKMDp4n-wm_Yae8hs8I3vZyJO-8xZTvqXBCIeuovYilwgXCdkC2Yf3uuoq-XCG45DgjqydNK-H53LjhyxXJjKZ6nVkwC5wXiMsprtzgrnNofC2d0dXKFYuqyxnlIc2mtKhVMuKRJNQ5mELkBStSVulFW8-ZwBDVAIDBhPO6jNgtDdHoF7jxoP6VyiyEhx8fwR3yooX0HAJFHylhzgOHUxUkqNn_lS_315km5YvDl4DLOHbKw1yEUWZIaBzt3EXzl1gIPcw8sewiSsEqNgR7IrNe6Kz2QbBpV1wQvBViOmusRrsWZa0SZBG6rByLEBW1Fw7H7PSCB8&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span class=\\&quot;x_gmail-_5afx\\&quot; style=\\&quot;direction: ltr; unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;&lt;span class=\\&quot;x_gmail-_58cl x_gmail-_5afz\\&quot; style=\\&quot;unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;#&lt;/span&gt;&lt;span class=\\&quot;x_gmail-_58cm\\&quot; style=\\&quot;font-family: inherit;\\&quot;&gt;muzikmove&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-family: \\\'Cordia New\\\', sans-serif, serif, EmojiFont; font-size: 26pt;\\&quot;&gt;&lt;span style=\\&quot;color: #660000; font-family: tahoma, sans-serif; font-size: large;\\&quot;&gt;&lt;strong&gt;&lt;a href=\\&quot;https://www.youtube.com/watch?v=xkSWg5XeyWw\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;https://www.youtube.com/watch?v=xkSWg5XeyWw&lt;/a&gt;&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-family: \\\'Cordia New\\\', sans-serif, serif, EmojiFont; font-size: 26pt;\\&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', '532758b23fea4e16be3f67fb1e4203de.png', 'STAY-Ink-Waruntorn', '2019-06-30 17:00:00', 1, 0, 1),
(19, 'Chapter ใหม่ในชีวิตของ “แอมมี่”-ไชยอมร แก้ววิบูลย์พันธุ์”', '&lt;h1 style=\\&quot;text-align: left;\\&quot;&gt;Chapter &lt;span lang=\\&quot;TH\\&quot;&gt; ใหม่ในชีวิตของ &lt;/span&gt;&lt;span style=\\&quot;color: #e74c3c;\\&quot;&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;แอมมี่&amp;rdquo;-ไชยอมร แก้ววิบูลย์พันธุ์&lt;/span&gt;&amp;rdquo;&lt;/span&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;หรือ&lt;br /&gt;&lt;/span&gt;&lt;span style=\\&quot;color: #e74c3c;\\&quot;&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;แอมมี่ &lt;/span&gt;The Bottom Blues &amp;ldquo; &lt;/span&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;กับการเปลี่ยนแปลงครั้งใหญ่ ภายใต้บ้าน &lt;/span&gt;ME Records (&lt;span lang=\\&quot;TH\\&quot;&gt;มี เรคคอร์ดส)และการทำงานที่รีเซ็ตความคิดใหม่ทั้งหมด....&lt;/span&gt;&lt;/h1&gt;\r\n&lt;p&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&lt;br /&gt;&lt;!--more--&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;h1 style=\\&quot;text-align: left;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; ถ้าคุณคิดว่าคุณคือ ลูซเซอร์สไตล์ / มวยรอง / เพื่อนพระเอก หรือเสียเงินเป็นแสนแม้แต่แขนก็ยังไม่ได้จับ เพลงนี้คือเพลง&lt;/span&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;ของพวกคุณทุกคน..&lt;/span&gt;.&lt;/h1&gt;\r\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; style=\\&quot;display: block; margin-left: auto; margin-right: auto;\\&quot; title=\\&quot;43295ad9d0eb3e052c67bfac61297478.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/43295ad9d0eb3e052c67bfac61297478.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=\\&quot;text-align: left;\\&quot;&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span style=\\&quot;font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;&lt;strong&gt;&lt;span style=\\&quot;color: #cc0000;\\&quot;&gt;&amp;lsquo;&lt;span lang=\\&quot;TH\\&quot;&gt;เสี่ยว&lt;/span&gt;&amp;rsquo;&lt;/span&gt;&lt;/strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;เพลงที่ &lt;/span&gt;&amp;rsquo;&lt;span lang=\\&quot;TH\\&quot;&gt;แอมมี่&lt;/span&gt;&amp;rsquo; &lt;span lang=\\&quot;TH\\&quot;&gt;ใช้เป็นเพลงที่กดปุ่มรีสตาร์ทตัวเองอีกครั้งในมุมมอง&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;การทำงานใหม่ โดยแต่งเพลงจากมุมมองของคนรอบข้าง รวมถึงดนตรีที่ &amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span style=\\&quot;font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;นะ&lt;/span&gt;&amp;nbsp;Polycat&amp;rdquo;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;เข้ามามีส่วนร่วม เพลงนี้จึงกลายเป็นส่วนผสมของดนตรีในยุค&lt;/span&gt;&amp;nbsp;&lt;br /&gt;60&amp;rsquo;s&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;และ&lt;/span&gt;&amp;nbsp;70&amp;rsquo;s &lt;span lang=\\&quot;TH\\&quot;&gt;และหากคุณยังจำเพลงเอ็นเตอร์เทนอย่าง&lt;/span&gt; &amp;ldquo;1 2 3 4 5 I Love You&amp;rdquo; &lt;span lang=\\&quot;TH\\&quot;&gt;ได้&lt;/span&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span style=\\&quot;font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; style=\\&quot;display: block; margin-left: auto; margin-right: auto;\\&quot; title=\\&quot;738d66f22d61e871581fbc4618fa00fd.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/738d66f22d61e871581fbc4618fa00fd.jpg\\&quot; alt=\\&quot;\\&quot; width=\\&quot;1106\\&quot; height=\\&quot;786\\&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;text-align: left; margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span style=\\&quot;font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;&lt;strong&gt;&lt;span style=\\&quot;color: #cc0000;\\&quot;&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;เสี่ยว&lt;/span&gt;&amp;rdquo;&lt;/span&gt;&lt;/strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;คือ หนึ่งในเพลงเอ็นเตอร์เทนที่&lt;/span&gt;&amp;nbsp;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;แอมมี่&lt;/span&gt;&amp;rdquo;&lt;span lang=\\&quot;TH\\&quot;&gt;ตั้งใจทำให้เป็นเพลงแห่งความสุขของพวกคุณอีกครั้ง...&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span style=\\&quot;font-family: arial black, sans-serif; font-size: 24pt;\\&quot;&gt;สำหรับลูซเซอร์แค่มีเธอไว้ให้เพ้อก็พอแล้ว...&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span style=\\&quot;font-family: arial black, sans-serif; font-size: 24pt;\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; style=\\&quot;display: block; margin-left: auto; margin-right: auto;\\&quot; title=\\&quot;930728059647d4b75e19de7d911938f4.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/930728059647d4b75e19de7d911938f4.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span style=\\&quot;font-size: 24pt; font-family: arial black, sans-serif; color: #cc0000;\\&quot;&gt;&lt;strong&gt;#&lt;span lang=\\&quot;TH\\&quot;&gt;เสี่ยวสไตล์&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span style=\\&quot;font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;&lt;a class=\\&quot;x_gmail-yt-simple-endpoint x_gmail-style-scope x_gmail-yt-formatted-string\\&quot; style=\\&quot;display: inline-block; text-align: start; white-space: pre-wrap;\\&quot; href=\\&quot;https://www.youtube.com/results?search_query=%23ammybottomblues\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;#ammybottomblues&lt;/a&gt; &lt;a class=\\&quot;x_gmail-yt-simple-endpoint x_gmail-style-scope x_gmail-yt-formatted-string\\&quot; style=\\&quot;display: inline-block; text-decoration-line: none; text-align: start; white-space: pre-wrap;\\&quot; href=\\&quot;https://www.youtube.com/results?search_query=%23merecordslabel\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;#merecordslabel&lt;/a&gt; &lt;a class=\\&quot;x_gmail-yt-simple-endpoint x_gmail-style-scope x_gmail-yt-formatted-string\\&quot; style=\\&quot;display: inline-block; text-decoration-line: none; text-align: start; white-space: pre-wrap;\\&quot; href=\\&quot;https://www.youtube.com/results?search_query=%23muzikmove\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;#muzikmove&lt;/a&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div style=\\&quot;text-align: left;\\&quot;&gt;&lt;span style=\\&quot;font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;&lt;span style=\\&quot;text-align: start; white-space: pre-wrap;\\&quot;&gt;&lt;span style=\\&quot;color: #000000;\\&quot;&gt;&lt;strong&gt;ME RECORDS &lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;a class=\\&quot;x_gmail-yt-simple-endpoint x_gmail-style-scope x_gmail-yt-formatted-string\\&quot; style=\\&quot;display: inline-block; text-decoration-line: none; text-align: start; white-space: pre-wrap;\\&quot; href=\\&quot;https://www.youtube.com/results?search_query=%23%E0%B9%80%E0%B8%AA%E0%B8%B5%E0%B9%88%E0%B8%A2%E0%B8%A7\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;#เสี่ยว&lt;/a&gt;&lt;span style=\\&quot;color: #0d0d0d; text-align: start; white-space: pre-wrap;\\&quot;&gt; - &lt;/span&gt;&lt;span style=\\&quot;text-align: start; white-space: pre-wrap;\\&quot;&gt;&lt;span style=\\&quot;color: #cc0000;\\&quot;&gt;&lt;strong&gt;Ammy The Bottom Blues X Na Polycat&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div style=\\&quot;text-align: left;\\&quot;&gt;&lt;span style=\\&quot;color: #000000; font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div style=\\&quot;text-align: left;\\&quot;&gt;&lt;span style=\\&quot;color: #000000; font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;&lt;strong&gt;&lt;iframe src=\\&quot;//www.youtube.com/embed/s5jmP4K7aYw\\&quot; width=\\&quot;560\\&quot; height=\\&quot;314\\&quot; allowfullscreen=\\&quot;allowfullscreen\\&quot;&gt;&lt;/iframe&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div style=\\&quot;text-align: left;\\&quot;&gt;&lt;span style=\\&quot;color: #000000; font-size: 24pt; font-family: arial black, sans-serif;\\&quot;&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;', '732fa9a4d56681cfbbd4246f68a203c1.png', 'ammybottombluesmuzikmove', '2019-07-05 17:00:00', 1, 0, 1);
INSERT INTO `post` (`post_id`, `post_title`, `post_content`, `post_cover`, `post_slug`, `publish_date`, `publish_status`, `pin_status`, `user_id`) VALUES
(20, 'ในฝัน ซิงเกิลที่ 5 ของเจ้าพ่อดิสโก้เมืองไทย บุรินทร์ บุญวิสุทธิ์ ', '&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;เพลง ในฝัน&lt;/span&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ซิงเกิลที่&amp;nbsp;&lt;/span&gt;5&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ในอัลบั้มใหม่ ที่ทุกคนจะได้เห็นในปีนี้แน่นอน ของเจ้าพ่อดิสโก้เมืองไทย&lt;/span&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;บุรินทร์ บุญวิสุทธิ์&lt;/span&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;ศิลปินในค่าย&lt;/span&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;มิวซิกมูฟ เรคคอร์ดส&lt;/span&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ในเครือมิวซิกมูฟ&lt;/span&gt;&amp;nbsp;&amp;nbsp;&lt;strong style=\\&quot;font-family: Calibri,sans-serif;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-size: 22pt; font-family: Tahoma, sans-serif, serif, EmojiFont;\\&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; text-align: center;\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;99318e595a898335b86ba4c2552f537e.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/99318e595a898335b86ba4c2552f537e.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;br /&gt;&lt;!--more--&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-size: 22pt;\\&quot;&gt;&lt;span style=\\&quot;color: #990000; font-family: tahoma, sans-serif;\\&quot;&gt;&lt;strong&gt;ในฝัน&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-family: CordiaUPC, sans-serif, serif, EmojiFont; font-size: 22pt; color: black;\\&quot;&gt;&amp;nbsp;คือ เรื่องราวความรักของคนสองคนที่มันโคจรมาพบกันไม่ได้ ไม่ว่าด้วยเหตุผลอะไรก็ตาม อาจเกิดจากเราจะมีแฟนแล้วหรือว่าเขามีแฟนแล้ว มันคงจะเป็นเพียงสิ่งที่เกิดขึ้นได้แค่ในความฝันของเราเท่านั้น&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-family: CordiaUPC, sans-serif, serif, EmojiFont; font-size: 22pt; color: black;\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; style=\\&quot;display: block; margin-left: auto; margin-right: auto;\\&quot; title=\\&quot;fd582ce8f71949db8ed648f941ef74d3.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/fd582ce8f71949db8ed648f941ef74d3.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-size: 22pt; font-family: CordiaUPC, sans-serif, serif, EmojiFont; color: black;\\&quot;&gt;เพลงนี้มีความหมายที่อึดอัดที่สุดในอัลบั้ม จริงๆเพลงนี้ถูกวางไว้เป็นเหตุการณ์ที่เกิดขึ้นก่อนเพลง ขอโทษ แต่ด้วยความแรงของเพลงขอโทษ ทำให้ถูกปล่อยมาก่อนเป็นซิงเกิลที่ &lt;/span&gt;&lt;span style=\\&quot;font-size: 22pt; font-family: CordiaUPC, sans-serif, serif, EmojiFont; color: black;\\&quot;&gt;2&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ของอัลบั้มแทน&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot; style=\\&quot;font-size: 22pt; font-family: CordiaUPC, sans-serif, serif, EmojiFont; color: black;\\&quot;&gt;ทางด้านดนตรี ใช้เครื่องอัดน้อยชิ้นที่สุดในอัลบั้มอีกเช่นกัน มีแค่ เปียโน เบส และกลอง ในทางด้าน &lt;/span&gt;&lt;span style=\\&quot;font-size: 22pt; font-family: CordiaUPC, sans-serif, serif, EmojiFont; color: black;\\&quot;&gt;Rhythm Session&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;จะเป็นศิลปินคนผิวดำหมดเลย เพราะเขาจะสามารถเข้าใจเพลง&amp;nbsp;&lt;/span&gt;NU Soul&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ได้อย่างลึกซึ้งมากกว่า&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&lt;span style=\\&quot;color: black; font-family: CordiaUPC, sans-serif, serif, EmojiFont; font-size: 22pt;\\&quot;&gt;ส่วนเนื้อเพลงนี้ บุรินทร์ ร่วมเขียนเนื้อกับ อะตอม มากสุดในอัลบั้ม และเป็นเพลงที่ร้องมาจากความรู้สึกและอินเนอร์จริงๆ เพราะเข้าใจเพลงเต็มร้อยเพราะว่าได้ร่วมเขียนร่วมทำดนตรีด้วยกันตั้งแต่เริ่มทำ&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri, sans-serif; text-align: center;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; style=\\&quot;display: block; margin-left: auto; margin-right: auto;\\&quot; title=\\&quot;b84d78b04066b78b82edd4027e69a0c1.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/b84d78b04066b78b82edd4027e69a0c1.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=\\&quot;text-align: center;\\&quot;&gt;&lt;strong&gt;&lt;span style=\\&quot;color: #990000; font-size: xx-large;\\&quot;&gt;&amp;ldquo;ในฝัน&amp;rdquo;&lt;/span&gt;&lt;span style=\\&quot;font-size: large; color: #1c1e21;\\&quot;&gt;&amp;nbsp;Singleใหม่จาก&amp;nbsp;&lt;/span&gt;&lt;a class=\\&quot;x_gmail-m_-9115680867227565765gmail-profileLink\\&quot; style=\\&quot;color: #385898; font-size: large; text-decoration-line: none; font-family: inherit;\\&quot; href=\\&quot;https://www.facebook.com/burinboonvisutofficial/?__tn__=K-R&amp;amp;eid=ARBcQ6AJGR6ON2IZc-6sjrNjEeqHnRD-IL4goONQ7-dNef-YMK2ue4B4RjoKoRiMWIH07chk04inlmU-&amp;amp;fref=mentions&amp;amp;__xts__%5B0%5D=68.ARBnMQzqvxmFwmLA0jvsvewSTDJZ57dZqluWA7RDzNkJL_Yop6lUmHji4MkMn5qhQm_FkFIfJqtpOsvOuvU5IUZ2j4p6C0vXAoh_RciVSMBhJn9Mzp9pTyXPr0G_0PF-wywzSecXxrr7Of6xdPYNZUaodm6Wc3RmEdi-_mmn1ManrH-zFG3P3AcRMvS1qBfnwqC9njlP1k-SssscCsqlV_Z7GEMIvxWAUg-zJCdCykTpP_3q-HZwOdJJu2svzzw2Pv15FQkgOBUVr6TLXU6GZ2E81nqSNOAkd5aTngE9E4cv6MHaxT_JKlchwmJuBxc1IrcFtJu9krrnsGaUM3DmpKKRibyp\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;BURIN BOONVISUT&lt;/a&gt;&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=\\&quot;text-align: center;\\&quot;&gt;&lt;strong&gt;สามารถฟังได้ทาง Music Streaming&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;และทางคลื่นวิทยุทั่วประเทศพร้อมกันแล้ววันนี้&lt;/strong&gt;&lt;/div&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=\\&quot;margin: 6px 0px; font-family: Helvetica,Arial,sans-serif;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;div style=\\&quot;color: #1c1e21; text-align: center;\\&quot;&gt;&lt;strong style=\\&quot;font-size: large;\\&quot;&gt;&lt;a class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cn\\&quot; style=\\&quot;color: #385898; text-decoration-line: none; font-family: inherit;\\&quot; href=\\&quot;https://www.facebook.com/hashtag/%E0%B9%83%E0%B8%99%E0%B8%9D%E0%B8%B1%E0%B8%99?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARBnMQzqvxmFwmLA0jvsvewSTDJZ57dZqluWA7RDzNkJL_Yop6lUmHji4MkMn5qhQm_FkFIfJqtpOsvOuvU5IUZ2j4p6C0vXAoh_RciVSMBhJn9Mzp9pTyXPr0G_0PF-wywzSecXxrr7Of6xdPYNZUaodm6Wc3RmEdi-_mmn1ManrH-zFG3P3AcRMvS1qBfnwqC9njlP1k-SssscCsqlV_Z7GEMIvxWAUg-zJCdCykTpP_3q-HZwOdJJu2svzzw2Pv15FQkgOBUVr6TLXU6GZ2E81nqSNOAkd5aTngE9E4cv6MHaxT_JKlchwmJuBxc1IrcFtJu9krrnsGaUM3DmpKKRibyp&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_5afx\\&quot; style=\\&quot;direction: ltr; unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cl x_gmail-m_-9115680867227565765gmail-_5afz\\&quot; style=\\&quot;unicode-bidi: isolate; color: #365899; font-family: inherit;\\&quot;&gt;#&lt;/span&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cm\\&quot; style=\\&quot;font-family: inherit;\\&quot;&gt;ในฝัน&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;&lt;a class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cn\\&quot; style=\\&quot;color: #385898; text-decoration-line: none; font-family: inherit;\\&quot; href=\\&quot;https://www.facebook.com/hashtag/burinboonvisut?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARBnMQzqvxmFwmLA0jvsvewSTDJZ57dZqluWA7RDzNkJL_Yop6lUmHji4MkMn5qhQm_FkFIfJqtpOsvOuvU5IUZ2j4p6C0vXAoh_RciVSMBhJn9Mzp9pTyXPr0G_0PF-wywzSecXxrr7Of6xdPYNZUaodm6Wc3RmEdi-_mmn1ManrH-zFG3P3AcRMvS1qBfnwqC9njlP1k-SssscCsqlV_Z7GEMIvxWAUg-zJCdCykTpP_3q-HZwOdJJu2svzzw2Pv15FQkgOBUVr6TLXU6GZ2E81nqSNOAkd5aTngE9E4cv6MHaxT_JKlchwmJuBxc1IrcFtJu9krrnsGaUM3DmpKKRibyp&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_5afx\\&quot; style=\\&quot;direction: ltr; unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cl x_gmail-m_-9115680867227565765gmail-_5afz\\&quot; style=\\&quot;unicode-bidi: isolate; color: #365899; font-family: inherit;\\&quot;&gt;#&lt;/span&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cm\\&quot; style=\\&quot;font-family: inherit;\\&quot;&gt;BurinBoonvisut&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=\\&quot;color: #1c1e21; text-align: center;\\&quot;&gt;&lt;strong&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-text_exposed_show\\&quot; style=\\&quot;display: inline; font-family: inherit;\\&quot;&gt;&lt;a class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cn\\&quot; style=\\&quot;color: #385898; text-decoration-line: none; font-family: inherit;\\&quot; href=\\&quot;https://www.facebook.com/hashtag/muzikmoverecords?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARBnMQzqvxmFwmLA0jvsvewSTDJZ57dZqluWA7RDzNkJL_Yop6lUmHji4MkMn5qhQm_FkFIfJqtpOsvOuvU5IUZ2j4p6C0vXAoh_RciVSMBhJn9Mzp9pTyXPr0G_0PF-wywzSecXxrr7Of6xdPYNZUaodm6Wc3RmEdi-_mmn1ManrH-zFG3P3AcRMvS1qBfnwqC9njlP1k-SssscCsqlV_Z7GEMIvxWAUg-zJCdCykTpP_3q-HZwOdJJu2svzzw2Pv15FQkgOBUVr6TLXU6GZ2E81nqSNOAkd5aTngE9E4cv6MHaxT_JKlchwmJuBxc1IrcFtJu9krrnsGaUM3DmpKKRibyp&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_5afx\\&quot; style=\\&quot;direction: ltr; unicode-bidi: isolate; font-family: inherit;\\&quot;&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cl x_gmail-m_-9115680867227565765gmail-_5afz\\&quot; style=\\&quot;unicode-bidi: isolate; color: #365899; font-family: inherit;\\&quot;&gt;#&lt;/span&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cm\\&quot; style=\\&quot;font-family: inherit;\\&quot;&gt;MuzikMoveRecords&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_5afx\\&quot; style=\\&quot;color: #385898; font-family: inherit; direction: ltr; unicode-bidi: isolate;\\&quot;&gt;&lt;a class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cn\\&quot; style=\\&quot;color: #385898; text-decoration-line: none; font-family: inherit;\\&quot; href=\\&quot;https://www.facebook.com/hashtag/muzikmove?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARBnMQzqvxmFwmLA0jvsvewSTDJZ57dZqluWA7RDzNkJL_Yop6lUmHji4MkMn5qhQm_FkFIfJqtpOsvOuvU5IUZ2j4p6C0vXAoh_RciVSMBhJn9Mzp9pTyXPr0G_0PF-wywzSecXxrr7Of6xdPYNZUaodm6Wc3RmEdi-_mmn1ManrH-zFG3P3AcRMvS1qBfnwqC9njlP1k-SssscCsqlV_Z7GEMIvxWAUg-zJCdCykTpP_3q-HZwOdJJu2svzzw2Pv15FQkgOBUVr6TLXU6GZ2E81nqSNOAkd5aTngE9E4cv6MHaxT_JKlchwmJuBxc1IrcFtJu9krrnsGaUM3DmpKKRibyp&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cl x_gmail-m_-9115680867227565765gmail-_5afz\\&quot; style=\\&quot;unicode-bidi: isolate; color: #365899; font-family: inherit;\\&quot;&gt;#&lt;/span&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_58cm\\&quot; style=\\&quot;font-family: inherit;\\&quot;&gt;MuzikMove&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/div&gt;\r\n&lt;div style=\\&quot;color: #1c1e21; text-align: center;\\&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=\\&quot;color: #1c1e21; text-align: center;\\&quot;&gt;&lt;strong&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-text_exposed_show\\&quot; style=\\&quot;display: inline; font-family: inherit;\\&quot;&gt;&lt;span class=\\&quot;x_gmail-m_-9115680867227565765gmail-_5afx\\&quot; style=\\&quot;color: #385898; font-family: inherit; direction: ltr; unicode-bidi: isolate;\\&quot;&gt;&lt;iframe src=\\&quot;//www.youtube.com/embed/K_RoIuuCSMo\\&quot; width=\\&quot;300\\&quot; height=\\&quot;168\\&quot; allowfullscreen=\\&quot;allowfullscreen\\&quot;&gt;&lt;/iframe&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/div&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; style=\\&quot;margin: 0cm 0cm 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-origin: initial; background-clip: initial; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;', 'fef48ec16898cdbee87773520b81e567.png', 'QR4KEAGmzbIC', '2019-07-20 17:00:00', 1, 0, 1),
(21, 'TON THANASIT - อย่างเดิมได้ไหม', '&lt;p&gt;ถึงจะทิ้งช่วงซิงเกิ้ลเดี่ยวของตัวเอง &amp;ldquo;เปล๊า!&amp;rdquo; ไปนานกว่า 1 ปี แต่ระหว่างนั้น ตัน ธนษิต (TON THANASIT) ศิลปินหนุ่มเสียงร้องคุณภาพอีกคน จากค่าย I AM (ไอแอม)&lt;/p&gt;\n&lt;p&gt;ก็มีผลงานออกมาให้แฟนๆ ได้ติดตามอยู่เสมอ ไม่ว่าจะเป็น การไปโชว์พลังเสียงร้องในรายการ The Mask Singer Season 4 (หน้ากากพ่อมด) ที่เข้ารอบจนถึง&lt;/p&gt;\n&lt;p&gt;Semi-Finalของ Group C , การเล่นละครเวที , การออกงานโชว์ตัวร้องเพลงต่างๆ&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;&lt;!--more--&gt;&lt;/p&gt;\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;562a4c2f08668601f222e039e10eb256.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/562a4c2f08668601f222e039e10eb256.jpg\\&quot; alt=\\&quot;\\&quot; width=\\&quot;1024\\&quot; height=\\&quot;1024\\&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;รวมทั้งล่าสุดกับโปรเจค Love Repeat ที่ต้นได้กลับมาถ่ายทอดการร้องเพลงใน Style ที่เป็น Signature ของตัวเองอีกครั้ง ค&lt;span class=\\&quot;text_exposed_show\\&quot;&gt;ือ การร้องเพลงช้าที่สื่ออารมณ์อย่างบาดลึก &lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span class=\\&quot;text_exposed_show\\&quot;&gt;กับเพลง &amp;ldquo;ความจริงแค่ในเมื่อวาน&amp;rdquo; &lt;/span&gt;&lt;span class=\\&quot;text_exposed_show\\&quot;&gt;เมื่อต้นปีที่ผ่านมา &lt;/span&gt;และไม่ให้แฟนเพลงได้คิดถึงนาน ต้น ได้ปล่อยซิงเกิ้ลใหม่ &amp;ldquo;อย่างเดิมได้ไหม&amp;rdquo; เพลง POP R&amp;amp;B ฟังสบาย&lt;/p&gt;\n&lt;p&gt;เนื้อหาพูดถึงความรู้สึกที่เรามีให้กับคนๆหนึ่งที่เคยมีความรู้สึกดีต่อกัน แล้วต้องห่างกันไป ซึ่งความห่างไกลทำให้รู้ว่าคนนั้นมีความสำคัญต่อหัวใจมากขนาดไหน&lt;/p&gt;\n&lt;p&gt;และจะเป็นไปได้ไหม ถ้าอยากให้สองเรากลับมาเป็นเหมือนเดิม โดยครั้งนี้นับเป็นการทำงานร่วมกันครั้งแรกระหว่างต้น กับโปรดิวเซอร์มือทอง&lt;/p&gt;\n&lt;p&gt;เจ้าของเพลงฮิตติดชาร์ตมากมาย &amp;ldquo;Mac ศรัณย์&amp;rdquo; &amp;hellip;..&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;iframe src=\\&quot;//www.youtube.com/embed/7So2p5sFiI4\\&quot; width=\\&quot;450\\&quot; height=\\&quot;252\\&quot; allowfullscreen=\\&quot;allowfullscreen\\&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;ติดตามข้อมูลข่าวสารของศิลปิน i am เพิ่มเติมได้ที่&lt;/p&gt;\n&lt;p&gt;Facebook : &lt;a class=\\&quot;yt-simple-endpoint style-scope yt-formatted-string\\&quot; spellcheck=\\&quot;false\\&quot; href=\\&quot;https://www.youtube.com/redirect?v=7So2p5sFiI4&amp;amp;event=video_description&amp;amp;redir_token=C6Uckz-Tct2EP6RL-jp33aXQ7Zt8MTU2NTYwOTI0OEAxNTY1NTIyODQ4&amp;amp;q=https%3A%2F%2Fwww.facebook.com%2Fiamasiamofficial\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;nofollow noopener\\&quot;&gt;https://www.facebook.com/iamasiamoffi...&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Instagram : &lt;a class=\\&quot;yt-simple-endpoint style-scope yt-formatted-string\\&quot; spellcheck=\\&quot;false\\&quot; href=\\&quot;https://www.youtube.com/redirect?v=7So2p5sFiI4&amp;amp;event=video_description&amp;amp;redir_token=C6Uckz-Tct2EP6RL-jp33aXQ7Zt8MTU2NTYwOTI0OEAxNTY1NTIyODQ4&amp;amp;q=http%3A%2F%2Finstagram.com%2Fiamasiamofficial\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;nofollow noopener\\&quot;&gt;http://instagram.com/iamasiamofficial&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Twitter : &lt;a class=\\&quot;yt-simple-endpoint style-scope yt-formatted-string\\&quot; spellcheck=\\&quot;false\\&quot; href=\\&quot;https://www.youtube.com/redirect?v=7So2p5sFiI4&amp;amp;event=video_description&amp;amp;redir_token=C6Uckz-Tct2EP6RL-jp33aXQ7Zt8MTU2NTYwOTI0OEAxNTY1NTIyODQ4&amp;amp;q=https%3A%2F%2Ftwitter.com%2Fiam_asiam\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;nofollow noopener\\&quot;&gt;https://twitter.com/iam_asiam&lt;/a&gt; &lt;a class=\\&quot;yt-simple-endpoint style-scope yt-formatted-string\\&quot; spellcheck=\\&quot;false\\&quot; href=\\&quot;https://www.youtube.com/results?search_query=%23iamasiam\\&quot;&gt;#iamasiam&lt;/a&gt;&lt;/p&gt;', 'b9c745c6ec078bb509473b203c4200ca.png', 'TON-THANASIT', '2019-08-10 17:00:00', 1, 0, 1),
(22, 'TWO PILLS AFTER MEAL - SUGAR', '&lt;p&gt;&lt;strong&gt;TWO PILLS AFTER MEAL&lt;/strong&gt; วงดนตรีคู่ซี้แห่งค่ายสมอลล์รูมกลับมาอีกครั้งหลังจากสร้างปรากฏการณ์ทางดนตรีด้วยเครื่องดนตรีเพียง 2 ชิ้น ให้วงการเพลงไทยได้คึกคัก&lt;br /&gt;พร้อมฝากเพลง &lt;em&gt;เข็มฉีดยา (&lt;/em&gt;&lt;em&gt;vaccine), รฟท (Prompt), ทนไม่ไหว (I C U), สาย (once), หายใจ (Drown), &lt;/em&gt;และเพลงปิดอัลบั้มอย่าง &lt;em&gt;อย่าให้เลือนหาย &lt;/em&gt;&lt;em&gt;(Farewell)&lt;br /&gt;&lt;!--more--&gt;&lt;/em&gt;&lt;/p&gt;\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;3dac18c4bf909ffc5f5bfb6306b069c1.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/3dac18c4bf909ffc5f5bfb6306b069c1.jpg\\&quot; alt=\\&quot;\\&quot; width=\\&quot;1106\\&quot; height=\\&quot;1106\\&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;อัลบั้มชุดแรก &amp;ldquo;FIRST KIT&amp;rdquo; เมื่อ 2 ปีที่แล้ว ด้วยส่วนผสมของดนตรี Pop และ Electronic ที่เข้ากันได้อย่างลงตัว ความแปลกใหม่ทางดนตรีตลอดจนการแสดงสดบนเวทีที่จัดจ้าน&lt;br /&gt;ก็เข้าตาทั้งผู้จัดชาวไทยและชาวต่างประเทศ จนมีโอกาสได้ไปร่วมแสดงสดในเทศกาลดนตรีต่างประเทศเมื่อปี 2018 ในงาน Zandari Festa&amp;nbsp;กรุงโซล&amp;nbsp;ประเทศเกาหลีใต้ และ &lt;br /&gt;Wonderfruit Festival 2018 เทศกาลดนตรี International สุดชิคที่จัดขึ้นในประเทศไทย จนทำให้เป็นที่รู้จักของนักฟังเพลงทั้งชาวไทยและต่างชาติ เพิ่มขึ้นเรื่อยๆ&lt;/p&gt;\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;8b58edca2ff165f310c62192939509b8.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/8b58edca2ff165f310c62192939509b8.jpg\\&quot; alt=\\&quot;\\&quot; width=\\&quot;1107\\&quot; height=\\&quot;622\\&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;bcfd4363bf4b79d112e38b0073b6aaf6.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/bcfd4363bf4b79d112e38b0073b6aaf6.jpg\\&quot; alt=\\&quot;\\&quot; width=\\&quot;1109\\&quot; height=\\&quot;623\\&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;e3ed5d3e8e2ce8fd9fc16296e995506e.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/e3ed5d3e8e2ce8fd9fc16296e995506e.jpg\\&quot; alt=\\&quot;\\&quot; width=\\&quot;1110\\&quot; height=\\&quot;624\\&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;SUGAR&lt;/strong&gt; ซิงเกิ้ลเปิดตัวเพลงแรกของการกลับมากับอัลบั้มชุด 2 ที่พูดถึงความหลงใหลในสิ่งใดที่มากเกินขอบเขต วันนึงมันอาจกลับมาทำร้ายเราก็เป็นได้ เหมือนกับขนมหวาน&lt;br /&gt;น้ำตาลที่ให้ความสุขกับเราเมื่อกินเข้าไป แต่ถ้ามันมากเกินไปก็ส่งผลเสียกับเราได้เช่นกัน ดนตรีเพลงนี้เป็นงานทดลองทางดนตรีที่แปลกใหม่ของ &lt;strong&gt;TWO PILLS AFTER MEAL&lt;/strong&gt; &lt;br /&gt;มีการดีไซน์เสียงร้องล่องลอยทับซ้อนกันให้บรรยากาศเหมือนร่ายมนต์คาถา บีทกลองและเบสมีความเป็นดนตรีเต้นรำ พร้อมช่วงโซโล่กลองที่กระชากอารมณ์ สื่อถึงความสับสน&lt;br /&gt;ต่อสู้กับความอยากในจิตใจ รวมทั้งยังมีการนำเอาเสียงที่ไม่ใช่เครื่องดนตรีมาประกอบเพื่อเล่าเรื่องและสื่ออารมณ์ให้เห็นภาพ มิวสิควิดีโอได้ &amp;ldquo;มนชนก สมใจเพ็ง&amp;rdquo; ผู้กำกับผู้เชี่ยวชาญ&lt;br /&gt;ทางด้านภาพเทคนิคพิเศษ เล่าเรื่องผ่านเทคนิค 3D ผสมไลน์ซิงค์วง เปรียบเทียบความหอมหวานของน้ำตาลหลอกล่อให้มดเข้ามาติดกับดักและกลายเป็นไฟทำลายล้าง &lt;br /&gt;เพราะความหวานนั้นสุดท้ายก็พิษได้เช่นกัน&lt;/p&gt;\n&lt;p&gt;&lt;a href=\\&quot;http://www.facebook.com/twopillsaftermeal\\&quot; data-saferedirecturl=\\&quot;https://www.google.com/url?q=http://www.facebook.com/twopillsaftermeal&amp;amp;source=gmail&amp;amp;ust=1566899540807000&amp;amp;usg=AFQjCNEyD9OkHgE-ZJai3XPtZGwhnnl4eA\\&quot;&gt;www.facebook.com/twopillsaftermeal&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;a href=\\&quot;http://www.smallroom.co.th\\&quot; data-saferedirecturl=\\&quot;https://www.google.com/url?q=http://www.smallroom.co.th&amp;amp;source=gmail&amp;amp;ust=1566899540807000&amp;amp;usg=AFQjCNHqonxHvVTgweOWoUwPNjg62gYynQ\\&quot;&gt;www.smallroom.co.th&lt;/a&gt;&lt;/p&gt;\n&lt;p style=\\&quot;text-align: left;\\&quot;&gt;&lt;iframe src=\\&quot;//www.youtube.com/embed/PxyenkYxyC4\\&quot; width=\\&quot;320\\&quot; height=\\&quot;179\\&quot; allowfullscreen=\\&quot;allowfullscreen\\&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;', 'c592d89dd9c0a7b906a057858fdba0c6.png', 'SUGARTWOPILLSAFTERMEAL', '2019-08-25 17:00:00', 1, 0, 1),
(23, 'LONELY NIGHT', '&lt;p&gt;&amp;ldquo;เป๊ก&amp;rdquo; ทนได้!! เหงา แต่ ไหว!! ปล่อยเพลง &amp;ldquo;LONELY NIGHT&amp;rdquo; แรงบันดาลใจจากตัวตน&lt;/p&gt;\r\n&lt;p&gt;มาแล้ว!! ซูเปอร์สตาร์หนุ่มสุดฮอต&amp;ldquo;เป๊ก&amp;rdquo; ผลิตโชค อายนบุตร สังกัดไวท์มิวสิกในเครือจีเอ็มเอ็มแกรมมี่ฯ กับซิงเกิลใหม่ล่าสุด Lonely Night&lt;br /&gt;&lt;!--more--&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;993b5dc3453a2e1d7cc9423a810bd692.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/993b5dc3453a2e1d7cc9423a810bd692.jpg\\&quot; alt=\\&quot;\\&quot; width=\\&quot;1043\\&quot; height=\\&quot;1475\\&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;เพลงป็อป อาร์แอนด์บี มีกลิ่นอิเล็กทรอนิกส์ เบาๆ ที่ได้ แอ้ม อัจฉริยา ดุลยไพบูลย์ ดูแลด้านเนื้อเพลง และ เอ้ Boom Boom Cash ดูแลด้านดนตรี ควบคู่ตำแหน่งโปรดิวเซอร์ ในการนำเสนออารมณ์ของผู้ชายขี้เหงาที่มีเพียงเสียงเพลงและเสียงหัวใจเป็นเพื่อนในยามค่ำคืน และได้ จีน&amp;ndash;คำขวัญ ดวงมณี ผู้กำกับหญิงฝีมือดีมาทำหน้าที่เล่าเรื่องผ่านมิวสิกวิดีโอ โดยทั้งเนื้อหาเพลงและเรื่องราวในมิวสิกฯ ได้รับแรงบันดาลใจมาจาก &amp;ldquo;เป๊ก&amp;rdquo; นั่นเอง ซึ่งเจ้าตัวเล่าว่า...&lt;/p&gt;\r\n&lt;p&gt;&amp;ldquo;สำหรับเพลง lonely night เป็นอีกหนึ่งเพลงที่ผมได้มีโอกาสทำร่วมกับพี่แอ้มและน้องเอ้ บูมบูมแคช ครับ เป็นเพลงที่มีเนื้อหาเกี่ยวกับสถานการณ์ตอนกลางคืน พี่แอ้มบอกว่าแรงบันดาลใจในการแต่งเพลงนี้มาจากตัวผมเอง (หัวเราะ) เพราะเราชอบใช้ชีวิตตอนกลางคืน เป็นคนขี้เหงานิดๆ แต่ว่าไม่เป็นไรเท่าไหร่ ทนได้ !! เดี๋ยวมันก็ผ่านพ้นไป เดี๋ยวก็เช้าแล้ว ก็คือจริงๆแล้ว เอ่อ ทุกท่อน คือ เป็นแบบตัวเราเลยอะ(หัวเราะ) กว่าจะออกมาสำเร็จได้นี่แก้ไปมาหลายรอบเลย ในพาร์ทดนตรี ก็มีช่วยออกไอเดียบ้าง น้องเอ้จะเป็นสายอิเล็กทรอนิกส์มาเลย เราก็จะขอปรับความอิเล็กทรอนิกส์ลงนิดนึง เพิ่มความเป็นป็อปเฮ้าส์ ออกแนวอาร์แอนด์บี ขึ้นมาหน่อย ชอบเลยครับ สำหรับเอ็มวี ได้น้องจีน มากำกับให้ ส่วนตัวเราชอบผลงานน้องจีนอยู่แล้วเคยได้ร่วมงานกันตอนถ่ายน้ำหอม COLOUR SOUL EAU DE PARFUM/SECRET COLLECTION (คัลเลอร์ โซล โอ เดอ พาร์ฟูม / ซีเครทคอลเล็กชัน) ขายของซะเลย (หัวเราะ) เลยจีบน้องมาทำเอ็มวีให้ครับ ฝากติดตามเพลง Lonely Night ด้วยนะครับ เพลงเพราะ ภาพสวย หวังว่าทุกๆ คนน่าจะชอบกันนะครับ &amp;rdquo;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;ติดตามมิวสิกวิดีโอเพลง &amp;ldquo;LONELY NIGHT&amp;rdquo; ของ &amp;ldquo;เป๊ก&amp;rdquo; ผลิตโชค อายนบุตร ได้ทาง&lt;/p&gt;\r\n&lt;p&gt;&lt;iframe src=\\&quot;//www.youtube.com/embed/ElAMK3eGR6Y\\&quot; width=\\&quot;320\\&quot; height=\\&quot;179\\&quot; allowfullscreen=\\&quot;allowfullscreen\\&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;', '89f00513cb0a64c835a6fb7138436e5e.png', 'LONELYNIGHT', '2019-09-05 17:00:00', 1, 0, 1),
(24, '“แผล” ซิงเกิลล่าสุดลำดับที่ 7 ของศิลปิน วง Indigo (อินดิโก้) อันดับ 1 a x Top Chart', '&lt;div class=\\&quot;col-md-12\\&quot;&gt;\r\n&lt;div class=\\&quot;col-md-12 content__title font-2\\&quot;&gt;\r\n&lt;div class=\\&quot;row\\&quot;&gt;\r\n&lt;h1&gt;&amp;ldquo;แผล&amp;rdquo; ซิงเกิลล่าสุดลำดับที่ 7 ของศิลปิน วง Indigo (อินดิโก้) อันดับ 1 a x Top Chart&lt;br /&gt;&lt;br /&gt;&lt;/h1&gt;\r\n&lt;h2&gt;&lt;strong&gt;&lt;a href=\\&quot;https://www.facebook.com/hashtag/%E0%B8%96%E0%B9%89%E0%B8%B2%E0%B8%89%E0%B8%B1%E0%B8%99%E0%B9%80%E0%B8%9B%E0%B9%87%E0%B8%99%E0%B9%80%E0%B8%82%E0%B8%B2?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARAvyGkxmG2dnAeQDXMB4NacaxZBp7iN2-wT9mg4RffZusbW9T6tzuA0dd6PsQ2aixhYiXrzhJkdlBqOJozYH4IwfG_uOCarkfLhCZbD0gcXh6cfltkYw7RlSZcxI1BCgVZUYi2GYgCLjB2ze8bMIGfnoXwryUJg92N-K6DLdiUylzZZ0iwX4AmqYgv6WjSS6Ruuh1AcSCjLNK-iez6ctcoX1_FxTYJX9xA-GyWE1OAFssuiZCB1fmPd2X-dVutqnJb_blDZOzPocdE2fzHDQmesBiSXEe8JEuWWdM-gGh3XlTapj_xVx5YTZZlXhzDLzP3hmUugjoTesEIPol_AOYOgm3cj9dCRwo8TVw&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;#&lt;span lang=\\&quot;TH\\&quot;&gt;ถ้าฉันเป็นเขา&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&lt;span style=\\&quot;color: #444444;\\&quot;&gt;ว่าเจ็บแล้ว&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;a href=\\&quot;https://www.facebook.com/hashtag/%E0%B8%9E%E0%B8%B1%E0%B8%87?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARAvyGkxmG2dnAeQDXMB4NacaxZBp7iN2-wT9mg4RffZusbW9T6tzuA0dd6PsQ2aixhYiXrzhJkdlBqOJozYH4IwfG_uOCarkfLhCZbD0gcXh6cfltkYw7RlSZcxI1BCgVZUYi2GYgCLjB2ze8bMIGfnoXwryUJg92N-K6DLdiUylzZZ0iwX4AmqYgv6WjSS6Ruuh1AcSCjLNK-iez6ctcoX1_FxTYJX9xA-GyWE1OAFssuiZCB1fmPd2X-dVutqnJb_blDZOzPocdE2fzHDQmesBiSXEe8JEuWWdM-gGh3XlTapj_xVx5YTZZlXhzDLzP3hmUugjoTesEIPol_AOYOgm3cj9dCRwo8TVw&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;#&lt;span lang=\\&quot;TH\\&quot;&gt;พัง&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&lt;span style=\\&quot;color: #444444;\\&quot;&gt;ยิ่งเจ็บกว่า&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&lt;span style=\\&quot;color: #444444;\\&quot;&gt;และนี่&lt;/span&gt;&lt;/span&gt;&lt;span style=\\&quot;color: #1c1e21;\\&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;a href=\\&quot;https://www.facebook.com/hashtag/%E0%B9%81%E0%B8%9C%E0%B8%A5?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARAvyGkxmG2dnAeQDXMB4NacaxZBp7iN2-wT9mg4RffZusbW9T6tzuA0dd6PsQ2aixhYiXrzhJkdlBqOJozYH4IwfG_uOCarkfLhCZbD0gcXh6cfltkYw7RlSZcxI1BCgVZUYi2GYgCLjB2ze8bMIGfnoXwryUJg92N-K6DLdiUylzZZ0iwX4AmqYgv6WjSS6Ruuh1AcSCjLNK-iez6ctcoX1_FxTYJX9xA-GyWE1OAFssuiZCB1fmPd2X-dVutqnJb_blDZOzPocdE2fzHDQmesBiSXEe8JEuWWdM-gGh3XlTapj_xVx5YTZZlXhzDLzP3hmUugjoTesEIPol_AOYOgm3cj9dCRwo8TVw&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;&lt;span style=\\&quot;color: #990000;\\&quot;&gt;#&lt;span lang=\\&quot;TH\\&quot;&gt;แผล&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=\\&quot;color: #1c1e21;\\&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&lt;span style=\\&quot;color: #444444;\\&quot;&gt;เจ็บสุดๆไปเลยจ้าาา&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;span style=\\&quot;color: #990000;\\&quot;&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;แผล&amp;rdquo;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;ซิงเกิลล่าสุดลำดับที่&amp;nbsp;&lt;/span&gt;7&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ของศิลปิน&lt;/span&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;วง&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;Indigo&amp;nbsp;&lt;/strong&gt;(&lt;span lang=\\&quot;TH\\&quot;&gt;อินดิโก้)&lt;/span&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;ภายใต้&lt;/span&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ค่าย มิวซิกมูฟ เรคคอร์ดส (&lt;/span&gt;Muzik Move&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;Records)&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ในเครือบริษัท มิวซิกมูฟ จำกัด&lt;/span&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;วงดนตรีแนวอิเล็กทรอนิกส์ ป๊อบ- ร็อก กับสมาชิกวง&amp;nbsp;&lt;/span&gt;3&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;คน &amp;nbsp;&lt;/span&gt;&lt;strong&gt;&lt;em&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;บลู &amp;ndash; พสิษฐ์ เอกวิไชยภัสร์ (ร้องนำ และมือกีต้าร์)&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;strong&gt;&lt;em&gt;,&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ขวัญ &amp;ndash; ขวัญชนก พันธุระ (มือเบส)&lt;/span&gt;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;และ&lt;strong&gt;&lt;em&gt;โดนัท &amp;ndash; กานต์ชนก ม่อมพะเนาว์ (มือกลอง)&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;หลังสร้างเพลงฮิตติดทุกชาร์ตอย่าง&lt;/span&gt;&amp;nbsp;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;แค่เราไม่ได้รักกัน&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;,&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ถ้าฉันเป็นเขา&lt;/span&gt;&lt;/strong&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;และ&lt;/span&gt;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&amp;nbsp;พัง&lt;/span&gt;&lt;/strong&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;สร้างปรากฏการณ์รวมกว่า&amp;nbsp;&lt;/span&gt;200&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ล้านวิวแล้ว&lt;/span&gt;&lt;/p&gt;\r\n&lt;div&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot;&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;ในปี&amp;nbsp;&lt;/span&gt;2020&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;นี้&lt;/span&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;วง&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;Indigo&amp;nbsp;&lt;/strong&gt;(&lt;span lang=\\&quot;TH\\&quot;&gt;อินดิโก้)&lt;/span&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&amp;nbsp;อยากทำเพลงให้ร็อก และหนักแน่นมากขึ้นfใจเพิ่มสีสันนี้ให้เป็นเฉดสีใหม่ของวง แต่ก็ยังคงซาวด์โมเดิร์นที่เป็นเอกลักษณ์วงเหมือนเดิม&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div&gt;\r\n&lt;div&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; align=\\&quot;center\\&quot;&gt;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;ทั้ง&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;3&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;สมาชิก วง&lt;/span&gt;&amp;nbsp;Indigo(&lt;span lang=\\&quot;TH\\&quot;&gt;อินดิโก้)&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; align=\\&quot;center\\&quot;&gt;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;บลู&lt;/span&gt;&lt;/strong&gt;&amp;nbsp;&amp;ndash;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;พสิษฐ์ เอกวิไชยภัสร์ (&lt;/span&gt;Vocal,Guitar)&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; align=\\&quot;center\\&quot;&gt;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;ขวัญ&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&amp;ndash;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ขวัญชนก พันธุระ (&lt;/span&gt;Bass)&lt;/p&gt;\r\n&lt;p class=\\&quot;x_MsoNormal\\&quot; align=\\&quot;center\\&quot;&gt;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;โดนัท&lt;/span&gt;&lt;/strong&gt;&amp;nbsp;&amp;ndash;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;กานต์ชนก ม่อมพะเนาว์ (&lt;/span&gt;Electric Drum)&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\r\n&lt;h3 class=\\&quot;x_MsoNormal\\&quot;&gt;&lt;strong&gt;&amp;hellip;.&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;เหมือนกับคำกล่าวที่ว่านักรบย่อมมีบาดแผล&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&lt;strong&gt;ความรักก็เช่นกัน&lt;/strong&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;h3 class=\\&quot;x_MsoNormal\\&quot;&gt;&lt;strong&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;เป็นแผลที่เตือนให้รู้ไว้ว่าเขาคนนั้นไม่ได้รักเรา &amp;hellip;.&lt;/span&gt;&lt;/strong&gt;&lt;span style=\\&quot;color: #0000ff;\\&quot;&gt;&lt;strong&gt;#&lt;/strong&gt;&lt;/span&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;&lt;span style=\\&quot;color: #0000ff;\\&quot;&gt;&lt;strong&gt;แผล&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=\\&quot;color: #1c1e21;\\&quot;&gt;Single&lt;/span&gt;&lt;span lang=\\&quot;TH\\&quot;&gt;ใหม่ล่าสุดจาก&amp;nbsp;&lt;/span&gt;&lt;strong&gt;Indigo BAND&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;h3&gt;&lt;strong&gt;&lt;a href=\\&quot;https://www.facebook.com/hashtag/indigoband?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARAvyGkxmG2dnAeQDXMB4NacaxZBp7iN2-wT9mg4RffZusbW9T6tzuA0dd6PsQ2aixhYiXrzhJkdlBqOJozYH4IwfG_uOCarkfLhCZbD0gcXh6cfltkYw7RlSZcxI1BCgVZUYi2GYgCLjB2ze8bMIGfnoXwryUJg92N-K6DLdiUylzZZ0iwX4AmqYgv6WjSS6Ruuh1AcSCjLNK-iez6ctcoX1_FxTYJX9xA-GyWE1OAFssuiZCB1fmPd2X-dVutqnJb_blDZOzPocdE2fzHDQmesBiSXEe8JEuWWdM-gGh3XlTapj_xVx5YTZZlXhzDLzP3hmUugjoTesEIPol_AOYOgm3cj9dCRwo8TVw&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;#INDIGOband&lt;/a&gt;&amp;nbsp;&lt;a href=\\&quot;https://www.facebook.com/hashtag/muzikmoverecords?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARAvyGkxmG2dnAeQDXMB4NacaxZBp7iN2-wT9mg4RffZusbW9T6tzuA0dd6PsQ2aixhYiXrzhJkdlBqOJozYH4IwfG_uOCarkfLhCZbD0gcXh6cfltkYw7RlSZcxI1BCgVZUYi2GYgCLjB2ze8bMIGfnoXwryUJg92N-K6DLdiUylzZZ0iwX4AmqYgv6WjSS6Ruuh1AcSCjLNK-iez6ctcoX1_FxTYJX9xA-GyWE1OAFssuiZCB1fmPd2X-dVutqnJb_blDZOzPocdE2fzHDQmesBiSXEe8JEuWWdM-gGh3XlTapj_xVx5YTZZlXhzDLzP3hmUugjoTesEIPol_AOYOgm3cj9dCRwo8TVw&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;#MuzikMoveRecords&lt;/a&gt;&amp;nbsp;&lt;a href=\\&quot;https://www.facebook.com/hashtag/muzikmove?source=feed_text&amp;amp;epa=HASHTAG&amp;amp;__xts__%5B0%5D=68.ARAvyGkxmG2dnAeQDXMB4NacaxZBp7iN2-wT9mg4RffZusbW9T6tzuA0dd6PsQ2aixhYiXrzhJkdlBqOJozYH4IwfG_uOCarkfLhCZbD0gcXh6cfltkYw7RlSZcxI1BCgVZUYi2GYgCLjB2ze8bMIGfnoXwryUJg92N-K6DLdiUylzZZ0iwX4AmqYgv6WjSS6Ruuh1AcSCjLNK-iez6ctcoX1_FxTYJX9xA-GyWE1OAFssuiZCB1fmPd2X-dVutqnJb_blDZOzPocdE2fzHDQmesBiSXEe8JEuWWdM-gGh3XlTapj_xVx5YTZZlXhzDLzP3hmUugjoTesEIPol_AOYOgm3cj9dCRwo8TVw&amp;amp;__tn__=%2ANK-R\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener noreferrer\\&quot; data-auth=\\&quot;NotApplicable\\&quot;&gt;#MuzikMove&lt;/a&gt;&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;Cr. http://www.northwavestation.com/?p=7127&lt;/h3&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;db82f89e2baaf31263402b1aecdc3647.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/db82f89e2baaf31263402b1aecdc3647.jpg\\&quot; alt=\\&quot;indigo\\&quot; /&gt;&lt;/p&gt;', '71bed864068553d49c7f2fda8741b17a.png', 'Indigo', '2020-04-04 17:00:00', 1, 0, 1);
INSERT INTO `post` (`post_id`, `post_title`, `post_content`, `post_cover`, `post_slug`, `publish_date`, `publish_status`, `pin_status`, `user_id`) VALUES
(25, 'สิ้นสุด 3 ปีที่รอคอย!! TATTOO COLOUR เปิดตัวร้อนแรงกับ &quot;ร้อนของ&quot; เพลงใหม่จากอัลบั้ม &quot;เรือนแพ ชุดที่ 6&quot;', '&lt;p&gt;สิ้นสุด 3 ปีที่รอคอย!! TATTOO COLOUR เปิดตัวร้อนแรงกับ \\&quot;ร้อนของ\\&quot; เพลงใหม่จากอัลบั้ม \\&quot;เรือนแพ ชุดที่ 6\\&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;7f881d306c0758b75e2a5dfb277112e4.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/7f881d306c0758b75e2a5dfb277112e4.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;ARTIST &amp;nbsp;: &amp;nbsp; &amp;nbsp;TATTOO COLOUR&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;LABEL &amp;nbsp; &amp;nbsp;: &amp;nbsp; &amp;nbsp;SMALLROOM&lt;/p&gt;\r\n&lt;p&gt;SONG &amp;nbsp; &amp;nbsp; : &amp;nbsp; &amp;nbsp;ร้อนของ&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;ร้อนของ&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;เนื้อร้อง / ทำนอง / เรียบเรียง&amp;nbsp; &lt;/em&gt;&lt;em&gt;:&amp;nbsp; Tattoo Colour&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;Mix and Master : &lt;/em&gt;&lt;em&gt;รุ่งโรจน์ อุปถัมภ์โพธิวัฒน์ / บัญชา เธียรกฤตม์&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;หนึ่งวงดนตรีที่ไม่เคยเงียบหายไปจากวงการเพลงและเป็นที่พูดของแฟนเพลงตลอดเวลานั้นคงจะเป็นใครไปไม่ได้ถ้าไม่ใช่วง &lt;strong&gt;Tattoo Colour&lt;/strong&gt; หลังจากปล่อยอัลบั้ม \\&quot;สัตว์จริง\\&quot; ไปเมื่อปี 2017 ทั้ง &lt;strong&gt;&lt;em&gt;&amp;ldquo;ดิม, รัฐ, ตง และจั๊มพ์&amp;rdquo; &lt;/em&gt;&lt;/strong&gt;ก็ไม่เคยหยุดทำเพลง ยังคงขยันสร้างสรรค์ทั้งงานเพลง คอนเทนท์ต่างๆ รวมไปถึงรายการ &amp;ldquo;แทททู รู้ทุกเรื่อง&amp;rdquo; ที่อัดแน่นสาระและความสนุกให้แฟนเพลงได้ติดตามอยู่เสมอ และในปีนี้ &lt;strong&gt;Tattoo Colour&lt;/strong&gt; กลับมาพร้อมความร้อนแรงของงานเพลงจากอัลบั้มชุดใหม่ จากที่ทราบกันดีว่าเพลงฮิตทั้งหมดของ &lt;strong&gt;Tattoo Colour&lt;/strong&gt; มาจากฝีมือหัวหอกหลักของวงอย่าง &amp;ldquo;รัฐ&amp;rdquo; มือกีต้าร์, โปรดิวซ์เซอร์และนักแต่งเพลง แต่ความพิเศษของงานเพลงในอัลบั้มชุดที่ 6 นี้ พวกเขาทั้ง 4 คนกลับเลือกที่จะมารวมตัวกันทำงานเหมือนเมื่อครั้งสมัยวัยรุ่นอีกครั้ง เก็บตัวหอบเสื้อผ้ามาอาศัยอยู่ในบ้านเดียวกันเป็นเวลา 7 วัน เพื่อ brainstorm ไอเดียตั้งแต่เนื้อร้อง ดนตรี ตลอดจนการเรียบเรียง เรียกว่างานนี้เพาะบ่มเพลงคุณภาพกันแบบสุดๆ&lt;/p&gt;\r\n&lt;p&gt;เปิดตัวเรียกน้ำย่อยกับเพลง &lt;strong&gt;&amp;ldquo;ร้อนของ&amp;rdquo;&lt;/strong&gt; เป็นเพลงที่แต่งขึ้นมาหลังจากที่ทำเพลงในอัลบั้มเสร็จไปประมาณครึ่งทาง แล้วรู้สึกว่าเพลงในอัลบั้มนี้มันประหลาดเต็มไปด้วยความแปลกใหม่ของ &lt;strong&gt;Tattoo Colour&lt;/strong&gt; ที่น่าสนุกและตื่นเต้นมาก ซึ่งเพลง &lt;strong&gt;&amp;ldquo;ร้อนของ&amp;rdquo; &lt;/strong&gt;สามารถถ่ายทอดภาพรวมของอัลบั้มนี้ได้เป็นอย่างดี เป็นซิงเกิลเปิดตัวเพลงแรกของการกลับมาครั้งนี้ พร้อมมิวสิควิดีโอร้อนฉ่าทุกองศาที่ &lt;strong&gt;Tattoo Colour&lt;/strong&gt; ทั้ง 4 คน เล่นเองและตีบทแตกกระจายจนต้องยกรางวัลสาขานักแสดงยอดเยี่ยมให้ เมื่อ &amp;ldquo;ตง&amp;rdquo; ต้องผิดหวังกับความรัก ด้วยความเป็นห่วงเพื่อน &amp;ldquo;ดิม, รัฐ และ จั๊มพ์&amp;rdquo; จึงต้องพาไปพึ่งไสยศาสตร์จากสำนักสักยันต์แห่งหนึ่งแต่เรื่องราวกลับตาลปัตร พวกเขาจะต้องเจอกับความร้อนของอย่างไรบ้าง ติดตามฟังให้ร้อนหูและชมให้ร้อนจอกันได้ในมิวสิควิดีโอเพลง &lt;strong&gt;&amp;ldquo;ร้อนของ&amp;rdquo;&lt;/strong&gt; ของดีที่อยากให้ลองฟัง เป็นทีเซอร์ยั่วๆก่อนจะปล่อยของจัดเต็มกันติดๆกับกระสุนเพลงอีกหลายนัด ถือเป็นการประกาศศักดาของการกลับมาครั้งใหม่ที่ร้อนแรงกับอัลบั้ม &amp;ldquo;เรือนแพ ชุดที่ 6&amp;rdquo; ที่จะมีเพลงตามมาให้ฟังกันอีกเพียบแน่นอน&lt;/p&gt;\r\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;0c7610271b0c1deb2ec53f5c3a5a6001.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/0c7610271b0c1deb2ec53f5c3a5a6001.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;c48c93c37d00fdc90bb524ca08cebd58.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/c48c93c37d00fdc90bb524ca08cebd58.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/p&gt;\r\n&lt;h1 style=\\&quot;text-align: center; margin: 0px; padding: 0px; border: 0px; background: #f9f9f9; max-height: 4.8rem; overflow: hidden; font-weight: 400; line-height: 2.4rem; font-family: Roboto,Arial,sans-serif;\\&quot;&gt;&lt;span style=\\&quot;word-break: break-word;\\&quot;&gt;&lt;span style=\\&quot;font-size: large;\\&quot;&gt;TATTOO COLOUR - ร้อนของ [Official MV]&lt;/span&gt;&lt;/span&gt;&lt;/h1&gt;\r\n&lt;div style=\\&quot;text-align: center;\\&quot;&gt;&lt;span style=\\&quot;word-break: break-word;\\&quot;&gt;&lt;span style=\\&quot;font-size: large;\\&quot;&gt;&lt;a href=\\&quot;https://www.youtube.com/watch?v=-eKQcC9dvqM&amp;amp;feature=youtu.be\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener\\&quot; data-saferedirecturl=\\&quot;https://www.google.com/url?q=https://www.youtube.com/watch?v%3D-eKQcC9dvqM%26feature%3Dyoutu.be&amp;amp;source=gmail&amp;amp;ust=1586763524455000&amp;amp;usg=AFQjCNHDxBJ8z6omMIXIaoHfWzOKpyqGmg\\&quot;&gt;https://www.youtube.com/watch?&lt;wbr /&gt;v=-eKQcC9dvqM&amp;amp;feature=youtu.be&lt;/a&gt;&lt;wbr /&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;br /&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=\\&quot;text-align: center; margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot; align=\\&quot;center\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=\\&quot;text-align: center; margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot; align=\\&quot;center\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=\\&quot;text-align: center; margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot; align=\\&quot;center\\&quot;&gt;&lt;span style=\\&quot;color: blue; font-size: 12pt; font-family: \\\'Cordia New\\\',sans-serif;\\&quot;&gt;&lt;a style=\\&quot;color: blue;\\&quot; href=\\&quot;http://www.facebook.com/tattoocolour\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener\\&quot; data-saferedirecturl=\\&quot;https://www.google.com/url?q=http://www.facebook.com/tattoocolour&amp;amp;source=gmail&amp;amp;ust=1586763524455000&amp;amp;usg=AFQjCNGv6Qlvv8cnksGRvrOGpRdmZwjAEA\\&quot;&gt;www.facebook.com/tattoocolour&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=\\&quot;text-align: center; margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot; align=\\&quot;center\\&quot;&gt;&lt;a style=\\&quot;color: blue;\\&quot; href=\\&quot;http://www.facebook.com/smallroommusic\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener\\&quot; data-saferedirecturl=\\&quot;https://www.google.com/url?q=http://www.facebook.com/smallroommusic&amp;amp;source=gmail&amp;amp;ust=1586763524455000&amp;amp;usg=AFQjCNGJ97KCMywe4ssi1ND_c1wxssBztg\\&quot;&gt;&lt;span style=\\&quot;font-size: 12pt; font-family: \\\'Cordia New\\\',sans-serif;\\&quot;&gt;www.facebook.com/&lt;wbr /&gt;smallroommusic&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p style=\\&quot;text-align: center; margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot; align=\\&quot;center\\&quot;&gt;&lt;a style=\\&quot;color: blue;\\&quot; href=\\&quot;http://www.smallroom.co.th\\&quot; target=\\&quot;_blank\\&quot; rel=\\&quot;noopener\\&quot; data-saferedirecturl=\\&quot;https://www.google.com/url?q=http://www.smallroom.co.th&amp;amp;source=gmail&amp;amp;ust=1586763524456000&amp;amp;usg=AFQjCNFtHKKvue-wRb--vO5hkQL2ajr76Q\\&quot;&gt;&lt;span style=\\&quot;font-size: 12pt; font-family: \\\'Cordia New\\\',sans-serif;\\&quot;&gt;www.smallroom.co.th&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p style=\\&quot;text-align: center; margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot; align=\\&quot;center\\&quot;&gt;&lt;span style=\\&quot;font-family: \\\'Cordia New\\\',sans-serif;\\&quot;&gt;&amp;nbsp;&lt;span lang=\\&quot;TH\\&quot;&gt;ขอบคุณจากใจดวง &lt;/span&gt;&amp;ldquo;&lt;span lang=\\&quot;TH\\&quot;&gt;เล็กๆ&lt;/span&gt;&amp;rdquo;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=\\&quot;text-align: center; margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot; align=\\&quot;center\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;f07ebc79a31b3e0453b4837873b9b711.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/f07ebc79a31b3e0453b4837873b9b711.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=\\&quot;text-align: center; margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri,sans-serif;\\&quot; align=\\&quot;center\\&quot;&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;8a9163c14542841792843bf2bda8a218.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/8a9163c14542841792843bf2bda8a218.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/p&gt;', '7d84a36b22024e834b61f283fd799617.png', 'tattoocolour', '2020-04-11 17:00:00', 1, 0, 1),
(26, 'A LITTLE THING PECK PALITCHOKE อัลบั้มใหม่ เป๊ก ผลิตโชค', '&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;97e40002c411d8ff25553a73d52b0291.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/97e40002c411d8ff25553a73d52b0291.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;ถ้าจะมีนักร้องในเมืองไทยสักคนที่การขยับตัวแต่ละที หรือเคลื่อนไหวแต่ละครั้ง มักจะเป็นข่าวให้ฮือฮาได้อยู่เสมอแล้วล่ะก็ หนึ่งในนั้นก็คงหนีไม่พ้นชื่อของ&amp;nbsp;&lt;strong&gt;เป๊ก ผลิตโชค อายนบุตร&lt;/strong&gt;&amp;nbsp;อย่างแน่นอน ซึ่งนักร้องสุดฮอตผู้นี้มักสร้างกระแสฮิตในโซเชียลมีเดีย อย่าง Twitter, Facebook และ Instagram จนติดเทรนด์อันดับ 1 แทบทุกครั้ง และในครั้งนี้ก็เช่นกันกับข่าวล่าสุด&amp;nbsp;&lt;strong&gt;การเปิดตัว The First Digital Album A LITTLE THING PECK PALITCHOKE ก็สามารถก้าวขึ้นไปติดเทรนด์สูงสุดได้ในเวลาอันรวดเร็ว&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;abe59ab8ab1f0c3b3c2e8badfc4e3e6d.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/abe59ab8ab1f0c3b3c2e8badfc4e3e6d.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;br /&gt;A LITTLE THING The First Digital Album PECK PALITCHOKE นั้น&amp;nbsp;ทั้ง เป๊ก ผลิตโชค และโปรดิวเซอร์ แทน-ธารณ ลิปตพัลลภ ได้วางคอนเซ็ปต์ให้เป็นรูปแบบ Minimal เหมือนกับชื่ออัลบั้ม \\&quot;A LITTLE THING เป๊กน้อยชิ้น\\&quot; คือยังคงคุณภาพของงานดนตรี ความละเมียดละไม และความพิถีพิถันในแบบของเป๊ก ผลิตโชค ทั้งการออกแบบสไตล์เพลง รวมถึงเครื่องดนตรีที่เลือกใช้กับอัลบั้มชุดนี้&amp;nbsp;ที่ทั้งสองบอกเป็นเสียงเดียวกัน น้อยแต่มาก โดยใน The First Digital Album A Little Thing นี้ เป๊กได้บอกว่าจะเน้นความเบาสบาย เหมือนแฟนเพลงจะได้พักหูบ้างจากอัลบั้มก่อน ๆ ที่มีอะไรค่อนข้างเยอะและร้องตามได้ยาก แต่สำหรับอัลบั้มนี้ เป๊กบอกว่าจะฟังง่ายขึ้น ร้องง่ายขึ้นแน่นอน&lt;br /&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;c13581b7faa4ba635b80ecf2205bdb3c.jpg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/c13581b7faa4ba635b80ecf2205bdb3c.jpg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;โดยอัลบั้ม A Little Thing จะมีทั้งหมด 5 เพลงด้วยกัน และทุกเพลงจะเชิญทั้งนักร้อง นักแสดง และนางแบบ ที่กำลังฮอตในเมืองไทยมาร่วมเล่น MV กับเป๊ก โดยได้ประเดิมไปแล้วกับ&amp;nbsp;&lt;strong&gt;&lt;a href=\\&quot;https://www.facebook.com/whitemusicrecord/videos/659033798285793/\\&quot; data-was-processed=\\&quot;true\\&quot;&gt;มิวสิกวิดีโอเพลง A Little Thing&amp;nbsp;&lt;/a&gt;&lt;/strong&gt;กับนางแบบสาวสวยที่กำลังมาแรง&amp;nbsp;&lt;strong&gt;ต้าเหนิง - กัญญาวีร์ สองเมือง&amp;nbsp;&lt;/strong&gt;โดยเป๊กรับบทเป็นช่างภาพมืออาชีพ ที่&lt;strong&gt;พอปล่อย MV แรกออกมาก็เรียกเสียงฮือฮาได้เป็นอย่างมาก ทั้งการแสดงของเป๊ก และความสวยสดใสของต้าเหนิง ทำให้ MV ออกมางดงามลงตัวไปหมดจริง ๆ ดนตรีที่ฟังสบาย กับเสียงร้องที่นุ่มนวลสไตล์&amp;nbsp;&lt;/strong&gt;POP / R&amp;amp;B &amp;nbsp;&lt;strong&gt;ของหนุ่มเป๊กที่อบอุ่นชวนเคลิ้มฝัน \\&quot;&lt;/strong&gt;I\\\'m in love with every little thing ของเธอ\\&quot; ที่หมายถึงบางครั้งการดูแลเอาใจใส่กันและกันไม่ใช่เรื่องของความรัก&lt;/p&gt;\n&lt;p&gt;โดยอีก 4 เพลง ในอัลบั้มคือ&amp;nbsp;&lt;strong&gt;ไม่ควรมีคนเดียว (Another you), It\\\'s my Turn, CALL และ Get to know you นั้น จะมีทั้งนักร้อง นักแสดง นางแบบ อย่าง เฌอปราง อารีย์กุล กัปตันวง BNK48, เก้า สุภัสสรา ธนชาต, ออกแบบ ชุติมณฑน์ จึงเจริญสุขยิ่ง และอีก 1 นางเอก MV ปริศนาที่จะมารับบทนางเอก MV ที่เป็ก ผลิตโชค ขออุบเป็นความลับไว้ก่อน&lt;/strong&gt;&amp;nbsp;ส่วนสาวฮอตคนไหนจะรับบทใน MV เพลงอะไรนั้น ก็คงต้องอดใจรอตื่นเต้นไปพร้อม ๆ กัน&lt;/p&gt;\n&lt;p&gt;&lt;img class=\\&quot;img-fluid\\&quot; title=\\&quot;c3cf0379e22cf0ebeec2a4e44b89b256.jpeg\\&quot; src=\\&quot;https://www.example.com/rsc/content/img/c3cf0379e22cf0ebeec2a4e44b89b256.jpeg\\&quot; alt=\\&quot;\\&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;แต่ไม่ว่าอย่างไร&lt;strong&gt;ด้วยความแรงของเป๊ก ผลิตโชคนั้น เพียงแค่ปล่อยเพลง A Little Thing พร้อมกับ MV ออกมาแค่เพลงแรกเท่านั้น ก็ทำยอดขายพุ่งสูงเป็นอันดับ 1 บน iTunes ได้ในทันที&lt;/strong&gt;&amp;nbsp;รวมถึงอีก 2 เพลงในอัลบั้ม ก็ตามติดมาในอันดับ 3 และอันดับ 5 อีกด้วยเช่นกัน&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Credit ข้อมูลภาพ จาก TrueID Music&lt;strong&gt; และ ขอบคุณภาพทั้งหมดจาก&amp;nbsp;&amp;nbsp;White Music Record By GMM GRAMMY&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;#AlittleThing #รักน้อยน้อยแต่รักนานนาน&lt;/p&gt;\n&lt;p&gt;#PeckPaLitChoke #เป๊กผลิตโชค&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'fc4be7deb42332e2c9d80225bbd917a2.png', 'AlittleThing_PeckPaLitChoke', '2020-06-06 17:00:00', 1, 0, 1),
(27, 'a x Campus Tour', '&lt;p&gt;a x Campus Tour พบกันวันอังคารที่ 8 ธันวาคม 2563 ณ โรงเรียนเทศบาล 6 xธานี&lt;/p&gt;', NULL, 'xaAngelCampusTour', '2020-12-05 17:00:00', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `public_relations`
--

CREATE TABLE `public_relations` (
  `pr_id` int(11) NOT NULL,
  `pr_type` tinyint(1) NOT NULL COMMENT '1=cover,2=sidebar sponsor,3=marquee',
  `pr_title` varchar(255) DEFAULT NULL,
  `pr_message` text,
  `pr_image` varchar(100) DEFAULT NULL,
  `pr_image_app` varchar(100) DEFAULT NULL,
  `pr_url` text NOT NULL,
  `pr_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `public_relations`
--

INSERT INTO `public_relations` (`pr_id`, `pr_type`, `pr_title`, `pr_message`, `pr_image`, `pr_image_app`, `pr_url`, `pr_date`, `user_id`) VALUES
(77, 2, 'ad', NULL, 'be494e0bb96a7accac5b7581e61bd488.png', NULL, 'https://www.facebook.com/example', '2019-06-14 14:40:31', 1),
(78, 2, 'ad', NULL, '65a6b9cbd399b008ab28a172bc25bbd9.png', NULL, 'https://www.facebook.com/example', '2019-06-14 14:51:46', 1),
(79, 2, 'สั่งของออนไลน์กับfงี่สุน ส่งตรงถึงหน้าบ้าน', NULL, '711361cca103fd7775d056f1f8d7c931.png', NULL, 'https://shopee.co.th/tangngeesoon', '2019-06-14 14:52:06', 1),
(80, 2, 'Line officialfงี่สุน', NULL, '91eefa241383f6a34b5820cdaeb09847.png', NULL, 'https://lin.ee22bF500w', '2019-06-14 14:52:36', 1),
(81, 2, 'ตั้งงี่สุน', NULL, '9f62cf5bf39ce167ee119637239fb79c.png', NULL, 'https://th-th.facebook.com/tungngeesoon1/', '2019-06-14 14:54:48', 1),
(82, 1, 'a x 2019', NULL, 'd4933f4d7f44e81d2b7987661021ab0d.png', NULL, 'https://www.facebook.com/example', '2019-06-30 16:44:33', 1),
(83, 1, 'a x 2019 2', NULL, NULL, NULL, '#xaangel2019', '2019-06-30 17:00:46', 1),
(89, 3, NULL, 'หากคุณมีใจรักบริการ ขยัน รอบคอบ ซื่อสัตย์ วุฒิ ม3 ขึ้นไป เดินไปพร้อมกันกับเราf ร้านค้าของคนไทย ถูกใจถูกเงิน', NULL, NULL, 'https://www.facebook.com/tungngeesoon1/photos/a.1503193546644490/2106118119685360/?type=3&theater', '2019-07-18 13:06:36', 1),
(92, 3, NULL, 'ดาวน์โหลดแอพ ได้แล้ววันนี้ a x Radio App ฟังเพลงเพราะต่อเนื่องตลอดทั้งวัน', NULL, NULL, '#', '2019-07-18 13:09:32', 1),
(93, 3, NULL, 'ขอเพลงเพราะได้ที่ 042-248242 sms.4221095', NULL, NULL, '#', '2019-07-18 13:10:06', 1),
(100, 4, 'Shopping online กับตั้งงี่สุน ส่งตรงถึงหน้าบ้าน Click เลย', NULL, '90809137fafa214aef2070360a0010e5.png', NULL, 'https://shopee.co.th/tangngeesoon', '2019-09-06 11:04:01', 1),
(101, 1, 'a x 2020', NULL, NULL, NULL, '#xaAngel2020', '2020-03-29 05:14:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `radio_presenter`
--

CREATE TABLE `radio_presenter` (
  `rp_id` int(11) NOT NULL,
  `rp_name` varchar(300) NOT NULL,
  `rp_image` varchar(100) NOT NULL,
  `rp_birthdate` date NOT NULL,
  `rp_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `radio_presenter`
--

INSERT INTO `radio_presenter` (`rp_id`, `rp_name`, `rp_image`, `rp_birthdate`, `rp_status`) VALUES
(1, 'นุ้ย Angel', 'c6bc2fc763daaf02c1bab26f612d77fe.png', '1988-07-29', 0),
(2, 'Soda Angel', '83ead519d34fce4f7bde609b5637cb41.png', '1985-10-07', 0),
(3, 'ต้นหอม Angel', '1d641132636d6dd95998bc537b58c52f.png', '1979-06-15', 0),
(4, 'สมพล Angel', '41b4a81c69bd981bd33c6c46de3a5058.png', '1987-07-14', 0),
(6, 'Got Angel', '949f9a66be7710150a6429e6299a6c56.png', '2019-05-05', 0),
(7, 'ปั๊ป Angel', 'd3dfd2ff52751fea60b0a7e6e64417ba.png', '1989-06-20', 0),
(8, 'บุ๊กโกะ Angel', '2b9aa842e86b57f789b46456d2864d3e.png', '1989-06-22', 0),
(12, 'เดย์ แองเจล', 'c5170428e274885d6422881c8ee5273d.png', '2019-06-01', 1),
(13, 'เต้ แองเจล', 'c93c58fd5a5241b5d9aa4454fed8e521.png', '2019-06-01', 1),
(14, 'บิ๊ก แองเจล', '02d59ef6ab02d5093566b175fd910d39.png', '2019-06-01', 1),
(15, 'บอส แองเจล', '620b4c4497fc27c4861cfa6184fd9c1d.png', '2019-06-01', 1),
(16, 'โดม่อน แองเจล', 'd6f27162bd4295f3beaa5ec1f3711ca6.png', '2019-06-01', 1),
(17, 'มาย แองเจล', '09b1c29a635acb0e84a868e121e38c6a.png', '2019-06-01', 1),
(18, 'น๊อกซ์ แองเจล', 'fd6b3dd2986bf46a0186f189fa002330.png', '1987-01-20', 1),
(19, 'กอฟ แองเจิ้ล', 'a9c8b72b1f4e3347c1653f92bcad4c5e.png', '1997-12-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `radio_program`
--

CREATE TABLE `radio_program` (
  `rdo_program_id` int(11) NOT NULL,
  `rdo_program_start` date NOT NULL,
  `rdo_program_end` date NOT NULL,
  `rdo_program_time_range` varchar(5) NOT NULL,
  `rdo_program_hour_gap` varchar(2) NOT NULL,
  `radio_id` int(11) NOT NULL COMMENT '1=xaangel, 2=xaangel2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radio_program`
--

INSERT INTO `radio_program` (`rdo_program_id`, `rdo_program_start`, `rdo_program_end`, `rdo_program_time_range`, `rdo_program_hour_gap`, `radio_id`) VALUES
(14, '2020-11-08', '2030-11-08', '6-23', '30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `radio_program_details`
--

CREATE TABLE `radio_program_details` (
  `rdo_program_details_id` int(11) NOT NULL,
  `rdo_program_id` int(11) NOT NULL,
  `rdo_program_details_day` tinyint(1) NOT NULL,
  `rdo_program_details_time_start` time NOT NULL,
  `rdo_program_details_time_end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radio_program_details`
--

INSERT INTO `radio_program_details` (`rdo_program_details_id`, `rdo_program_id`, `rdo_program_details_day`, `rdo_program_details_time_start`, `rdo_program_details_time_end`) VALUES
(285, 14, 1, '06:00:00', '09:29:00'),
(286, 14, 2, '06:00:00', '09:29:00'),
(287, 14, 3, '06:00:00', '09:29:00'),
(288, 14, 4, '06:00:00', '09:29:00'),
(289, 14, 5, '06:00:00', '09:29:00'),
(290, 14, 1, '09:30:00', '11:59:00'),
(291, 14, 2, '09:30:00', '11:59:00'),
(292, 14, 3, '09:30:00', '11:59:00'),
(293, 14, 4, '09:30:00', '11:59:00'),
(294, 14, 5, '09:30:00', '11:59:00'),
(295, 14, 1, '12:00:00', '16:59:00'),
(296, 14, 2, '12:00:00', '16:59:00'),
(297, 14, 3, '12:00:00', '16:59:00'),
(298, 14, 4, '12:00:00', '16:59:00'),
(299, 14, 5, '12:00:00', '16:59:00'),
(300, 14, 1, '17:00:00', '22:59:00'),
(301, 14, 2, '17:00:00', '22:59:00'),
(302, 14, 3, '17:00:00', '22:59:00'),
(303, 14, 4, '17:00:00', '22:59:00'),
(304, 14, 5, '17:00:00', '22:59:00'),
(305, 14, 0, '06:00:00', '16:59:00'),
(306, 14, 0, '17:00:00', '22:59:00'),
(307, 14, 6, '06:00:00', '11:59:00'),
(308, 14, 6, '12:00:00', '16:59:00'),
(309, 14, 6, '17:00:00', '22:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `radio_program_details_radio_presenter`
--

CREATE TABLE `radio_program_details_radio_presenter` (
  `rp_id` int(11) NOT NULL,
  `rdo_program_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radio_program_details_radio_presenter`
--

INSERT INTO `radio_program_details_radio_presenter` (`rp_id`, `rdo_program_details_id`) VALUES
(3, 36),
(3, 37),
(3, 47),
(3, 59),
(3, 112),
(4, 26),
(4, 38),
(4, 39),
(4, 40),
(4, 47),
(4, 59),
(7, 109),
(12, 129),
(12, 130),
(12, 131),
(12, 132),
(12, 133),
(12, 285),
(12, 286),
(12, 287),
(12, 288),
(12, 289),
(13, 290),
(13, 291),
(13, 292),
(13, 293),
(13, 294),
(14, 163),
(14, 164),
(14, 175),
(14, 178),
(14, 194),
(14, 195),
(14, 196),
(14, 197),
(14, 201),
(14, 202),
(14, 203),
(14, 204),
(14, 205),
(14, 212),
(14, 213),
(14, 214),
(14, 215),
(14, 216),
(14, 223),
(14, 224),
(14, 225),
(14, 226),
(14, 227),
(14, 234),
(14, 235),
(14, 236),
(14, 237),
(14, 238),
(14, 245),
(14, 246),
(14, 247),
(14, 248),
(14, 254),
(14, 256),
(14, 257),
(14, 258),
(14, 259),
(14, 265),
(14, 276),
(14, 295),
(14, 296),
(14, 297),
(14, 298),
(14, 299),
(14, 308),
(15, 144),
(15, 145),
(15, 146),
(15, 147),
(15, 148),
(15, 149),
(15, 150),
(15, 162),
(15, 163),
(15, 164),
(15, 165),
(16, 152),
(16, 154),
(16, 211),
(16, 222),
(16, 233),
(16, 244),
(16, 253),
(16, 264),
(16, 306),
(18, 151),
(18, 153),
(18, 155),
(18, 162),
(18, 165),
(18, 305),
(18, 307),
(18, 309),
(19, 189),
(19, 190),
(19, 191),
(19, 192),
(19, 193),
(19, 198),
(19, 200),
(19, 206),
(19, 207),
(19, 208),
(19, 209),
(19, 210),
(19, 217),
(19, 218),
(19, 219),
(19, 220),
(19, 221),
(19, 228),
(19, 229),
(19, 230),
(19, 231),
(19, 232),
(19, 239),
(19, 240),
(19, 241),
(19, 242),
(19, 243),
(19, 249),
(19, 250),
(19, 251),
(19, 252),
(19, 255),
(19, 260),
(19, 261),
(19, 262),
(19, 263),
(19, 266),
(19, 300),
(19, 301),
(19, 302),
(19, 303),
(19, 304);

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `artist_name_map` varchar(2550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_id`, `song_name`, `artist_name_map`) VALUES
(4, 'ความรัก', 'Bodyslam'),
(5, 'ขอบฟ้า', 'Bodyslam'),
(7, 'แค่คนโทรผิด', 'เป๊ก ผลิตโชค Feat อ๊อฟ ปองศักดิ์, ไอซ์ ศรันยู'),
(10, 'ใจน้อย', 'AB Normal'),
(11, 'I don\'t wanna miss a thing', 'Aerosmith'),
(12, 'หนาว', 'Clash'),
(13, '21 Guns', 'Green Day'),
(14, 'Wake me up when September ends', 'Green Day'),
(15, 'In the end', 'Linkin Park'),
(16, 'Numb', 'Linkin Park'),
(17, 'Someday', 'Nickelback'),
(18, 'แชร์', 'Potato'),
(20, 'โอ๊ยๆ', 'เบญ ชลาทิศ'),
(22, 'คนมันรัก', 'ไอซ์ ศรันยู'),
(23, 'เจ็บหัวใจ', 'เสก โลโซ'),
(25, 'ห้ามใจ', 'Bodyslam'),
(26, 'ความรัก2', 'Bodyslam Feat เสก โลโซ, Clash'),
(28, 'เหงา', 'ป๊อบ Pongkun Feat เป๊ก ผลิตโชค'),
(29, 'คบไม่ได้', 'พี่ป้าง นครินทร์'),
(32, 'ไม่แข่งยิ่งแพ้', 'เบิร์ด ธงไชย'),
(34, 'อย่าทำอย่างนี้ไม่ว่ากับใคร..เข้าใจไหม', 'เบิร์ด ธงไชย'),
(38, 'เจ็บจนพอ', 'Wanyai'),
(39, 'พอเถอะ', 'MEAN'),
(40, 'ไม่อยากให้กลับ', 'เป๊ก ผลิตโชค Feat Hollaphonic'),
(41, 'Lost', 'Aliz'),
(42, 'สำคัญอยู่ไหม', 'AIM SATIDA'),
(43, 'ครึ่งฝัน', 'Dak Rock Rider'),
(44, 'เสียงขอร้องของคนเสียใจ', 'Dome Pakorn Lam'),
(45, 'อย่าให้ใครรู้ (something)', 'คชา นนทนันท์'),
(46, 'ทำไมๆ (why?)', 'ONEONE'),
(47, 'ผู้โชคดี', 'Stamp'),
(48, 'ในฐานะอะไรก็ได้', 'SIRPOPPA Feat P-HOT'),
(49, 'ครัวซองอัลมอนด์', 'Season Five Feat Stamp, Fongbeer'),
(50, 'ศัลยกรรมไม่ได้ (UNMAKABLE)', 'FYMME Feat KANGSOMEKS, SIRPOPPA'),
(51, 'RADAR', 'BURIN Feat TWOPEE Southside'),
(52, 'หลอกเก่ง', 'ชบา Feat Kob Flat Boy, Bank Smith'),
(53, 'ถ้าฉันเป็นเขา', 'INDIGO'),
(54, 'ปลาบนฟ้า', 'getsunova'),
(55, 'ฉันเคย', 'GLISS'),
(56, 'ลืมไป', 'Wanyai Feat ปู่จ๋าน ลองไมค์'),
(57, 'รางวัลปลอบใจ', 'ส้ม มารี Feat Lazyloxy'),
(58, 'ขึ้นมาบนรถ (GET INTO THE CAR)', 'MARSHA Feat POLYCAT'),
(59, 'เรื่องชั่วคราว', 'Aliz'),
(60, 'รอหรือพอ (Stay)', 'INK WARUNTORN'),
(61, 'แค่นี้...พอ (Present)', 'The Pakinson'),
(62, 'อย่าพูดเลย (ดีกว่า)', 'Sweet Mullet'),
(63, 'ไม่แก่ตาย', 'Bodyslam Feat JoeyBoy'),
(64, 'เสี่ยว', 'Ammy The Bottom Blues Feat Na Polycat'),
(65, 'เรา', 'Cocktail'),
(66, 'กรรม', 'ป้าง นครินทร์'),
(67, 'มีแฟนแล้วก็จะรอ', 'PATTIE Feat LIPTA'),
(68, 'หน้าที่ของความรัก (Mission)', 'PAUSE Feat เล็ก พงษธร'),
(69, 'คนที่ใช่ไม่ต้องพยายาม', 'BEAN NAPASON'),
(70, 'ความสุขของเธอ', 'MEAN'),
(71, 'มาตรฐานสูง', 'Marc Tachapon'),
(72, 'อย่างเดิมได้ไหม', 'ต้น ธนษิต'),
(73, 'ภาวนา', 'MEYOU'),
(74, 'ทีมรอเธอ', 'Three Man Down'),
(75, 'กอดได้ไหม', 'ETC'),
(76, 'นี่ฉันเอง', 'LIPTA Feat Kob Flat Boy'),
(77, 'ยังจำได้ไหม', 'Scrubb'),
(78, 'รักติดไซเรน (My Ambulance)', 'ไอซ์ พาริส Feat แพรวา ณิชาภัทร'),
(79, 'ไม่อยากเหงาแล้ว', 'INK WARUNTORN Feat MEYOU'),
(80, 'Lonely Night', 'เป๊ก ผลิตโชค'),
(81, 'วินาทีสุดท้าย', 'THE DRIVE Feat น้ำ Aliz'),
(82, 'เข็มนาฬิกา', 'Alyn'),
(83, 'ดวงใจ', 'PALMY'),
(84, 'วาฬเกยตื้น', 'GUNGUN'),
(85, 'แผล', 'INDIGO'),
(86, '1%', 'Stamp'),
(87, 'พักก่อน', 'Milli'),
(88, 'ดี๊ดี', 'Jaylerr x Paris'),
(89, 'เลือกคนที่เขารักเรา', 'Three Man Down'),
(90, 'คิด (แต่ไม่) ถึง', 'Tilly Birds'),
(91, 'นิโคติน', 'Mirrr'),
(92, 'พูดลาสักคำ', 'The Parkinson'),
(93, 'อย่าหายไปไหนอีกเลย', 'TWOPEE Southside'),
(94, 'OK', 'AB Normal Feat Aliz'),
(95, 'ดี๊ดี', 'Jaylerr Feat Paris'),
(96, '200', 'GOLF'),
(97, 'คนเราจะแอบรักใครสักคนได้นานแค่ไหน', 'rooftop Feat AUTTA'),
(98, 'กลัวเครื่องบิน', 'ILLSLICK Feat PALMY'),
(99, 'คั่นกู (เพลงประกอบซีรีส์ เพราะเราคู่กัน)', 'ไบรท์ วชิรวิชญ์'),
(100, 'เปงเคียด', 'wonderframe Feat spidermei'),
(101, 'หรือฉันคิดไปเอง', 'Zom Marie'),
(102, 'คิดถึงแต่', 'BOWKYLION'),
(103, 'ลม', 'หนุ่ม กะลา'),
(104, 'ไร้สถานะ', 'เบล สุพล'),
(105, 'แสงเดียว', 'Wanyai'),
(106, 'กอดในใจ', 'Bellkin Feat Jaylerr'),
(107, 'ลืมว่าต้องลืม', 'getsunova'),
(108, 'คนข้างๆที่รักเธอ', 'นนท์ ธนนท์'),
(109, 'Goodnight', 'Aliz'),
(110, 'A Little Thing', 'เป๊ก ผลิตโชค'),
(111, 'ร้องไห้เพราะคนโง่', 'GUNGUN'),
(112, 'ความหมาย', 'Bodyslam'),
(113, 'เริ่มกลัว (Panic)', 'fellow fellow'),
(114, 'คนอยู่ไกลไม่มีสิทธิ์', 'sdf Feat ลำเพลิน วงศกร'),
(115, 'รักให้ตาย', 'klear'),
(116, 'เงา', 'Wanyai'),
(117, 'คงคา', 'BOWKYLION'),
(118, 'ฝันถึงแฟนเก่า', 'Three Man Down'),
(119, 'จำเก่ง', 'F.HERO Feat Tilly Birds'),
(120, 'ยิ่งใกล้ยิ่งไม่รู้จัก', 'ว่าน ธนกฤต'),
(121, 'มันดีกว่าที่คิด', 'สิงโต นำโชค'),
(122, 'ใส่ใจแค่ได้มอง', 'Gx2'),
(123, 'แล้วไง', 'Copter'),
(124, 'ลบไม่ได้ช่วยให้ลืม (Erase)', 'INK WARUNTORN'),
(125, 'CALL', 'เป๊ก ผลิตโชค'),
(126, 'กะด้อกะเดี้ย', 'wonderframe Feat เต้ย อภิวัฒน์, ลำไย ไหทองคำ'),
(127, 'โลมาไม่ใช่ปลา', 'NANA'),
(128, 'ให้ความลับมันตายไปกับตัวฉัน', 'klear'),
(129, 'ตามตะวัน', 'หนุ่ม กะลา Feat แอ๊ด คาราบาว'),
(130, 'ยังคู่กัน (Still Together)', 'ไบรท์ วชิรวิชญ์ Feat วิน เมธวิน'),
(131, 'ไม่เข้าท่า', 'Bodyslam'),
(132, 'ไม่มีไม่ไหว', 'INDIGO'),
(133, 'ยิ้มมา', 'BOWKYLION'),
(134, 'อย่างน้อยก็มากพอ', 'getsunova Feat น้อย Pru'),
(135, 'อยากเป็นลูกเขย', 'SOPHANA Feat TJAME UNO, แบกื  BIGYAI'),
(136, 'มาโซคิสม์ (Masochism)', 'Mirrr'),
(137, 'สุดปัง', 'Milli'),
(138, 'นอนไม่หลับ (THE REMAKE)', 'Three Man Down'),
(139, 'ไม่ควรมีคนเดียว (Another you)', 'เป๊ก ผลิตโชค'),
(140, 'รองช้ำ', 'DTK BOY BAND'),
(141, 'Melbourne', 'Morvasu Feat TangBadVoice'),
(142, 'ถ้าเขาจะรัก (ยืนเฉยๆเขาก็รัก)', 'First Anuwat'),
(143, 'ยังไงก็ต้องไหว (It\'s Alright)', 'The Mousses'),
(144, 'ภาพลวงตา', 'Aliz'),
(145, '559 (Five-Fifty Nine)', 'TRINITY'),
(146, 'วอแว', 'War Wanarat'),
(147, 'It’s my turn', 'เป๊ก ผลิตโชค'),
(148, 'คนนั้นต้องเป็นเธอ', 'วิน เมธวิน'),
(149, 'อีกนานไหม', 'หนุ่ม กะลา'),
(150, 'Happy Wife Happy Life', 'MVL Feat Mindset, F.HERO'),
(151, 'ขวัญเอยขวัญมา', 'PALMY'),
(152, 'คำถามจากคนเก่า', 'นนท์ ธนนท์'),
(153, 'เดลิเวอรี่', 'Labanoon'),
(154, 'GET TO KNOW YOU', 'เป๊ก ผลิตโชค'),
(155, 'แฟนใหม่หน้าคุ้น', 'Maiyarap Feat Milli'),
(156, 'กีดกัน (Skyline)', 'Billkin'),
(157, 'You are the one', 'เป๊ก ผลิตโชค'),
(158, 'ดึงดัน', 'Cocktail Feat ตั๊ก ศิริพร อยู่ยอด'),
(159, 'ไปไม่ถึง', 'BIG ASS X WANYAi'),
(160, 'ก่อนนอนคืนนี้', 'YOUNGOHM'),
(161, 'ก้มต่ำ', 'Mindset'),
(162, 'ตายเปล่า', 'Labanoon Feat GUNGUN'),
(163, 'พี่ไม่หล่อลวง', 'BamBam'),
(164, 'ไหวอยู่ (แต่ก็รู้สึก)', 'First Anuwat'),
(165, 'ยิ้มอ่อนและมองบน', 'Zom Marie'),
(166, 'Undo', 'POP PONGKOOL Feat wonderframe'),
(167, 'อยากเริ่มต้นใหม่กับคนเดิม', 'INK WARUNTORN'),
(168, 'เก็บทรงไม่อยู่', 'VANGOE Feat DIAMOND MQT'),
(169, 'ทำนองที่มีเธอ', 'Potato'),
(170, 'ถ้าเธอรักฉันจริง', 'Three Man Down'),
(171, 'เกิดมาเพื่ออกหัก', 'แจ็ค แฟนฉัน'),
(172, 'มันดีเลย', 'เป๊ก ผลิตโชค Feat PEARWAH, Billkin, PP');

-- --------------------------------------------------------

--
-- Table structure for table `song_artist`
--

CREATE TABLE `song_artist` (
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `is_lead_artist` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `song_artist`
--

INSERT INTO `song_artist` (`song_id`, `artist_id`, `is_lead_artist`) VALUES
(10, 18, 1),
(11, 13, 1),
(25, 10, 1),
(38, 26, 1),
(39, 32, 1),
(40, 1, 1),
(40, 28, 0),
(41, 50, 1),
(42, 29, 1),
(43, 49, 1),
(44, 47, 1),
(45, 45, 1),
(46, 48, 1),
(47, 37, 1),
(48, 30, 1),
(48, 31, 0),
(49, 37, 0),
(49, 53, 1),
(49, 54, 0),
(50, 30, 0),
(50, 55, 1),
(50, 56, 0),
(51, 33, 1),
(51, 34, 0),
(52, 57, 1),
(52, 58, 0),
(52, 59, 0),
(53, 60, 1),
(54, 61, 1),
(55, 36, 1),
(56, 26, 1),
(56, 62, 0),
(57, 63, 1),
(57, 64, 0),
(58, 65, 1),
(58, 66, 0),
(59, 50, 1),
(60, 42, 1),
(61, 67, 1),
(62, 68, 1),
(63, 10, 1),
(63, 71, 0),
(64, 69, 1),
(64, 70, 0),
(65, 72, 1),
(66, 73, 1),
(67, 74, 1),
(67, 75, 0),
(68, 76, 1),
(68, 77, 0),
(69, 78, 1),
(70, 32, 1),
(71, 79, 1),
(72, 80, 1),
(73, 81, 1),
(74, 82, 1),
(75, 83, 1),
(76, 58, 0),
(76, 75, 1),
(77, 85, 1),
(78, 86, 1),
(78, 87, 0),
(79, 42, 1),
(79, 81, 0),
(80, 1, 1),
(81, 88, 1),
(81, 89, 0),
(82, 90, 1),
(83, 91, 1),
(84, 92, 1),
(85, 60, 1),
(86, 37, 1),
(87, 94, 1),
(89, 82, 1),
(90, 93, 1),
(91, 96, 1),
(92, 95, 1),
(93, 34, 1),
(95, 98, 1),
(95, 99, 0),
(96, 100, 1),
(97, 101, 1),
(97, 102, 0),
(98, 91, 0),
(98, 103, 1),
(99, 104, 1),
(100, 105, 1),
(100, 106, 0),
(101, 107, 1),
(102, 44, 1),
(103, 108, 1),
(104, 109, 1),
(105, 26, 1),
(106, 98, 0),
(106, 110, 1),
(107, 61, 1),
(108, 111, 1),
(109, 50, 1),
(110, 1, 1),
(111, 92, 1),
(112, 10, 1),
(113, 112, 1),
(114, 113, 0),
(114, 114, 1),
(115, 115, 1),
(116, 26, 1),
(117, 44, 1),
(118, 82, 1),
(119, 93, 0),
(119, 116, 1),
(120, 117, 1),
(121, 118, 1),
(122, 119, 1),
(123, 120, 1),
(124, 42, 1),
(125, 1, 1),
(126, 105, 1),
(126, 121, 0),
(126, 122, 0),
(127, 123, 1),
(128, 115, 1),
(129, 108, 1),
(129, 124, 0),
(130, 104, 1),
(130, 125, 0),
(131, 10, 1),
(132, 60, 1),
(133, 44, 1),
(134, 61, 1),
(134, 126, 0),
(135, 127, 1),
(135, 128, 0),
(135, 129, 0),
(136, 96, 1),
(137, 94, 1),
(138, 82, 1),
(139, 1, 1),
(140, 130, 1),
(141, 131, 1),
(141, 132, 0),
(142, 133, 1),
(143, 134, 1),
(144, 50, 1),
(145, 135, 1),
(146, 136, 1),
(147, 1, 1),
(148, 125, 1),
(149, 108, 1),
(150, 116, 0),
(150, 137, 1),
(150, 138, 0),
(151, 91, 1),
(152, 111, 1),
(153, 139, 1),
(154, 1, 1),
(155, 94, 0),
(155, 140, 1),
(156, 141, 1),
(157, 1, 1),
(158, 72, 1),
(158, 142, 0),
(159, 143, 1),
(160, 144, 1),
(161, 138, 1),
(162, 92, 0),
(162, 139, 1),
(163, 145, 1),
(164, 133, 1),
(165, 107, 1),
(166, 105, 0),
(166, 146, 1),
(167, 42, 1),
(168, 147, 1),
(168, 148, 0),
(169, 3, 1),
(170, 82, 1),
(171, 149, 1),
(172, 1, 1),
(172, 141, 0),
(172, 150, 0),
(172, 151, 0);

-- --------------------------------------------------------

--
-- Table structure for table `top_chart`
--

CREATE TABLE `top_chart` (
  `top_chart_id` int(11) NOT NULL,
  `top_chart_date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_chart`
--

INSERT INTO `top_chart` (`top_chart_id`, `top_chart_date`, `user_id`) VALUES
(16, '2019-09-29', 1),
(17, '2020-03-29', 1),
(18, '2020-04-05', 1),
(19, '2020-04-12', 1),
(20, '2020-04-19', 1),
(21, '2020-04-26', 1),
(22, '2020-05-03', 1),
(23, '2020-05-10', 1),
(24, '2020-05-17', 1),
(25, '2020-05-24', 1),
(26, '2020-05-31', 1),
(27, '2020-06-07', 1),
(28, '2020-06-14', 1),
(29, '2020-06-21', 1),
(30, '2020-06-28', 1),
(31, '2020-07-05', 1),
(32, '2020-07-12', 1),
(33, '2020-07-19', 1),
(34, '2020-07-26', 1),
(35, '2020-08-02', 1),
(36, '2020-08-09', 1),
(37, '2020-08-16', 1),
(38, '2020-08-23', 1),
(39, '2020-08-30', 1),
(40, '2020-09-06', 1),
(41, '2020-09-13', 1),
(42, '2020-09-20', 1),
(43, '2020-09-27', 1),
(44, '2020-10-04', 1),
(45, '2020-10-11', 1),
(46, '2020-10-18', 1),
(47, '2020-10-25', 1),
(48, '2020-11-01', 1),
(49, '2020-11-08', 1),
(50, '2020-11-15', 1),
(51, '2020-11-22', 1),
(52, '2020-11-29', 1),
(53, '2020-12-06', 1),
(54, '2020-12-13', 1),
(55, '2020-12-20', 1),
(56, '2020-12-27', 1),
(57, '2021-01-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `top_chart_song`
--

CREATE TABLE `top_chart_song` (
  `top_chart_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `song_order` int(11) NOT NULL,
  `last_week_order` int(11) DEFAULT NULL,
  `on_chart_week_number` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_chart_song`
--

INSERT INTO `top_chart_song` (`top_chart_id`, `song_id`, `song_order`, `last_week_order`, `on_chart_week_number`) VALUES
(16, 53, 15, 9, '15 (No.1 : 4 Wks.)'),
(16, 57, 11, 15, '14'),
(16, 59, 2, 1, '13 (No.1 : 2 Wks.)'),
(16, 64, 19, 13, '10'),
(16, 65, 8, 2, '9'),
(16, 68, 4, 5, '8'),
(16, 69, 17, 12, '7'),
(16, 71, 10, 3, '6'),
(16, 72, 3, 4, '6'),
(16, 73, 14, 11, '6'),
(16, 74, 7, 6, '6'),
(16, 75, 18, 18, '4'),
(16, 76, 12, 8, '4'),
(16, 77, 13, 14, '4'),
(16, 78, 6, 16, '3'),
(16, 79, 5, 10, '3'),
(16, 80, 1, 7, '3'),
(16, 81, 16, 20, '2'),
(16, 82, 9, 19, '2'),
(16, 83, 20, NULL, '1(NEW)'),
(17, 84, 8, NULL, '1'),
(17, 85, 4, 5, '2'),
(17, 86, 3, 1, '6'),
(17, 87, 2, 2, '4'),
(17, 89, 5, 4, '3'),
(17, 90, 6, 8, '2'),
(17, 91, 7, NULL, '1'),
(17, 92, 9, 6, '3'),
(17, 93, 10, 7, '6'),
(17, 95, 1, 2, '6'),
(18, 84, 7, 8, '2'),
(18, 85, 2, 4, '3'),
(18, 86, 8, 3, '7'),
(18, 87, 1, 2, '5'),
(18, 89, 3, 5, '2'),
(18, 90, 5, 6, '3'),
(18, 91, 6, 7, '2'),
(18, 95, 4, 1, '7'),
(18, 97, 9, NULL, '1'),
(18, 98, 10, NULL, '1'),
(19, 84, 3, 7, '3'),
(19, 85, 1, 2, '4'),
(19, 87, 6, 1, '6'),
(19, 89, 2, 3, '3'),
(19, 90, 4, 5, '4'),
(19, 91, 9, 6, '3'),
(19, 95, 8, 4, '8'),
(19, 97, 7, 9, '2'),
(19, 98, 5, 10, '2'),
(19, 100, 10, NULL, '1'),
(20, 84, 2, 3, '4'),
(20, 85, 1, 1, '5'),
(20, 87, 7, 6, '7'),
(20, 89, 3, 2, '4'),
(20, 90, 6, 4, '5'),
(20, 91, 9, 9, '4'),
(20, 95, 10, 8, '9'),
(20, 97, 8, 7, '3'),
(20, 98, 4, 5, '3'),
(20, 101, 5, NULL, '1'),
(21, 84, 1, 2, '5'),
(21, 85, 3, 1, '6'),
(21, 87, 10, 7, '8'),
(21, 89, 6, 3, '5'),
(21, 90, 2, 6, '6'),
(21, 91, 9, 9, '5'),
(21, 98, 5, 4, '4'),
(21, 101, 4, 5, '2'),
(21, 102, 7, NULL, '1'),
(21, 103, 8, NULL, '1'),
(22, 84, 2, 1, '6'),
(22, 85, 6, 3, '7'),
(22, 90, 1, 2, '7'),
(22, 98, 8, 5, '5'),
(22, 101, 3, 3, '3'),
(22, 102, 4, 7, '2'),
(22, 103, 5, 8, '2'),
(22, 104, 10, NULL, '1'),
(22, 105, 9, NULL, '1'),
(22, 106, 7, NULL, '1'),
(23, 84, 3, 2, '7'),
(23, 90, 5, 1, '8'),
(23, 99, 6, NULL, '1'),
(23, 101, 1, 3, '4'),
(23, 102, 4, 4, '3'),
(23, 103, 2, 5, '3'),
(23, 104, 9, 10, '2'),
(23, 105, 8, 9, '10'),
(23, 106, 7, 7, '2'),
(23, 107, 10, NULL, '1'),
(24, 84, 5, 3, '8'),
(24, 90, 8, 6, '9'),
(24, 99, 3, 6, '2'),
(24, 101, 1, 1, '5'),
(24, 102, 9, 5, '4'),
(24, 103, 2, 2, '3'),
(24, 104, 4, 9, '3'),
(24, 107, 7, 10, '2'),
(24, 108, 6, NULL, '1'),
(24, 109, 10, NULL, '1'),
(25, 84, 7, 5, '9'),
(25, 90, 9, 8, '10'),
(25, 99, 1, 3, '3'),
(25, 101, 2, 1, '6'),
(25, 102, 10, 9, '5'),
(25, 103, 5, 2, '4'),
(25, 104, 3, 4, '4'),
(25, 107, 6, 7, '3'),
(25, 108, 4, 6, '2'),
(25, 109, 8, 10, '2'),
(26, 99, 2, 1, '4'),
(26, 101, 6, 2, '7'),
(26, 102, 8, 10, '6'),
(26, 103, 1, 5, '5'),
(26, 104, 5, 3, '5'),
(26, 107, 4, 6, '4'),
(26, 108, 3, 4, '3'),
(26, 109, 7, 8, '3'),
(26, 110, 10, NULL, '1'),
(26, 111, 9, NULL, '1'),
(27, 99, 4, 2, '5'),
(27, 101, 9, 6, '8'),
(27, 103, 3, 1, '6'),
(27, 104, 10, 5, '6'),
(27, 107, 2, 4, '5'),
(27, 108, 1, 3, '4'),
(27, 109, 6, 7, '4'),
(27, 110, 5, 10, '2'),
(27, 111, 8, 9, '2'),
(27, 112, 7, NULL, '1'),
(28, 99, 7, 4, '6'),
(28, 101, 10, 9, '9'),
(28, 103, 6, 3, '7'),
(28, 104, 9, 10, '7'),
(28, 107, 2, 2, '6'),
(28, 108, 1, 1, '5'),
(28, 109, 5, 6, '5'),
(28, 110, 3, 5, '3'),
(28, 111, 8, 8, '3'),
(28, 112, 4, 7, '2'),
(29, 103, 7, 6, '8'),
(29, 104, 10, 9, '8'),
(29, 107, 4, 2, '7'),
(29, 108, 1, 1, '5'),
(29, 109, 9, 5, '6'),
(29, 110, 2, 3, '4'),
(29, 111, 6, 8, '4'),
(29, 112, 3, 4, '3'),
(29, 113, 5, NULL, '1'),
(29, 114, 8, NULL, '1'),
(30, 103, 9, 7, '9'),
(30, 107, 3, 4, '8'),
(30, 108, 2, 1, '6'),
(30, 110, 1, 2, '5'),
(30, 111, 4, 6, '5'),
(30, 112, 6, 3, '4'),
(30, 115, 8, NULL, '1'),
(30, 116, 10, NULL, '1'),
(30, 117, 5, NULL, '1'),
(30, 118, 7, NULL, '1'),
(31, 107, 8, 3, '9'),
(31, 108, 2, 2, '7'),
(31, 110, 1, 1, '6'),
(31, 111, 9, NULL, NULL),
(31, 115, 5, 8, '2'),
(31, 116, 6, 10, '2'),
(31, 117, 3, 5, '2'),
(31, 118, 4, 7, '2'),
(31, 119, 10, NULL, '1'),
(31, 120, 7, NULL, '1'),
(32, 107, 10, 8, '10'),
(32, 108, 2, 2, '8'),
(32, 110, 1, 1, '7'),
(32, 115, 6, 5, '3'),
(32, 116, 4, 6, '3'),
(32, 117, 3, 3, '3'),
(32, 118, 7, 4, '3'),
(32, 119, 5, 10, '2'),
(32, 120, 8, 7, '2'),
(32, 121, 9, NULL, '1'),
(33, 108, 3, 2, '9'),
(33, 110, 1, 1, '8'),
(33, 115, 6, 6, '4'),
(33, 116, 7, 4, '4'),
(33, 117, 4, 3, '4'),
(33, 118, 10, 7, '4'),
(33, 119, 2, 5, '3'),
(33, 121, 9, 9, '2'),
(33, 122, 5, NULL, '1'),
(33, 123, 8, NULL, '1'),
(34, 108, 3, 3, '10'),
(34, 110, 2, 1, '9'),
(34, 115, 9, 6, '5'),
(34, 117, 5, 4, '5'),
(34, 118, 8, 10, '5'),
(34, 119, 1, 2, '4'),
(34, 122, 4, 5, '2'),
(34, 123, 7, 8, '2'),
(34, 124, 6, NULL, '1'),
(34, 125, 10, NULL, '1'),
(35, 108, 4, 3, '11'),
(35, 110, 3, 2, '10'),
(35, 118, 9, 8, '5'),
(35, 119, 6, 1, '5'),
(35, 122, 5, 4, '3'),
(35, 124, 2, 6, '2'),
(35, 125, 1, 10, '2'),
(35, 126, 7, NULL, '1'),
(35, 128, 8, NULL, '1'),
(35, 129, 10, NULL, '1'),
(36, 108, 6, 4, '12'),
(36, 110, 4, 3, '11'),
(36, 118, 10, 9, '6'),
(36, 119, 8, 6, '6'),
(36, 122, 3, 5, '4'),
(36, 124, 2, 2, '3'),
(36, 125, 1, 1, '3'),
(36, 126, 5, 7, '2'),
(36, 128, 7, 8, '2'),
(36, 129, 9, 10, '2'),
(37, 108, 7, 6, '13'),
(37, 110, 5, 4, '12'),
(37, 118, 10, 10, '7'),
(37, 119, 9, 8, '7'),
(37, 122, 2, 3, '5'),
(37, 124, 3, 2, '4'),
(37, 125, 1, 1, '4'),
(37, 126, 4, 5, '3'),
(37, 128, 6, 7, '3'),
(37, 129, 8, 9, '3'),
(38, 108, 9, 7, '14'),
(38, 110, 8, 5, '13'),
(38, 119, 10, 9, '8'),
(38, 122, 4, 2, '6'),
(38, 124, 2, 3, '5'),
(38, 125, 1, 1, '5'),
(38, 126, 6, 4, '4'),
(38, 128, 7, 6, '4'),
(38, 130, 5, NULL, '1'),
(38, 131, 3, NULL, '1'),
(39, 108, 10, 9, '15'),
(39, 110, 9, 8, '14'),
(39, 122, 8, 4, '7'),
(39, 124, 1, 2, '6'),
(39, 125, 2, 1, '6'),
(39, 130, 3, 5, '2'),
(39, 131, 4, 3, '2'),
(39, 132, 7, NULL, '1'),
(39, 133, 5, NULL, '1'),
(39, 134, 6, NULL, '1'),
(40, 124, 2, 1, '5'),
(40, 125, 3, 2, '7'),
(40, 130, 1, 3, '3'),
(40, 133, 8, 5, '2'),
(40, 134, 5, 6, '2'),
(40, 135, 7, NULL, '1'),
(40, 136, 4, NULL, '1'),
(40, 137, 9, NULL, '1'),
(40, 138, 10, NULL, '1'),
(40, 139, 6, NULL, '1'),
(41, 124, 8, 2, '6'),
(41, 125, 6, 3, '8'),
(41, 130, 5, 1, '4'),
(41, 133, 10, 8, '3'),
(41, 134, 1, 5, '3'),
(41, 135, 9, 7, '2'),
(41, 136, 2, 4, '2'),
(41, 137, 4, 9, '2'),
(41, 138, 7, 10, '2'),
(41, 139, 3, 6, '2'),
(42, 124, 9, 8, '7'),
(42, 125, 7, 6, '9'),
(42, 130, 10, 5, '5'),
(42, 134, 3, 1, '4'),
(42, 136, 1, 2, '3'),
(42, 137, 4, 4, '3'),
(42, 139, 2, 3, '3'),
(42, 140, 8, NULL, '1'),
(42, 141, 6, NULL, '1'),
(42, 142, 5, NULL, '1'),
(43, 125, 10, 7, '10'),
(43, 134, 9, 3, '5'),
(43, 136, 4, 1, '4'),
(43, 137, 6, 4, '4'),
(43, 139, 1, 2, '4'),
(43, 140, 3, 8, '2'),
(43, 141, 8, 6, '2'),
(43, 142, 2, 5, '2'),
(43, 143, 5, NULL, '1'),
(43, 144, 7, NULL, '1'),
(44, 139, 1, 1, '5'),
(44, 140, 3, 3, '3'),
(44, 142, 2, 2, '3'),
(44, 143, 5, 5, '2'),
(44, 144, 4, 7, '2'),
(44, 145, 10, NULL, '1'),
(44, 146, 9, NULL, '1'),
(44, 147, 8, NULL, '1'),
(44, 148, 6, NULL, '1'),
(44, 149, 7, NULL, '1'),
(45, 139, 2, 1, '6'),
(45, 140, 8, 3, '4'),
(45, 142, 1, 2, '4'),
(45, 144, 9, 4, '3'),
(45, 145, 6, 10, '2'),
(45, 147, 5, 8, '2'),
(45, 148, 10, 6, '2'),
(45, 149, 3, 7, '2'),
(45, 150, 7, NULL, '1'),
(45, 151, 4, NULL, '1'),
(46, 139, 3, 2, '7'),
(46, 142, 2, 1, '5'),
(46, 145, 7, 6, '3'),
(46, 147, 1, 5, '3'),
(46, 149, 5, 3, '3'),
(46, 150, 6, 7, '2'),
(46, 151, 4, 4, '2'),
(46, 152, 10, NULL, '1'),
(46, 153, 9, NULL, '1'),
(46, 154, 8, NULL, '1'),
(47, 139, 9, 3, '8'),
(47, 142, 3, 2, '6'),
(47, 147, 1, 1, '4'),
(47, 149, 4, 5, '4'),
(47, 150, 10, 6, '3'),
(47, 151, 2, 4, '3'),
(47, 152, 7, 10, '2'),
(47, 154, 5, 8, '2'),
(47, 155, 6, NULL, '1'),
(47, 156, 8, NULL, '1'),
(48, 142, 10, 3, '7'),
(48, 147, 5, 1, '5'),
(48, 149, 2, 4, '5'),
(48, 151, 1, 2, '4'),
(48, 152, 4, 7, '3'),
(48, 154, 3, 5, '3'),
(48, 155, 7, 6, '2'),
(48, 156, 9, 8, '2'),
(48, 157, 8, NULL, '1'),
(48, 158, 6, NULL, '1'),
(49, 142, 10, 10, '8'),
(49, 147, 7, 5, '6'),
(49, 149, 1, 2, '6'),
(49, 151, 3, 1, '5'),
(49, 152, 4, 4, '4'),
(49, 154, 2, 3, '4'),
(49, 155, 8, 7, '3'),
(49, 156, 9, 9, '3'),
(49, 157, 6, 8, '2'),
(49, 158, 5, 6, '2'),
(50, 149, 5, 1, '7'),
(50, 151, 6, 3, '6'),
(50, 152, 2, 4, '5'),
(50, 154, 1, 2, '5'),
(50, 155, 8, 8, '4'),
(50, 156, 7, 9, '4'),
(50, 157, 4, 6, '3'),
(50, 158, 3, 5, '3'),
(50, 159, 9, NULL, '1'),
(50, 160, 10, NULL, '1'),
(51, 151, 5, 6, '7'),
(51, 152, 2, 2, '6'),
(51, 154, 1, 1, '6'),
(51, 155, 7, 8, '5'),
(51, 156, 6, 7, '5'),
(51, 157, 4, 4, '4'),
(51, 158, 3, 3, '4'),
(51, 159, 8, 9, '2'),
(51, 160, 10, 10, '2'),
(51, 161, 9, NULL, '1'),
(52, 152, 1, 2, '7'),
(52, 154, 5, 1, '7'),
(52, 155, 10, 7, '6'),
(52, 157, 2, 4, '5'),
(52, 158, 3, 3, '5'),
(52, 159, 8, 8, '3'),
(52, 161, 4, 9, '2'),
(52, 162, 9, NULL, '1'),
(52, 163, 7, NULL, '1'),
(52, 164, 6, NULL, '1'),
(53, 152, 3, 1, '8'),
(53, 154, 9, 5, '8'),
(53, 157, 2, 2, '6'),
(53, 158, 4, 3, '6'),
(53, 159, 10, 8, '4'),
(53, 161, 1, 4, '3'),
(53, 162, 7, 9, '2'),
(53, 163, 5, 7, '2'),
(53, 164, 6, 6, '2'),
(53, 165, 8, NULL, '1'),
(54, 152, 5, 3, '9'),
(54, 157, 2, 2, '7'),
(54, 158, 4, 4, '7'),
(54, 161, 1, 1, '4'),
(54, 162, 6, 7, '3'),
(54, 163, 3, 5, '3'),
(54, 164, 7, 6, '3'),
(54, 165, 10, 8, '2'),
(54, 166, 9, NULL, '1'),
(54, 167, 8, NULL, '1'),
(55, 152, 4, 5, '10'),
(55, 157, 1, 2, '8'),
(55, 158, 3, 4, '8'),
(55, 161, 2, 1, '5'),
(55, 162, 9, 6, '4'),
(55, 163, 5, 3, '4'),
(55, 166, 7, 9, '2'),
(55, 167, 6, 8, '2'),
(55, 168, 10, NULL, '1'),
(55, 169, 8, NULL, '1'),
(56, 152, 6, 4, '11'),
(56, 157, 3, 1, '9'),
(56, 158, 1, 3, '9'),
(56, 161, 4, 2, '6'),
(56, 163, 2, 5, '5'),
(56, 166, 9, 7, '3'),
(56, 167, 5, 6, '3'),
(56, 168, 10, 10, '2'),
(56, 169, 8, 8, '2'),
(56, 170, 7, NULL, '1'),
(57, 152, 9, 6, '12'),
(57, 157, 5, 3, '10'),
(57, 158, 4, 1, '10'),
(57, 161, 2, 4, '7'),
(57, 163, 1, 2, '6'),
(57, 166, 7, 9, '4'),
(57, 167, 3, 5, '4'),
(57, 170, 6, 7, '2'),
(57, 171, 10, NULL, '1'),
(57, 172, 8, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `user_level` tinyint(1) NOT NULL DEFAULT '1',
  `active_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `email`, `phone`, `profile_image`, `user_level`, `active_status`) VALUES
(1, 'admin', '$2y$10$npUCJL923y9Imk1pZKHqRO3MrIJTkfWx.DIMHgWeh7eLGOFMFz/eK', 'xa Admin', 'admin@example.com', '0000000000', 'user.png', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `public_relations`
--
ALTER TABLE `public_relations`
  ADD PRIMARY KEY (`pr_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `radio_presenter`
--
ALTER TABLE `radio_presenter`
  ADD PRIMARY KEY (`rp_id`);

--
-- Indexes for table `radio_program`
--
ALTER TABLE `radio_program`
  ADD PRIMARY KEY (`rdo_program_id`);

--
-- Indexes for table `radio_program_details`
--
ALTER TABLE `radio_program_details`
  ADD PRIMARY KEY (`rdo_program_details_id`);

--
-- Indexes for table `radio_program_details_radio_presenter`
--
ALTER TABLE `radio_program_details_radio_presenter`
  ADD PRIMARY KEY (`rp_id`,`rdo_program_details_id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `song_artist`
--
ALTER TABLE `song_artist`
  ADD PRIMARY KEY (`song_id`,`artist_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `top_chart`
--
ALTER TABLE `top_chart`
  ADD PRIMARY KEY (`top_chart_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `top_chart_song`
--
ALTER TABLE `top_chart_song`
  ADD PRIMARY KEY (`top_chart_id`,`song_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `public_relations`
--
ALTER TABLE `public_relations`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `radio_presenter`
--
ALTER TABLE `radio_presenter`
  MODIFY `rp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `radio_program`
--
ALTER TABLE `radio_program`
  MODIFY `rdo_program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `radio_program_details`
--
ALTER TABLE `radio_program_details`
  MODIFY `rdo_program_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;
--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `top_chart`
--
ALTER TABLE `top_chart`
  MODIFY `top_chart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `public_relations`
--
ALTER TABLE `public_relations`
  ADD CONSTRAINT `public_relations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `song_artist`
--
ALTER TABLE `song_artist`
  ADD CONSTRAINT `song_artist_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `song_artist_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON UPDATE CASCADE;

--
-- Constraints for table `top_chart`
--
ALTER TABLE `top_chart`
  ADD CONSTRAINT `top_chart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `top_chart_song`
--
ALTER TABLE `top_chart_song`
  ADD CONSTRAINT `top_chart_song_ibfk_1` FOREIGN KEY (`top_chart_id`) REFERENCES `top_chart` (`top_chart_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `top_chart_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
