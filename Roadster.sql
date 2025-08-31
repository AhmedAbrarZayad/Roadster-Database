-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: roadster
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `area_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `crime_rate` double DEFAULT NULL,
  `congestion_level` double DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `Pstation_id` int DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  KEY `Pstation_id` (`Pstation_id`),
  CONSTRAINT `area_ibfk_1` FOREIGN KEY (`Pstation_id`) REFERENCES `police_station` (`station_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Panchlaish',0.15,0.7,2.5,2),(2,'Khulshi',0.1,0.5,3,9),(3,'Halishahar',0.08,0.4,4.5,10),(4,'Patenga',0.05,0.3,5,11),(5,'Double Mooring',0.12,0.6,2,4),(6,'EPZ',0.09,0.55,3.5,8),(7,'Kotwali',0.2,0.9,1.5,3),(8,'Chandgaon',0.11,0.65,4,12),(9,'Bayezid Bostami',0.14,0.75,5,13),(10,'Sadarghat',0.18,0.8,1.8,14),(11,'Bandar',0.07,0.4,3.2,15),(12,'Karnaphuli',0.06,0.35,6,16),(13,'Chawkbazar',0.16,0.85,2.3,5),(14,'Bakalia',0.13,0.7,2.7,6),(15,'Pahartali',0.09,0.5,3.1,7),(16,'Airport',0.04,0.2,7,17),(17,'Mirpur',0.15,0.8,4.5,45),(18,'Pallabi',0.12,0.7,5,46),(19,'Kafrul',0.13,0.75,4,47),(20,'Tejgaon',0.18,0.9,2.5,42),(21,'Gulshan',0.05,0.6,5.5,38),(22,'Cantonment',0.04,0.5,6,39),(23,'Badda',0.1,0.7,4.5,40),(24,'Khilkhet',0.09,0.65,5,41),(25,'Dhanmondi',0.14,0.8,3,19),(26,'Shahbagh',0.16,0.9,2,20),(27,'New Market',0.15,0.85,2.2,21),(28,'Lalbagh',0.17,0.95,1.8,22),(29,'Motijheel',0.2,1,1.5,29),(30,'Ramna',0.19,0.9,2,18),(31,'Jatrabari',0.18,0.85,3.5,28),(32,'Uttara',0.1,0.6,7,33),(33,'Mohammadpur',0.16,0.8,3.5,43),(34,'Adabor',0.14,0.75,3,44),(35,'Shah Ali',0.11,0.6,5.5,48),(36,'Darus-Salam',0.12,0.7,5,49),(37,'Kotwali (Sylhet)',0.14,0.7,2.5,51),(38,'South Surma',0.08,0.4,4,52),(39,'Jalalabad',0.07,0.35,5,53),(40,'Bimanbandar',0.05,0.25,6.5,54),(41,'Moglabazar',0.06,0.3,5.5,55),(42,'Shah Poran',0.09,0.5,4.8,56),(43,'Khulna Sadar',0.15,0.75,3,57),(44,'Sonadanga',0.12,0.6,3.5,58),(45,'Khalishpur',0.11,0.55,4,59),(46,'Daulatpur',0.1,0.5,4.5,60),(47,'Khanjahan Ali',0.09,0.45,5,61),(48,'Labanchara',0.13,0.65,3.2,62),(49,'Boalia',0.14,0.7,2.5,65),(50,'Motihar',0.11,0.5,3.5,66),(51,'Rajpara',0.12,0.6,3,67),(52,'Shah Makhdum',0.1,0.45,4,68),(53,'Kashiadanga',0.09,0.4,4.5,69);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cctv_camera`
--

