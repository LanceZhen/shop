-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,'2019-12-24 09:46:31'),(2,0,7,'Admin','fa-tasks','',NULL,NULL,'2020-04-02 17:45:27'),(3,2,8,'Users','fa-users','auth/users',NULL,NULL,'2020-04-02 17:45:27'),(4,2,9,'Roles','fa-user','auth/roles',NULL,NULL,'2020-04-02 17:45:27'),(5,2,10,'Permission','fa-ban','auth/permissions',NULL,NULL,'2020-04-02 17:45:27'),(6,2,11,'Menu','fa-bars','auth/menu',NULL,NULL,'2020-04-02 17:45:27'),(7,2,12,'Operation log','fa-history','auth/logs',NULL,NULL,'2020-04-02 17:45:27'),(8,0,3,'用户管理','fa-users','/users',NULL,'2019-12-24 09:46:14','2020-04-02 17:45:27'),(9,0,4,'商品管理','fa-cubes','/products',NULL,'2019-12-24 10:04:14','2020-04-02 17:45:27'),(10,0,5,'订单管理','fa-rmb','/orders',NULL,'2020-01-03 17:02:19','2020-04-02 17:45:27'),(11,0,6,'优惠券管理','fa-tags','/coupon_codes',NULL,'2020-01-08 17:20:46','2020-04-02 17:45:27'),(12,0,2,'类目管理','fa-bars','/categories',NULL,'2020-04-02 17:45:15','2020-04-02 17:45:27');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2019-12-24 09:51:01','2019-12-24 09:51:01'),(7,'商品管理','products','','/products*','2020-01-14 18:05:09','2020-01-14 18:05:09'),(8,'优惠券管理','coupon_codes','','/coupon_codes*','2020-01-14 18:05:47','2020-01-14 18:05:47'),(9,'订单管理','orders','','/orders*','2020-01-14 18:06:15','2020-01-14 18:06:15');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL),(2,7,NULL,NULL),(2,8,NULL,NULL),(2,9,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-12-24 09:34:26','2019-12-24 09:34:26'),(2,'运营','operation','2019-12-24 09:52:20','2019-12-24 09:52:20');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$.JW03n2XWBWWnS6WSne1i.f16XW5VHXwWKp7.CLLB3.Rtdz2KbN6m','Administrator',NULL,'zhm36FYqGVkRqPwADp1oy8UrD3sf56V2tUUsxHqnHBHoERjBaDpM25a5arR9','2019-12-24 09:34:26','2019-12-24 09:34:26'),(2,'operator','$2y$10$b18xG8den8Ch6b/L/Awxl.7RUZ8u93bvki7NX8A0JaO5cAYiqyE7a','运营',NULL,'RKM9LFRFFTx1N9Hkg36iYEh7Il9UmzarvU0CWje7f7hPMm8VmB7OKqVC3EWB','2019-12-24 09:53:07','2019-12-24 09:53:07');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-02 10:03:04
