-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023 年 12 月 29 日 09:11
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `tripy`
--

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_character`
--

CREATE TABLE `tbl_character` (
  `Char_Id` int(11) NOT NULL,
  `Character` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_character`
--

INSERT INTO `tbl_character` (`Char_Id`, `Character`) VALUES
(1, '會員'),
(2, '管理員');

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_city`
--

CREATE TABLE `tbl_city` (
  `City_Id` int(11) NOT NULL,
  `City_Name` varchar(5) NOT NULL,
  `City_District` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_city`
--

INSERT INTO `tbl_city` (`City_Id`, `City_Name`, `City_District`) VALUES
(1, '雙北', 1),
(2, '桃園', 1),
(3, '台中', 2),
(4, '南投', 2),
(5, '台南', 3),
(6, '高雄', 3),
(7, '花蓮', 4),
(8, '台東', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_collection`
--

CREATE TABLE `tbl_collection` (
  `Collection_Id` int(11) NOT NULL,
  `Collection_CL` int(11) NOT NULL,
  `Scene` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_collection`
--

INSERT INTO `tbl_collection` (`Collection_Id`, `Collection_CL`, `Scene`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 2, 6),
(4, 2, 10),
(5, 3, 27),
(6, 3, 29),
(7, 4, 14),
(8, 4, 15),
(9, 5, 16),
(10, 5, 17),
(11, 6, 32),
(12, 6, 34),
(13, 7, 23),
(14, 7, 25),
(15, 8, 26),
(16, 8, 30),
(17, 9, 7),
(18, 9, 13),
(19, 10, 31),
(20, 10, 35),
(21, 11, 36),
(23, 12, 37),
(31, 11, 37),
(32, 7, 7),
(38, 27, 5),
(39, 27, 2),
(40, 28, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_collect_list`
--

CREATE TABLE `tbl_collect_list` (
  `CL_Id` int(11) NOT NULL,
  `CL_User` int(11) NOT NULL,
  `CL_Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_collect_list`
--

INSERT INTO `tbl_collect_list` (`CL_Id`, `CL_User`, `CL_Name`) VALUES
(1, 1, '台北景點'),
(2, 1, '桃園的'),
(3, 1, '玩高雄'),
(4, 2, '台中行'),
(5, 2, '南投玩'),
(6, 2, '遊南投'),
(7, 3, '台南超fun'),
(8, 3, '高雄世界'),
(9, 3, '想去的'),
(10, 4, '花蓮趣'),
(11, 4, '台東行'),
(12, 4, '太酷啦'),
(27, 4, '台北'),
(28, 8, '台北行');

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `Comment_Id` int(11) NOT NULL,
  `Comment_Scene` int(11) NOT NULL,
  `Comment_User` int(11) NOT NULL,
  `Comment_Context` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_comment`
--

INSERT INTO `tbl_comment` (`Comment_Id`, `Comment_Scene`, `Comment_User`, `Comment_Context`) VALUES
(1, 37, 4, '他不是學校'),
(2, 37, 4, '值32345'),
(3, 37, 4, '34546578'),
(4, 7, 3, '超好玩'),
(5, 7, 3, '超級好玩'),
(6, 17, 3, '很青青草原'),
(7, 2, 3, '我覺得很好玩!'),
(8, 2, 3, '還不錯玩歐'),
(9, 2, 3, '下次一定'),
(10, 2, 8, 'go'),
(11, 5, 4, '超漂亮'),
(12, 2, 8, 'cool');

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_district`
--

CREATE TABLE `tbl_district` (
  `District_Id` int(11) NOT NULL,
  `District` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_district`
--

INSERT INTO `tbl_district` (`District_Id`, `District`) VALUES
(1, '北'),
(2, '中'),
(3, '南'),
(4, '東');

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_il_user`
--

CREATE TABLE `tbl_il_user` (
  `IL_User_ILId` int(11) NOT NULL,
  `IL_User_UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_il_user`
--

INSERT INTO `tbl_il_user` (`IL_User_ILId`, `IL_User_UserId`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3),
(4, 1),
(4, 4),
(13, 4),
(13, 8);

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_itinerary`
--

CREATE TABLE `tbl_itinerary` (
  `Itinerary_Id` int(11) NOT NULL,
  `Itinerary_IL` int(11) NOT NULL,
  `Scene` int(11) NOT NULL,
  `Itinerary_Day` date NOT NULL,
  `Itinerary_Day_Order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_itinerary`
--

INSERT INTO `tbl_itinerary` (`Itinerary_Id`, `Itinerary_IL`, `Scene`, `Itinerary_Day`, `Itinerary_Day_Order`) VALUES
(1, 1, 1, '2024-04-16', 1),
(2, 1, 2, '2024-04-16', 2),
(3, 1, 3, '2024-04-17', 1),
(4, 1, 4, '2024-04-17', 2),
(5, 2, 31, '2024-05-16', 1),
(13, 4, 16, '2024-08-13', 2),
(14, 4, 17, '2024-08-13', 1),
(15, 4, 18, '2024-08-14', 1),
(16, 4, 19, '2024-08-14', 2),
(17, 5, 26, '2023-12-31', 1),
(18, 5, 27, '2023-12-31', 2),
(19, 5, 28, '2024-01-01', 1),
(20, 5, 29, '2024-01-01', 2),
(21, 4, 31, '2024-08-14', 3),
(51, 13, 5, '2023-12-30', 2),
(52, 13, 2, '2023-12-30', 1),
(53, 13, 11, '2023-12-30', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_itinerary_list`
--

CREATE TABLE `tbl_itinerary_list` (
  `IL_Id` int(11) NOT NULL,
  `IL_Name` varchar(60) NOT NULL,
  `IL_Start` date NOT NULL,
  `IL_End` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_itinerary_list`
--

INSERT INTO `tbl_itinerary_list` (`IL_Id`, `IL_Name`, `IL_Start`, `IL_End`) VALUES
(1, '台北輕旅行', '2024-04-16', '2024-04-17'),
(2, '花蓮行', '2024-05-16', '2024-05-17'),
(3, 'Trip in 台中', '2024-03-30', '2024-03-31'),
(4, '南投行', '2024-08-13', '2024-08-14'),
(5, '玩高雄', '2023-12-31', '2024-01-01'),
(13, '台北三天', '2023-12-30', '2024-01-01');

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_scene_info`
--

CREATE TABLE `tbl_scene_info` (
  `Scene_Id` int(11) NOT NULL,
  `Scene_Name` varchar(45) NOT NULL,
  `Scene_Address` varchar(60) NOT NULL,
  `Scene_Detail` varchar(200) DEFAULT NULL,
  `Scene_City` int(11) NOT NULL,
  `Scene_OpenTime` varchar(150) NOT NULL,
  `Scene_Phone` varchar(15) DEFAULT NULL,
  `Scene_Image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_scene_info`
--

INSERT INTO `tbl_scene_info` (`Scene_Id`, `Scene_Name`, `Scene_Address`, `Scene_Detail`, `Scene_City`, `Scene_OpenTime`, `Scene_Phone`, `Scene_Image`) VALUES
(1, '國立故宮博物院', '台北市士林區至善路二段211號', '國立故宮博物院於1965年在外雙溪落成，中國宮殿式的建築，一至三樓為展覽陳列空間，四樓為休憩茶座「三希堂」。藏有全世界最多的中華藝術寶藏，收藏品主要承襲自宋、元、明、清四朝，幾乎涵蓋了整部五千年的中國歷史，數量近70萬件，使國立故宮博物院擁有「中華文化寶庫」的美名。', 1, '週二至週日 09:00~17:00', '02-2881-2021', ''),
(2, '臺北市立美術館', '台北市中山區中山北路三段181號', '臺北市立美術館，簡稱北美館，是臺灣臺北市的公立美術館，位於臺北市中山區花博公園美術園區內，成立於1983年12月24日，是臺灣第一座當代美術館與第一座公立美術館。 作為臺灣首座公立美術館，自開館以來即肩負推動臺灣現當代藝術的保存、研究、發展與普及之使命。 除整理臺灣近百年美術史外，亦持續關注發展中的當代藝術。', 1, '週一 休館 | 週二至週五及週日 09:00~17:30 | 週六 09:30-20:30', '02-2595-7656', NULL),
(3, '國立臺灣科學教育館', '台北市士林區士商路189號', '臺灣科學教育館，為科學教育而設，適合所有大人小孩來參觀。 地下室為兒童益智探索館，還有一個地底世界展，3, 4樓有生命科學、自然科學展，5, 6樓有物質科學、數學與地球科學展，7, 8樓為特展，可以看到世界性的科學展覽。 館內設有各種體驗裝置，可與展品互動。', 1, '週一 休館 | 例假日、寒暑假 09:00~18:00 | 非寒暑假之週二至週五 09:00~17:00', '02-6610-1234分機1', NULL),
(4, '中正紀念堂', '台北市中正區中山南路21號', '為追念蔣中正總統而建造的紀念堂，造型仿北京天壇之頂、埃及金字塔之體，高聳威嚴，正廳置放蔣中正總統坐姿銅像，底座部份設有展覽室和放映室，陳列蔣中正總統一生對國家民族偉大勳業之文物，供民眾參觀，紀念堂左右分列戲劇院與音樂廳，古色古香的中國宮殿式建築，莊嚴宏偉，許多國內外之文化表演均在此進行。由於占地廣闊、建築美麗，是民眾活動聚會及婚紗攝影的勝地，更成為國外旅客必訪之地。', 1, '週一至週日 09:00~18:00 | 休館日另行公告', '02-2343-1100', NULL),
(5, '台北101觀景台', '台北市信義區信義路五段7號89樓', '關於觀景台標高382公尺的89樓觀景台，除擁有全方位絕佳的觀景視野外，並提供其他多項設施，包括：超高倍數望遠鏡、紀念照攝影服務、飲料吧、十一種語言之多媒體影音導覽器、紀念品販售服務、世界最高郵筒等；同時更可看到重量達660公噸、世界少數外露供參觀的風阻尼器。', 1, '週一至週日10:00~21:00', '02-8101-8898', NULL),
(6, '奧爾森林學堂', '桃園市桃園區公園路42號', '專屬孩子們的樂園﹣奧爾森林學堂，位於虎頭山公園內的孔廟旁。綠林滿佈的自然環境，每到冬季總吸引許多貓頭鷹在此棲息覓食，因此｢奧爾｣即是取自貓頭鷹英文｢Owl｣的諧音。園區內三座醒目的樹屋群中，有著出自於在地創作者所製作的陶雕貓頭鷹，不妨跟著孩子來找看看， 這15隻大小不一的貓頭鷹究竟藏在哪?', 2, '24小時', '03-3946061', NULL),
(7, '可口可樂世界', '桃園市桃園區龜山工業區興邦路46號', '9大展區帶你一探橫掃全球的紅色旋風﹔錯過太可惜的絕版商品、19世紀美國街道神還原、見證榮耀的奧運聖火把…，可樂迷必訪。', 2, '週一至週五 09:30~12:00、14:00~16:30 | 週六至週日 休息', '0800-311789', NULL),
(8, 'Xpark', '桃園市中壢區春德路105號', 'Xpark是由台灣與日本橫濱八景島人氣水族館樂園耗時5 年規劃打造，為台灣首座新都會型的水生公園，並創造出360 度的沈浸式空間，顛覆傳統水族館樣貌。', 2, '週日至週五 10:00~18:00 | 週六 10:00~21:00', '03-287-5000', NULL),
(9, '埔心牧場', '桃園市楊梅區幼獅路一段439號', '埔心牧場除從事乳牛專業飼養外，並致力花卉栽培，各式奇花異草呈現一片花團錦簇，露天販賣店設置花木間，別有一番風情，牧場內新設的體能訓練場，20幾項野外健身活動設施，項項精彩刺激。 露營、烤肉區，場地寬闊，水電設施供應十分完備。 純青湖區湖邊綠草如茵，湖內魚兒成群，周圍景致充滿詩情畫意。', 2, '週一至週日 09:00~17:00', '03-464-4132', NULL),
(10, '虎頭山環保公園', '桃園市桃園區成功路三段', '想要捕獲大桃園360度全景視野，不需要挑戰高海拔也能輕鬆達陣！離桃園火車站不到5公里的虎頭山，當中的環保公園標高雖僅251公尺，卻是市區制高點，因此坐擁璀璨星光與城市燈火輝映的無遮蔽美景，一直以來都是在地賞景熱搜景點。', 2, '週一至週日 06:00~24:00', '03-394-6061', NULL),
(11, '台中國家歌劇院', '台中市西屯區惠來路二段101號', '歌劇院建築本體高達37.7公尺，地下2層、地上6層，鋼筋混凝土構造，部份為鋼構造。 建築師伊東豐雄的設計概念是以人類最原始的「洞窟」、「地穴」為發想，繼而設計出美聲涵洞的曲牆建築。 主建築由五十八面曲牆組成，興建難度極高，甚至被稱為「全球最難蓋的房子」。', 3, '週一 休館 | 週二至週四及週五 11:30~21:00 | 週五至週六 11:30~22:00', '04-2251-1777', NULL),
(12, '國立自然科學博物館', '台中市北區館前路1號', '國立自然科學博物館位於臺中市北區，是全臺首座將自然科學生活化的博物館，亦是一處可以實地動手操作學習的知識殿堂！ 本館展示呈現多樣性，包括：太空劇場、科學中心、生命科學廳、地球環境廳、人類文化廳、植物園等，內容豐富且深具教育意義。', 3, '週一 休館 | 週二至週日 09:00~17:00', '04-2322-6940', NULL),
(13, '彩虹眷村', '台中市南屯區春安路56巷25號', '彩虹村位於臺中市南屯區春安路56巷內，園區內所有的彩繪作品皆來自彩虹爺爺-黃永阜先生，他融入在地感動的元素，發揮巧思，在老屋上彩繪五顏六色，充滿童趣的圖畫。 走入繽紛夢幻的圖塊巷弄間，彷彿進入童話世界，吸引國內外遊客前往觀賞拍照朝聖，成為臺中人氣景點之一。', 3, '週一 休息 | 週二至週日 09:00~17:00', '04-2380-2351', NULL),
(14, '麗寶樂園', '台中市后里區福容路8號', '麗寶樂園渡假區是臺灣最具規模的渡假園區，園內有水陸雙樂園、五星級渡假飯店-福容大飯店、密室逃脫旗艦館、超級休息站-麗寶道之驛、麗寶OUTLET MALL、國際級賽車場，以及臺灣最大的120米超級摩天輪，不論是玩樂園、嘗美食、住飯店、逛OUTLET、開卡丁車、搭摩天輪，都能一站滿足所有人的需求', 3, '週一至週日 09:30~17:00', '04-2558-2459', NULL),
(15, '高美濕地', '台中市清水區美堤街', '高美濕地位於清水大甲溪出海口南側，廣達1,500公頃的高美濕地，擁有豐富的天然資源，是國內少數幾處雁鴨集體繁殖區之一。 曾在高美濕地棲息的鳥類有多達120餘種，為重要之生態保育區。 目前已逐漸取代大肚溪口，成為喜好賞鳥人士的新興賞線。', 3, '24小時', '04-2656-5810', NULL),
(16, '九族文化村', '南投縣魚池鄉金天巷45號', '原住民部落景觀區分布臺灣十族的建築、圖像、美食、音樂、服飾與生活，從達悟、阿美、泰雅、賽夏、鄒、邵、布農、卑南、魯凱、排灣全都備齊，沿著全程1,865公尺的綠蔭人行步道，石板或木造的各款住屋依原貌、原材具體展現。 此外，九族廣場傳統山地歌舞秀、石音劇場的傳統邵族杵音與各部落不同的傳統技藝表演與山地食物，亦不容錯過。', 4, '週一至週五 09:30~17:00 | 週六至週日 09:30~19:00', '04-9289-5361', NULL),
(17, '清境農場青青草原', '南投縣仁愛鄉仁和路170號', '清境農場在南投縣境內，由於清境農場遠離城市酷熱，清新、自然與靜謐，溫和的氣候加上豐沛的雨量，使得此地成為經營牧場、種植溫帶蔬果與花卉的好地方。', 4, '週一至週日 08:00~17:00', '04-9280-2172', NULL),
(18, '日月老茶廠', '南投縣魚池鄉有水巷38號', '日月老茶廠位在南投魚池鄉，靠近日月潭風景區，擁有得天獨厚的地理環境，所栽植出的阿薩姆紅茶品質極佳，老茶廠前身為台灣農林公司的魚池茶廠，在歷經九二一大地震後，開始重建轉型，從單純的製茶廠轉型成為兼具生產紅茶、有機農業及推廣健康飲食與環境的觀光茶廠。', 4, '週一 09:00~17:00 | 週二至週日 08:00~17:00', '04-9289-5508', NULL),
(19, '竹山指南宮', '南投縣竹山鎮大公街40號', '竹山紫南宮，又名社寮紫南宮，是臺灣一座土地公廟，主祀福德正神尊像，位於南投縣竹山鎮社寮里大公街。 由於『北天燈． 南烽炮． 中丁酒』香火旺盛，在每年農曆正月十六日吃丁酒是人潮最多時候，與中和烘爐地的南山福德宮、屏東車城的福安宮並稱「三大土地公廟」。', 4, '週一至週日 07:00~21:00', '04-9262-3722', NULL),
(20, '茶二指故事館', '南投縣名間鄉埔中巷32-1號', '「茶二指故事館」園區主要由主館、工廠與綠地休憩庭園組成，在園區後方，還有一片諾大的茶園，茶園上林立了幾位有趣的採茶「指」人立牌供遊客拍照。 主要展館中，除了訴說茶二指的來源、為何老闆少了兩指的故事之外，還有展示許多茶葉產品，大方提供試吃、讓遊客決定是否購買；產品皆採二指創意包裝，品牌形象十分活潑開朗。', 4, '週一至週日 09:30~17:30', '04-9258-3126', NULL),
(21, '安平古堡', '台南市安平區國勝路82號', '荷蘭人於西元1624年，在安平建造了臺灣第一座城堡「熱蘭遮城」，也就是現在的安平古堡，這裡曾是荷蘭人統治的中樞，更是對外貿易的總樞紐，原本的建築格局分為方形內城與長方形外城。 西元1661年，鄭成功來台驅荷後，將此地改名為安平，故熱蘭遮城也稱為「王城」或「臺灣城」，俗稱安平古堡，是臺灣最早的一座城池。', 5, '週一至週日 08:30~17:30', '06-226-7348', NULL),
(22, '台南林百貨', '台南市中西區忠義路二段63號', '「林百貨」在末廣町店鋪住宅群組中，樓層最高，達6層、面積最大合計共584坪，佔全部面積之17.39%；同時擁有唯一的電梯，此於臺灣南部地區首見於商業建築的進步象徵。 銷售經營的商品具有多樣性，又皆為進口舶來品，為日人逛選購物及本地人辦嫁粧採購的高級店，北部人來南部旅遊觀光，一定會來「林百貨」參觀。', 5, '週一至週日 11:00~21:00', '06-221-3000', NULL),
(23, '赤崁樓', '台南市中西區民族路二段212號', '赤崁樓乃荷蘭人於西元1653年創建，原稱普羅民遮城（Provintia荷文為永恆之意），漢人則稱之為「赤崁樓」、「番仔樓」或「紅毛樓」；「赤崁樓」雖歷代都有改建，至今仍大約維持原貌。 赤崁樓從荷蘭時期便是行政中心，西元1661年鄭成功改普羅民遮城為承天府治。', 5, '週一至週日 08:30~21:00', '06-220-5647', NULL),
(24, '十鼓文創園區', '台南市仁德區文華路二段326號', '十鼓文創園區是日治時代老糖廠改建而成的藝術文化村，園區內有刺激的煙囪溜滑梯、飛天宅急便，還可以欣賞夢糖劇場鼓樂表演，就像來到大人版的遊樂園！編輯帶你看看園區內有什麼設施、優惠門票、交通住宿等資訊，推薦大家可以順便安排的周邊景點！', 5, '週一至週五 10:00~17:30 | 週六至週日 09:30~17:30', '06-266-2225', NULL),
(25, '奇美博物館', '台南市仁德區文華路二段66號', '奇美博物館是一座綜合性的博物館，擁有西洋藝術、樂器、兵器與動物標本等多元的典藏品，館內展廳包括藝術廳、樂器廳、兵器廳、動物廳、羅丹廳、雕塑大道以及特展廳等等，提供文明之奇與藝術之美；館外結合西洋神話元素打造特色景點，寄望創建一處大眾共享共賞的園地，成為人們的心靈避風港。', 5, '週一至週日 09:30~17:30 | 週三休館', '06-266-0808', NULL),
(26, '衛武營國家藝術文化中心', '高雄市鳳山區三多一路1號', '氣勢磅礡的衛武營國家藝術文化中心，是南台灣第一座國際級表演藝術場館，白色波浪外形猶如一艘太空船，造型既前衛又充滿科技感，頓時吸引眾人的目光，更是社群打卡的熱門景點。 占地約有10公頃的場館內設有歌劇院、音樂廳、戲劇院、表演廳、餐廳等設施，戶外擁有廣闊的青青草地，且鄰近都會公園，成為踏青、野餐的好去處。', 6, '週一至週日 11:00~21:00', '07 -262-6666', NULL),
(27, '旗山老街', '高雄市旗山區中山路1號', '旗山老街位於臺灣高雄市旗山區，指的是旗山的中山路，為日治時期開闢的「本通」。 在這條老街上有指定為歷史建築的「石拱圈亭仔腳」與巴洛克式街屋立面，此外還有旗山車站與旗山區農會等文化資產。 而這條老街在2001年的歷史建築百景徵選活動中，被票選為第24名。', 6, '24小時 (根據店家營業時間不同)', NULL, NULL),
(28, '駁二藝術特區', '高雄市鹽埕區大勇路1號', '駁二藝術特區的前身為高雄港倉庫，建於1973年，過去儲放魚粉與砂糖，隨著產業轉型，一度遭遺忘閒置；直到2000年高雄市政府因尋找國慶煙火施放地點的機緣下，才讓這些舊倉庫起死回生、開創新生命，見證高雄港的繁華、沒落、再起與轉型。 從過去到現在，駁二藝術特區都是高雄人不可缺少的倉庫群。', 6, '週一至週四 10:00~18:00 | 週五至週日 10:00~20:00', '07-521-4899', NULL),
(29, '義大遊樂世界', '高雄市大樹區學城路一段10號', '義大遊樂世界是南臺灣規模最大的主題遊樂園區，為全臺唯一希臘情境之主題樂園，園內分為衛城、聖托里尼山城和特洛伊城堡3個主題區，遊樂設施數量目前位居全臺第一，還有年度國際大秀-奇幻之旅及精彩檔期日間遊行。', 6, '週日至週五 09:00~17:30 | 週六 09:00~20:00', '07-656-8080', NULL),
(30, '旗山糖廠', '高雄市旗山區忠孝街33號', '旗山糖廠創建於1909年（民國前三年），於民國91年停止糖廠的製糖作業，逐漸將糖廠營運轉為多角化經營，改為糖廠公園，園內也從單純的製糖工廠，改為商業經營，製造冰品或各類食品，尤其是特製的酵母冰，已成為糖廠最膾炙人口的特色商品之一，遊客到此地必點的商品。', 6, '週一至週日 09:00~18:00', '07-661-3265', NULL),
(31, '遠雄海洋公園', '花蓮縣壽豐鄉福德189號', '遠雄海洋公園佔地廣大，是台灣著名以結合遊樂與教育意義的海洋休閒園區，除規劃完善的八大主題區之外，還有空中纜車、室外電扶梯、美食商店街，而精采絕倫的四大主題表演則包含海豚秀、海獅秀、美人魚海牛生態解說以及水晶城堡秀等，場場皆是值回票價主題表演。', 7, '週一至週五 09:30~17:00 | 週六至週日 09:00~17:00', '03-812-3199', NULL),
(32, '七星潭', '花蓮縣新城鄉七星街79巷5號', '七星潭是花蓮縣唯一的縣級風景區，又稱月牙灣。 有斷層形成的海峽與優美的弧形海灣，具有豐富的自然人文景觀、海水潔淨湛藍，黑石晶瑩剔透，在此可遠眺青山蒼鬱，公路綿延、風景區範圍從海邊延伸到七星潭社區。', 7, '24小時', '03-822-1592', NULL),
(33, '知卡宣親水公園', '花蓮縣吉安鄉中正路二段299號', '知卡宣綠森林親水公園位於花蓮的吉安鄉，佔地有11公頃，最早是叫做南埔綠森林公園，擁有大片的花園、大草皮、花園迷宮，適合全家來這裡散步。 這裡最具人氣的就是暑假限定的大型戲水樂園，且2022年7月全新打造共融遊戲場，非玩水的時間也可以帶小朋友來放電！', 7, '週二至週日 07:00~17:30 | 週一休息', '03-842-2045', NULL),
(34, '富源國家森林遊樂區', '花蓮縣瑞穗鄉廣東路161號', '富源森林遊樂區擁有多條林間步道、吊橋、瀑布，以及知名賞蝶泡湯的蝴蝶谷。在每年3月至8月是蝴蝶谷絕佳的賞蝶季節，來到這裡能瞧見青帶鳳蝶、端紅蝶、蛇目蝶等30多種蝴蝶翩翩起舞。在3月至5月、9月至11月間，還能夠欣賞黑翅螢及台灣山窗螢，每當夜幕低垂，看到點點螢光在草地林間閃爍飛舞時，總是令人讚嘆不已。', 7, '週一至週日 08:00~17:00', '03-881-2377', NULL),
(35, '東大門夜市', '花蓮縣花蓮市重慶路415號', '花蓮東大門國際觀光夜市，簡稱東大門夜市，以原有南濱夜市、福町夜市、自強夜市、彩虹夜市遷移整併而來，是台灣花蓮縣花蓮市重慶路及中山路口的一個夜市，橫跨花蓮市第二聯合里的民主里、民族里及民治里，位於舊有的台鐵花蓮車站及花蓮機務段處，架構可細分成福町夜市、自強夜市、原住民一條街及大陸各省一條街四大區域，占地約9公頃。', 7, '週一至週日 17:30~23:30', '03-822-7171', NULL),
(36, '星星部落景觀咖啡', '台東縣卑南鄉富源村8鄰116之3號', '星星部落位於台東富源村，沿著197縣道駛上光害漸少的海岸山脈，幾陣蜿蜒後坐在園區中，享受視野寬廣的夜景，桌上的煤油燈增添一絲復古氣氛，咖啡、飲品、餐點眾多且價格親切，遠離城市塵囂，偶有兔子出沒在園區內，更顯台東慢活滋味，是聊天消遣的好去處。', 8, '週一至週日 18:00~01:30', '08-923-8089', NULL),
(37, '米國學校', '台東縣關山鎮昌林路24之1號', '米國學校是一處以米為主題之休閒體驗場所，提供遊客看米（製米過程）、玩米（製米體驗活動）、吃米（米食DIY）、帶著米回家（關山米直銷）的多功能體驗園區，讓台灣農村保有農業的本質，創新農業的價值，將農業永續傳承。', 8, '週一至週日 08:00~17:00', '08-981-4903', NULL),
(38, '伯朗大道', '臺東縣池上鄉伯朗大道', '筆直的伯朗大道正式名稱為錦新三號道路，全長約2.2公里，由於兩旁毫無電線桿，加上逢稻穗成熟時，道路兩旁無邊無際的金色稻穗隨風搖曳，寧靜的田園景緻，被伯朗咖啡選中拍攝廣告，之後知名藝人代言的長榮航空亦來此取景，自此聲名大噪，將這條道路暱稱為「伯朗大道」。', 8, '24小時', '08-986-2041', NULL),
(39, '台東巨蛋樂園', '台東縣台東市南島大道502號', '台東巨蛋樂園由綺麗集團所成立，2021/02/10開始營運，就在綺麗珊瑚文化園區內，是台東最大室內兒童遊戲樂園，有超多遊樂設施，戶外另有卡丁車、夏季水樂園可以玩。', 8, '週一至週日 09:30~18:30', '0978-718-750', NULL),
(40, '三仙台', '台東縣成功鎮基翬路74號', '三仙台位於成功東北方約3公里處（11號省道110.5K處），是由突出的海岬與離岸小島所構成的。 因島上有三塊巨石，民間穿鑿附會傳說八仙過海時呂洞賓、何仙姑、李鐵拐曾登臨此處而聲名大噪。', 8, '24小時', '08-985-4097', NULL),
(51, 'NCU', '1', '1', 2, '1', '0971863611', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_sex`
--

CREATE TABLE `tbl_sex` (
  `Sex_Id` int(11) NOT NULL,
  `Gender` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_sex`
--

INSERT INTO `tbl_sex` (`Sex_Id`, `Gender`) VALUES
(1, '男生'),
(2, '女生'),
(3, '無性別');

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_user`
--

CREATE TABLE `tbl_user` (
  `User_Id` int(11) NOT NULL,
  `User_Name` varchar(45) NOT NULL,
  `User_Email` varchar(60) NOT NULL,
  `User_Password` varchar(45) NOT NULL,
  `User_Sex_Id` int(11) NOT NULL,
  `User_IDCard` varchar(10) NOT NULL,
  `User_Character` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_user`
--

INSERT INTO `tbl_user` (`User_Id`, `User_Name`, `User_Email`, `User_Password`, `User_Sex_Id`, `User_IDCard`, `User_Character`) VALUES
(1, '林三', '001@gmail.com', 'user001lin', 2, 'A000000001', 2),
(2, '魏3', '002@gmail.com', 'user002wei', 2, 'A000000002', 1),
(3, '黃三', '003@gmail.com', 'user003huang', 2, 'A000000003', 1),
(4, '周科均', '004@gmail.com', 'user004chou', 1, 'A000000004', 1),
(6, '王大明', '123@gmail.com', 'admin001', 1, 'A123456788', 2),
(7, 'iris', '456@gmail.com', 'admin002', 2, 'Q123456789', 2),
(8, '1', 'jimmy911116@gmail.com', '132XTCNKX6U', 2, '23498765', 1),
(9, '3', 'jfeifjif@com.tw', '3234567dsfg', 2, 'N345352334', 2),
(10, '閔柯', 'wert54a@12456.com', 'dsd22323232', 2, 'N345352334', 2),
(11, 'sfdfsd', 'weer@gmail.com', 'fhbsd7438924', 2, 'N345352334', 2),
(12, 'jfidl', 'sfdg@gmail.com', 'fnskduo432987', 3, 'N345352334', 2),
(14, 'df', 'safwdsfg@gns.com', 'dhfu9e3489', 3, 'saf', 1),
(15, 'df', 'sasfg@gns.com', 'dhfu9e3489', 3, 'saf', 1),
(19, 'df', 'sfgghjkf@gns.cob', 'dhfu9e3489', 1, 'saf', 1),
(20, '柯翔閔', 'jimmy@gmail.com', 'dhfu9e3489', 1, '23498765', 1),
(21, '閔柯', 'jimmy9116@gmail.com', 'dsd22323232', 1, '23498765', 1),
(23, 'dk dk kd ', '110403520@sd.com.tw', 'W23456789', 1, 'N345352334', 2),
(24, '柯翔閔', 'jimmy9111@gmail.com', '132XTCNKX6U', 1, 'N23498765', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `tbl_character`
--
ALTER TABLE `tbl_character`
  ADD PRIMARY KEY (`Char_Id`);

--
-- 資料表索引 `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`City_Id`),
  ADD KEY `District_City_idx` (`City_District`);

--
-- 資料表索引 `tbl_collection`
--
ALTER TABLE `tbl_collection`
  ADD PRIMARY KEY (`Collection_Id`),
  ADD KEY `Collection_CL_idx` (`Collection_CL`),
  ADD KEY `Collection_Scene_idx` (`Scene`);

--
-- 資料表索引 `tbl_collect_list`
--
ALTER TABLE `tbl_collect_list`
  ADD PRIMARY KEY (`CL_Id`),
  ADD KEY `CL_User_idx` (`CL_User`);

--
-- 資料表索引 `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`Comment_Id`),
  ADD KEY `Comment_Scene_idx` (`Comment_Scene`),
  ADD KEY `Comment_User_idx` (`Comment_User`);

--
-- 資料表索引 `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`District_Id`);

--
-- 資料表索引 `tbl_il_user`
--
ALTER TABLE `tbl_il_user`
  ADD PRIMARY KEY (`IL_User_ILId`,`IL_User_UserId`),
  ADD KEY `IL_ILId_idx` (`IL_User_UserId`);

--
-- 資料表索引 `tbl_itinerary`
--
ALTER TABLE `tbl_itinerary`
  ADD PRIMARY KEY (`Itinerary_Id`),
  ADD KEY `Itinerary_Scene_idx` (`Scene`),
  ADD KEY `Itinerary_IL_idx` (`Itinerary_IL`);

--
-- 資料表索引 `tbl_itinerary_list`
--
ALTER TABLE `tbl_itinerary_list`
  ADD PRIMARY KEY (`IL_Id`);

--
-- 資料表索引 `tbl_scene_info`
--
ALTER TABLE `tbl_scene_info`
  ADD PRIMARY KEY (`Scene_Id`),
  ADD KEY `Scene_City_idx` (`Scene_City`);

--
-- 資料表索引 `tbl_sex`
--
ALTER TABLE `tbl_sex`
  ADD PRIMARY KEY (`Sex_Id`);

--
-- 資料表索引 `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`User_Id`),
  ADD KEY `User_Sex_idx` (`User_Sex_Id`),
  ADD KEY `User_Char_idx` (`User_Character`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `City_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_collection`
--
ALTER TABLE `tbl_collection`
  MODIFY `Collection_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_collect_list`
--
ALTER TABLE `tbl_collect_list`
  MODIFY `CL_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `Comment_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `District_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_itinerary`
--
ALTER TABLE `tbl_itinerary`
  MODIFY `Itinerary_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_itinerary_list`
--
ALTER TABLE `tbl_itinerary_list`
  MODIFY `IL_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_scene_info`
--
ALTER TABLE `tbl_scene_info`
  MODIFY `Scene_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD CONSTRAINT `District_City` FOREIGN KEY (`City_District`) REFERENCES `tbl_district` (`District_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `tbl_collection`
--
ALTER TABLE `tbl_collection`
  ADD CONSTRAINT `Collection_CL` FOREIGN KEY (`Collection_CL`) REFERENCES `tbl_collect_list` (`CL_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Collection_Scene` FOREIGN KEY (`Scene`) REFERENCES `tbl_scene_info` (`Scene_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `tbl_collect_list`
--
ALTER TABLE `tbl_collect_list`
  ADD CONSTRAINT `CL_User` FOREIGN KEY (`CL_User`) REFERENCES `tbl_user` (`User_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `Comment_Scene` FOREIGN KEY (`Comment_Scene`) REFERENCES `tbl_scene_info` (`Scene_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Comment_User` FOREIGN KEY (`Comment_User`) REFERENCES `tbl_user` (`User_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `tbl_il_user`
--
ALTER TABLE `tbl_il_user`
  ADD CONSTRAINT `IL_IDD` FOREIGN KEY (`IL_User_ILId`) REFERENCES `tbl_itinerary_list` (`IL_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `IL_User_UserId` FOREIGN KEY (`IL_User_UserId`) REFERENCES `tbl_user` (`User_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `tbl_itinerary`
--
ALTER TABLE `tbl_itinerary`
  ADD CONSTRAINT `Itinerary_IL` FOREIGN KEY (`Itinerary_IL`) REFERENCES `tbl_itinerary_list` (`IL_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Itinerary_Scene` FOREIGN KEY (`Scene`) REFERENCES `tbl_scene_info` (`Scene_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `tbl_scene_info`
--
ALTER TABLE `tbl_scene_info`
  ADD CONSTRAINT `Scene_City` FOREIGN KEY (`Scene_City`) REFERENCES `tbl_city` (`City_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `User_Char` FOREIGN KEY (`User_Character`) REFERENCES `tbl_character` (`Char_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `User_Sex` FOREIGN KEY (`User_Sex_Id`) REFERENCES `tbl_sex` (`Sex_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
