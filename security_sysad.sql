-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 09:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `security_sysad`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL COMMENT 'id บทความ',
  `title` varchar(255) NOT NULL COMMENT 'ชื่อบทความ',
  `body` text DEFAULT NULL COMMENT 'เนื้อหาบทความ',
  `create_ts` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'วันที่เวลาที่สร้างบทความ (auto เมื่อ insert บทความใหม่)',
  `authors_id` int(11) NOT NULL COMMENT 'รหัสผู้แต่ง',
  `updatetime` datetime DEFAULT NULL COMMENT 'วันที่ เวลา ที่ปรับปรุงบทความล่าสุด\nphp function -- date(''YYYY-mm-dd H:i:s'')',
  `publish_sts` char(1) NOT NULL DEFAULT 'N' COMMENT 'N = draft\nY = publish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `create_ts`, `authors_id`, `updatetime`, `publish_sts`) VALUES
(3, 'แชมป์เก่าที่แย่สุดๆ', '\"เป็นแชมป์เก่านะ!คีนใส่ไม่ยั้งจวกลิเวอร์พูลยับเยิน\"  \r\nรอย คีน อดีตยอดมิดฟิลด์ของ แมนฯ ยูไนเต็ด จวก ลิเวอร์พูล แบบรุนแรง โดยบอกว่าพวกเขาเป็นแชมป์เก่าที่แย่สุดๆ แถมยังชี้ว่าถ้า \"หงส์แดง\" ยังมีสภาพแบบนี้ พวกเขาก็ต้องรออีก 30 ปีกว่าที่จะได้แชมป์ลีกอีกหน', '2021-02-08 11:13:03', 2, '2021-02-09 18:12:00', 'Y'),
(6, 'คนที่สิงห์รอคอย', 'โธมัส ทูเคิ่ล ผู้จัดการทีมชาวเยอรมันของ เชลซี ยังคงเดินหน้าสร้างสถิติสวยหรูให้กับ \"สิงโตน้ำเงินคราม\" โดยเขาเป็นกุนซือคนแรกที่เสียประตูจากการคุมสโมสรใน 4 เกมแรกของศึกพรีเมียร์ลีก อังกฤษ ต่อจาก กุส ฮิดดิ้งค์ ที่เคยทำได้เมื่อเดือนกุมภาพันธ์/มีนาคม 2009\r\n     \"สิงห์บลูส์\" สร้างผลงานได้อย่างสุดยอดภายใต้การคุมทัพของ ทูเคิ่ล ที่ได้รับการแต่งตั้งเข้ามาทำงานแทน แฟร้งค์ แลมพาร์ด ซึ่งโดนปลดฟ้าผ่า โดยเขาสามารถนำทีมเก็บชัยชนะ 3 แมตช์ และเสมอ 1 เกม ทำให้ตอนนี้พุ่งขึ้นมาอยู่อันดับ 5 มี 39 แต้ม ตามหลัง ลิเวอร์พูล อันดับ 4 แค่แต้มเดียวเท่านั้น', '2021-02-12 19:50:46', 2, '2021-02-13 02:50:00', 'Y'),
(7, 'อย่าปล่อยมือกัน...', ' ลิเวอร์พูลที่กำลังง่อนแง่นเหมือนเรือยักษ์ใหญ่ไทนาทิคที่กำลังใกล้จะจมลงอยู่มะรอมมะร่อตอนนี้ ต้องการจุดเปลี่ยนในฤดูกาลนี้ให้ได้อีกครั้งอย่างเร่งด่วนและรวดเร็วที่สุดจริงๆ นะครับ และถ้าพวกเขาสามารถทำผลงานได้ดีกับเลสเตอร์ที่เป็นทีมใหญ่เหมือนกันได้ล่ะก็ อาจจะทำให้พวกเขาหาจุดเปลี่ยนนั้นเจอก็ได้ .... แต่กลับกลายเป็นเหมือนกับว่าพวกเขาถลำลึกสู่ก้นทะเลให้เร็วขึ้นกว่าเดิมไปเสียอีก ', '2021-02-14 12:21:51', 2, '2021-02-15 18:11:00', 'Y'),
(8, '“เมสซี่เจ” พร้อมผงาดปีหน้า', 'ปี 2563 อาจไม่ใช่ปีที่น่าจดจำนัก สำหรับ \"ชนาธิป สรงกระสินธ์\" หรือ \"เมสซี่เจ\" หลังจากที่เขาต้องเจอกับอาการบาดเจ็บกล้ามเนื้อถึงสามครั้ง\r\n\r\nครั้งหลังสุด ในเกมกับเอฟซี โตเกียว ในเกมวันที่ 11 พฤศจิกายน ถือเป็นอาการบาดเจ็บครั้งที่ 3 และทำให้เขาต้องสิ้นสุดฤดูกาลในเจลีก ด้วยผลงานที่ทำไป 1 ประตู กับอีก 5 แอสซิสต์\r\n\r\n\"เมสซี่เจ\" บอกด้วยว่า ไปอยู่ญี่ปุ่นมานาน กลับมาเมืองไทยรู้สึกร้อนพอสมควร ตอนนี้ยังไม่ค่อยชินกับอากาศ แต่ก็คงจะปรับตัวไปได้\r\n\r\nกล่าวโดยสรุป ปีหน้าคงจะเป็นปีที่อาจจะเป็นจุดเปลี่ยนสำคัญของชนาธิป ในหลายๆ ด้าน แต่ที่สำคัญที่สุดคือ การลงเล่นให้กับทีมชาติไทย ลุยศึกฟุตบอลโลก 2022 รอบคัดเลือก โซนเอเชีย เชื่อว่าแม้ปี 2020 อาจจะเป็นปีที่ดีไม่สุด สำหรับชนาธิป แต่ปี 2021 ยังมีอนาคตที่สดใสรออยู่ และเชื่อว่า อนาคตที่สดใส ยังรอคอยแข้งรายนี้อยู่ในอนาคต ที่จะเปลี่ยนวงการฟุตบอลไทยไปอีกขั้น', '2021-02-14 12:25:07', 6, '2021-02-12 19:24:00', 'Y'),
(9, 'เรียนรู้จักความพ่ายแพ้ในการแข่งขันให้เป็น', 'ความพ่ายแพ้ในการแข่งขันบางทีนั้นอาจไม่ได้แย่อย่างที่ใครหลายๆ คนคิด เมื่อใดก็ตามที่เราได้สำผัสกับจุดๆ นั้นจงอย่าปล่อยผ่านให้มันสูญเปล่า\r\n\r\nเป็นเรื่องปกติของการแข่งขันเมื่อใดก็ตามที่การแข่งขัน เมื่อมีผู้ชนะ นั้นก็ต้องย่อมมีผู้แพ้ และแน่นอนเสมอก็เช่นกัน หลายๆ คนชื่นชมผู้ชนะ ทุกอย่างมันช่างดูดีสุดยอด น่าจดจำไปสะหมด แล้วผู้แพ้ละมีใครบ้างที่อยากจะเป็นผู้แพ้? จริงๆแล้วบางครั้งความพ่ายแพ้นั้นอาจไม่ได้เลวร้ายอย่างที่ใครหลายๆคนคิด กลับกันการได้เป็นผู้แพ้สะบ้างนี่สิดีเพราะมันอาจจำให้เราได้เรียนรู้อะไรหลายๆ อย่างและพัฒนาไปไกลกว่าผู้ที่ชนะมาโดยตลอดโดยไม่เคยพ่ายแพ้\r\n\r\nความพ่ายแพ้สอนให้เรารู้ถึงจุดอ่อนของตัวเอง สอนให้เราได้รู้ว่าเรานั้นยังต้องแก้ไข ยังต้องมุ่งมั่นและพยายามมากกว่านี้หากต้องการเป็นให้ได้เหนือคู่แข่งขันในสนาม ที่ยิ่งไปกว่านั้นความพ่ายแพ้สอนให้เราไม่ประมาท ความประมาททำให้เราเต็มไปด้วยจุดอ่อนและขาดการเตรียมตัวที่ดี ดังคำกล่าวที่ว่า “เราอาจจะเป็นผู้แข็งแกร่งที่ชนะคู่แข่งหน้าเดิมๆมาโดยตลอด แต่หากประมาทเมื่อใดเราก็อาจจะกลายเป็นผู้แพ้ได้เสมอ”\r\n\r\nอย่างไรก็ตามสำหรับผู้แพ้ ที่มีทัศนคติในผลการแข่งขันด้านนี้ในทิศทางติดลบ พวกเขาไม่มีวันที่จะก้าวข้ามคู่แข่งหรือเอาชนะแม้แต่กระทั่งใจตัวเองได้เลย และสุดท้ายแล้วเมื่อนานวันผ่านไปเมื่อเขาผู้นั้นชินกับความพ่ายแพ้ในการแข่งขันจนกลายเป็นความเฉยชา ทุกการพัฒนาก็จะจบลง', '2021-02-14 12:41:26', 6, '2021-02-16 19:41:00', 'Y'),
(10, 'โซลชาชี้แมนฯยูต้องทุ่มคว้ายอดแข้งหากหวังเทียบทีมลุ้นแชมป์', 'กุนซือทัพปีศาจแดง ยอมรับว่าทีมของเขาต้องการเสริมทัพนักเตะชั้นยอดเพื่อยกระดับลุ้นแชมป์ลีกฤดูกาลหน้า\r\nโอเล กุนนาร์ โซลชา กุนซือของ แมนเชสเตอร์ ยูไนเต็ด ยอมรับว่าทีมต้องเร่งเสริมนักเตะฝีเท้าดีเพื่อยกระดับการลุ้นแชมป์ลีกฤดูกาลหน้า\r\n\r\nทัพปีศาจแดง ปิดฉากฤดูกาลด้วยการคว้าอันดับ 3 ในพรีเมียร์ลีก อีกทั้งเข้าถึงรอบรองชนะเลิศ คาราบาว คัพและเอฟเอ คัพ อีกทั้งยังอยู่ในเส้นทางลุ้นแชมป์ยูโรป้า ลีกที่จะพบเซบีญาในคืนนี้\r\n\r\nถึงอย่างนั้น โซลชา ยอมรับว่าทีมของเขายังขาดคุณภาพในขุมกำลัง ที่ต้องเร่งเสริมทัพหากหวังเข้าใกล้ ลิเวอร์พูล และ แมนเชสเตอร์ ซิตี้', '2021-02-16 10:31:58', 9, '2020-12-30 17:31:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `passwd` varchar(45) CHARACTER SET utf8 NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `penname` varchar(45) CHARACTER SET utf8 NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 NOT NULL,
  `user_group` varchar(1) CHARACTER SET utf8 NOT NULL,
  `images` varchar(250) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `username`, `passwd`, `name`, `penname`, `email`, `user_group`, `images`) VALUES
