-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: ecmall
-- ------------------------------------------------------
-- Server version	5.7.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart_list`
--

DROP TABLE IF EXISTS `cart_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_list` (
  `cart_num` int(11) NOT NULL AUTO_INCREMENT,
  `user_num` int(11) NOT NULL,
  `p_num` int(11) NOT NULL,
  `p_count` int(11) NOT NULL DEFAULT '0',
  `p_price` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cart_num`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_list`
--

LOCK TABLES `cart_list` WRITE;
/*!40000 ALTER TABLE `cart_list` DISABLE KEYS */;
INSERT INTO `cart_list` VALUES (8,15,14,1,900),(11,5,14,1,900),(12,26,14,1,900),(13,27,9,1,300),(14,27,13,3,500),(15,27,14,1,900),(17,27,14,1,900),(20,27,2,1,1000),(21,27,2,1,1000),(22,8,2,1,1000),(23,8,2,1,1000),(24,8,14,1,900),(25,28,14,1,900),(26,28,2,1,1000),(27,8,9,1,300),(28,8,14,1,900),(29,8,14,1,900),(30,8,14,1,900),(31,8,9,1,300),(32,8,9,1,300),(33,8,9,1,300),(34,8,9,1,300),(35,8,15,1,500),(36,29,15,1,500),(37,39,9,1,300),(38,4,9,1,300),(39,40,9,1,300),(40,40,9,1,300),(41,31,9,1,300),(42,41,9,1,300),(43,41,9,1,300),(44,42,9,1,300),(45,42,9,1,300),(46,42,9,1,300),(47,42,12,1,600),(48,42,10,1,300),(49,42,16,5,600),(50,42,7,2,600),(51,42,16,5,600),(52,42,9,1,300),(53,42,9,1,300),(54,14,9,1,300),(55,14,9,1,300),(56,42,16,5,600),(57,42,16,5,600),(58,5,9,1,300),(59,5,16,1,600),(60,8,9,1,300),(61,14,16,4,600),(62,14,14,1,900),(63,13,19,2,600),(64,13,17,1,600);
/*!40000 ALTER TABLE `cart_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_list`
--

DROP TABLE IF EXISTS `customer_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_list` (
  `order_num` varchar(30) NOT NULL,
  `user_num` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_mobile` varchar(15) NOT NULL,
  `customer_postnum` int(11) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_list`
--

LOCK TABLES `customer_list` WRITE;
/*!40000 ALTER TABLE `customer_list` DISABLE KEYS */;
INSERT INTO `customer_list` VALUES ('20190626080941',8,'akaashi keiji','2147483647',665,'hannam the hill'),('20190626081206',8,'Tom hiddleston','2147483647',3,'baker-3street, london, UK'),('20190701074318',27,'å†…å±±æ˜‚è¼','0816',41567,'åŸ¼çŽ‰çœŒ'),('20190701092317',0,'JIMN','0807595',9785654,'sapporo-shi'),('20190702073255',27,'æ¾å²¡æž—','0816',50004,'æœ­å¹Œå¸‚'),('20190702073350',27,'ä»£ç†æ³¨æ–‡','0816',60003,'å±±æ¢¨çœŒ'),('20190702074230',27,'Tom Holand','0816',60009,'å±±æ¢¨çœŒ'),('20190806034438',8,'akaashi keiji','08075897288',0,''),('20190806034507',27,'å†…å±±æ˜‚è¼','0816',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190806034535',27,'å†…å±±æ˜‚è¼','0816',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190806055016',27,'å†…å±±æ˜‚è¼','0816',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190806055058',5,'matsuoka rin','08075897288',11000,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190806055131',4,'ryugazaki rei','08075897288',90008,'ryugazaki eki'),('20190807014504',5,'matsuoka rin','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190807014717',6,'tachibana makoto','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190807054717',39,'sei','060',41567,'BUK-GU'),('20190807054853',39,'sei','060',41567,'BUK-GU, 41567'),('20190807054922',39,'sei','060',41567,'BUK-GU, 41567'),('20190808022402',27,'å†…å±±æ˜‚è¼','0816',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190808022546',12,'iwaizumi hajime','08075897288',60009,'miyagi'),('20190808022652',26,'ë°•ì„ í˜œ','6363',2401616,'Daegu, Daehyun-Dong'),('20190808061856',14,'akaashi','1205',112055,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190809015158',4,'ryugazaki rei','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190819125156',14,'akaashi','1205',12050818,'æ±äº¬éƒ½ç·´é¦¬åŒº'),('20190821012751',40,'zz','zz',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190821023116',4,'ryugazaki rei','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190821023519',5,'matsuoka rin','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190821025825',8,'akaashi keiji','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190821030156',8,'akaashi keiji','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190821031935',14,'akaashi','1205',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190821060423',26,'ë°•ì„ í˜œ','6363',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190822010844',14,'akaashi','1205',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190822010928',8,'akaashi keiji','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190822052419',11,'miya osamu','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190826014758',8,'akaashi keiji','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡'),('20190826024300',13,'shop manager','08075897288',50004,'åŒ—æµ·é“, æœ­å¹Œå¸‚å—åŒºæ¾„å·å››æ¡');
/*!40000 ALTER TABLE `customer_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_analisys`
--

DROP TABLE IF EXISTS `log_analisys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_analisys` (
  `date` varchar(255) NOT NULL,
  `pv_count` int(255) NOT NULL,
  `uu_count` int(255) NOT NULL,
  `order_count` int(255) DEFAULT NULL,
  `cvr` varchar(255) NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_analisys`
