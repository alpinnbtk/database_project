-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.3    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `taddresses`
--

DROP TABLE IF EXISTS `taddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taddresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver_full_name` varchar(45) NOT NULL,
  `receiver_phone_number` varchar(15) NOT NULL,
  `postal_code` varchar(6) NOT NULL,
  `address_detail` varchar(300) DEFAULT NULL COMMENT 'Ex :\nJalan Tenggilis Mejoyo ',
  `address_type` tinyint(4) NOT NULL COMMENT '0 : Home\n1 : Office\n',
  `complete_address` varchar(45) NOT NULL,
  `return_address` tinyint(4) NOT NULL COMMENT '0 : Not Set as return address\n1 : Set as Return address\n',
  `main_address` tinyint(4) NOT NULL COMMENT '0 : Not Set as Main Address\n1 : Set as Main Address\n',
  `tUsers_id` int(11) NOT NULL,
  `tDistricts_id` int(11) NOT NULL,
  `tDistricts_tCities_id` int(11) NOT NULL,
  `tDistricts_tCities_tProvinces_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tAddresses_tUsers1_idx` (`tUsers_id`),
  KEY `fk_tAddresses_tDistricts1_idx` (`tDistricts_id`,`tDistricts_tCities_id`,`tDistricts_tCities_tProvinces_id`),
  CONSTRAINT `fk_tAddresses_tDistricts1` FOREIGN KEY (`tDistricts_id`, `tDistricts_tCities_id`, `tDistricts_tCities_tProvinces_id`) REFERENCES `tdistricts` (`id`, `tCities_id`, `tCities_tProvinces_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tAddresses_tUsers1` FOREIGN KEY (`tUsers_id`) REFERENCES `tusers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taddresses`
--

LOCK TABLES `taddresses` WRITE;
/*!40000 ALTER TABLE `taddresses` DISABLE KEYS */;
INSERT INTO `taddresses` VALUES (1,'Putri Anggraini','+6287234567891','60243',NULL,0,'Jl. Wonokromo No.10, Surabaya',1,1,10,1,97,11),(2,'Sri Wahyuni','+6286547890123','60271',NULL,0,'Jl. Genteng Kali No.15, Surabaya',1,0,14,2,97,11),(3,'Bagas Alex','+6289876540987','60262',NULL,0,'Jl. Tegalsari No.21, Surabaya',1,1,7,3,97,11),(4,'Yudha Saputra','+6289123456789','60225',NULL,0,'Jl. Dukuh Pakis No.5, Surabaya',1,0,9,4,97,11),(5,'Lina S','+6288734567890','60275','Lantai 3, Kantor Agrowisata Surabaya',1,'Jl. Genteng Gang 2 No.7, Surabaya',1,1,18,5,97,11),(6,'Felicia Setiawati','+6288212121212','60281','Genteng Cokelat',0,'Jl. Gubeng Kertajaya No.2, Surabaya',1,0,21,6,97,11),(7,'Melati Salsabila','+6281987654321','60256','Pagar Hijau, Masukan di Box paket saja',0,'Jl. Sawahan Baru No.11, Surabaya',1,1,25,7,97,11),(8,'Gilang S','+6287123456789','60243',NULL,0,'Jl. Gayungan No.18, Surabaya',1,0,34,8,97,11),(9,'Benjamin Martin','+6286234567893','60292',NULL,0,'Jl. Sukolilo Indah No.9, Surabaya',1,1,19,9,97,11),(10,'Wahyu Haryanto','+6289432187654','60274','Kantor Jaya Abadi',1,'Jl. Tambaksari No.16, Surabaya',1,0,22,10,97,11),(11,'Erna Kusuma','+6285345678909','60233',NULL,0,'Jl. Tegalsari No.5, Surabaya',1,1,37,11,97,11),(12,'Budi Santoso','+6283345678901','60212',NULL,0,'Jl. Pabean Cantian No.22, Surabaya',1,0,15,12,97,11),(13,'Yayan Ruhian','+62858863452','312562',NULL,1,'Jl. MH Thamrin No.21, Jakarta Pusat',1,1,47,13,51,6),(14,'Vadil Bajidieh','+6283569954786','112345',NULL,1,'Jl. Medan Merdeka No.3, Jakarta Pusat',1,1,48,14,51,6),(15,'King Nassar','+627894561231','554321',NULL,1,'Jl. Senopati No.12, Jakarta Selatan',1,1,50,15,54,6),(16,'Ayu Ting Ting','+628912345671','554321',NULL,1,'Jl. Senopati No.13, Jakarta Selatan',1,1,51,15,54,6),(17,'Raffi Ahmad','+628912345672','554321',NULL,1,'Jl. Senopati No.14, Jakarta Selatan',1,1,52,15,54,6),(18,'Nagita Slavina','+628912345673','554321',NULL,1,'Jl. Senopati No.15, Jakarta Selatan',1,1,53,15,54,6),(19,'Denny Cagur','+628912345674','554321',NULL,1,'Jl. Senopati No.16, Jakarta Selatan',1,1,54,15,54,6),(20,'Lesti Kejora','+628912345675','554321',NULL,1,'Jl. Senopati No.17, Jakarta Selatan',1,1,55,15,54,6),(21,'ishowspeed','+627894561231','554321',NULL,1,'Jl. Jagir Wonokromo No.1, Surabaya',1,1,56,1,97,11);
/*!40000 ALTER TABLE `taddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcarts`
--

DROP TABLE IF EXISTS `tcarts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcarts` (
  `tVariants_id` int(11) NOT NULL,
  `tUsers_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  PRIMARY KEY (`tUsers_id`,`tVariants_id`),
  KEY `fk_tVariants_has_tUsers_tUsers1_idx` (`tUsers_id`),
  KEY `fk_tVariants_has_tUsers_tVariants1_idx` (`tVariants_id`),
  CONSTRAINT `fk_tVariants_has_tUsers_tUsers1` FOREIGN KEY (`tUsers_id`) REFERENCES `tusers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tVariants_has_tUsers_tVariants1` FOREIGN KEY (`tVariants_id`) REFERENCES `tvariants` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcarts`
--

LOCK TABLES `tcarts` WRITE;
/*!40000 ALTER TABLE `tcarts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcarts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcategory`
--

DROP TABLE IF EXISTS `tcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcategory`
--

LOCK TABLES `tcategory` WRITE;
/*!40000 ALTER TABLE `tcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcities`
--

DROP TABLE IF EXISTS `tcities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `tProvinces_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`tProvinces_id`),
  KEY `fk_tCities_tProvinces1_idx` (`tProvinces_id`),
  CONSTRAINT `fk_tCities_tProvinces1` FOREIGN KEY (`tProvinces_id`) REFERENCES `tprovinces` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcities`
--

LOCK TABLES `tcities` WRITE;
/*!40000 ALTER TABLE `tcities` DISABLE KEYS */;
INSERT INTO `tcities` VALUES (1,'Banda Aceh',1),(2,'Langsa',1),(3,'Lhokseumawe',1),(4,'Sabang',1),(5,'Subulussalam',1),(6,'Aceh Barat',1),(7,'Aceh Besar',1),(8,'Aceh Jaya',1),(9,'Aceh Selatan',1),(10,'Aceh Tamiang',1),(11,'Denpasar',2),(12,'Badung',2),(13,'Gianyar',2),(14,'Karangasem',2),(15,'Klungkung',2),(16,'Tabanan',2),(17,'Bangli',2),(18,'Buleleng',2),(19,'Jembrana',2),(20,'Singaraja',2),(21,'Serang',3),(22,'Cilegon',3),(23,'Tangerang',3),(24,'Tangerang Selatan',3),(25,'Pandeglang',3),(26,'Lebak',3),(27,'Cikupa',3),(28,'Cisoka',3),(29,'Rangkasbitung',3),(30,'Muncang',3),(31,'Bengkulu',4),(32,'Mukomuko',4),(33,'Rejang Lebong',4),(34,'Kepahiang',4),(35,'Bengkulu Selatan',4),(36,'Bengkulu Utara',4),(37,'Seluma',4),(38,'Kaur',4),(39,'Lebong',4),(40,'Curup',4),(41,'Yogyakarta',5),(42,'Bantul',5),(43,'Sleman',5),(44,'Gunung Kidul',5),(45,'Kulon Progo',5),(46,'Wates',5),(47,'Godean',5),(48,'Piyungan',5),(49,'Wonosari',5),(50,'Kasihan',5),(51,'Jakarta Pusat',6),(52,'Jakarta Utara',6),(53,'Jakarta Barat',6),(54,'Jakarta Selatan',6),(55,'Jakarta Timur',6),(56,'Kepulauan Seribu',6),(57,'Gorontalo',7),(58,'Limboto',7),(59,'Bone Bolango',7),(60,'Boalemo',7),(61,'Pohuwato',7),(62,'Gorontalo Utara',7),(63,'Tilamuta',7),(64,'Marisa',7),(65,'Atinggola',7),(66,'Kwandang',7),(67,'Jambi',8),(68,'Muaro Jambi',8),(69,'Tanjung Jabung Timur',8),(70,'Tanjung Jabung Barat',8),(71,'Batanghari',8),(72,'Sarolangun',8),(73,'Merangin',8),(74,'Bungo',8),(75,'Sungaipenuh',8),(76,'Kerinci',8),(77,'Bandung',9),(78,'Bogor',9),(79,'Bekasi',9),(80,'Depok',9),(81,'Sukabumi',9),(82,'Cimahi',9),(83,'Tasikmalaya',9),(84,'Cirebon',9),(85,'Garut',9),(86,'Subang',9),(87,'Semarang',10),(88,'Surakarta',10),(89,'Salatiga',10),(90,'Magelang',10),(91,'Tegal',10),(92,'Pekalongan',10),(93,'Cilacap',10),(94,'Purwokerto',10),(95,'Kudus',10),(96,'Pati',10),(97,'Surabaya',11),(98,'Malang',11),(99,'Madiun',11),(100,'Kediri',11),(101,'Probolinggo',11),(102,'Blitar',11),(103,'Pasuruan',11),(104,'Jember',11),(105,'Banyuwangi',11),(106,'Sidoarjo',11),(107,'Pontianak',12),(108,'Singkawang',12),(109,'Sambas',12),(110,'Ketapang',12),(111,'Mempawah',12),(112,'Sanggau',12),(113,'Sekadau',12),(114,'Kapuas Hulu',12),(115,'Landak',12),(116,'Kayong Utara',12),(117,'Banjarmasin',13),(118,'Banjarbaru',13),(119,'Martapura',13),(120,'Tanah Laut',13),(121,'Tanah Bumbu',13),(122,'Hulu Sungai Selatan',13),(123,'Hulu Sungai Tengah',13),(124,'Hulu Sungai Utara',13),(125,'Tabalong',13),(126,'Barito Kuala',13),(127,'Palangkaraya',14),(128,'Kapuas',14),(129,'Katingan',14),(130,'Kotawaringin Barat',14),(131,'Kotawaringin Timur',14),(132,'Lamandau',14),(133,'Seruyan',14),(134,'Sukamara',14),(135,'Gunung Mas',14),(136,'Barito Utara',14),(137,'Samarinda',15),(138,'Balikpapan',15),(139,'Bontang',15),(140,'Kutai Barat',15),(141,'Kutai Kartanegara',15),(142,'Kutai Timur',15),(143,'Paser',15),(144,'Penajam Paser Utara',15),(145,'Mahakam Ulu',15),(146,'Sangatta',15),(147,'Tanjung Selor',16),(148,'Tarakan',16),(149,'Nunukan',16),(150,'Malinau',16),(151,'Sebatik',16),(152,'Krayan',16),(153,'Tanjung Palas',16),(154,'Lumbis',16),(155,'Sembakung',16),(156,'Sekatak',16),(157,'Pangkal Pinang',17),(158,'Sungailiat',17),(159,'Toboali',17),(160,'Koba',17),(161,'Muntok',17),(162,'Belinyu',17),(163,'Kelapa',17),(164,'Mentok',17),(165,'Simpang Teritip',17),(166,'Tanjung Pandan',17),(167,'Tanjung Pinang',18),(168,'Batam',18),(169,'Bintan',18),(170,'Karimun',18),(171,'Natuna',18),(172,'Anambas',18),(173,'Lingga',18),(174,'Tanjung Balai Karimun',18),(175,'Dabo Singkep',18),(176,'Ranai',18),(177,'Bandar Lampung',19),(178,'Metro',19),(179,'Lampung Selatan',19),(180,'Lampung Timur',19),(181,'Lampung Utara',19),(182,'Tulang Bawang',19),(183,'Pringsewu',19),(184,'Pesawaran',19),(185,'Mesuji',19),(186,'Way Kanan',19),(187,'Ambon',20),(188,'Tual',20),(189,'Masohi',20),(190,'Piru',20),(191,'Namlea',20),(192,'Dobo',20),(193,'Saumlaki',20),(194,'Bula',20),(195,'Tiakur',20),(196,'Banda',20),(197,'Ternate',21),(198,'Tidore',21),(199,'Sofifi',21),(200,'Morotai',21),(201,'Halmahera Selatan',21),(202,'Halmahera Barat',21),(203,'Halmahera Utara',21),(204,'Halmahera Tengah',21),(205,'Halmahera Timur',21),(206,'Pulau Taliabu',21),(207,'Mataram',22),(208,'Lombok Barat',22),(209,'Lombok Tengah',22),(210,'Lombok Timur',22),(211,'Lombok Utara',22),(212,'Sumbawa',22),(213,'Sumbawa Barat',22),(214,'Bima',22),(215,'Dompu',22),(216,'Praya',22),(217,'Kupang',23),(218,'Maumere',23),(219,'Labuan Bajo',23),(220,'Ende',23),(221,'Waingapu',23),(222,'Ruteng',23),(223,'Atambua',23),(224,'Bajawa',23),(225,'Lewoleba',23),(226,'Kefamenanu',23),(227,'Jayapura',24),(228,'Merauke',24),(229,'Timika',24),(230,'Wamena',24),(231,'Nabire',24),(232,'Biak',24),(233,'Serui',24),(234,'Sarmi',24),(235,'Keerom',24),(236,'Yahukimo',24),(237,'Manokwari',25),(238,'Sorong',25),(239,'Fakfak',25),(240,'Kaimana',25),(241,'Raja Ampat',25),(242,'Tambrauw',25),(243,'Maybrat',25),(244,'South Sorong',25),(245,'Teluk Bintuni',25),(246,'Teluk Wondama',25),(247,'Wamena',26),(248,'Karubaga',26),(249,'Dekai',26),(250,'Elelim',26),(251,'Sinak',26),(252,'Tiom',26),(253,'Nduga',26),(254,'Mbua',26),(255,'Bokondini',26),(256,'Korupun',26),(257,'Merauke',27),(258,'Asmat',27),(259,'Boven Digoel',27),(260,'Mappi',27),(261,'Sota',27),(262,'Kepi',27),(263,'Oksibil',27),(264,'Kurima',27),(265,'Kimaam',27),(266,'Tanah Merah',27),(267,'Nabire',28),(268,'Paniai',28),(269,'Dogiyai',28),(270,'Deiyai',28),(271,'Intan Jaya',28),(272,'Mimika',28),(273,'Sugapa',28),(274,'Mapia',28),(275,'Mogoni',28),(276,'Obano',28),(277,'Sorong',29),(278,'Aimas',29),(279,'Maybrat',29),(280,'Tambrauw',29),(281,'Salawati',29),(282,'Moisegen',29),(283,'Seget',29),(284,'Beraur',29),(285,'Klawak',29),(286,'Klamono',29),(287,'Pekanbaru',30),(288,'Dumai',30),(289,'Siak',30),(290,'Rokan Hulu',30),(291,'Rokan Hilir',30),(292,'Bengkalis',30),(293,'Pelalawan',30),(294,'Indragiri Hilir',30),(295,'Indragiri Hulu',30),(296,'Kampar',30),(297,'Mamuju',31),(298,'Majene',31),(299,'Polewali Mandar',31),(300,'Mamasa',31),(301,'Pasangkayu',31),(302,'Tapango',31),(303,'Topoyo',31),(304,'Sampaga',31),(305,'Budong-Budong',31),(306,'Malunda',31),(307,'Makassar',32),(308,'Parepare',32),(309,'Palopo',32),(310,'Maros',32),(311,'Gowa',32),(312,'Takalar',32),(313,'Bone',32),(314,'Luwu',32),(315,'Sinjai',32),(316,'Soppeng',32),(317,'Palu',33),(318,'Poso',33),(319,'Donggala',33),(320,'Morowali',33),(321,'Tolitoli',33),(322,'Buol',33),(323,'Banggai',33),(324,'Parigi Moutong',33),(325,'Sigi',33),(326,'Tojo Una-Una',33),(327,'Kendari',34),(328,'Bau-Bau',34),(329,'Kolaka',34),(330,'Muna',34),(331,'Buton',34),(332,'Wakatobi',34),(333,'Bombana',34),(334,'Konawe',34),(335,'North Konawe',34),(336,'South Konawe',34);
/*!40000 ALTER TABLE `tcities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tdelivery_services`
--

DROP TABLE IF EXISTS `tdelivery_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tdelivery_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdelivery_services`
--

LOCK TABLES `tdelivery_services` WRITE;
/*!40000 ALTER TABLE `tdelivery_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `tdelivery_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tdelivery_services_has_tsellers`
--

DROP TABLE IF EXISTS `tdelivery_services_has_tsellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tdelivery_services_has_tsellers` (
  `tDelivery_Services_id` int(11) NOT NULL,
  `tSellers_id` int(11) NOT NULL,
  PRIMARY KEY (`tDelivery_Services_id`,`tSellers_id`),
  KEY `fk_tDelivery_Services_has_tSellers_tSellers1_idx` (`tSellers_id`),
  KEY `fk_tDelivery_Services_has_tSellers_tDelivery_Services1_idx` (`tDelivery_Services_id`),
  CONSTRAINT `fk_tDelivery_Services_has_tSellers_tDelivery_Services1` FOREIGN KEY (`tDelivery_Services_id`) REFERENCES `tdelivery_services` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tDelivery_Services_has_tSellers_tSellers1` FOREIGN KEY (`tSellers_id`) REFERENCES `tsellers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdelivery_services_has_tsellers`
--

LOCK TABLES `tdelivery_services_has_tsellers` WRITE;
/*!40000 ALTER TABLE `tdelivery_services_has_tsellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tdelivery_services_has_tsellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tdistricts`
--

DROP TABLE IF EXISTS `tdistricts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tdistricts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `tCities_id` int(11) NOT NULL,
  `tCities_tProvinces_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`tCities_id`,`tCities_tProvinces_id`),
  KEY `fk_tDistricts_tCities1_idx` (`tCities_id`,`tCities_tProvinces_id`),
  CONSTRAINT `fk_tDistricts_tCities1` FOREIGN KEY (`tCities_id`, `tCities_tProvinces_id`) REFERENCES `tcities` (`id`, `tProvinces_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2086 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdistricts`
--

LOCK TABLES `tdistricts` WRITE;
/*!40000 ALTER TABLE `tdistricts` DISABLE KEYS */;
INSERT INTO `tdistricts` VALUES (1,'Wonokromo',97,11),(2,'Genteng',97,11),(3,'Tegalsari',97,11),(4,'Dukuh Pakis',97,11),(5,'Genteng',97,11),(6,'Gubeng',97,11),(7,'Sawahan',97,11),(8,'Gayungan',97,11),(9,'Sukolilo',97,11),(10,'Tambaksari',97,11),(11,'Tegalsari',97,11),(12,'Pabean Cantian',97,11),(13,'Menteng',51,6),(14,'Gambir',51,6),(15,'Kebayoran Baru',54,6);
/*!40000 ALTER TABLE `tdistricts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproducts`
--

DROP TABLE IF EXISTS `tproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(500) NOT NULL,
  `specifcations` varchar(500) NOT NULL,
  `weight` double NOT NULL,
  `rating` double NOT NULL,
  `tSellers_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tProducts_tSellers1_idx` (`tSellers_id`),
  CONSTRAINT `fk_tProducts_tSellers1` FOREIGN KEY (`tSellers_id`) REFERENCES `tsellers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproducts`
--

LOCK TABLES `tproducts` WRITE;
/*!40000 ALTER TABLE `tproducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproducts_has_tcategory`
--

DROP TABLE IF EXISTS `tproducts_has_tcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproducts_has_tcategory` (
  `tProducts_id` int(11) NOT NULL,
  `tCategory_id` int(11) NOT NULL,
  PRIMARY KEY (`tProducts_id`,`tCategory_id`),
  KEY `fk_tProducts_has_tCategory_tCategory1_idx` (`tCategory_id`),
  KEY `fk_tProducts_has_tCategory_tProducts1_idx` (`tProducts_id`),
  CONSTRAINT `fk_tProducts_has_tCategory_tCategory1` FOREIGN KEY (`tCategory_id`) REFERENCES `tcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tProducts_has_tCategory_tProducts1` FOREIGN KEY (`tProducts_id`) REFERENCES `tproducts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproducts_has_tcategory`
--

LOCK TABLES `tproducts_has_tcategory` WRITE;
/*!40000 ALTER TABLE `tproducts_has_tcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tproducts_has_tcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tprovinces`
--

DROP TABLE IF EXISTS `tprovinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tprovinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tprovinces`
--

LOCK TABLES `tprovinces` WRITE;
/*!40000 ALTER TABLE `tprovinces` DISABLE KEYS */;
INSERT INTO `tprovinces` VALUES (1,'Aceh'),(2,'Bali'),(3,'Banten'),(4,'Bengkulu'),(5,'DI Yogyakarta'),(6,'DKI Jakarta'),(7,'Gorontalo'),(8,'Jambi'),(9,'Jawa Barat'),(10,'Jawa Tengah'),(11,'Jawa Timur'),(12,'Kalimantan Barat'),(13,'Kalimantan Selatan'),(14,'Kalimantan Tengah'),(15,'Kalimantan Timur'),(16,'Kalimantan Utara'),(17,'Kepulauan Bangka Belitung'),(18,'Kepulauan Riau'),(19,'Lampung'),(20,'Maluku'),(21,'Maluku Utara'),(22,'Nusa Tenggara Barat'),(23,'Nusa Tenggara Timur'),(24,'Papua'),(25,'Papua Barat'),(26,'Papua Pegunungan'),(27,'Papua Selatan'),(28,'Papua Tengah'),(29,'Papua Barat Daya'),(30,'Riau'),(31,'Sulawesi Barat'),(32,'Sulawesi Selatan'),(33,'Sulawesi Tengah'),(34,'Sulawesi Tenggara'),(35,'Sulawesi Utara'),(36,'Sumatera Barat'),(37,'Sumatera Selatan'),(38,'Sumatera Utara');
/*!40000 ALTER TABLE `tprovinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsellers`
--

DROP TABLE IF EXISTS `tsellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(45) NOT NULL,
  `owner_name` varchar(45) NOT NULL COMMENT 'nama sesuai ktp\n',
  `identification_number` varchar(45) NOT NULL,
  `rating` double DEFAULT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tAddresses_id` int(11) NOT NULL,
  `tUsers_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tSellers_tAddresses1_idx` (`tAddresses_id`),
  KEY `fk_tSellers_tUsers1_idx` (`tUsers_id`),
  CONSTRAINT `fk_tSellers_tAddresses1` FOREIGN KEY (`tAddresses_id`) REFERENCES `taddresses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tSellers_tUsers1` FOREIGN KEY (`tUsers_id`) REFERENCES `tusers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsellers`
--

LOCK TABLES `tsellers` WRITE;
/*!40000 ALTER TABLE `tsellers` DISABLE KEYS */;
INSERT INTO `tsellers` VALUES (1,'Toko Plastik Jaya Abadi','Wahyu Haryanto','3213373009900002',NULL,'','6289432187654','wahyu.haryanto@mail.com',10,22),(2,'Butik Batique','Yayan Ruhian','1563520402800001',NULL,'','+62858863452','yayanruhgreget123@greget.com',13,47),(3,'Vadil\'s Pet Shop','Vadil Bajidieh','5416212412990087',NULL,'','+6283569954786','vadilkejangkesetrum@loli.com',14,47),(4,'Dead Lamp Gadget Store','King Nassar','6547891305720033',NULL,'','+627894561231','sepertimatilampu@yasayang.com',15,50),(5,'Ting Ting Ting Music Store','Ayu Ting Ting','6547896006900033',NULL,'','+627894561231','sepertimatilampu@yasayang.com',16,51),(6,'Rafathar Toy Store','Raffi Ahmad','6547891305720033',NULL,'','+628912345672','raffiahmad@tvstar.com',17,52),(7,'Nagih Berlian Store','Nagita Slavina','6547891305720033',NULL,'','+628912345673','nagitaslavina@glamorous.com',18,53),(8,'Dennis Cigar','Denny Cagur','6547891305720033',NULL,'','+628912345674','dennycagur@lawak.com',19,54),(9,'Bintang Book Store','Lesti Kejora','6547891305720033',NULL,'','+628912345675','lestikejora@dangdut.com',20,55),(15,'Crista Ronaldo Merch Store','ishowspeed','6547891305720033',NULL,'','+627894561231','ishowspeed@cr7.com',21,56);
/*!40000 ALTER TABLE `tsellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tusers`
--

DROP TABLE IF EXISTS `tusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(16) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `birthdate` date NOT NULL,
  `created_date` datetime NOT NULL,
  `membership` int(11) NOT NULL COMMENT 'ENUM\n1 : \n2 : \n3 : \n4 : \n5 :\n6 : \n7 :\n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tusers`
--

LOCK TABLES `tusers` WRITE;
/*!40000 ALTER TABLE `tusers` DISABLE KEYS */;
INSERT INTO `tusers` VALUES (1,'Aditia Pratama','aditpratama','AdiTia@123','+6281234567890','aditia.pratama@gmail.com',0,'1992-03-12','2024-01-05 00:00:00',0),(2,'Siti Nurhaliza','sitinhz','SitiNHZ!234','+6285123456789','siti.nurhaliza@yahoo.com',1,'1995-06-18','2024-01-10 00:00:00',0),(3,'Bayu Wijaya','bayuwijaya89','BayuW$789','+6285278673456','bayu.wijaya@gmail.com',0,'1989-08-23','2024-01-12 00:00:00',0),(4,'Rina Wulandari','rinawld','RinaWu!@D23','+6289876543210','rina.wulandari@mail.com',1,'1991-05-05','2024-02-08 00:00:00',0),(5,'Agus Suryono','agus_sur','AguS@1234','+6281223454321','agus.suryono@outlook.com',0,'1985-07-12','2023-12-29 00:00:00',0),(6,'Dewi Lestari','dewi.lestari','D3wi!LesT@ri','+6286567890123','dewi.lestari@hotmail.com',1,'1993-11-15','2024-03-01 00:00:00',0),(7,'Rudi Hartono','rudi_ht','RuDi_123!','+6289876540987','rudi.hartono@gmail.com',0,'1988-02-20','2024-01-25 00:00:00',0),(8,'Anisa Maharani','anisamhr','Ani!sa_2023','+6281123455678','anisa.maharani@yahoo.com',1,'1996-09-17','2024-02-12 00:00:00',0),(9,'Yudha Saputra','yudhsap','Yudh@SaP123','+6289123456789','yudha.saputra@mail.com',0,'1994-04-04','2024-02-22 00:00:00',0),(10,'Putri Anggraini','putrianggraini','P4ngGr@1ni','+6287234567891','putri.anggraini@gmail.com',1,'1997-03-21','2024-02-28 00:00:00',0),(11,'Ahmad Hidayat','ahmad.hid','AhmadHid@888','+6286567894321','ahmad.hidayat@mail.com',0,'1990-12-31','2024-03-05 00:00:00',0),(12,'Nurul Fauziah','nurulfz','NuruLFz_567!','+6288123456712','nurul.fauziah@yahoo.com',1,'1998-01-28','2024-03-09 00:00:00',0),(13,'Faisal Ridwan','faisalrdw','F4iS!RidW@n','+6289223456879','faisal.ridwan@gmail.com',0,'1991-11-20','2024-03-18 00:00:00',0),(14,'Sri Wahyuni','sriwahyuni','Sri_W@HyUni12','+6286547890123','sri.wahyuni@outlook.com',1,'1994-07-25','2024-03-23 00:00:00',0),(15,'Budi Santoso','budisantoso','BudiS!t0so','+6283345678901','budi.santoso@hotmail.com',0,'1987-10-09','2024-03-30 00:00:00',0),(16,'Intan Permata','intanpm','Intan@Pm!2023','+6285345678943','intan.permata@gmail.com',1,'1992-09-03','2024-04-04 00:00:00',0),(17,'Taufik Ismail','taufikism','Tauf1kIs@Ma1l','+6286432123456','taufik.ismail@yahoo.com',0,'1985-05-14','2024-04-08 00:00:00',0),(18,'Lina Suryani','linasuryani','Lina@SuRy12','+6288734567890','lina.suryani@gmail.com',1,'1999-06-30','2024-04-12 00:00:00',0),(19,'Dedi Rahmat','dedirahmat','Dedi_R@HMt!','+6286234567893','dedi.rahmat@hotmail.com',0,'1993-08-08','2024-04-20 00:00:00',0),(20,'Maya Sari','mayasari','Maya!S4r1@1','+6287123456790','maya.sari@outlook.com',1,'1997-07-16','2024-04-25 00:00:00',0),(21,'Andre Setiawan','andreset','Andr3S@tiaW!','+6285543212345','andre.setiawan@yahoo.com',0,'1995-03-12','2024-05-01 00:00:00',0),(22,'Wahyu Haryanto','wahyuhar','WahYu_H123!','+6289432187654','wahyu.haryanto@mail.com',0,'1990-09-30','2024-05-04 00:00:00',0),(23,'Riska Amelia','riskaamelia','Riska_Am!Eli4','+6281335678903','riska.amelia@gmail.com',1,'1998-11-09','2024-05-10 00:00:00',0),(24,'Hendra Kurniawan','hendrakurn','Hendra_123!','+6286634125678','hendra.kurniawan@hotmail.com',0,'1991-04-01','2024-05-15 00:00:00',0),(25,'Melati Salsabila','melatisal','Melati_S4l!234','+6281987654321','melati.salsabila@yahoo.com',1,'1994-12-18','2024-05-19 00:00:00',0),(26,'Rahmat Santoso','rahmatsan','Rahm@T_snto123','+6287534567890','rahmat.santoso@gmail.com',0,'1993-02-22','2024-05-26 00:00:00',0),(27,'Dina Kusuma','dinakusuma','Dina_Ku$uM@1','+6286123457654','dina.kusuma@gmail.com',1,'1995-08-12','2024-05-30 00:00:00',0),(28,'Fahri Maulana','fahrimln','Fahri_123!Mn','+6287345123456','fahri.maulana@hotmail.com',0,'1987-07-05','2024-06-02 00:00:00',0),(29,'Suci Handayani','sucihand','SuCiH@ndy_12!','+6289432156789','suci.handayani@yahoo.com',1,'1999-01-14','2024-06-07 00:00:00',0),(30,'Reza Anwar','rezaanwar','R3zaA!nW@R12','+6285134678901','reza.anwar@mail.com',0,'1990-05-20','2024-06-14 00:00:00',0),(31,'Yanti Susanti','yantisusan','Yanti!S4nT1','+6286345678901','yanti.susanti@gmail.com',1,'1996-03-18','2024-06-18 00:00:00',0),(32,'Tomi Wijaya','tomiwijaya','Tomi_Wij@!12','+6289734561234','tomi.wijaya@yahoo.com',0,'1991-10-27','2024-06-23 00:00:00',0),(33,'Sari Pratiwi','saripratiwi','S4RiPr@tiwI123','+6286543212345','sari.pratiwi@mail.com',1,'1993-09-06','2024-06-28 00:00:00',0),(34,'Gilang Saputra','gilangsap','Gil@ng_987!','+6287123456789','gilang.saputra@gmail.com',0,'1988-06-17','2024-07-01 00:00:00',0),(35,'Fitri Rahayu','fitrirahyu','F1tr!RahaYu','+6289432123456','fitri.rahayu@yahoo.com',1,'1997-04-30','2024-07-06 00:00:00',0),(36,'Bobby Kurniawan','bobbykurn','B0bByKur!niaw123','+6286134567890','bobby.kurniawan@hotmail.com',0,'1991-11-23','2024-07-09 00:00:00',0),(37,'Erna Kusuma','ernakusuma','Erna_Kus@m@!','+6285345678909','erna.kusuma@mail.com',1,'1999-05-25','2024-07-14 00:00:00',0),(38,'Hasan Basri','hasanbasri','HasanB@sr1_123','+6286547890123','hasan.basri@gmail.com',0,'1989-07-10','2024-07-19 00:00:00',0),(39,'Dina Kurniati','dinakurniati','DinaKurn!At!123','+6287213456789','dina.kurniati@gmail.com',1,'1994-02-27','2024-07-25 00:00:00',0),(40,'Rio Darmawan','riodarmawan','Ri0D@RmA12','+6289123456791','rio.darmawan@hotmail.com',0,'1993-08-15','2024-07-30 00:00:00',0),(41,'Mita Kartika','mitakartika','M1taKart1k@','+6288212345678','mita.kartika@yahoo.com',1,'1997-01-11','2024-08-02 00:00:00',0),(42,'Fauzi Firmansyah','fauzifirm','F@uz1Firm@nsYh!','+6286543215678','fauzi.firmansyah@gmail.com',0,'1995-06-13','2024-08-05 00:00:00',0),(43,'Nina Ramadhani','ninarama','N1NaR@madhAn1','+6287345612345','nina.ramadhani@mail.com',1,'1992-10-04','2024-08-10 00:00:00',0),(44,'Dodi Prasetyo','dodipras','DoD1_PrasT!yo','+6288234567890','dodi.prasetyo@gmail.com',0,'1988-03-09','2024-08-14 00:00:00',0),(45,'Vina Lestari','vinales','Vin@L3stari123','+6287212345987','vina.lestari@hotmail.com',1,'1996-12-12','2024-08-19 00:00:00',0),(46,'Wawan Sutrisno','wawansut','Wawan!S@TrIsno','+6286654321234','wawan.sutrisno@mail.com',0,'1987-09-26','2024-08-23 00:00:00',0),(47,'Yayan Ruhian','YayanKurangGreget123','gregetbanget123','+62858863452','yayanruhgreget123@greget.com',0,'1980-02-04','2024-02-12 00:00:00',0),(48,'Vadil Bajidieh','vadillopeloli09','cicakdidinding','+6283569954786','vadilkejangkesetrum@loli.com',0,'1999-12-24','2024-01-12 00:00:00',0),(50,'King Nassar','kingnassar17','sepertimatilampu','+627894561231','sepertimatilampu@yasayang.com',0,'1972-05-13','2024-04-30 00:00:00',0),(51,'Ayu Ting Ting','ayutingting','cintaindah123','+628912345671','ayutingting@popstar.com',1,'1990-06-20','2024-03-15 00:00:00',0),(52,'Raffi Ahmad','raffiahmad','superhost321','+628912345672','raffiahmad@tvstar.com',0,'1987-02-17','2024-04-10 00:00:00',0),(53,'Nagita Slavina','nagitaslavina','loveaffair321','+628912345673','nagitaslavina@glamorous.com',1,'1988-01-24','2024-04-15 00:00:00',0),(54,'Denny Cagur','dennycagur','lawakterus666','+628912345674','dennycagur@lawak.com',0,'1978-08-29','2024-04-20 00:00:00',0),(55,'Lesti Kejora','lestikejora','lestikejora_bgt','+628912345675','lestikejora@dangdut.com',1,'1999-12-23','2024-04-21 00:00:00',0),(56,'ishowspeed','ishowspeedcr7','minggirlumisquee','+627894561231','ishowspeed@cr7.com',0,'1972-05-13','2024-04-30 00:00:00',0);
/*!40000 ALTER TABLE `tusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvariants`
--

DROP TABLE IF EXISTS `tvariants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tvariants` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL,
  `tProducts_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tVariants_tProducts1_idx` (`tProducts_id`),
  CONSTRAINT `fk_tVariants_tProducts1` FOREIGN KEY (`tProducts_id`) REFERENCES `tproducts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvariants`
--

LOCK TABLES `tvariants` WRITE;
/*!40000 ALTER TABLE `tvariants` DISABLE KEYS */;
/*!40000 ALTER TABLE `tvariants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvouchers`
--

DROP TABLE IF EXISTS `tvouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tvouchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `minimum_purchase` double NOT NULL,
  `maximum_discount` double NOT NULL,
  `discount_rate` double NOT NULL,
  `expiry_date` date NOT NULL,
  `maximum_used` int(11) NOT NULL,
  `tSellers_id` int(11) DEFAULT NULL,
  `tPayment_Method_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tVouchers_tSellers1_idx` (`tSellers_id`),
  KEY `fk_tVouchers_tPayment_Method1_idx` (`tPayment_Method_id`),
  CONSTRAINT `fk_tVouchers_tPayment_Method1` FOREIGN KEY (`tPayment_Method_id`) REFERENCES `tpayment_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tVouchers_tSellers1` FOREIGN KEY (`tSellers_id`) REFERENCES `tsellers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvouchers`
--

LOCK TABLES `tvouchers` WRITE;
/*!40000 ALTER TABLE `tvouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tvouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 10:33:55