(1, 'Admin', '0192023a7bbd73250516f069df18b500', 'Admin', 'Admin', 'Admin@gmail.com', 'A', 'default.png'),
(2, '61160020', 'e1fa4897608573211a347b41f41ba624', 'Warakorn Bunhlua', 'RealPetch', 'warakornbunhlau@gmail.com', 'U', 'cool-kid-14.jpg'),
(3, 'Bookach', '67885f8912aa8b0ce19ec2c255292e4a', 'Auksornsat', 'Abookach', 'abookach610@gmail.com', 'U', 'default.png'),
(4, 'TestTest', 'cc03e747a6afbbcbf8be7668acfebee5', 'test', 'test', 'Test@gmail.com', 'U', 'default.png'),
(6, 'sportthai', '953a06f8ac97ef4fcc02bd666043bc74', 'Sport Thai', 'SportThai', 'Test@gmail.com', 'U', 'images.png'),
(7, 'test123', 'cc03e747a6afbbcbf8be7668acfebee5', 'test', 'test', 'Test@gmail.com', 'U', 'football_PNG52759.png'),
(8, 'Test567', 'b6bee90d376e9b82827e77f5613f87d2', 'test567', 'test', 'Test@gmail.com', 'U', 'default.png'),
(9, 'sporteng', '953a06f8ac97ef4fcc02bd666043bc74', 'SportEng', 'EPLSPORT', 'EPL@gmail.com', 'U', 'premier.png'),
(13, 'test1010', 'cc03e747a6afbbcbf8be7668acfebee5', 'test', 'test', 'Test@gmail.com', 'U', 'D-JvWEIU4AAV8aq.jpg'),
(15, 'Test5678', 'f889709b75a5bbc49a3c05281dfe0eee', 'test', 'test5678', 'Test@gmail.com', 'U', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_articles_users_idx` (`authors_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id บทความ', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