--

LOCK TABLES `log_analisys` WRITE;
/*!40000 ALTER TABLE `log_analisys` DISABLE KEYS */;
INSERT INTO `log_analisys` VALUES ('190807',4,2,8,'200'),('190808',86,7,4,'4.65'),('190818',109,7,3,'2.75'),('190820',210,8,3,'1.43'),('190821',215,2,3,'1.4'),('190822',77,5,7,'9.09'),('190825',0,0,0,'0');
/*!40000 ALTER TABLE `log_analisys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_list`
--

DROP TABLE IF EXISTS `order_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_list` (
  `order_num` varchar(30) NOT NULL,
  `user_num` int(11) NOT NULL,
  `p_num` int(11) NOT NULL,
  `p_count` int(11) NOT NULL DEFAULT '0',
  `p_price` int(11) NOT NULL DEFAULT '0',
  `p_payment` varchar(30) NOT NULL,
  `p_deliveryDate` text NOT NULL,
  `order_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_list`
--

LOCK TABLES `order_list` WRITE;
/*!40000 ALTER TABLE `order_list` DISABLE KEYS */;
INSERT INTO `order_list` VALUES ('20190626080941',8,15,1,500,'convenience store','2019/06/04',''),('20190626081206',8,14,4,3600,'credit Card','2019/07/26',''),('20190701074318',27,9,36,1200,'convenience store','2019/07/03',''),('20190701092317',0,15,1,500,'credit Card','2019/07/19',''),('20190702073255',27,13,1,500,'daibiki','2019/07/25',''),('20190702073350',27,15,1,500,'ã‚³ãƒ³ãƒ“ãƒ‹æ±ºæ¸ˆ','2019/07/18',''),('20190702074230',27,12,5,600,'éƒµä¾¿å»ºæ›¿','2019/07/19',''),('20190806055016',27,9,1,300,'ã‚³ãƒ³ãƒ“ãƒ‹æ±ºæ¸ˆ','2019/08/22','20190806'),('20190806055058',5,16,3,1800,'ã‚³ãƒ³ãƒ“ãƒ‹æ±ºæ¸ˆ','2019/08/07','20190806'),('20190806055131',4,13,5,2500,'ã‚³ãƒ³ãƒ“ãƒ‹æ±ºæ¸ˆ','2019/08/15','20190806'),('20190807014504',5,15,4,2000,'ã‚³ãƒ³ãƒ“ãƒ‹æ±ºæ¸ˆ','2019/08/15','20190807'),('20190807014717',6,9,1,300,'éƒµä¾¿å»ºæ›¿','2019/08/08','20190807'),('20190807050642',5,9,1,300,'','','20190807'),('20190807050648',5,9,5,300,'','','20190807'),('20190807054131',40,9,1,300,'','','20190807'),('20190807054717',39,9,1,300,'ä»£å¼•ã','2019/08/28','20190807'),('20190807054853',39,14,1,900,'ä»£å¼•ã','2019/08/31','20190807'),('20190807054922',39,14,1,900,'ä»£å¼•ã','2019/08/31','20190807'),('20190808022402',27,9,1,300,'ã‚³ãƒ³ãƒ“ãƒ‹æ±ºæ¸ˆ','2019/08/15','190808'),('20190808022546',12,14,5,4500,'ã‚³ãƒ³ãƒ“ãƒ‹æ±ºæ¸ˆ','2019/08/29','190808'),('20190808022652',26,13,3,1500,'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆã‚«ãƒ¼ãƒ‰','2019/08/22','190808'),('20190808061856',14,7,5,3000,'ä»£å¼•ã','2019/08/22','190808'),('20190809015158',4,9,1,300,'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆã‚«ãƒ¼ãƒ‰','2019/08/07','190809'),('20190809064747',40,9,1,300,'','','190809'),('20190809065030',31,9,1,300,'','','190809'),('20190819125156',14,11,5,2000,'ä»£å¼•ã','2019/08/23','190819'),('20190819012137',31,9,1,300,'','','190819'),('20190819023450',41,9,1,300,'ä»£å¼•ã','2019/08/23','190819'),('20190821012751',40,14,5,4500,'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆã‚«ãƒ¼ãƒ‰','2019/08/23','190821'),('20190821023116',4,12,4,2400,'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆã‚«ãƒ¼ãƒ‰','2019/08/23','190821'),('20190821023519',5,8,3,1500,'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆã‚«ãƒ¼ãƒ‰','2019/08/30','190821'),('20190821030156',8,10,5,1500,'ä»£å¼•ã','2019/08/29','190821'),('20190821031935',14,15,3,1500,'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆã‚«ãƒ¼ãƒ‰','2019/08/30','190821'),('20190821060423',26,12,3,1800,'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆã‚«ãƒ¼ãƒ‰','2019/08/30','190821'),('20190822010844',14,9,1,300,'ã‚³ãƒ³ãƒ“ãƒ‹æ±ºæ¸ˆ','2019/08/23','190822'),('20190822010928',8,11,1,400,'ä»£å¼•ã','2019/08/30','190822'),('20190822011009',31,9,4,0,'','','190822'),('20190822011022',31,9,1,300,'','','190822'),('20190822011036',31,9,55,0,'','','190822'),('20190822011047',31,9,2,0,'','','190822'),('20190822052419',11,13,1,500,'éƒµä¾¿å»ºæ›¿','2019/08/31','190822'),('20190826014758',8,9,1,0,'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆã‚«ãƒ¼ãƒ‰','2019/08/22','190826'),('20190826024300',13,19,1,600,'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆã‚«ãƒ¼ãƒ‰','2019/08/29','190826');
/*!40000 ALTER TABLE `order_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_list`
--

DROP TABLE IF EXISTS `product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_list` (
  `p_num` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) NOT NULL,
  `p_memo` text NOT NULL,
  `p_price` int(10) NOT NULL,
  `p_img` varchar(255) NOT NULL,
  PRIMARY KEY (`p_num`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_list`
--

LOCK TABLES `product_list` WRITE;
/*!40000 ALTER TABLE `product_list` DISABLE KEYS */;
INSERT INTO `product_list` VALUES (1,'heart','ã‹ã‚ã„ã‚ˆ',1000,'201906140849.png'),(2,'ã‹ã‚ã„','yee',1000,'201906170315.png'),(3,'post it','post it',200,'201906170322.png'),(4,'planet','planet',300,'201906170327.png'),(5,'post it2','post it',200,'201906170329.png'),(6,'hey','why dont you buy this product?',600,'201906180800.png'),(7,'note','note des',600,'201906180809.png'),(8,'memopad','memopad des',500,'201906180810.png'),(9,'3 color grid post it','when you buy all of variation , 1000Yen',300,'201906180811.png'),(10,'molan','molan post it\r\nkawaii',300,'201906180822.png'),(11,'color index','colorful index',400,'201906180822.png'),(12,'simple','simple memo ',600,'201906190741.png'),(13,'big size post it','post it',500,'201906190741.png'),(14,'character memo','character memo pad',900,'201906190742.png'),(15,'Landscape','landscape',500,'201906250723.png'),(16,'product1','sdf',600,'201907021044.png'),(17,'product1','khkj',600,'201908260133.png'),(18,'product2','kl',900,'201908260135.png'),(19,'sdf','dsf',600,'201908260238.png');
/*!40000 ALTER TABLE `product_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_list`
--

DROP TABLE IF EXISTS `user_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_list` (
  `user_num` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `user_pw` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `user_mobile` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `user_qualify` int(11) DEFAULT '1' COMMENT '1 = general user, 2 = manager qualify',
  PRIMARY KEY (`user_num`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_list`
--

LOCK TABLES `user_list` WRITE;
/*!40000 ALTER TABLE `user_list` DISABLE KEYS */;
INSERT INTO `user_list` VALUES (2,'clover','clover','uchiyama kouki','08075897288',1),(3,'test','test','fukushi souta','08075897288',1),(4,'rei','rei','ryugazaki rei','08075897288',1),(5,'rin','rin','matsuoka rin','08075897288',1),(6,'makoto','makoto','tachibana makoto','08075897288',1),(7,'haru','haru','nanase haruka','08075897288',1),(8,'keiji','keiji','akaashi keiji','08075897288',1),(9,'mura','mura','murashakibara atsushi','08075897288',1),(10,'takao','takao','takao kazunari','08075897288',1),(11,'miya','miya','miya osamu','08075897288',1),(12,'hajime','hajime','iwaizumi hajime','08075897288',1),(13,'kanri','kanri','shop manager','08075897288',2),(14,'akaashi','akaashi','akaashi','1205',1),(15,'kita','kita','kita sinsuke','89',1),(24,'kkaia','kaia','kaia','1235',1),(25,'suna','suna','suna','56465',1),(26,'park','park','ë°•ì„ í˜œ','6363',1),(27,'uchiyama','uchiyama','å†…å±±æ˜‚è¼','0816',1),(28,'niro','niro','Hutakuchi Kenji','05095351369',1),(29,'sunhyun','sunhyun','sunhyun','6546',1),(30,'jimin','jimin','JIMIN','01027715745',1),(31,'yun','yun','yun','6666',1),(32,'aka','aka','aka','666',1),(33,'so','so','so','700',1),(34,'MARI','MARI','MARI','6546',1),(35,'SATO','SATO','SATO','310',1),(36,'jin','jin','jin','481',1),(37,'computer','computer','computer','010',1),(39,'sei','sei','sei','060',1),(40,'zz','zz','zz','zz',1),(41,'jays','jays','jay','070000000',1),(42,'takai','misuzu','takaimisuzu','0110000000',1);
/*!40000 ALTER TABLE `user_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-27  9:51:42
