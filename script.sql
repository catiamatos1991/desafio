-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: database
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user profile',7,'add_userprofile'),(20,'Can change user profile',7,'change_userprofile'),(21,'Can delete user profile',7,'delete_userprofile'),(22,'Can add music',8,'add_music'),(23,'Can change music',8,'change_music'),(24,'Can delete music',8,'delete_music'),(25,'Can add playlist',9,'add_playlist'),(26,'Can change playlist',9,'change_playlist'),(27,'Can delete playlist',9,'delete_playlist');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$C778E6MBMPEI$0I1hSPAGmKvJEfCM5Wwra3gfLS/yzaagbP4+2dpOARU=','2015-10-13 13:43:07.495522',1,'admin','','','admin@ua.pt',1,1,'2015-10-12 09:13:45.952000'),(2,'',NULL,0,'catia','catia','matos','catiamatos1991@gmail.com',0,1,'2015-10-13 14:43:19.957128'),(3,'',NULL,0,'andre_bastos2','andre','bastos','andrebastos18@gmail.com',0,1,'2015-10-13 16:48:07.876700'),(4,'',NULL,0,'rakhi','','','rakhi@gmail.com',0,1,'2015-10-13 16:48:25.733131'),(5,'',NULL,0,'zezinho','Ze','Santos','zezinho@gmail.com',0,1,'2015-10-13 18:06:07.045550');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'restapi','music'),(9,'restapi','playlist'),(7,'restapi','userprofile'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-10-12 08:51:27.095000'),(2,'auth','0001_initial','2015-10-12 08:51:28.818000'),(3,'admin','0001_initial','2015-10-12 08:51:28.958000'),(4,'contenttypes','0002_remove_content_type_name','2015-10-12 08:51:29.137000'),(5,'auth','0002_alter_permission_name_max_length','2015-10-12 08:51:29.227000'),(6,'auth','0003_alter_user_email_max_length','2015-10-12 08:51:29.340000'),(7,'auth','0004_alter_user_username_opts','2015-10-12 08:51:29.360000'),(8,'auth','0005_alter_user_last_login_null','2015-10-12 08:51:29.428000'),(9,'auth','0006_require_contenttypes_0002','2015-10-12 08:51:29.432000'),(10,'sessions','0001_initial','2015-10-12 08:51:29.486000'),(11,'restapi','0001_initial','2015-10-13 19:16:36.732375');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('u5rh5j8o3hye1synduzay3pag2ck2146','MmExM2JjMmU4MDIzNGY5ODVjOWU3ZDllMDBhZWFiMzhhMzMzMDJhNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YWRmNTdkNDZjMjViMGFiNDI2YjcwYjViNmM1OGZkYzRiNmRmMGQ2In0=','2015-10-27 13:43:07.505937');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music` (
  `track_id` varchar(45) NOT NULL,
  `album_title` int(11) DEFAULT NULL,
  `artist_name` int(11) DEFAULT NULL,
  `track_title` int(11) DEFAULT NULL,
  `track_duration` int(11) DEFAULT NULL,
  `track_number` int(11) DEFAULT NULL,
  `track_disc_number` int(11) DEFAULT NULL,
  `track_file` varchar(145) DEFAULT NULL,
  `track_publisher` varchar(45) DEFAULT NULL,
  `track_url` varchar(145) DEFAULT NULL,
  `track_listen_url` varchar(145) DEFAULT NULL,
  `track_user_favorite` int(11) DEFAULT NULL,
  PRIMARY KEY (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES ('126215',0,0,0,4,1,1,'music/ccCommunity/Blue_Dot_Sessions/Pacha_Faro/Blue_Dot_Sessions_-_01_-_Cab_Ride.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Pacha_Faro/Cab_Ride_1642','https://freemusicarchive.org/music/listen/60624bf7fd8712fa733e567142d638f267c9a74f',0),('126216',0,0,0,2,6,1,'music/ccCommunity/Blue_Dot_Sessions/Pacha_Faro/Blue_Dot_Sessions_-_06_-_Cach.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Pacha_Faro/Cach_1368','https://freemusicarchive.org/music/listen/c75be93457a25f7d2a9380770d80c473488c37e4',0),('126217',0,0,0,2,2,1,'music/ccCommunity/Blue_Dot_Sessions/Pacha_Faro/Blue_Dot_Sessions_-_02_-_Helado.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Pacha_Faro/Helado_1235','https://freemusicarchive.org/music/listen/5acf876c2247cbbef74bb339cdbf724572c06aed',0),('126218',0,0,0,3,5,1,'music/ccCommunity/Blue_Dot_Sessions/Pacha_Faro/Blue_Dot_Sessions_-_05_-_La_Focsa.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Pacha_Faro/La_Focsa_1085','https://freemusicarchive.org/music/listen/e4eb51f170122b561749fd489a9ddf1f7fe9fb47',0),('126219',0,0,0,3,3,1,'music/ccCommunity/Blue_Dot_Sessions/Pacha_Faro/Blue_Dot_Sessions_-_03_-_Minutes.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Pacha_Faro/Minutes_1122','https://freemusicarchive.org/music/listen/70a2f4ddfdf64ef44df8e6a068198adf43c247e1',0),('126220',0,0,0,4,4,1,'music/ccCommunity/Blue_Dot_Sessions/Pacha_Faro/Blue_Dot_Sessions_-_04_-_Monder.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Pacha_Faro/Monder_1269','https://freemusicarchive.org/music/listen/a899c7da9215dddd80e077397c9820518959b6ea',0),('126221',0,0,0,2,1,1,'music/Pakapi_Records/yn__GMC/Popolus_Ajeno/yn__GMC_-_01_-_Naram-Sin.mp3','Pakapi Records','http://freemusicarchive.org/music/yn__GMC/Popolus_Ajeno/yn_GMC_-_01_-_Naram_Sin','https://freemusicarchive.org/music/listen/105684c9b00270aede953809aca8d5fc684b2413',0),('126222',0,0,0,7,2,1,'music/Pakapi_Records/yn__GMC/Popolus_Ajeno/yn__GMC_-_02_-_Popolus_Ajeno.mp3','Pakapi Records','http://freemusicarchive.org/music/yn__GMC/Popolus_Ajeno/yn_GMC_-_02_-_Popolus_Ajeno','https://freemusicarchive.org/music/listen/4594865daddf6b49dc102a55941fc700a46c6b35',0),('126223',0,0,0,9,3,1,'music/Pakapi_Records/yn__GMC/Popolus_Ajeno/yn__GMC_-_03_-_Cumbia_Masonica.mp3','Pakapi Records','http://freemusicarchive.org/music/yn__GMC/Popolus_Ajeno/yn_GMC_-_03_-_Cumbia_Masonica','https://freemusicarchive.org/music/listen/2995a5b3577c63372866748425d66994a036d9b5',0),('126224',0,0,0,2,4,1,'music/Pakapi_Records/yn__GMC/Popolus_Ajeno/yn__GMC_-_04_-_Estela_Tractus.mp3','Pakapi Records','http://freemusicarchive.org/music/yn__GMC/Popolus_Ajeno/yn_GMC_-_04_-_Estela_Tractus','https://freemusicarchive.org/music/listen/323062e649744e0755f96a059945303af6311c40',0),('126225',0,0,0,4,5,1,'music/Pakapi_Records/yn__GMC/Popolus_Ajeno/yn__GMC_-_05_-_Medusa_Mayorina.mp3','Pakapi Records','http://freemusicarchive.org/music/yn__GMC/Popolus_Ajeno/yn_GMC_-_05_-_Medusa_Mayorina','https://freemusicarchive.org/music/listen/10a351d13cfdfee6071210d7eeb46214295135ff',0),('126226',0,0,0,1,6,1,'music/Pakapi_Records/yn__GMC/Popolus_Ajeno/yn__GMC_-_06_-_.mp3','Pakapi Records','http://freemusicarchive.org/music/yn__GMC/Popolus_Ajeno/yn_GMC_-_06_-_','https://freemusicarchive.org/music/listen/29ab64085866695c49f1d924a58237779f7b3cd9',0),('126227',0,0,0,2,7,1,'music/Pakapi_Records/yn__GMC/Popolus_Ajeno/yn__GMC_-_07_-_La_Barcaza.mp3','Pakapi Records','http://freemusicarchive.org/music/yn__GMC/Popolus_Ajeno/yn_GMC_-_07_-_La_Barcaza','https://freemusicarchive.org/music/listen/c86bbab6fd4102fed92722c2321c26d69f2a3934',0),('126228',0,0,0,11,8,1,'music/Pakapi_Records/yn__GMC/Popolus_Ajeno/yn__GMC_-_08_-_Muro_de_Lenguas.mp3','Pakapi Records','http://freemusicarchive.org/music/yn__GMC/Popolus_Ajeno/yn_GMC_-_08_-_Muro_de_Lenguas','https://freemusicarchive.org/music/listen/fb4e2eadbba20b050b42ae4fdb21c41422064e52',0),('126229',0,0,0,4,3,1,'music/ccCommunity/Blue_Dot_Sessions/Textiles/Blue_Dot_Sessions_-_03_-_Javan.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Textiles/Javan','https://freemusicarchive.org/music/listen/b812eaea15a6e72b656514fc9d60babdc8b0192a',0),('126230',0,0,0,2,4,1,'music/ccCommunity/Blue_Dot_Sessions/Textiles/Blue_Dot_Sessions_-_04_-_Mosic.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Textiles/Mosic','https://freemusicarchive.org/music/listen/e4d4078fdcbed90e60313054154bdd1484bccf16',0),('126231',0,0,0,3,5,1,'music/ccCommunity/Blue_Dot_Sessions/Textiles/Blue_Dot_Sessions_-_05_-_Silky.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Textiles/Silky','https://freemusicarchive.org/music/listen/85a49df4168dde8adc29a3c786669e87d7d4e1b6',0),('126232',0,0,0,3,1,1,'music/ccCommunity/Blue_Dot_Sessions/Textiles/Blue_Dot_Sessions_-_01_-_Thread_Indigo.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Textiles/Thread_Indigo','https://freemusicarchive.org/music/listen/5771b10f41e44ec44e2bbe6ed3961f246807d4b8',0),('126233',0,0,0,2,2,1,'music/ccCommunity/Blue_Dot_Sessions/Textiles/Blue_Dot_Sessions_-_02_-_Thread_Magenta.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Textiles/Thread_Magenta','https://freemusicarchive.org/music/listen/413a1774208f64687e7559f46be2d429b7ba3d8b',0),('126234',0,0,0,3,6,1,'music/ccCommunity/Blue_Dot_Sessions/Textiles/Blue_Dot_Sessions_-_06_-_Three_for_Julia.mp3',NULL,'http://freemusicarchive.org/music/Blue_Dot_Sessions/Textiles/Three_for_Julia','https://freemusicarchive.org/music/listen/cac6346e00204ed234d75c2c978ed29a3dd50bab',0);
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `music` varchar(30) NOT NULL,
  `user` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES ('126215','catiamatos1991@gmail.com','1');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restapi_music`
--

DROP TABLE IF EXISTS `restapi_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restapi_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artista` varchar(20) NOT NULL,
  `titulo` varchar(140) NOT NULL,
  `album` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restapi_music`
--

LOCK TABLES `restapi_music` WRITE;
/*!40000 ALTER TABLE `restapi_music` DISABLE KEYS */;
/*!40000 ALTER TABLE `restapi_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restapi_playlist`
--

DROP TABLE IF EXISTS `restapi_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restapi_playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `titulo` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restapi_playlist`
--

LOCK TABLES `restapi_playlist` WRITE;
/*!40000 ALTER TABLE `restapi_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `restapi_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restapi_userprofile`
--

DROP TABLE IF EXISTS `restapi_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restapi_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cc` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `restapi_userprofile_user_id_69e17203fe371312_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restapi_userprofile`
--

LOCK TABLES `restapi_userprofile` WRITE;
/*!40000 ALTER TABLE `restapi_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `restapi_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-13 21:02:57
