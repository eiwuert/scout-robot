-- MySQL dump 10.15  Distrib 10.0.32-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kasse
-- ------------------------------------------------------
-- Server version	10.0.32-MariaDB-0+deb8u1

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nami_id` int(11) NOT NULL,
  `is_payable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'Mitglied',1,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(2,'passive Mitgliedschaft',39,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(3,'ElternvertreterIn',4,0,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(4,'GeschäftsführerIn',19,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(5,'KassenprüferIn',21,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(6,'KassiererIn',20,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(7,'KuratIn',11,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(8,'LeiterIn',6,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(9,'Leitungsteam-SprecherIn',5,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(10,'MaterialwartIn',23,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(11,'ReferentIn',10,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(12,'SprecherIn',2,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(13,'VertreterIn',24,0,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(14,'Vorsitzende/r',13,1,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(15,'Sonst. Mitarbeiter (€)',40,1,'2018-02-25 19:14:27','2018-02-25 19:14:27'),(16,'Sonst. Mitarbeiter',41,0,'2018-02-25 19:14:27','2018-02-25 19:14:27'),(17,'Schnuppermitglied',35,0,'2018-02-25 19:14:27','2018-02-25 19:14:27');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_group`
--

DROP TABLE IF EXISTS `activity_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_group` (
  `activity_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_group`
--

LOCK TABLES `activity_group` WRITE;
/*!40000 ALTER TABLE `activity_group` DISABLE KEYS */;
INSERT INTO `activity_group` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(8,1),(8,2),(8,3),(8,4),(8,5),(9,1),(9,2),(9,3),(9,4),(9,5),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(12,1),(12,2),(12,3),(12,4),(12,5),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(14,6),(14,7),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(15,7),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(16,7),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7);
/*!40000 ALTER TABLE `activity_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confessions`
--

DROP TABLE IF EXISTS `confessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nami_id` int(11) DEFAULT NULL,
  `nami_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confessions`
--

LOCK TABLES `confessions` WRITE;
/*!40000 ALTER TABLE `confessions` DISABLE KEYS */;
INSERT INTO `confessions` VALUES (1,'Römisch-Katholisch',1,'römisch-katholisch'),(2,'Evangelisch / Protestantisch',2,'evangelisch / protestantisch'),(3,'Orthodox',3,'orthodox'),(4,'Freikirchlich',4,'freikirchlich'),(5,'Andere christliche',5,'andere christliche'),(6,'Jüdisch',6,'jüdisch'),(7,'Muslimisch',7,'muslimisch'),(8,'Sonstige',8,'sonstige'),(9,'Neuapostolisch',11,'neuapostolisch'),(10,'Ohne Konfession',9,'ohne Konfession');
/*!40000 ALTER TABLE `confessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confs`
--

DROP TABLE IF EXISTS `confs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emailBillText` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailRememberText` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailGreeting` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_region_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_nationality_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_keepdata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `default_sendnewspaper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `letterKontoName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `letterIban` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `letterBic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `letterZweck` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `includeFamilies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `deadlinenr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadlineunit_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `letterFrom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personTel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personMail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personFunction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personAddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personZip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personCity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailHeading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `letterDate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namiUser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namiPassword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namiGroup` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namiEnabled` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_way_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confs`
--

LOCK TABLES `confs` WRITE;
/*!40000 ALTER TABLE `confs` DISABLE KEYS */;
INSERT INTO `confs` VALUES (1,'Im Anhang dieser Mail befindet sich die Jahresrechnung für {{ $members }}. Bitte begleiche diese bis zum angegebenen Datum.','Leider haben wir bisher für die ausstehenden Beträge keinen Zahlungseingang feststellen können. Daher senden wir dir mit dieser E-Mail eine Zahlungserinnerung im Anhang. Bitte begleiche diese bis zum angegebenen Datum.','Gut Pfad | {{ $groupname }}','1','10','18','0','0','Stamm Silva','DE40 3425 0000 0000 2145 51','SOLSDE33XXX','[Name(n)] [Jahreszahl(en)]','1','4','2','DPSG Stamm Silva','Stamm Silva','Nils Montag','0171 9258000','kasse@stamm-silva.de','Kassenwart','Grabenstr 89',NULL,'47057 Duisburg','https://stamm-silva.de','DPSG Stamm Silva','Solingen, den {{ $date }}','90166','h8uHYOXinN89','100105','1','1');
/*!40000 ALTER TABLE `confs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nami_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nami_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Deutschland','1','Deutschland'),(2,'Algerien','2','Algerien'),(3,'Belgien','3','Belgien'),(4,'Brasilien','4','Brasilien'),(5,'Dänemark','5','Dänemark'),(6,'Finnland','6','Finnland'),(7,'Frankreich','7','Frankreich'),(8,'Grossbritanien','8','Grossbritanien'),(9,'Irland','9','Irland'),(10,'Island','10','Island'),(11,'Israel','11','Israel'),(12,'Italien','12','Italien'),(13,'Japan','13','Japan'),(14,'Kanada','14','Kanada'),(15,'Litauen','15','Litauen'),(16,'Luxemburg','16','Luxemburg'),(17,'Niederlande','17','Niederlande'),(18,'Norwegen','18','Norwegen'),(19,'Österreich','19','Österreich'),(20,'Polen','20','Polen'),(21,'Rumänien','21','Rumänien'),(22,'Schweiz','22','Schweiz'),(23,'Schweden','23','Schweden'),(24,'Slowenien','24','Slowenien'),(25,'Spanien','25','Spanien'),(26,'Südafrika','26','Südafrika'),(27,'Thailand','27','Thailand'),(28,'Ungarn','28','Ungarn'),(29,'Vatikanstadt','29','Vatikanstadt'),(30,'USA','30','USA'),(31,'Indien','31','Indien'),(32,'Polen','32','Polen'),(33,'CV','33','CV'),(34,'Ausland','34','Ausland'),(35,'Malaysia','35','Malaysia'),(36,'Tunesien','36','Tunesien');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nami_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (1,'Voller Beitrag',1),(2,'Familienbeitrag',2),(3,'Sozialermäßigt',3);
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_password_resets`
--

DROP TABLE IF EXISTS `first_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `first_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_password_resets`
--

LOCK TABLES `first_password_resets` WRITE;
/*!40000 ALTER TABLE `first_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `first_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_null` tinyint(1) NOT NULL,
  `nami_id` int(11) NOT NULL,
  `nami_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'Männlich',0,19,'männlich','2018-02-25 19:14:55','2018-02-25 19:14:55'),(2,'Weiblich',0,20,'weiblich','2018-02-25 19:14:55','2018-02-25 19:14:55'),(3,'keine Angabe',1,23,'keine Angabe','2018-02-25 19:14:55','2018-02-25 19:14:55');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_group` tinyint(1) NOT NULL,
  `nami_id` int(11) NOT NULL,
  `group_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Biber',1,49,1,'2018-02-25 19:14:27','2018-02-25 19:14:27'),(2,'Wölfling',1,1,2,'2018-02-25 19:14:27','2018-02-25 19:14:27'),(3,'Jungpfadfinder',1,2,3,'2018-02-25 19:14:27','2018-02-25 19:14:27'),(4,'Pfadfinder',1,3,4,'2018-02-25 19:14:27','2018-02-25 19:14:27'),(5,'Rover',1,4,5,'2018-02-25 19:14:27','2018-02-25 19:14:27'),(6,'Sonstige',0,48,NULL,'2018-02-25 19:14:27','2018-02-25 19:14:27'),(7,'Vorstand',0,5,NULL,'2018-02-25 19:14:27','2018-02-25 19:14:27');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'logo.png','local',1,'App\\Conf','2018-02-25 20:06:09','2018-02-25 20:06:09');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `other_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confession_id` int(10) unsigned DEFAULT NULL,
  `birthday` date NOT NULL,
  `joined_at` date NOT NULL,
  `keepdata` tinyint(1) NOT NULL,
  `sendnewspaper` tinyint(1) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `further_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `way_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_parents` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `nami_id` int(11) DEFAULT NULL,
  `nationality_id` int(10) unsigned NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Alexander','Steinbach','',1,1,'',1,'1998-08-25','2007-01-01',0,1,'Filchnerweg 4','','42329','Wuppertal','10','','','','',1,'alex@stamm-silva.de','',1,141128,18,1,'2018-02-25 19:18:19','2018-02-25 19:18:19'),(2,'Alexander','Sefen',NULL,1,1,'',1,'1997-10-31','2008-08-08',0,1,'Wittkullerstr. 87c ','','42719','Solingen','10','','','','',1,'','',1,157909,18,1,'2018-02-25 19:18:22','2018-02-25 19:18:22'),(3,'Constantin','Masuch','',1,1,'a',2,'2005-12-28','2015-05-27',0,1,'Corinthstr 15','','42719','Solingen','10','+49 212 319345','+49 163 1725774','','',1,'','charlotte.masuch@googlemail.com',1,245852,18,1,'2018-02-25 19:18:24','2018-02-25 19:18:24'),(4,'Cora','Mühlbauer',NULL,2,1,'',1,'1993-04-03','2006-02-22',0,1,'Diepenbrucher Str. 16','','42699','Solingen','10','','+49 174 9585700','','',1,'cora@stamm-silva.de','',1,126733,18,1,'2018-02-25 19:18:26','2018-02-25 19:18:26'),(5,'David','Bielemeier','',1,1,'',1,'1985-08-25','2003-11-17',1,1,'Schwindstr. 23','','42719','Solingen','10','+49 212 312954','+49 172 2922459 ','','',1,'david@stamm-silva.de','',1,89382,18,1,'2018-02-25 19:18:28','2018-02-25 19:18:28'),(6,'Deniz','Adanc',NULL,1,1,'',10,'1992-05-20','2008-10-21',0,1,'Bahnhofstr. 10','','42651','Solingen','10','+49 212 2247214','+49 152 33546442','','',1,'deniz@stamm-silva.de','',1,162218,18,1,'2018-02-25 19:18:30','2018-02-25 19:18:30'),(7,'Elias','Kny',NULL,1,1,'',10,'2003-09-19','2012-12-27',0,1,'Kullerstr 39','','42651','Solingen','10','+49 212 8818936','+49 172 2693947','','',1,'','korwes-kny@web.de',1,217113,18,2,'2018-02-25 19:18:32','2018-02-25 19:18:32'),(8,'Fabio','Minis gallo',NULL,1,1,'',NULL,'2000-12-15','2014-06-04',0,1,'Walder Kirchplatz 16','','42719','Solingen','10','+49 212 88999339','+49 157 85966542','','',1,'','',1,234929,18,2,'2018-02-25 19:18:33','2018-02-25 19:18:33'),(9,'Femke','Göring',NULL,2,1,'',NULL,'2008-05-23','2016-04-27',0,0,'Weyerstr 227','','42719','Solingen','10','+49 212 6452305','+49 152 53753507','','',1,'','sassika@online.de',1,256244,18,1,'2018-02-25 19:18:34','2018-02-25 19:18:34'),(10,'Fynn','Ohliger',NULL,1,1,'',10,'2004-06-16','2014-08-20',0,1,'Schlossstr. 19','','42719','Solingen','10','+49 212 51630','+49 178 7759051','','',1,'','petra.ohliger@web.de',1,241975,18,1,'2018-02-25 19:18:36','2018-02-25 19:18:36'),(11,'Georgio','Minisgallo',NULL,1,1,'',NULL,'2000-12-15','2014-06-01',0,1,'Walder Kirchplatz 16','','42719','Solingen','10','+49 212 88999339','+49 157 85966542','','',1,'','',1,234927,18,2,'2018-02-25 19:18:37','2018-02-25 19:18:37'),(12,'Henrik','Pohl',NULL,1,1,'',1,'2004-02-10','2014-11-18',0,1,'Henriettenstr. 21','','42719','Solingen','10','+49 212 2308949','+49 163 7520911','','',1,'','mpohl01@web.de',1,241976,18,2,'2018-02-25 19:18:38','2018-02-25 19:18:38'),(13,'Jakob','Pohl',NULL,1,1,'',NULL,'2006-07-28','2015-04-22',0,1,'Henriettenstr. 21','','42719','Solingen','10','+49 212 2308949','+49 173 5339355 / +49 163 7520911','','',1,'','mpohl01@web.de',1,244213,18,2,'2018-02-25 19:18:39','2018-02-25 19:18:39'),(14,'Jan','Longerich',NULL,1,1,'',1,'1984-01-17','2003-11-17',0,1,' Birkerstr. 27 ','','80636','München','10','','+49 163 5989923','','',1,'jan@stamm-silva.de','',1,89393,18,1,'2018-02-25 19:18:40','2018-02-25 19:18:40'),(15,'Jannis','Charnay',NULL,1,1,'',1,'1999-07-01','2013-01-05',0,1,'Junkerstr. 4','','42699','Solingen','10','+49 212 2332491','+49 176 52910408','','',1,'','charnay@versanet.de',1,217506,18,2,'2018-02-25 19:18:41','2018-02-25 19:18:41'),(16,'Jeannine Denise','Dappert',NULL,2,1,'',1,'1996-01-16','2007-01-01',0,1,'Eipaßstr. 74','','42719','Solingen','10','','+49 157 74006457','','',1,'jinny@stamm-silva.de','',1,141116,18,1,'2018-02-25 19:18:43','2018-02-25 19:18:43'),(17,'Jens','Hammesfahr',NULL,1,1,'',1,'1999-08-07','2013-01-05',0,1,'Schwindstr. 33','','42719','Solingen','10','','','','',1,'','',1,217508,18,1,'2018-02-25 19:18:45','2018-02-25 19:18:45'),(18,'Julian','Wolber',NULL,1,1,'',1,'2007-07-19','2016-01-20',0,0,'Bavert 66','','42719','Solingen','10','+49 212 23067988','+49 152 53419165','','',1,'','tanja.wolber@gmx.de',1,253364,18,1,'2018-02-25 19:18:46','2018-02-25 19:18:46'),(19,'Julius','Ullrich',NULL,1,1,'',1,'2004-06-17','2013-04-01',0,1,'Börsenstr. 87e','','42657','Solingen','10','','+49 172 3606918','','',1,'','scheffel@uforme.de',1,217511,18,1,'2018-02-25 19:18:48','2018-02-25 19:18:48'),(20,'Kathrin','Wierum',NULL,2,1,'',1,'1982-09-09','2007-01-01',0,1,'Fraunhoferstr. 14a ','','42697','Solingen','10','+49 212 2219884','+49 177 5528807','','',1,'kathrin@stamm-silva.de','',1,140878,18,2,'2018-02-25 19:18:49','2018-02-25 19:18:49'),(21,'Kevin','Haffke',NULL,1,1,'',1,'1991-09-19','2003-11-17',0,1,'Weyerstr. 189','','42719','Solingen','10','+49 212 336908','+49 176 70896978','','',1,'kevin@stamm-silva.de','',1,89431,18,1,'2018-02-25 19:18:51','2018-02-25 19:18:51'),(22,'Lars','Wierum',NULL,1,1,'',1,'1973-08-27','2002-01-01',1,1,' Fraunhoferstr. 14a ','','42697','Solingen','10','+49 212 2219884','+49 173 2995550','','',1,'lars@stamm-silva.de','',1,54603,18,2,'2018-02-25 19:18:53','2018-02-25 19:18:53'),(23,'Leon','Reder',NULL,1,1,'',1,'2004-01-18','2014-05-01',0,1,'Dültgenstalerstr. 84','','42719','Solingen','10','+49 212 318173','+49 163 8561272','','',1,'','familie.reder@arcor.de',1,226676,18,1,'2018-02-25 19:18:55','2018-02-25 19:18:55'),(24,'Linus','Kny',NULL,1,1,'',10,'1998-06-06','2013-01-05',0,1,'Kullerstr 39','','42651','Solingen','10','+49 212 8818936','','','',1,'linus@stamm-silva.de','',1,217536,18,2,'2018-02-25 19:18:56','2018-02-25 19:18:56'),(25,'Linus','Göring',NULL,1,1,'',NULL,'2006-05-03','2016-04-27',0,0,'Weyerstr 227','','42719','Solingen','10','+49 212 6452305','+49 152 53753507','','',1,'','sassika@online.de',1,256245,18,1,'2018-02-25 19:18:58','2018-02-25 19:18:58'),(26,'Linus Wilson','Wienands',NULL,1,1,'',2,'2000-10-27','2010-11-01',0,1,'Ehrenstr 5','','42719','Solingen','10','+49 212 2542757','+49 173 2834007','','',1,'','s.soehngen@web.de',1,191071,18,1,'2018-02-25 19:18:59','2018-02-25 19:18:59'),(27,'Luis','Robach',NULL,1,1,'',NULL,'2008-09-16','2015-10-21',0,1,'Dültgenstalerstr 11','','42719','Solingen','10','+49 212 2308275','+49 163 2511680','','',1,'','dannyrobach@arcor.de',1,249847,18,2,'2018-02-25 19:19:00','2018-02-25 19:19:00'),(28,'Lukas','Dettenberg',NULL,1,1,'',1,'2003-11-22','2015-01-23',0,1,'Wittkullerstr 18','','42719','Solingen','10','+49 212 3809674','+49 173 7144194','','',1,'','ilse_dettenberg@arcor.de',1,243468,18,1,'2018-02-25 19:19:02','2018-02-25 19:19:02'),(29,'Lukas','Haffke',NULL,1,1,'',2,'1995-06-24','2010-11-01',0,1,'Dellerstr. 1','','42719','Solingen','10','','+49 157 85826086','','',1,'lukas@stamm-silva.de','',1,191069,18,1,'2018-02-25 19:19:03','2018-02-25 19:19:03'),(30,'Magnus','Tappert','',1,1,'',1,'1986-06-07','2006-02-22',0,1,'Quirinstraße 15','','50676','Köln','10','','','','',1,'magnus@stamm-silva.de','',1,126734,18,1,'2018-02-25 19:19:04','2018-02-25 19:19:04'),(31,'Maximilian','Pohl',NULL,1,1,'',1,'2001-05-07','2013-01-05',0,1,'Henriettenstr. 21','','42719','Solingen','10','+49 212 2308949','+49 173 5339355','','',1,'','mpohl01@web.de',1,217509,18,2,'2018-02-25 19:19:06','2018-02-25 19:19:06'),(32,'Maya','Piech',NULL,2,1,'',1,'2007-06-15','2016-02-04',0,1,'Feuerbachstr 2a','','42719','Solingen','10','','+49 163 2607440','','',1,'','info.anette@googlemail.com',1,254083,18,1,'2018-02-25 19:19:08','2018-02-25 19:19:08'),(33,'Moritz','Höver',NULL,1,1,'',NULL,'2007-02-22','2016-04-27',0,0,'Weyerstr 204','','42719','Solingen','10','','+49 178 8789182','','',1,'','rechtsanwalt.hoever@outlook.de',1,256246,18,1,'2018-02-25 19:19:09','2018-02-25 19:19:09'),(34,'Nadja','Mühlbauer',NULL,2,1,'',1,'1984-10-05','2003-11-17',0,1,' Dunkelnbergerstr. 14 ','','42697','Solingen','10','+49 212 312652','+49 157 38834493','','',1,'nadja@stamm-silva.de','',1,89396,18,1,'2018-02-25 19:19:10','2018-02-25 19:19:10'),(35,'Nils','Wiese',NULL,1,1,'',1,'1981-10-28','2012-01-05',1,1,'Ellerstr 14','','42697','Solingen','10','+49 212 2338922','+49 177 3556177','','',1,'nils.wiese@stamm-silva.de','',1,205741,18,1,'2018-02-25 19:19:12','2018-02-25 19:19:12'),(36,'Nils','Montag',NULL,1,1,'',1,'1996-02-13','2008-04-18',0,1,'Grabenstr 89','','47057','Duisburg','10','','+49 171 9258000','','',1,'nils@stamm-silva.de','',1,157912,18,1,'2018-02-25 19:19:13','2018-02-25 19:19:13'),(37,'Noah','Charnay','',1,1,'',1,'2002-09-27','2012-07-18',0,1,'Junkerstr. 4','','42699','Solingen','10','+49 212 2332491','+49 176 52910408','','',1,'','charnay@versanet.de',1,212908,18,2,'2018-02-25 19:19:15','2018-02-25 19:19:15'),(38,'Noah','Robach',NULL,1,1,'',NULL,'2006-03-06','2015-10-21',0,1,'Dültgenstalerstr 11','','42719','Solingen','10','+49 212 2308275','+49 163 2511680','','',1,'','dannyrobach@arcor.de',1,249846,18,2,'2018-02-25 19:19:16','2018-02-25 19:19:16'),(39,'OIe','Gottwald',NULL,1,1,'',10,'2007-06-22','2016-04-13',0,0,'Poschheide 20','','42697','Solingen','10','+49 212 2356896','','','',1,'bea_sieta@web.de','',1,256243,18,1,'2018-02-25 19:19:17','2018-02-25 19:19:17'),(40,'Oskar','Ackermann',NULL,1,1,NULL,1,'2007-07-10','2016-02-03',0,0,'Monhoferstr 41',NULL,'42697','Solingen','10','+49 212 52374','+49 160 97570358',NULL,NULL,1,'katja.ack@gmail.com','katja.ack@gmail.com',1,255752,18,1,'2018-02-25 19:19:18','2018-02-25 19:19:18'),(41,'Pascal Luca','Nowak',NULL,1,1,'',NULL,'2006-08-07','2014-08-13',0,1,'Eigen 4','','42655','Solingen','10','+49 212 8817999','+49 176 93511039','','',1,'','michaela@tomela.de',1,241973,18,2,'2018-02-25 19:19:20','2018-02-25 19:19:20'),(42,'Philipp','Lang','',1,1,'',1,'1991-06-20','2005-05-01',0,1,'Itterstr 3','','42719','Solingen','10','+49 212 1399418','+49 176 70342420','','',1,'pille@stamm-silva.de','',1,89418,18,2,'2018-02-25 19:19:21','2018-02-25 19:19:21'),(43,'Philipp','Böhmer',NULL,1,1,NULL,1,'2002-08-13','2013-09-21',0,0,'Meistermannstr. 15',NULL,'42719','Solingen','10','+49 212 2237963','+49 157 77187763',NULL,NULL,1,NULL,'Joerg_Boehmer@web.de',1,226674,18,1,'2018-02-25 19:19:23','2018-02-25 20:08:19'),(44,'Philippe','Steinbach',NULL,1,1,'',1,'1992-07-21','2003-11-18',0,1,'Jupiterweg 9','','42697','Solingen','10','','+49 176 31408528','','',1,'steini@stamm-silva.de','',1,89451,18,1,'2018-02-25 19:19:24','2018-02-25 19:19:24'),(45,'Raphael Thomas','Nowak',NULL,1,1,'',NULL,'2004-08-03','2014-06-04',0,1,'Eigen 4','','42655','Solingen','10','+49 212 8817999','','','',1,'','michaela@tomela.de',1,241974,18,2,'2018-02-25 19:19:26','2018-02-25 19:19:26'),(46,'Sophie Chiara','Nowak',NULL,2,1,'',1,'2008-04-21','2015-12-16',0,1,'Eigen 4','','42655','Solingen','10','+49 212 8817999','+49 176 93511039','','',1,'','michaela@tomela.de',1,253368,18,2,'2018-02-25 19:19:28','2018-02-25 19:19:28'),(48,'tester','tester','',NULL,1,'',NULL,'2018-01-18','2018-01-18',0,0,'keinestr 2','','42719','Solingen','10','','','','',1,'','',1,276994,18,NULL,'2018-02-25 19:19:31','2018-02-25 19:19:31'),(49,'Tesusr','Testuer2',NULL,1,1,NULL,NULL,'1993-05-13','2018-02-01',1,1,'GGG 4',NULL,'454545','Solinfg','2',NULL,NULL,NULL,NULL,1,NULL,NULL,1,277624,4,2,'2018-02-25 19:19:32','2018-02-25 19:19:32'),(50,'Tobias','Knöppke',NULL,1,1,'',1,'1995-08-02','2006-05-03',0,1,'Schnepperterstr. 15','','42719','Solingen','10','+49 212 313609','+49 171 2989748','','',1,'tobias.knoeppke@unitybox.de','',1,129633,18,1,'2018-02-25 19:19:33','2018-02-25 19:19:33');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `nami_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `memberships_activity_id_group_id_member_id_nami_id_unique` (`activity_id`,`group_id`,`member_id`,`nami_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberships`
--

LOCK TABLES `memberships` WRITE;
/*!40000 ALTER TABLE `memberships` DISABLE KEYS */;
INSERT INTO `memberships` VALUES (1,8,2,1,652912,'2016-01-18 00:00:00','2018-02-25 19:18:21'),(2,1,5,2,651732,'2015-12-31 00:00:00','2018-02-25 19:18:23'),(3,1,3,3,651722,'2015-12-31 00:00:00','2018-02-25 19:18:25'),(4,11,5,5,684835,'2017-01-20 00:00:00','2018-02-25 19:18:29'),(5,8,5,5,651719,'2016-01-01 00:00:00','2018-02-25 19:18:29'),(6,5,6,6,651729,'2015-11-08 00:00:00','2018-02-25 19:18:31'),(7,1,3,7,623386,'2015-01-01 00:00:00','2018-02-25 19:18:33'),(8,1,4,8,623397,'2015-01-01 00:00:00','2018-02-25 19:18:34'),(9,1,2,9,664442,'2016-06-08 00:00:00','2018-02-25 19:18:35'),(10,1,3,10,623402,'2014-08-20 00:00:00','2018-02-25 19:18:36'),(11,1,4,11,623396,'2015-01-01 00:00:00','2018-02-25 19:18:37'),(12,1,3,12,623403,'2014-11-18 00:00:00','2018-02-25 19:18:38'),(13,1,2,13,632682,'2015-06-10 00:00:00','2018-02-25 19:18:39'),(14,1,5,15,651731,'2015-12-31 00:00:00','2018-02-25 19:18:42'),(15,14,7,16,651725,'2015-11-08 00:00:00','2018-02-25 19:18:45'),(16,8,2,16,623381,'2014-01-01 00:00:00','2018-02-25 19:18:45'),(17,1,5,17,651730,'2015-12-31 00:00:00','2018-02-25 19:18:46'),(18,1,2,18,656171,'2016-02-24 00:00:00','2018-02-25 19:18:47'),(19,1,3,19,623407,'2015-01-01 00:00:00','2018-02-25 19:18:49'),(20,5,6,20,651728,'2015-11-08 00:00:00','2018-02-25 19:18:50'),(21,8,4,21,496164,'2011-05-01 00:00:00','2018-02-25 19:18:52'),(22,1,3,23,623405,'2015-01-01 00:00:00','2018-02-25 19:18:56'),(23,8,3,24,623388,'2015-01-01 00:00:00','2018-02-25 19:18:57'),(24,1,2,25,664443,'2016-06-08 00:00:00','2018-02-25 19:18:59'),(25,1,4,26,623408,'2015-01-01 00:00:00','2018-02-25 19:19:00'),(26,1,2,27,648515,'2015-12-07 00:00:00','2018-02-25 19:19:01'),(27,1,3,28,645810,'2015-11-15 00:00:00','2018-02-25 19:19:03'),(28,1,5,29,502444,'2011-09-01 00:00:00','2018-02-25 19:19:04'),(29,1,4,31,623404,'2015-01-01 00:00:00','2018-02-25 19:19:07'),(30,1,2,32,659803,'2016-04-13 00:00:00','2018-02-25 19:19:08'),(31,1,2,33,669576,'2016-07-03 00:00:00','2018-02-25 19:19:10'),(32,7,7,35,651726,'2015-11-08 00:00:00','2018-02-25 19:19:13'),(33,8,3,36,623398,'2015-01-01 00:00:00','2018-02-25 19:19:15'),(34,1,3,37,623380,'2015-01-01 00:00:00','2018-02-25 19:19:16'),(35,1,2,38,648516,'2015-12-07 00:00:00','2018-02-25 19:19:17'),(36,1,2,39,665202,'2016-06-20 00:00:00','2018-02-25 19:19:18'),(37,1,2,40,665160,'2016-06-19 00:00:00','2018-02-25 19:19:19'),(38,1,2,41,623400,'2014-08-13 00:00:00','2018-02-25 19:19:20'),(39,14,7,42,651724,'2015-11-08 00:00:00','2018-02-25 19:19:23'),(40,6,7,42,623323,'2015-02-03 00:00:00','2018-02-25 19:19:23'),(41,8,2,42,586996,'2013-12-19 00:00:00','2018-02-25 19:19:23'),(42,1,3,43,601999,'2014-01-01 00:00:00','2018-02-25 19:19:24'),(43,8,2,44,587012,'2012-05-01 00:00:00','2018-02-25 19:19:26'),(44,1,3,45,651721,'2015-12-31 00:00:00','2018-02-25 19:19:27'),(45,8,5,46,716802,'2018-01-18 00:00:00','2018-02-25 19:19:29'),(46,1,2,46,653742,'2015-12-16 00:00:00','2018-02-25 19:19:29'),(48,1,3,49,718591,'2018-02-01 00:00:00','2018-02-25 19:19:33'),(49,1,5,50,502443,'2011-09-01 00:00:00','2018-02-25 19:19:35');
/*!40000 ALTER TABLE `memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (30,'2014_10_12_000000_create_users_table',1),(31,'2014_10_12_100000_create_password_resets_table',1),(32,'2016_06_01_000001_create_oauth_auth_codes_table',1),(33,'2016_06_01_000002_create_oauth_access_tokens_table',1),(34,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(35,'2016_06_01_000004_create_oauth_clients_table',1),(36,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(37,'2017_06_20_221747_create_rights_table',1),(38,'2017_06_20_223007_create_usergroups_table',1),(39,'2017_06_20_223637_create_right_usergroup_table',1),(40,'2017_07_04_000600_create_first_password_resets_table',1),(41,'2017_07_04_223230_create_members_table',1),(42,'2017_07_04_235624_create_countries_table',1),(43,'2017_07_05_000438_create_genders_table',1),(44,'2017_07_05_000810_create_regions_table',1),(45,'2017_07_05_001729_create_confessions_table',1),(46,'2017_07_05_203804_create_confs_table',1),(47,'2017_09_18_211741_create_payments_table',1),(48,'2017_09_18_212241_create_statuses_table',1),(49,'2017_12_04_001955_create_images_table',1),(50,'2017_12_22_004103_create_units_table',1),(51,'2017_12_25_231219_create_ways_table',1),(52,'2018_01_14_235348_create_nationalities_table',1),(53,'2018_01_16_012052_create_groups_table',1),(54,'2018_01_16_012910_create_activities_table',1),(55,'2018_01_17_002815_create_activity_group_table',1),(56,'2018_01_18_205354_create_memberships_table',1),(57,'2018_01_22_234145_create_fees_table',1),(58,'2018_01_22_235143_create_subscriptions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationalities`
--

DROP TABLE IF EXISTS `nationalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationalities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nami_id` int(11) NOT NULL,
  `nami_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationalities`
--

LOCK TABLES `nationalities` WRITE;
/*!40000 ALTER TABLE `nationalities` DISABLE KEYS */;
INSERT INTO `nationalities` VALUES (1,'Bosnisch',1284,'Bosnisch','2018-02-25 19:14:35','2018-02-25 19:14:35'),(2,'USA/SLO',1286,'USA/SLO','2018-02-25 19:14:35','2018-02-25 19:14:35'),(3,'serb.montenegro',1287,'serb.montenegro','2018-02-25 19:14:35','2018-02-25 19:14:35'),(4,'serbisch',1288,'serbisch','2018-02-25 19:14:35','2018-02-25 19:14:35'),(5,'französich',1289,'französich','2018-02-25 19:14:35','2018-02-25 19:14:35'),(6,'A',1291,'A','2018-02-25 19:14:35','2018-02-25 19:14:35'),(7,'holländisch',1292,'holländisch','2018-02-25 19:14:35','2018-02-25 19:14:35'),(8,'Kenia',1293,'Kenia','2018-02-25 19:14:35','2018-02-25 19:14:35'),(9,'madegaschi',1294,'madegaschi','2018-02-25 19:14:35','2018-02-25 19:14:35'),(10,'+ amerikanisch',1295,'+ amerikanisch','2018-02-25 19:14:35','2018-02-25 19:14:35'),(11,'St. Lucianer',1296,'St. Lucianer','2018-02-25 19:14:35','2018-02-25 19:14:35'),(12,'lettisch',1297,'lettisch','2018-02-25 19:14:35','2018-02-25 19:14:35'),(13,'Iran',1298,'Iran','2018-02-25 19:14:36','2018-02-25 19:14:36'),(14,'japanisch',1299,'japanisch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(15,'österr. + südafr.',1304,'österr. + südafr.','2018-02-25 19:14:36','2018-02-25 19:14:36'),(16,'italiano',1306,'italiano','2018-02-25 19:14:36','2018-02-25 19:14:36'),(17,'Ukrainerin',1308,'Ukrainerin','2018-02-25 19:14:36','2018-02-25 19:14:36'),(18,'deutsch',1054,'deutsch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(19,'Serbien-Montenegro',1310,'Serbien-Montenegro','2018-02-25 19:14:36','2018-02-25 19:14:36'),(20,'Jugoslawisch/Kosovo',1311,'Jugoslawisch/Kosovo','2018-02-25 19:14:36','2018-02-25 19:14:36'),(21,'',1056,'','2018-02-25 19:14:36','2018-02-25 19:14:36'),(22,'ungarisch',1312,'ungarisch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(23,'andere',1057,'andere','2018-02-25 19:14:36','2018-02-25 19:14:36'),(24,'chinesisch',1058,'chinesisch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(25,'österreichisch',1059,'österreichisch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(26,'Thailand',1315,'Thailand','2018-02-25 19:14:36','2018-02-25 19:14:36'),(27,'italienisch',1060,'italienisch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(28,'EU',1061,'EU','2018-02-25 19:14:36','2018-02-25 19:14:36'),(29,'maltesisch',1317,'maltesisch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(30,'Portugiesisch',1318,'Portugiesisch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(31,'niederländisch',1064,'niederländisch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(32,'schweizerisch',1320,'schweizerisch','2018-02-25 19:14:36','2018-02-25 19:14:36'),(33,'kenianisch',1065,'kenianisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(34,'Tschechische Republick',1321,'Tschechische Republick','2018-02-25 19:14:37','2018-02-25 19:14:37'),(35,'kroatisch',1066,'kroatisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(36,'brasilianisch',1067,'brasilianisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(37,'weißrussisch',1323,'weißrussisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(38,'polnisch',1069,'polnisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(39,'Bolivien',1326,'Bolivien','2018-02-25 19:14:37','2018-02-25 19:14:37'),(40,'türkisch',1071,'türkisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(41,'österr.',1327,'österr.','2018-02-25 19:14:37','2018-02-25 19:14:37'),(42,'Grieche',1329,'Grieche','2018-02-25 19:14:37','2018-02-25 19:14:37'),(43,'portugiesisch',1074,'portugiesisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(44,'Burundi',1331,'Burundi','2018-02-25 19:14:37','2018-02-25 19:14:37'),(45,'amerikanisch',1076,'amerikanisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(46,'Brittisch',1333,'Brittisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(47,'österreich',1081,'österreich','2018-02-25 19:14:37','2018-02-25 19:14:37'),(48,'Albanien',1338,'Albanien','2018-02-25 19:14:37','2018-02-25 19:14:37'),(49,'Nigeria',1339,'Nigeria','2018-02-25 19:14:37','2018-02-25 19:14:37'),(50,'GB',1340,'GB','2018-02-25 19:14:37','2018-02-25 19:14:37'),(51,'mazedonisch',1341,'mazedonisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(52,'britisch',1086,'britisch','2018-02-25 19:14:37','2018-02-25 19:14:37'),(53,'Togolaise',1343,'Togolaise','2018-02-25 19:14:38','2018-02-25 19:14:38'),(54,'Schweizer',1088,'Schweizer','2018-02-25 19:14:38','2018-02-25 19:14:38'),(55,'pakistanisch',1344,'pakistanisch','2018-02-25 19:14:38','2018-02-25 19:14:38'),(56,'Thai',1089,'Thai','2018-02-25 19:14:38','2018-02-25 19:14:38'),(57,'österreichschich/norwegisch',1345,'österreichschich/norwegisch','2018-02-25 19:14:38','2018-02-25 19:14:38'),(58,'litauisch',1091,'litauisch','2018-02-25 19:14:38','2018-02-25 19:14:38'),(59,'Portugal',1347,'Portugal','2018-02-25 19:14:38','2018-02-25 19:14:38'),(60,'griechisch',1092,'griechisch','2018-02-25 19:14:38','2018-02-25 19:14:38'),(61,'Italienisch-Österr.',1348,'Italienisch-Österr.','2018-02-25 19:14:38','2018-02-25 19:14:38'),(62,'schweizerisch ',1093,'schweizerisch ','2018-02-25 19:14:38','2018-02-25 19:14:38'),(63,'guatemaltekisch',1349,'guatemaltekisch','2018-02-25 19:14:38','2018-02-25 19:14:38'),(64,'belgisch',1094,'belgisch','2018-02-25 19:14:38','2018-02-25 19:14:38'),(65,'nicht bekannt',1350,'nicht bekannt','2018-02-25 19:14:38','2018-02-25 19:14:38'),(66,'Portugiesich',1352,'Portugiesich','2018-02-25 19:14:38','2018-02-25 19:14:38'),(67,'lettisch',1102,'lettisch','2018-02-25 19:14:38','2018-02-25 19:14:38'),(68,'französisch',1103,'französisch','2018-02-25 19:14:38','2018-02-25 19:14:38'),(69,'spanisch',1104,'spanisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(70,'british',1360,'british','2018-02-25 19:14:39','2018-02-25 19:14:39'),(71,'marokkanisch',1361,'marokkanisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(72,'Togo',1106,'Togo','2018-02-25 19:14:39','2018-02-25 19:14:39'),(73,'albanisch',1107,'albanisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(74,'Niederländer',1364,'Niederländer','2018-02-25 19:14:39','2018-02-25 19:14:39'),(75,'Sri Lanka',1110,'Sri Lanka','2018-02-25 19:14:39','2018-02-25 19:14:39'),(76,'estnisch',1366,'estnisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(77,'Indien',1111,'Indien','2018-02-25 19:14:39','2018-02-25 19:14:39'),(78,'Eritrea',1112,'Eritrea','2018-02-25 19:14:39','2018-02-25 19:14:39'),(79,'slowakisch',1370,'slowakisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(80,'Serbe',1115,'Serbe','2018-02-25 19:14:39','2018-02-25 19:14:39'),(81,'Algerisch',1372,'Algerisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(82,'indonesisch',1117,'indonesisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(83,'griech.',1373,'griech.','2018-02-25 19:14:39','2018-02-25 19:14:39'),(84,'yugoslawisch',1118,'yugoslawisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(85,'englisch/plonisch',1119,'englisch/plonisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(86,'irisch',1375,'irisch','2018-02-25 19:14:39','2018-02-25 19:14:39'),(87,'bosnisch-herzegow.',1120,'bosnisch-herzegow.','2018-02-25 19:14:40','2018-02-25 19:14:40'),(88,'Jugoslawisch',1376,'Jugoslawisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(89,'Italienisch',1121,'Italienisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(90,'Irisch',1122,'Irisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(91,'libanesisch',1123,'libanesisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(92,'iranisch',1124,'iranisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(93,'Bulgarien/Belgien',1380,'Bulgarien/Belgien','2018-02-25 19:14:40','2018-02-25 19:14:40'),(94,'polnisch/italiensch',1381,'polnisch/italiensch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(95,'amerikanisch',1126,'amerikanisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(96,'salvadorianisch',1127,'salvadorianisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(97,'Russische Föderation',1384,'Russische Föderation','2018-02-25 19:14:40','2018-02-25 19:14:40'),(98,'US',1129,'US','2018-02-25 19:14:40','2018-02-25 19:14:40'),(99,'Rumänisch',1385,'Rumänisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(100,'Ungarn',1130,'Ungarn','2018-02-25 19:14:40','2018-02-25 19:14:40'),(101,'U.S. Amerikaner',1386,'U.S. Amerikaner','2018-02-25 19:14:40','2018-02-25 19:14:40'),(102,'SERBIEN',1387,'SERBIEN','2018-02-25 19:14:40','2018-02-25 19:14:40'),(103,'Spanisch',1132,'Spanisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(104,'ukrainisch',1133,'ukrainisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(105,'Belgier',1389,'Belgier','2018-02-25 19:14:40','2018-02-25 19:14:40'),(106,'eritreisch',1134,'eritreisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(107,'philippinisch',1135,'philippinisch','2018-02-25 19:14:40','2018-02-25 19:14:40'),(108,'Ghana',1391,'Ghana','2018-02-25 19:14:41','2018-02-25 19:14:41'),(109,'jugoslawisch',1137,'jugoslawisch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(110,'Amerikaner',1393,'Amerikaner','2018-02-25 19:14:41','2018-02-25 19:14:41'),(111,'tschechisch',1138,'tschechisch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(112,'kongolesisch',1394,'kongolesisch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(113,'portugisiesch',1395,'portugisiesch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(114,'Bosnien und Herzegowina',1140,'Bosnien und Herzegowina','2018-02-25 19:14:41','2018-02-25 19:14:41'),(115,'Portugisiesch',1396,'Portugisiesch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(116,'Türkisch',1141,'Türkisch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(117,'nigerianisch',1397,'nigerianisch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(118,'bosnisch',1142,'bosnisch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(119,'Indonesisch',1398,'Indonesisch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(120,'British',1143,'British','2018-02-25 19:14:41','2018-02-25 19:14:41'),(121,'griechisch-amerikanisch',1399,'griechisch-amerikanisch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(122,'portugisisch',1144,'portugisisch','2018-02-25 19:14:41','2018-02-25 19:14:41'),(123,'CH',1146,'CH','2018-02-25 19:14:41','2018-02-25 19:14:41'),(124,'Malaysian',1405,'Malaysian','2018-02-25 19:14:41','2018-02-25 19:14:41'),(125,'Filipina',1150,'Filipina','2018-02-25 19:14:42','2018-02-25 19:14:42'),(126,'vietnam',1151,'vietnam','2018-02-25 19:14:42','2018-02-25 19:14:42'),(127,'Kroatien',1152,'Kroatien','2018-02-25 19:14:42','2018-02-25 19:14:42'),(128,'venezuelanisch',1408,'venezuelanisch','2018-02-25 19:14:42','2018-02-25 19:14:42'),(129,'Brasilien',1410,'Brasilien','2018-02-25 19:14:42','2018-02-25 19:14:42'),(130,'niederländer',1155,'niederländer','2018-02-25 19:14:42','2018-02-25 19:14:42'),(131,'U.S.Amerikaner',1411,'U.S.Amerikaner','2018-02-25 19:14:42','2018-02-25 19:14:42'),(132,'vietnamesisch',1156,'vietnamesisch','2018-02-25 19:14:42','2018-02-25 19:14:42'),(133,'ECU',1412,'ECU','2018-02-25 19:14:42','2018-02-25 19:14:42'),(134,'Luxemburgisch',1413,'Luxemburgisch','2018-02-25 19:14:42','2018-02-25 19:14:42'),(135,'Britisch',1158,'Britisch','2018-02-25 19:14:42','2018-02-25 19:14:42'),(136,'Österreich',1159,'Österreich','2018-02-25 19:14:42','2018-02-25 19:14:42'),(137,'amerikanisch / polnisch',1415,'amerikanisch / polnisch','2018-02-25 19:14:42','2018-02-25 19:14:42'),(138,'kanadisch',1160,'kanadisch','2018-02-25 19:14:42','2018-02-25 19:14:42'),(139,'schweiz',1416,'schweiz','2018-02-25 19:14:42','2018-02-25 19:14:42'),(140,'Thailänder',1417,'Thailänder','2018-02-25 19:14:42','2018-02-25 19:14:42'),(141,'Irakisch',1162,'Irakisch','2018-02-25 19:14:42','2018-02-25 19:14:42'),(142,'Peru',1418,'Peru','2018-02-25 19:14:43','2018-02-25 19:14:43'),(143,'Italien',1163,'Italien','2018-02-25 19:14:43','2018-02-25 19:14:43'),(144,'Kirgystan',1164,'Kirgystan','2018-02-25 19:14:43','2018-02-25 19:14:43'),(145,'australisch',1420,'australisch','2018-02-25 19:14:43','2018-02-25 19:14:43'),(146,'GB (EU) / USA',1421,'GB (EU) / USA','2018-02-25 19:14:43','2018-02-25 19:14:43'),(147,'Tschad',1166,'Tschad','2018-02-25 19:14:43','2018-02-25 19:14:43'),(148,'bolivisch',1422,'bolivisch','2018-02-25 19:14:43','2018-02-25 19:14:43'),(149,'Bosnien',1167,'Bosnien','2018-02-25 19:14:43','2018-02-25 19:14:43'),(150,'ital./portug.',1168,'ital./portug.','2018-02-25 19:14:43','2018-02-25 19:14:43'),(151,'frz',1426,'frz','2018-02-25 19:14:43','2018-02-25 19:14:43'),(152,'Portugisisch',1427,'Portugisisch','2018-02-25 19:14:43','2018-02-25 19:14:43'),(153,'croatisch',1173,'croatisch','2018-02-25 19:14:43','2018-02-25 19:14:43'),(154,'Haiti',1429,'Haiti','2018-02-25 19:14:43','2018-02-25 19:14:43'),(155,'Kroatisch',1174,'Kroatisch','2018-02-25 19:14:43','2018-02-25 19:14:43'),(156,'Belgisch',1175,'Belgisch','2018-02-25 19:14:43','2018-02-25 19:14:43'),(157,'russisch',1176,'russisch','2018-02-25 19:14:43','2018-02-25 19:14:43'),(158,'Mexikaner',1432,'Mexikaner','2018-02-25 19:14:43','2018-02-25 19:14:43'),(159,'Kongolese',1433,'Kongolese','2018-02-25 19:14:43','2018-02-25 19:14:43'),(160,'irakisch',1179,'irakisch','2018-02-25 19:14:43','2018-02-25 19:14:43'),(161,'mexikanisch',1435,'mexikanisch','2018-02-25 19:14:43','2018-02-25 19:14:43'),(162,'Französisch',1180,'Französisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(163,'brasilianische',1436,'brasilianische','2018-02-25 19:14:44','2018-02-25 19:14:44'),(164,'Kanadisch / Niederländisch',1437,'Kanadisch / Niederländisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(165,'rumänisch',1182,'rumänisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(166,'moldawisch',1183,'moldawisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(167,'US-Amerikaner',1439,'US-Amerikaner','2018-02-25 19:14:44','2018-02-25 19:14:44'),(168,'Albanisch',1184,'Albanisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(169,'niederländiscch',1440,'niederländiscch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(170,'Neiderländisch / Englisch',1185,'Neiderländisch / Englisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(171,'Ägypten',1441,'Ägypten','2018-02-25 19:14:44','2018-02-25 19:14:44'),(172,'jugosl.',1186,'jugosl.','2018-02-25 19:14:44','2018-02-25 19:14:44'),(173,'und spanisch',1442,'und spanisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(174,'bolivianisch',1187,'bolivianisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(175,'Amerikanerin',1443,'Amerikanerin','2018-02-25 19:14:44','2018-02-25 19:14:44'),(176,'+italienisch',1444,'+italienisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(177,'Brasilien / Österreich',1446,'Brasilien / Österreich','2018-02-25 19:14:44','2018-02-25 19:14:44'),(178,'chilenisch',1191,'chilenisch','2018-02-25 19:14:44','2018-02-25 19:14:44'),(179,'Polen',1447,'Polen','2018-02-25 19:14:45','2018-02-25 19:14:45'),(180,'Serbisch',1192,'Serbisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(181,'kazachstan',1193,'kazachstan','2018-02-25 19:14:45','2018-02-25 19:14:45'),(182,'US-amerikanisch',1194,'US-amerikanisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(183,'Kongo',1450,'Kongo','2018-02-25 19:14:45','2018-02-25 19:14:45'),(184,'thailändisch',1451,'thailändisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(185,'Amerikanisch',1196,'Amerikanisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(186,'und australisch',1452,'und australisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(187,'togoisch',1453,'togoisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(188,'Slowenien',1199,'Slowenien','2018-02-25 19:14:45','2018-02-25 19:14:45'),(189,'Kurdisch',1455,'Kurdisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(190,'Russisch',1200,'Russisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(191,'Philippiner',1456,'Philippiner','2018-02-25 19:14:45','2018-02-25 19:14:45'),(192,'tschetschenisch',1457,'tschetschenisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(193,'Mosambik',1458,'Mosambik','2018-02-25 19:14:45','2018-02-25 19:14:45'),(194,'Schweiz',1203,'Schweiz','2018-02-25 19:14:45','2018-02-25 19:14:45'),(195,'Guatemala',1459,'Guatemala','2018-02-25 19:14:45','2018-02-25 19:14:45'),(196,'Brasilianisch',1460,'Brasilianisch','2018-02-25 19:14:45','2018-02-25 19:14:45'),(197,'Kroate',1205,'Kroate','2018-02-25 19:14:46','2018-02-25 19:14:46'),(198,'Äthopien',1461,'Äthopien','2018-02-25 19:14:46','2018-02-25 19:14:46'),(199,'usbekisch',1462,'usbekisch','2018-02-25 19:14:46','2018-02-25 19:14:46'),(200,'Indisch',1463,'Indisch','2018-02-25 19:14:46','2018-02-25 19:14:46'),(201,'USA / GB(EU)',1465,'USA / GB(EU)','2018-02-25 19:14:46','2018-02-25 19:14:46'),(202,'vietnamesich',1210,'vietnamesich','2018-02-25 19:14:46','2018-02-25 19:14:46'),(203,'Britsch',1466,'Britsch','2018-02-25 19:14:46','2018-02-25 19:14:46'),(204,'syrisch',1211,'syrisch','2018-02-25 19:14:46','2018-02-25 19:14:46'),(205,'Japanisch',1467,'Japanisch','2018-02-25 19:14:46','2018-02-25 19:14:46'),(206,'Tai',1468,'Tai','2018-02-25 19:14:46','2018-02-25 19:14:46'),(207,'Türkei',1213,'Türkei','2018-02-25 19:14:46','2018-02-25 19:14:46'),(208,'F',1214,'F','2018-02-25 19:14:46','2018-02-25 19:14:46'),(209,'Ukraine',1215,'Ukraine','2018-02-25 19:14:46','2018-02-25 19:14:46'),(210,'Weißrussland',1471,'Weißrussland','2018-02-25 19:14:46','2018-02-25 19:14:46'),(211,'slowenisch',1216,'slowenisch','2018-02-25 19:14:46','2018-02-25 19:14:46'),(212,'Äthiopisch',1472,'Äthiopisch','2018-02-25 19:14:46','2018-02-25 19:14:46'),(213,'luxemburgisch',1218,'luxemburgisch','2018-02-25 19:14:46','2018-02-25 19:14:46'),(214,'Rumänien',1219,'Rumänien','2018-02-25 19:14:46','2018-02-25 19:14:46'),(215,'+ Spanisch',1475,'+ Spanisch','2018-02-25 19:14:46','2018-02-25 19:14:46'),(216,'Serbien',1220,'Serbien','2018-02-25 19:14:47','2018-02-25 19:14:47'),(217,'Kenianer',1476,'Kenianer','2018-02-25 19:14:47','2018-02-25 19:14:47'),(218,'Griechisch',1221,'Griechisch','2018-02-25 19:14:47','2018-02-25 19:14:47'),(219,'kroatische',1477,'kroatische','2018-02-25 19:14:47','2018-02-25 19:14:47'),(220,'kosovarisch',1222,'kosovarisch','2018-02-25 19:14:47','2018-02-25 19:14:47'),(221,'Litauisch',1479,'Litauisch','2018-02-25 19:14:47','2018-02-25 19:14:47'),(222,'kasachisch',1225,'kasachisch','2018-02-25 19:14:47','2018-02-25 19:14:47'),(223,'Südkorea',1481,'Südkorea','2018-02-25 19:14:47','2018-02-25 19:14:47'),(224,'tunesisch',1482,'tunesisch','2018-02-25 19:14:47','2018-02-25 19:14:47'),(225,'kamerunesisch',1229,'kamerunesisch','2018-02-25 19:14:47','2018-02-25 19:14:47'),(226,'philipino',1233,'philipino','2018-02-25 19:14:47','2018-02-25 19:14:47'),(227,'phillipino',1234,'phillipino','2018-02-25 19:14:47','2018-02-25 19:14:47'),(228,'port.',1235,'port.','2018-02-25 19:14:47','2018-02-25 19:14:47'),(229,'luxemb.',1236,'luxemb.','2018-02-25 19:14:47','2018-02-25 19:14:47'),(230,'N-amerikanisch',1237,'N-amerikanisch','2018-02-25 19:14:47','2018-02-25 19:14:47'),(231,'F - CH',1238,'F - CH','2018-02-25 19:14:47','2018-02-25 19:14:47'),(232,'NL',1239,'NL','2018-02-25 19:14:47','2018-02-25 19:14:47'),(233,'theiländisch',1243,'theiländisch','2018-02-25 19:14:47','2018-02-25 19:14:47'),(234,'Vietnam',1246,'Vietnam','2018-02-25 19:14:48','2018-02-25 19:14:48'),(235,'Bulgarien',1247,'Bulgarien','2018-02-25 19:14:48','2018-02-25 19:14:48'),(236,'bulgarisch',1250,'bulgarisch','2018-02-25 19:14:48','2018-02-25 19:14:48'),(237,'norwegisch',1251,'norwegisch','2018-02-25 19:14:48','2018-02-25 19:14:48'),(238,'rwander',1252,'rwander','2018-02-25 19:14:48','2018-02-25 19:14:48'),(239,'ägypt.',1254,'ägypt.','2018-02-25 19:14:48','2018-02-25 19:14:48'),(240,'B',1255,'B','2018-02-25 19:14:48','2018-02-25 19:14:48'),(241,'dänisch',1259,'dänisch','2018-02-25 19:14:48','2018-02-25 19:14:48'),(242,'türk.',1261,'türk.','2018-02-25 19:14:48','2018-02-25 19:14:48'),(243,'Syrisch',1262,'Syrisch','2018-02-25 19:14:48','2018-02-25 19:14:48'),(244,'domenikanisch',1263,'domenikanisch','2018-02-25 19:14:48','2018-02-25 19:14:48'),(245,'tamilisch',1265,'tamilisch','2018-02-25 19:14:48','2018-02-25 19:14:48'),(246,'äthiopisch',1266,'äthiopisch','2018-02-25 19:14:48','2018-02-25 19:14:48'),(247,'pl',1268,'pl','2018-02-25 19:14:48','2018-02-25 19:14:48'),(248,'griechisch',1269,'griechisch','2018-02-25 19:14:48','2018-02-25 19:14:48'),(249,'Togolesisch',1271,'Togolesisch','2018-02-25 19:14:49','2018-02-25 19:14:49'),(250,'kamerunisch',1272,'kamerunisch','2018-02-25 19:14:49','2018-02-25 19:14:49'),(251,'Polnisch',1273,'Polnisch','2018-02-25 19:14:49','2018-02-25 19:14:49'),(252,'persisch',1276,'persisch','2018-02-25 19:14:49','2018-02-25 19:14:49'),(253,'Irak',1277,'Irak','2018-02-25 19:14:49','2018-02-25 19:14:49'),(254,'Ukrainisch',1278,'Ukrainisch','2018-02-25 19:14:50','2018-02-25 19:14:50'),(255,'Tschechisch',1279,'Tschechisch','2018-02-25 19:14:50','2018-02-25 19:14:50');
/*!40000 ALTER TABLE `nationalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `nr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,1,5,'2016','2018-02-25 19:47:28','2018-02-25 19:47:28'),(2,1,1,5,'2017','2018-02-25 19:47:34','2018-02-25 19:47:34'),(3,1,1,43,'2017','2018-02-25 20:08:42','2018-02-25 20:08:42'),(4,1,1,21,'2017','2018-02-25 20:10:25','2018-02-25 20:10:25'),(5,1,1,29,'2017','2018-02-25 20:10:38','2018-02-25 20:10:38'),(6,1,1,50,'2016','2018-02-25 20:16:33','2018-02-25 20:16:33'),(7,1,1,50,'2017','2018-02-25 20:16:38','2018-02-25 20:16:38'),(8,1,1,36,'2017','2018-02-25 20:17:00','2018-02-25 20:17:00'),(9,1,1,4,'2017','2018-02-25 20:17:20','2018-02-25 20:17:20'),(10,1,1,34,'2017','2018-02-25 20:17:33','2018-02-25 20:17:33'),(11,2,1,12,'2017','2018-02-25 20:17:58','2018-02-25 20:17:58'),(12,2,1,31,'2017','2018-02-25 20:18:12','2018-02-25 20:18:12'),(13,2,1,13,'2017','2018-02-25 20:18:21','2018-02-25 20:18:21'),(14,1,1,1,'2017','2018-02-25 20:22:26','2018-02-25 20:22:26'),(15,1,1,44,'2017','2018-02-25 20:22:40','2018-02-25 20:22:40'),(16,1,1,30,'2016','2018-02-25 20:23:05','2018-02-25 20:23:05'),(17,1,1,30,'2017','2018-02-25 20:23:09','2018-02-25 20:23:09'),(18,2,1,20,'2017','2018-02-25 20:23:29','2018-02-25 20:27:57'),(19,2,1,22,'2017','2018-02-25 20:28:09','2018-02-25 20:28:09'),(20,1,1,35,'2017','2018-02-25 20:29:11','2018-02-25 20:29:11');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nami_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nami_id` int(11) DEFAULT NULL,
  `is_null` tinyint(1) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Baden-Württemberg (Deutschland)',1,0,'Baden-Württemberg'),(2,'Bayern (Deutschland)',2,0,'Bayern'),(3,'Berlin (Deutschland)',3,0,'Berlin'),(4,'Brandenburg (Deutschland)',4,0,'Brandenburg'),(5,'Bremen (Deutschland)',5,0,'Bremen'),(6,'Hamburg (Deutschland)',6,0,'Hamburg'),(7,'Hessen (Deutschland)',7,0,'Hessen'),(8,'Mecklenburg-Vorpommern (Deutschland)',8,0,'Mecklenburg-Vorpommern'),(9,'Niedersachsen (Deutschland)',9,0,'Niedersachsen'),(10,'Nordrhein-Westfalen (Deutschland)',10,0,'Nordrhein-Westfalen'),(11,'Rheinland-Pfalz (Deutschland)',11,0,'Rheinland-Pfalz'),(12,'Saarland (Deutschland)',12,0,'Saarland'),(13,'Sachsen (Deutschland)',13,0,'Sachsen'),(14,'Sachsen Anhalt (Deutschland)',14,0,'Sachsen Anhalt'),(15,'Schleswig-Holstein (Deutschland)',15,0,'Schleswig-Holstein'),(16,'Thüringen (Deutschland)',16,0,'Thüringen'),(17,'Nicht-DE (Ausland)',23,1,'Nicht-DE (Ausland)');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `right_usergroup`
--

DROP TABLE IF EXISTS `right_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `right_usergroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usergroup_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `right_usergroup`
--

LOCK TABLES `right_usergroup` WRITE;
/*!40000 ALTER TABLE `right_usergroup` DISABLE KEYS */;
INSERT INTO `right_usergroup` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6);
/*!40000 ALTER TABLE `right_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rights`
--

DROP TABLE IF EXISTS `rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `help` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rights`
--

LOCK TABLES `rights` WRITE;
/*!40000 ALTER TABLE `rights` DISABLE KEYS */;
INSERT INTO `rights` VALUES (1,'login','Einloggen','In Scout Robot mit seinen eigenen Benutzerdaten einloggen'),(2,'user','Benutzer bearbeiten','Andere Benutzer bearbeiten, anlegen und löschen über den Benutzer-Link im unteren Bereich der linken Navigationsleiste'),(3,'usergroup','Benutzergruppen bearbeiten','Benutzergruppen und deren Rechte bearbeiten, anlegen und löschen über den Benutzergruppeen-Link im unteren Bereich der linken Navigationsleiste'),(4,'config','Globale Konfiguration bearbeiten','Zugriff auf die globalen Einstellungen im unteren Bereich der rechten Navigationsleiste'),(5,'member.manage','Mitglieder verwalten','Mitglieder erstellen, bearbeiten und löschen'),(6,'member.overview','Mitglieder einsehen','Mitgliederübersicht anzeigen');
/*!40000 ALTER TABLE `rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'Nicht bezahlt','2018-02-25 19:14:57','2018-02-25 19:14:57'),(2,'Rechnung versendet','2018-02-25 19:14:57','2018-02-25 19:14:57'),(3,'Bezahlt','2018-02-25 19:14:57','2018-02-25 19:14:57');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `fee_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'Voll',5000,1,'2018-02-25 19:14:25','2018-02-25 19:14:25'),(2,'Familie',4000,2,'2018-02-25 19:14:26','2018-02-25 19:14:26'),(3,'Sozial',3500,3,'2018-02-25 19:14:26','2018-02-25 19:14:26');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'Tage','date','2018-02-25 19:14:58','2018-02-25 19:14:58'),(2,'Wochen','date','2018-02-25 19:14:58','2018-02-25 19:14:58'),(3,'Monate','date','2018-02-25 19:14:58','2018-02-25 19:14:58'),(4,'Jahre','date','2018-02-25 19:14:58','2018-02-25 19:14:58');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups`
--

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
INSERT INTO `usergroups` VALUES (1,'Super-Administrator');
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usergroup_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrator','admin@example.com','$2y$10$UCnd/qxMZH1T95kDyQZSJuDbC6vIrZTHjmiqgH/e4265gDpXResC2',1,'mg5eMe60xG','2018-02-25 19:14:53','2018-02-25 19:14:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ways`
--

DROP TABLE IF EXISTS `ways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ways` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ways`
--

LOCK TABLES `ways` WRITE;
/*!40000 ALTER TABLE `ways` DISABLE KEYS */;
INSERT INTO `ways` VALUES (1,'E-Mail'),(2,'Post');
/*!40000 ALTER TABLE `ways` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-25 20:39:59