DROP TABLE IF EXISTS `cctv_camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cctv_camera` (
  `camera_id` int NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `Lmgrc_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`camera_id`),
  KEY `Lmgrc_code` (`Lmgrc_code`),
  CONSTRAINT `cctv_camera_ibfk_1` FOREIGN KEY (`Lmgrc_code`) REFERENCES `location` (`mgrc_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cctv_camera`
--

LOCK TABLES `cctv_camera` WRITE;
/*!40000 ALTER TABLE `cctv_camera` DISABLE KEYS */;
INSERT INTO `cctv_camera` VALUES (101,'Active','45PXN209217'),(102,'Active','45PXN260270'),(103,'Inactive','45QYJ287514'),(104,'Active','45QYJ270503'),(105,'Active','45QYJ271485'),(106,'Active','46QCG932599'),(107,'Active','45QCE155095'),(108,'Active','45QDF687103'),(109,'Inactive','45QDF700140'),(110,'Active','45PXN240210'),(111,'Active','45QYJ282662'),(112,'Inactive','45QCE158102'),(113,'Active','45QDF670118'),(114,'Active','45PXN210190'),(115,'Active','45QYJ275545');
/*!40000 ALTER TABLE `cctv_camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crime`
--

DROP TABLE IF EXISTS `crime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crime` (
  `crime_id` int NOT NULL,
  `crime_type` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `fine_amount` double DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`crime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime`
--

LOCK TABLES `crime` WRITE;
/*!40000 ALTER TABLE `crime` DISABLE KEYS */;
INSERT INTO `crime` VALUES (1,'Traffic Violation','Speeding in a school zone.',1500,'2025-08-20 09:30:00'),(2,'Robbery','Armed robbery at a convenience store.',NULL,'2025-08-21 14:45:00'),(3,'Assault','Physical assault during a street altercation.',5000,'2025-08-22 18:20:00'),(4,'Theft','Petty theft from a parked vehicle.',2500,'2025-08-23 03:10:00'),(5,'Vandalism','Graffiti on public property.',1000,'2025-08-24 22:00:00'),(6,'Drug Possession','Possession of illegal narcotics.',NULL,'2025-08-25 11:55:00'),(7,'Burglary','Breaking and entering a residential property.',NULL,'2025-08-26 01:30:00'),(8,'Fraud','Credit card fraud and identity theft.',NULL,'2025-08-27 16:40:00'),(9,'Drunk Driving','Driving under the influence of alcohol.',8000,'2025-08-28 02:25:00'),(10,'Kidnapping','Abduction of a minor.',NULL,'2025-08-29 07:00:00'),(11,'Arson','Intentionally setting fire to an abandoned building.',NULL,'2025-08-30 20:15:00'),(12,'Public Disturbance','Creating a loud and disruptive scene in a public park.',500,'2025-08-31 10:05:00'),(13,'Cybercrime','Hacking into a company database.',NULL,'2025-09-01 13:40:00'),(14,'Extortion','Blackmailing a public figure.',NULL,'2025-09-02 09:10:00'),(15,'Hit and Run','Fleeing the scene of a traffic accident.',NULL,'2025-09-03 17:50:00');
/*!40000 ALTER TABLE `crime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crosswalk`
--

DROP TABLE IF EXISTS `crosswalk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crosswalk` (
  `crosswalk_id` int NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `start` varchar(100) DEFAULT NULL,
  `end` varchar(100) DEFAULT NULL,
  `Lmgrc_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`crosswalk_id`),
  KEY `Lmgrc_code` (`Lmgrc_code`),
  CONSTRAINT `crosswalk_ibfk_1` FOREIGN KEY (`Lmgrc_code`) REFERENCES `location` (`mgrc_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crosswalk`
--

LOCK TABLES `crosswalk` WRITE;
/*!40000 ALTER TABLE `crosswalk` DISABLE KEYS */;
INSERT INTO `crosswalk` VALUES (1,'Active','North Side of GEC Circle','South Side of GEC Circle','45PXN200250'),(2,'Active','East Side of Kotwali','West Side of Kotwali','45PXN210215'),(3,'Active','Near Lalbagh School','Opposite Lalbagh School','45QYJ271486'),(4,'Inactive','Near Mirpur Cantonment School','Opposite Mirpur Cantonment School','45QYJ238566'),(5,'Active','Across from The Eatalia','Near Park Entrance','45QYJ318559'),(6,'Active','At Cantonment School Entrance','Across the Road','45QYJ292583'),(7,'Active','Near Zindabazar intersection','Across the Street','46QCG932600'),(8,'Active','Near Sonadanga Intersection','Across Road from Intersection','45QCE158103'),(9,'Inactive','Near Military Collegiate School','Across Main Road','45QCE170156'),(10,'Active','At Zero Point Intersection','Across from Main Shop','45QDF687104'),(11,'Active','Near Rajshahi Collegiate School','Opposite School Entrance','45QDF670119'),(12,'Active','Near Katakhali Thana','Across from Thana','45QDF730105');
/*!40000 ALTER TABLE `crosswalk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `license_number` varchar(100) DEFAULT NULL,
  `contact_info` varchar(20) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Aminul Islam','258741369','01712345678','Chattogram'),(2,'Shafiq Rahman','159753486','01812345678','Chattogram'),(3,'Nusrat Jahan','486259147','01912345678','Chattogram'),(4,'Kamrul Hasan','369852147','01712345679','Dhaka'),(5,'Farhana Akter','741852963','01812345679','Dhaka'),(6,'Md. Yusuf','951357842','01912345679','Dhaka'),(7,'Jannatul Ferdous','852963741','01712345680','Dhaka'),(8,'Rashed Khan','147258369','01812345680','Sylhet'),(9,'Fahim Ahmed','369147258','01912345680','Sylhet'),(10,'Saima Begum','258369147','01712345681','Sylhet'),(11,'Imranul Haque','753951852','01812345681','Khulna'),(12,'Taslima Khanam','852147369','01912345681','Khulna'),(13,'Zahidul Islam','963258741','01712345682','Khulna'),(14,'Mina Akter','456321789','01812345682','Rajshahi'),(15,'Ehsan Chowdhury','789123456','01912345682','Rajshahi'),(16,'Tamanna Sultana','159357486','01712345683','Rajshahi'),(17,'Rafiqul Alam','486321741','01812345683','Chattogram'),(18,'Nabila Afroz','369258147','01912345683','Chattogram'),(19,'Khalid Mahmud','951852369','01712345684','Dhaka'),(20,'Shirin Chowdhury','741369852','01812345684','Dhaka'),(21,'Rony Talukder','852741963','01912345684','Dhaka'),(22,'Sabbir Hossain','147963258','01712345685','Sylhet'),(23,'Sabina Akter','369741852','01812345685','Sylhet'),(24,'Riad Uddin','258963147','01912345685','Khulna'),(25,'Laboni Haque','753147258','01712345686','Khulna');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drives`
--

DROP TABLE IF EXISTS `drives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drives` (
  `Vvehicle_id` int NOT NULL,
  `Ddriver_id` int NOT NULL,
  PRIMARY KEY (`Vvehicle_id`,`Ddriver_id`),
  KEY `Ddriver_id` (`Ddriver_id`),
  CONSTRAINT `drives_ibfk_1` FOREIGN KEY (`Vvehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `drives_ibfk_2` FOREIGN KEY (`Ddriver_id`) REFERENCES `driver` (`driver_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drives`
--

LOCK TABLES `drives` WRITE;
/*!40000 ALTER TABLE `drives` DISABLE KEYS */;
INSERT INTO `drives` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(1,21),(2,22),(3,23),(4,24),(5,25);
/*!40000 ALTER TABLE `drives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `involves`
--

DROP TABLE IF EXISTS `involves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `involves` (
  `Ccrime_id` int NOT NULL,
  `Ddriver_id` int NOT NULL,
  PRIMARY KEY (`Ccrime_id`,`Ddriver_id`),
  KEY `Ddriver_id` (`Ddriver_id`),
  CONSTRAINT `involves_ibfk_1` FOREIGN KEY (`Ccrime_id`) REFERENCES `crime` (`crime_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `involves_ibfk_2` FOREIGN KEY (`Ddriver_id`) REFERENCES `driver` (`driver_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `involves`
--

LOCK TABLES `involves` WRITE;
/*!40000 ALTER TABLE `involves` DISABLE KEYS */;
INSERT INTO `involves` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(1,16),(2,17),(3,18),(4,19),(5,20),(6,21),(7,22);
/*!40000 ALTER TABLE `involves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `mgrc_code` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `Aarea_id` int DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mgrc_code`),
  KEY `Aarea_id` (`Aarea_id`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`Aarea_id`) REFERENCES `area` (`area_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('45PXN130170','police_station','Patenga Thana',4,'Chattogram'),('45PXN135165','police_station','Air Port Thana',16,'Chattogram'),('45PXN140220','police_station','EPZ Thana',6,'Chattogram'),('45PXN173270','police_station','Halishahar Thana',3,'Chattogram'),('45PXN180185','police_station','Bandar Thana',11,'Chattogram'),('45PXN183248','police_station','Double Mooring Thana',5,'Chattogram'),('45PXN185250','restaurant','Meridian Hotel & Restaurant',5,'Chattogram'),('45PXN185300','police_station','Pahartali Thana',15,'Chattogram'),('45PXN200250','intersection','GEC Circle Intersection',1,'Chattogram'),('45PXN209217','police_station','Kotwali Thana',7,'Chattogram'),('45PXN210190','police_station','Sadarghat Thana',10,'Chattogram'),('45PXN210215','intersection','Kotwali Intersection',7,'Chattogram'),('45PXN218270','police_station','Khulshi Thana',2,'Chattogram'),('45PXN225280','gas_pump','Southern CNG Filling Station',3,'Chattogram'),('45PXN240210','police_station','Chawkbazar Thana',13,'Chattogram'),('45PXN240211','restaurant','Mezban Restaurant',13,'Chattogram'),('45PXN245198','school','Bakalia Govt. High School',14,'Chattogram'),('45PXN249195','police_station','Bakalia Thana',14,'Chattogram'),('45PXN260270','police_station','Panchlaish Model Thana',1,'Chattogram'),('45PXN267277','police_station','Bayezid Bostami Thana',9,'Chattogram'),('45PXN280145','police_station','Karnaphuli Thana',12,'Chattogram'),('45PXN285210','police_station','Chandgaon Thana',8,'Chattogram'),('45PXN285220','school','CDA Public School and College',8,'Chattogram'),('45QCE140080','police_station','Labanchara Thana',48,'Khulna'),('45QCE150060','police_station','Harintana Thana',48,'Khulna'),('45QCE155095','police_station','Khulna Sadar Thana',43,'Khulna'),('45QCE155096','gas_pump','MS Mirza LPG Gas Station',43,'Khulna'),('45QCE158102','police_station','Sonadanga Thana',44,'Khulna'),('45QCE158103','intersection','Sonadanga Intersection',44,'Khulna'),('45QCE162128','police_station','Khalishpur Thana',45,'Khulna'),('45QCE162129','restaurant','Firefly Restaurant',45,'Khulna'),('45QCE170135','police_station','Aranghata Thana',48,'Khulna'),('45QCE170155','police_station','Daulatpur Thana',46,'Khulna'),('45QCE170156','school','Military Collegiate School',46,'Khulna'),('45QCE178184','police_station','Khanjahan Ali Thana',47,'Khulna'),('45QDF630120','police_station','Damkura Thana',53,'Rajshahi'),('45QDF645100','police_station','Kashiadanga Thana',53,'Rajshahi'),('45QDF645101','gas_pump','Prio Filling Station',53,'Rajshahi'),('45QDF655102','police_station','Karnhar Thana',53,'Rajshahi'),('45QDF665090','police_station','Poba Thana',53,'Rajshahi'),('45QDF670118','police_station','Rajpara Thana',51,'Rajshahi'),('45QDF670119','school','Rajshahi Collegiate School',51,'Rajshahi'),('45QDF687103','police_station','Boalia Thana',49,'Rajshahi'),('45QDF687104','intersection','Zero Point Intersection',49,'Rajshahi'),('45QDF690115','police_station','Chandrima Thana',53,'Rajshahi'),('45QDF700085','police_station','Belpukur Thana',53,'Rajshahi'),('45QDF700140','police_station','Shah Makhdum Thana',52,'Rajshahi'),('45QDF700141','restaurant','Arabian Kitchen',52,'Rajshahi'),('45QDF725110','police_station','Motihar Thana',50,'Rajshahi'),('45QDF730105','police_station','Katakhali Thana',53,'Rajshahi'),('45QYJ220550','police_station','Shah Ali Thana',35,'Dhaka'),('45QYJ222568','police_station','Pallabi Thana',18,'Dhaka'),('45QYJ230535','police_station','Darus-Salam Thana',36,'Dhaka'),('45QYJ235528','police_station','Adabor Thana',34,'Dhaka'),('45QYJ238565','police_station','Mirpur Model Thana',17,'Dhaka'),('45QYJ238566','school','Mirpur Cantonment Public School & College',17,'Dhaka'),('45QYJ245525','police_station','Mohammadpur Thana',33,'Dhaka'),('45QYJ247466','police_station','Kamrangirchar Thana',28,'Dhaka'),('45QYJ252488','police_station','Hazaribagh Thana',28,'Dhaka'),('45QYJ255570','police_station','Kafrul Thana',19,'Dhaka'),('45QYJ260680','police_station','Turag Thana',32,'Dhaka'),('45QYJ265507','police_station','Dhanmondi Thana',25,'Dhaka'),('45QYJ265508','gas_pump','Ria Risha Group',25,'Dhaka'),('45QYJ270503','police_station','New Market Thana',27,'Dhaka'),('45QYJ270504','restaurant','Bukhara Restaurant',27,'Dhaka'),('45QYJ271485','police_station','Lalbagh Thana',28,'Dhaka'),('45QYJ271486','school','Lalbagh Model School & College',28,'Dhaka'),('45QYJ275545','police_station','Tejgaon Thana',20,'Dhaka'),('45QYJ275546','gas_pump','Omera LPG',20,'Dhaka'),('45QYJ282650','police_station','Airport Thana (Dhaka)',32,'Dhaka'),('45QYJ282662','police_station','Uttara Thana',32,'Dhaka'),('45QYJ284517','police_station','Shahbagh Thana',26,'Dhaka'),('45QYJ287514','police_station','Ramna Thana',30,'Dhaka'),('45QYJ287515','intersection','Ramna Intersection',30,'Dhaka'),('45QYJ288484','police_station','Kotwali Thana (Dhaka)',28,'Dhaka'),('45QYJ292582','police_station','Cantonment Thana',22,'Dhaka'),('45QYJ292583','school','Cantonment English School & College',22,'Dhaka'),('45QYJ295475','police_station','Sutrapur Thana',28,'Dhaka'),('45QYJ297528','police_station','Paltan Thana',29,'Dhaka'),('45QYJ300485','police_station','Gandaria Thana',28,'Dhaka'),('45QYJ300665','police_station','Dakshinkhan Thana',32,'Dhaka'),('45QYJ300685','police_station','Uttarkhan Thana',32,'Dhaka'),('45QYJ303525','police_station','Motijheel Thana',29,'Dhaka'),('45QYJ303526','restaurant','Tajine- Nawabi Cuisine',29,'Dhaka'),('45QYJ318558','police_station','Gulshan Thana',21,'Dhaka'),('45QYJ318559','restaurant','The Eatalia',21,'Dhaka'),('45QYJ320498','police_station','Jatrabari Thana',31,'Dhaka'),('45QYJ320555','police_station','Khilgaon Thana',29,'Dhaka'),('45QYJ325585','police_station','Khilkhet Thana',24,'Dhaka'),('45QYJ328540','police_station','Sabujbagh Thana',29,'Dhaka'),('45QYJ332560','police_station','Badda Thana',23,'Dhaka'),('45QYJ345470','police_station','Demra Thana',31,'Dhaka'),('46QCG884634','police_station','Jalalabad Thana',39,'Sylhet'),('46QCG903554','police_station','South Surma Thana',38,'Sylhet'),('46QCG910620','police_station','Bimanbandar Thana (Sylhet)',40,'Sylhet'),('46QCG910621','school','Jalalabad Cantonment Public School & College',41,'Sylhet'),('46QCG919532','police_station','Moglabazar Thana',41,'Sylhet'),('46QCG919533','restaurant','Panshi Restaurant',42,'Sylhet'),('46QCG930644','police_station','Shah Poran Thana',42,'Sylhet'),('46QCG932599','police_station','Kotwali Model Thana (Sylhet)',37,'Sylhet'),('46QCG932600','intersection','Zindabazar Intersection',37,'Sylhet');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occured_at`
--

DROP TABLE IF EXISTS `occured_at`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occured_at` (
  `Lmgrc_code` varchar(100) NOT NULL,
  `Ccrime_id` int NOT NULL,
  PRIMARY KEY (`Lmgrc_code`,`Ccrime_id`),
  KEY `Ccrime_id` (`Ccrime_id`),
  CONSTRAINT `occured_at_ibfk_1` FOREIGN KEY (`Lmgrc_code`) REFERENCES `location` (`mgrc_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `occured_at_ibfk_2` FOREIGN KEY (`Ccrime_id`) REFERENCES `crime` (`crime_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occured_at`
--

LOCK TABLES `occured_at` WRITE;
/*!40000 ALTER TABLE `occured_at` DISABLE KEYS */;
INSERT INTO `occured_at` VALUES ('45PXN200250',1),('45PXN210215',2),('45QYJ265508',3),('45QYJ270504',4),('45QYJ271486',5),('45QYJ238566',6),('45QYJ318559',7),('46QCG932600',8),('45QCE155096',9),('45QCE162129',10),('45QDF687104',11),('45QDF670119',12),('45QYJ275546',13),('45QYJ292583',14),('45QCE170156',15);
/*!40000 ALTER TABLE `occured_at` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_station`
--

DROP TABLE IF EXISTS `police_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_station` (
  `station_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact_info` varchar(20) DEFAULT NULL,
  `Lmgrc_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_station`
--

LOCK TABLES `police_station` WRITE;
/*!40000 ALTER TABLE `police_station` DISABLE KEYS */;
INSERT INTO `police_station` VALUES (2,'Panchlaish Model Thana','031-654848','45PXN260270'),(3,'Kotwali Thana','031-614040','45PXN209217'),(4,'Double Mooring Thana','031-716444','45PXN183248'),(5,'Chawkbazar Thana','031-620404','45PXN240210'),(6,'Bakalia Thana','031-630404','45PXN249195'),(7,'Pahartali Thana','031-714040','45PXN185300'),(8,'EPZ Thana','031-2521999','45PXN140220'),(9,'Khulshi Thana','031-610404','45PXN218270'),(10,'Halishahar Thana','031-713022','45PXN173270'),(11,'Patenga Thana','031-740111','45PXN130170'),(12,'Chandgaon Thana','031-2550111','45PXN285210'),(13,'Bayezid Bostami Thana','031-2550110','45PXN267277'),(14,'Sadarghat Thana','031-611030','45PXN210190'),(15,'Bandar Thana','031-2515050','45PXN180185'),(16,'Karnaphuli Thana','031-2850900','45PXN280145'),(17,'Air Port Thana','031-2500000','45PXN135165'),(18,'Ramna Thana','01713373125','45QYJ287514'),(19,'Dhanmondi Thana','01713373126','45QYJ265507'),(20,'Shahbagh Thana','01713373127','45QYJ284517'),(21,'New Market Thana','01713373128','45QYJ270503'),(22,'Lalbagh Thana','01713373134','45QYJ271485'),(23,'Kotwali Thana (Dhaka)','01713373135','45QYJ288484'),(24,'Hazaribagh Thana','01713373136','45QYJ252488'),(25,'Kamrangirchar Thana','01713373137','45QYJ247466'),(26,'Sutrapur Thana','01713373143','45QYJ295475'),(27,'Demra Thana','01713373144','45QYJ345470'),(28,'Jatrabari Thana','01713373146','45QYJ320498'),(29,'Motijheel Thana','01713373150','45QYJ303525'),(30,'Sabujbagh Thana','01713373153','45QYJ328540'),(31,'Khilgaon Thana','01713373154','45QYJ320555'),(32,'Paltan Thana','01713373155','45QYJ297528'),(33,'Uttara Thana','01713373161','45QYJ282662'),(34,'Airport Thana (Dhaka)','01713373162','45QYJ282650'),(35,'Turag Thana','01713373163','45QYJ260680'),(36,'Uttarkhan Thana','01713373164','45QYJ300685'),(37,'Dakshinkhan Thana','01713373165','45QYJ300665'),(38,'Gulshan Thana','01713373171','45QYJ318558'),(39,'Cantonment Thana','01713373172','45QYJ292582'),(40,'Badda Thana','01713373173','45QYJ332560'),(41,'Khilkhet Thana','01713373174','45QYJ325585'),(42,'Tejgaon Thana','01713373180','45QYJ275545'),(43,'Mohammadpur Thana','01713373182','45QYJ245525'),(44,'Adabor Thana','01713373183','45QYJ235528'),(45,'Mirpur Model Thana','01713373189','45QYJ238565'),(46,'Pallabi Thana','01713373190','45QYJ222568'),(47,'Kafrul Thana','01713373191','45QYJ255570'),(48,'Shah Ali Thana','01713373192','45QYJ220550'),(49,'Darus-Salam Thana','01199802025','45QYJ230535'),(50,'Gandaria Thana','01199883733','45QYJ300485'),(51,'Kotwali Model Thana (Sylhet)','01320067568','46QCG932599'),(52,'South Surma Thana','01320067688','46QCG903554'),(53,'Jalalabad Thana','01320067594','46QCG884634'),(54,'Bimanbandar Thana (Sylhet)','01320067620','46QCG910620'),(55,'Moglabazar Thana','01320067714','46QCG919532'),(56,'Shah Poran Thana','01320067740','46QCG930644'),(57,'Khulna Sadar Thana','01320058382','45QCE155095'),(58,'Sonadanga Thana','01320058409','45QCE158102'),(59,'Khalishpur Thana','01320058512','45QCE162128'),(60,'Daulatpur Thana','01320058539','45QCE170155'),(61,'Khanjahan Ali Thana','01320058593','45QCE178184'),(62,'Labanchara Thana','01320058436','45QCE140080'),(63,'Harintana Thana','01320058463','45QCE150060'),(64,'Aranghata Thana','01320058566','45QCE170135'),(65,'Boalia Thana','01320061499','45QDF687103'),(66,'Motihar Thana','01320061623','45QDF725110'),(67,'Rajpara Thana','01320061527','45QDF670118'),(68,'Shah Makhdum Thana','01320061753','45QDF700140'),(69,'Kashiadanga Thana','01320061889','45QDF645100'),(70,'Chandrima Thana','01320061555','45QDF690115'),(71,'Belpukur Thana','01320061679','45QDF700085'),(72,'Karnhar Thana','01320061939','45QDF655102'),(73,'Poba Thana','01320061809','45QDF665090'),(74,'Katakhali Thana','01320061651','45QDF730105'),(75,'Damkura Thana','01320061911','45QDF630120');
/*!40000 ALTER TABLE `police_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `report_id` int NOT NULL,
  `report_type` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'Traffic Accident','Minor collision at GEC Circle, no injuries reported.','2025-08-20 09:45:00','Resolved'),(2,'Stolen Vehicle','White sedan reported stolen from a residential parking lot in Panchlaish.','2025-08-21 15:30:00','Active'),(3,'Missing Person','Elderly male with Alzheimer\'s last seen near Kotwali Thana.','2025-08-22 10:00:00','Active'),(4,'Suspicious Activity','Unidentified drone flying low over a school in Lalbagh.','2025-08-23 11:20:00','Under Investigation'),(5,'Noise Complaint','Loud party at a residence in Dhanmondi.','2025-08-24 23:55:00','Resolved'),(6,'Vandalism','Graffiti found on the wall of a public library in Mirpur.','2025-08-25 08:10:00','Under Investigation'),(7,'Assault','Verbal altercation that escalated to a physical fight near a restaurant in Gulshan.','2025-08-26 19:00:00','Active'),(8,'Property Damage','Window broken at a shop in Sylhet, Zindabazar.','2025-08-27 14:05:00','Resolved'),(9,'Public Disturbance','Group of individuals blocking a crosswalk and causing a scene in Khulna.','2025-08-28 16:30:00','Resolved'),(10,'Robbery Attempt','Failed robbery at a gas station in Rajshahi.','2025-08-29 02:40:00','Under Investigation');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reported_at`
--

DROP TABLE IF EXISTS `reported_at`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reported_at` (
  `Lmgrc_code` varchar(100) NOT NULL,
  `Rreport_id` int NOT NULL,
  PRIMARY KEY (`Lmgrc_code`,`Rreport_id`),
  KEY `Rreport_id` (`Rreport_id`),
  CONSTRAINT `reported_at_ibfk_1` FOREIGN KEY (`Lmgrc_code`) REFERENCES `location` (`mgrc_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reported_at_ibfk_2` FOREIGN KEY (`Rreport_id`) REFERENCES `report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reported_at`
--

LOCK TABLES `reported_at` WRITE;
/*!40000 ALTER TABLE `reported_at` DISABLE KEYS */;
INSERT INTO `reported_at` VALUES ('45PXN200250',1),('45PXN260270',2),('45PXN209217',3),('45QYJ271486',4),('45QYJ265507',5),('45QYJ238566',6),('45QYJ318558',7),('46QCG932599',8),('45QCE155095',9),('45QDF700140',10);
/*!40000 ALTER TABLE `reported_at` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traffic_staff`
--

DROP TABLE IF EXISTS `traffic_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traffic_staff` (
  `staff_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `contact_info` varchar(100) DEFAULT NULL,
  `Pstation_id` int DEFAULT NULL,
  `Aarea_id` int DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `Pstation_id` (`Pstation_id`),
  KEY `Aarea_id` (`Aarea_id`),
  CONSTRAINT `traffic_staff_ibfk_1` FOREIGN KEY (`Pstation_id`) REFERENCES `police_station` (`station_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `traffic_staff_ibfk_2` FOREIGN KEY (`Aarea_id`) REFERENCES `area` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traffic_staff`
--

LOCK TABLES `traffic_staff` WRITE;
/*!40000 ALTER TABLE `traffic_staff` DISABLE KEYS */;
INSERT INTO `traffic_staff` VALUES (1,'Md. Abul Kalam','Traffic Inspector','01713373111',2,1),(2,'Farid Uddin','Traffic Sergeant','01713373222',3,7),(3,'Sabina Yasmin','Traffic Constable','01713373333',4,5),(4,'Mizanur Rahman','Traffic Inspector','01713373444',5,13),(5,'Anwarul Haque','Traffic Sergeant','01713373555',6,14),(6,'Nurjahan Begum','Traffic Constable','01713373666',9,3),(7,'Kamrul Hasan','Traffic Inspector','01713373777',10,15),(8,'Ismail Hossain','Traffic Sergeant','01713373888',12,8),(9,'Dilara Chowdhury','Traffic Constable','01713373999',13,9),(10,'Saiful Islam','Traffic Inspector','01713374000',18,30),(11,'Sultana Khatun','Traffic Sergeant','01713374111',19,25),(12,'Rahat Khan','Traffic Constable','01713374222',20,26),(13,'Fatema Akter','Traffic Inspector','01713374333',21,27),(14,'Mahfuz Ahmed','Traffic Sergeant','01713374444',22,28),(15,'Tasmia Haque','Traffic Constable','01713374555',28,31),(16,'Rasel Mahmud','Traffic Inspector','01713374666',29,29),(17,'Sumon Das','Traffic Sergeant','01713374777',33,32),(18,'Laboni Islam','Traffic Constable','01713374888',38,21),(19,'Akbar Ali','Traffic Inspector','01713374999',39,22),(20,'Shirin Sultana','Traffic Sergeant','01713375000',40,23),(21,'Jamal Uddin','Traffic Constable','01713375111',41,24),(22,'Rina Akter','Traffic Inspector','01713375222',42,20),(23,'Firoz Mia','Traffic Sergeant','01713375333',43,33),(24,'Nusrat Jahan','Traffic Constable','01713375444',44,34),(25,'Zahidul Haque','Traffic Inspector','01713375555',45,17),(26,'Laila Begum','Traffic Sergeant','01713375666',46,18),(27,'Imran Khan','Traffic Constable','01713375777',47,19),(28,'Shafiqul Islam','Traffic Inspector','01713375888',51,37),(29,'Asma Khatun','Traffic Sergeant','01713375999',52,38),(30,'Md. Yusuf','Traffic Constable','01713376000',53,39),(31,'Farzana Akter','Traffic Inspector','01713376111',57,43),(32,'Rashedul Hasan','Traffic Sergeant','01713376222',58,44),(33,'Khadija Islam','Traffic Constable','01713376333',59,45),(34,'Emon Chowdhury','Traffic Inspector','01713376444',65,49),(35,'Nafisa Haque','Traffic Sergeant','01713376555',66,50),(36,'Jasim Uddin','Traffic Constable','01713376666',67,51);
/*!40000 ALTER TABLE `traffic_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `used`
--

DROP TABLE IF EXISTS `used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `used` (
  `Vvehicle_id` int NOT NULL,
  `Ccrime_id` int NOT NULL,
  PRIMARY KEY (`Vvehicle_id`,`Ccrime_id`),
  KEY `Ccrime_id` (`Ccrime_id`),
  CONSTRAINT `used_ibfk_1` FOREIGN KEY (`Vvehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `used_ibfk_2` FOREIGN KEY (`Ccrime_id`) REFERENCES `crime` (`crime_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `used`
--

LOCK TABLES `used` WRITE;
/*!40000 ALTER TABLE `used` DISABLE KEYS */;
INSERT INTO `used` VALUES (1,1),(16,1),(2,2),(17,2),(3,3),(18,3),(4,4),(19,4),(5,5),(20,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15);
/*!40000 ALTER TABLE `used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int NOT NULL,
  `license_plate` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'CH-A 12-3456','Car','Toyota Corolla'),(2,'DH-B 78-9012','Motorcycle','Honda CBR150R'),(3,'KH-C 34-5678','Truck','Isuzu Elf'),(4,'SY-D 90-1234','Car','Honda Civic'),(5,'RJ-E 56-7890','Bus','Hino AK1J'),(6,'CH-F 11-2233','Car','Nissan X-Trail'),(7,'DH-G 44-5566','Microbus','Toyota Hiace'),(8,'KH-H 77-8899','Motorcycle','Yamaha FZS'),(9,'SY-I 00-1122','Auto-rickshaw','Bajaj RE'),(10,'RJ-J 33-4455','Car','Hyundai Elantra'),(11,'CH-K 66-7788','SUV','Mitsubishi Pajero'),(12,'DH-L 99-0011','Motorcycle','Suzuki Gixxer'),(13,'KH-M 22-3344','Truck','Tata LPT 1613'),(14,'SY-N 55-6677','Car','Proton Saga'),(15,'RJ-O 88-9900','Bus','Ashok Leyland'),(16,'CH-P 10-2030','Car','Toyota Prius'),(17,'DH-Q 40-5060','Motorcycle','Kawasaki Ninja'),(18,'KH-R 70-8090','Truck','Foton Auman'),(19,'SY-S 90-0102','Car','Kia Sportage'),(20,'RJ-T 12-2132','Microbus','Toyota Alphard');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-31 13:08:15
