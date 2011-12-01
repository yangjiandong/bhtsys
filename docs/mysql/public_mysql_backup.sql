-- MySQL dump 10.13  Distrib 5.1.55, for Win32 (ia32)
--
-- Host: localhost    Database: public
-- ------------------------------------------------------
-- Server version	5.1.55-community

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
-- Table structure for table `portal`
--

DROP TABLE IF EXISTS `portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal` (
  `PORTAL_ID` bigint(20) NOT NULL,
  `PORTAL_USERID` bigint(20) DEFAULT NULL,
  `PORTLET1` varchar(20) DEFAULT NULL,
  `PORTLET2` varchar(20) DEFAULT NULL,
  `PORTLET3` varchar(20) DEFAULT NULL,
  `PORTLET4` varchar(20) DEFAULT NULL,
  `PORTLET5` varchar(20) DEFAULT NULL,
  `PORTLET6` varchar(20) DEFAULT NULL,
  `PORTLET7` varchar(20) DEFAULT NULL,
  `PORTLET8` varchar(20) DEFAULT NULL,
  `PORTLET9` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PORTAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal`
--

LOCK TABLES `portal` WRITE;
/*!40000 ALTER TABLE `portal` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_accessory`
--

DROP TABLE IF EXISTS `syspl_accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_accessory` (
  `ACCESSORY_ID` bigint(20) NOT NULL,
  `INFO_ID` bigint(20) DEFAULT NULL,
  `ACCESSORY_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ACCESSORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_accessory`
--

LOCK TABLES `syspl_accessory` WRITE;
/*!40000 ALTER TABLE `syspl_accessory` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_accessory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_affiche`
--

DROP TABLE IF EXISTS `syspl_affiche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_affiche` (
  `AFFICHE_ID` bigint(20) NOT NULL,
  `AFFICHE_TITLE` varchar(100) DEFAULT NULL,
  `AFFICHE_INVALIDATE` date DEFAULT NULL,
  `AFFICHE_PULISH` smallint(6) DEFAULT NULL,
  `AFFICHE_CONTENT` text,
  PRIMARY KEY (`AFFICHE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_affiche`
--

LOCK TABLES `syspl_affiche` WRITE;
/*!40000 ALTER TABLE `syspl_affiche` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_affiche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_code`
--

DROP TABLE IF EXISTS `syspl_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_code` (
  `CODE_ID` bigint(20) NOT NULL,
  `CODE_ENG_NAME` varchar(20) DEFAULT NULL,
  `CODE_NAME` varchar(20) DEFAULT NULL,
  `MODULE_NAME` varchar(20) DEFAULT NULL,
  `DELIMITE` varchar(2) DEFAULT NULL,
  `PART_NUM` int(11) DEFAULT NULL,
  `PART1` varchar(20) DEFAULT NULL,
  `PART1_CON` varchar(20) DEFAULT NULL,
  `PART2` varchar(20) DEFAULT NULL,
  `PART2_CON` varchar(20) DEFAULT NULL,
  `PART3` varchar(20) DEFAULT NULL,
  `PART3_CON` varchar(20) DEFAULT NULL,
  `PART4` varchar(20) DEFAULT NULL,
  `PART4_CON` varchar(20) DEFAULT NULL,
  `CODE_EFFECT` varchar(50) DEFAULT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_code`
--

LOCK TABLES `syspl_code` WRITE;
/*!40000 ALTER TABLE `syspl_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_db_opt_log`
--

DROP TABLE IF EXISTS `syspl_db_opt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_db_opt_log` (
  `OPT_ID` bigint(20) NOT NULL,
  `OPT_MOD_NAME` varchar(20) DEFAULT NULL,
  `OPT_NAME` varchar(10) DEFAULT NULL,
  `OPT_TIME` date DEFAULT NULL,
  `OPT_PC_NAME` varchar(25) DEFAULT NULL,
  `OPT_PC_IP` varchar(25) DEFAULT NULL,
  `OPT_SQL` varchar(100) DEFAULT NULL,
  `OPT_USER_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`OPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_db_opt_log`
--

LOCK TABLES `syspl_db_opt_log` WRITE;
/*!40000 ALTER TABLE `syspl_db_opt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_db_opt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_dic_big_type`
--

DROP TABLE IF EXISTS `syspl_dic_big_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_dic_big_type` (
  `BIG_TYPE_ID` bigint(20) NOT NULL,
  `BIG_TYPE_NAME` varchar(20) DEFAULT NULL,
  `BIG_TYPE_CODE` varchar(15) DEFAULT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`BIG_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_dic_big_type`
--

LOCK TABLES `syspl_dic_big_type` WRITE;
/*!40000 ALTER TABLE `syspl_dic_big_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_dic_big_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_dic_small_type`
--

DROP TABLE IF EXISTS `syspl_dic_small_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_dic_small_type` (
  `SMALL_TYPE_ID` bigint(20) NOT NULL,
  `BIG_TYPE_ID` bigint(20) DEFAULT NULL,
  `SMALL_TYPE_NAME` varchar(20) DEFAULT NULL,
  `SMALL_TYPE_CODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SMALL_TYPE_ID`),
  KEY `BIG_TYPE_ID_INDEX` (`BIG_TYPE_ID`),
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`BIG_TYPE_ID`) REFERENCES `syspl_dic_big_type` (`BIG_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_dic_small_type`
--

LOCK TABLES `syspl_dic_small_type` WRITE;
/*!40000 ALTER TABLE `syspl_dic_small_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_dic_small_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_district`
--

DROP TABLE IF EXISTS `syspl_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_district` (
  `DISTRICT_ID` bigint(20) NOT NULL,
  `DISTRICT_NAME` varchar(20) DEFAULT NULL,
  `DISTRICT_CODE` varchar(20) DEFAULT NULL,
  `DISTRICT_POSTAL` varchar(6) DEFAULT NULL,
  `DISTRICT_TELCODE` varchar(10) DEFAULT NULL,
  `DISTRICT_LEVEL` varchar(20) DEFAULT NULL,
  `DIS_PARENT_ID` bigint(20) DEFAULT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`DISTRICT_ID`),
  KEY `DISTRICT_NAME_INDEX` (`DISTRICT_NAME`),
  KEY `FK_Reference_21` (`DIS_PARENT_ID`),
  CONSTRAINT `FK_Reference_21` FOREIGN KEY (`DIS_PARENT_ID`) REFERENCES `syspl_district` (`DISTRICT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_district`
--

LOCK TABLES `syspl_district` WRITE;
/*!40000 ALTER TABLE `syspl_district` DISABLE KEYS */;
INSERT INTO `syspl_district` VALUES (0,'地区树','0',NULL,NULL,NULL,0,NULL,'enable',NULL,'2011-12-01 07:15:51');
/*!40000 ALTER TABLE `syspl_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_mod_opt_ref`
--

DROP TABLE IF EXISTS `syspl_mod_opt_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_mod_opt_ref` (
  `MOD_OPT_ID` bigint(20) NOT NULL,
  `MODULE_ID` bigint(20) DEFAULT NULL,
  `OPERATE_ID` bigint(20) DEFAULT NULL,
  `MOD_OPT_LINK` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MOD_OPT_ID`),
  KEY `MODULE_ID_INDEX` (`MODULE_ID`),
  KEY `FK_Reference_1` (`OPERATE_ID`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`MODULE_ID`) REFERENCES `syspl_module_memu` (`MODULE_ID`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`OPERATE_ID`) REFERENCES `syspl_operate` (`OPERATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_mod_opt_ref`
--

LOCK TABLES `syspl_mod_opt_ref` WRITE;
/*!40000 ALTER TABLE `syspl_mod_opt_ref` DISABLE KEYS */;
INSERT INTO `syspl_mod_opt_ref` VALUES (1,4,1,NULL),(2,4,2,NULL),(3,4,3,NULL),(4,4,4,NULL),(5,7,1,NULL),(6,7,2,NULL),(7,7,4,NULL),(10,8,1,NULL),(11,8,2,NULL),(12,8,4,NULL),(13,8,5,NULL),(14,8,6,NULL),(15,10,1,NULL),(16,10,2,NULL),(17,10,4,NULL),(18,10,5,NULL),(19,10,6,NULL),(25,13,1,NULL),(26,13,2,NULL),(27,13,4,NULL),(28,13,5,NULL),(29,13,6,NULL),(30,14,1,NULL),(31,14,2,NULL),(33,14,4,NULL),(34,14,5,NULL),(35,14,6,NULL),(36,15,1,NULL),(37,15,2,NULL),(38,15,4,NULL),(39,15,5,NULL),(40,15,6,NULL),(44,18,4,NULL),(45,32,1,NULL),(46,32,2,NULL),(47,32,4,NULL),(48,32,5,NULL),(49,32,6,NULL),(50,33,1,NULL),(51,33,2,NULL),(52,33,4,NULL),(53,33,5,NULL),(54,33,6,NULL),(55,33,8,NULL),(56,35,9,NULL),(57,35,10,NULL),(58,34,1,NULL),(59,34,2,NULL),(60,34,4,NULL),(61,34,5,NULL),(62,34,6,NULL),(64,34,8,NULL),(65,27,1,NULL),(66,27,2,NULL),(68,27,5,NULL),(69,27,6,NULL),(87,7,7,NULL),(89,7,5,NULL),(90,7,6,NULL),(91,34,11,NULL),(92,7,12,NULL),(97,34,13,NULL),(98,49,1,NULL),(99,49,2,NULL),(100,49,3,NULL),(101,49,4,NULL),(102,7,14,NULL),(104,53,1,NULL),(105,53,2,NULL),(106,53,3,NULL),(107,53,4,NULL),(108,53,16,NULL),(109,53,17,NULL),(110,53,18,NULL),(111,53,19,NULL),(112,48,1,NULL),(113,48,2,NULL),(114,48,5,NULL),(115,48,6,NULL),(116,28,1,NULL),(117,28,2,NULL),(118,28,5,NULL),(119,28,6,NULL);
/*!40000 ALTER TABLE `syspl_mod_opt_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_module_code`
--

DROP TABLE IF EXISTS `syspl_module_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_module_code` (
  `CODE_ENG_NAME` varchar(20) NOT NULL,
  `CODE_CONTENT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODE_ENG_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_module_code`
--

LOCK TABLES `syspl_module_code` WRITE;
/*!40000 ALTER TABLE `syspl_module_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_module_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_module_memu`
--

DROP TABLE IF EXISTS `syspl_module_memu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_module_memu` (
  `MODULE_ID` bigint(20) NOT NULL,
  `MOD_NAME` varchar(10) DEFAULT NULL,
  `MOD_EN_ID` varchar(20) DEFAULT NULL,
  `MOD_IMG_CLS` varchar(20) DEFAULT NULL,
  `MOD_LEVEL` varchar(2) DEFAULT NULL,
  `MOD_ORDER` int(11) DEFAULT NULL,
  `PRIVILEGE_LEVEL` varchar(15) DEFAULT NULL COMMENT '机构，角色，用户控制行权限',
  `MOD_PARENT_ID` bigint(20) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`MODULE_ID`),
  KEY `MOD_NAME_INDEX` (`MOD_NAME`),
  KEY `FK_Reference_16` (`MOD_PARENT_ID`),
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`MOD_PARENT_ID`) REFERENCES `syspl_module_memu` (`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_module_memu`
--

LOCK TABLES `syspl_module_memu` WRITE;
/*!40000 ALTER TABLE `syspl_module_memu` DISABLE KEYS */;
INSERT INTO `syspl_module_memu` VALUES (0,'模块树','moduletree','modtree','0',1,'organ',0,'enable','','admin','2010-07-27 01:29:36'),(1,'平台管理','pltmgr','platform','1',1,'organ',0,'enable','','admin','2010-08-20 05:43:34'),(2,'统一用户','uusmgr','uus','1',2,'organ',0,'enable','','admin','2010-08-20 05:44:29'),(3,'主页框架管理','mainframemgr','frameMgr','2',2,'organ',1,'enable','','admin','2010-08-20 05:51:26'),(4,'页面功能区管理','mainFrameFunId','pageFun','3',1,'organ',3,'enable','','admin','2010-08-20 06:03:57'),(6,'模块操作管理','modoptmgr','moduleOp','2',3,'organ',1,'enable','','admin','2010-08-20 06:20:15'),(7,'模块菜单管理','moduleId','moduleMgr','3',1,'organ',6,'enable','','admin','2010-08-20 06:21:50'),(8,'操作按钮管理','opButtonId','oprateMgr','3',2,'organ',6,'enable','','admin','2010-08-20 06:22:45'),(9,'字典管理','dicmgr','dicMgr','2',4,'organ',1,'enable','','admin','2010-08-20 06:27:12'),(10,'类别字典管理','typeDicMgr','typeDicMgr','3',1,'organ',9,'enable','','admin','2010-08-20 06:30:13'),(12,'系统管理','systemMgr','systemMgr','2',1,'organ',1,'enable','','admin','2010-08-20 06:32:28'),(13,'系统编码管理','codMgr','codMgr','3',2,'organ',12,'enable','','admin','2010-08-20 06:33:31'),(14,'省市地区管理','priCityMgr','priCityMgr','3',1,'organ',52,'enable','','admin','2010-08-20 06:34:52'),(15,'系统参数管理','systemParaMgr','systemParaMgr','3',3,'user',12,'disable','','admin','2010-08-20 06:35:39'),(17,'日志管理','logMgr','logMgr','2',5,'organ',1,'enable','','admin','2010-08-20 06:38:46'),(18,'系统日志管理','sysLogMgr','sysLogMgr','3',1,'organ',17,'enable','','admin','2010-08-20 06:39:33'),(19,'机构管理','organmgr','organmgrtitle','2',1,'organ',2,'enable','','admin','2010-08-21 05:33:29'),(21,'角色管理','rolemgr','rolemgrtitle','2',2,'organ',2,'enable','','admin','2010-09-13 13:04:30'),(22,'用户管理','usermgr','usermgrtitle','2',3,'organ',2,'enable','','admin','2010-09-13 13:05:20'),(23,'群组管理','groupmgr','groupmgr','2',4,'organ',2,'enable','','admin','2010-09-13 13:07:28'),(25,'系统配置管理','sysConfigId','sysConMgr','3',1,'organ',12,'enable','','admin','2010-09-13 13:09:13'),(27,'用户组管理','usergroupmgr','usergroupmgr','3',1,'organ',23,'enable','','admin','2010-09-13 13:10:41'),(28,'普通组管理','generalgroupmgr','gernalgroupmgr','3',3,'organ',23,'disable','','admin','2010-09-13 13:11:40'),(32,'机构信息管理','organId','organmgr','3',1,'organ',19,'enable','','admin','2010-09-13 13:14:44'),(33,'角色信息管理','roleId','rolemgr','3',1,'organ',21,'enable','','admin','2010-09-13 13:15:10'),(34,'用户信息管理','userId','usermgr','3',1,'organ',22,'enable','','admin','2010-09-13 13:16:03'),(35,'角色分配管理','roleOrganId','roleassignmgr','3',1,'organ',21,'enable','','admin','2010-09-14 02:29:14'),(48,'角色组管理','rolegroupmgr','rolegroupmgr','3',2,'organ',23,'enable','','3','2010-09-22 05:08:11'),(49,'系统公告管理','afficheId','afficheMgr','3',4,'without',12,'enable','','admin','2010-12-01 02:47:27'),(50,'工作流','','','1',3,'without',0,'enable','','admin','2010-12-09 07:08:40'),(52,'省市地区','priCity','priCityMgrTitle','2',3,'without',1,'enable','','admin','2011-01-17 02:16:14'),(53,'系统调度管理','schedulerId','schedulerMgr','3',5,'without',12,'enable','','admin','2011-01-17 02:34:43');
/*!40000 ALTER TABLE `syspl_module_memu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_operate`
--

DROP TABLE IF EXISTS `syspl_operate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_operate` (
  `OPERATE_ID` bigint(20) NOT NULL,
  `OPERATE_NAME` varchar(10) DEFAULT NULL,
  `OPT_FUN_LINK` varchar(20) DEFAULT NULL,
  `OPT_IMG_LINK` varchar(20) DEFAULT NULL,
  `OPT_ORDER` int(11) DEFAULT NULL,
  `OPT_GROUP` int(11) DEFAULT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`OPERATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_operate`
--

LOCK TABLES `syspl_operate` WRITE;
/*!40000 ALTER TABLE `syspl_operate` DISABLE KEYS */;
INSERT INTO `syspl_operate` VALUES (1,'增加','add','table_add',1,1,'增加','enable','admin','2010-10-28 07:16:25'),(2,'修改','modify','table_edit',2,1,'','enable','admin','2010-10-28 07:27:36'),(3,'删除','delete','table_delete',3,1,'','enable','admin','2010-10-28 07:30:29'),(4,'查看','view','table',4,1,'','enable','admin','2010-10-28 11:07:11'),(5,'启用','enable','enable',5,1,'','enable','admin','2010-10-29 01:01:42'),(6,'停用','disable','disable',6,1,'停用','enable','admin','2010-10-29 01:02:11'),(7,'模块分配操作','optassign','assign',7,1,'','enable','admin','2010-11-01 12:07:40'),(8,'模块操作权限','optpri','assign',8,1,'','enable','admin','2010-11-02 03:42:42'),(9,'角色分配','roleassign','assign',6,1,'','enable','admin','2010-11-02 03:44:10'),(10,'角色删除','roledel','table_delete',7,1,'','enable','admin','2010-11-02 03:44:39'),(11,'分配角色','assignrole','rolemgr',6,1,'','enable','admin','2010-11-02 03:46:31'),(12,'行权限','rowprivilege','privialmgr',8,1,'','enable','admin','2010-11-07 06:01:16'),(13,'重置密码','resetpwd','resetpwd',7,1,'重置密码','enable','admin','2010-11-07 10:14:23'),(14,'模块标签','moduleLabel','module_label',7,1,'','enable','admin','2010-12-26 02:23:29'),(15,'保留时间','saveTime','save_time',5,1,'','enable','admin','2010-12-30 08:05:31'),(16,'启动调度器','schedulerStart','scheduler_start',5,1,'','enable','admin','2011-01-17 06:20:06'),(17,'停止调度器','schedulerStop','scheduler_stop',6,1,'','enable','admin','2011-01-17 06:20:54'),(18,'启动任务','jobStart','job_start',7,1,'','enable','admin','2011-01-17 07:01:19'),(19,'停止任务','jobStop','job_stop',8,1,'','enable','admin','2011-01-17 07:05:07');
/*!40000 ALTER TABLE `syspl_operate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_page_dictionary`
--

DROP TABLE IF EXISTS `syspl_page_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_page_dictionary` (
  `PAGE_NAME` varchar(20) NOT NULL,
  `PAGE_SRC_NAME` varchar(20) DEFAULT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PAGE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_page_dictionary`
--

LOCK TABLES `syspl_page_dictionary` WRITE;
/*!40000 ALTER TABLE `syspl_page_dictionary` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_page_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_page_func_area`
--

DROP TABLE IF EXISTS `syspl_page_func_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_page_func_area` (
  `FUNC_AREA_ID` bigint(20) NOT NULL,
  `FUNC_AREA_NAME` varchar(25) DEFAULT NULL,
  `FUNC_AREA_RESOURCE` varchar(50) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATER_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`FUNC_AREA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_page_func_area`
--

LOCK TABLES `syspl_page_func_area` WRITE;
/*!40000 ALTER TABLE `syspl_page_func_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_page_func_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_page_pattern`
--

DROP TABLE IF EXISTS `syspl_page_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_page_pattern` (
  `PATTERN_ID` bigint(20) NOT NULL,
  `PATTERN_NAME` varchar(25) DEFAULT NULL,
  `PATTERN_LOGO` bigint(20) DEFAULT NULL,
  `PATTERN_NAVIGATE` bigint(20) DEFAULT NULL,
  `PATTERN_MENU` bigint(20) DEFAULT NULL,
  `PATTERN_MAIN_PAGE` bigint(20) DEFAULT NULL,
  `PATTERN_STATUS` varchar(15) DEFAULT NULL,
  `PATTERN_ISDEFAULT` char(2) DEFAULT NULL,
  `PATTERN_MEMO` varchar(100) DEFAULT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PATTERN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_page_pattern`
--

LOCK TABLES `syspl_page_pattern` WRITE;
/*!40000 ALTER TABLE `syspl_page_pattern` DISABLE KEYS */;
/*!40000 ALTER TABLE `syspl_page_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_primarykey_seq`
--

DROP TABLE IF EXISTS `syspl_primarykey_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_primarykey_seq` (
  `POJO_NAME` varchar(20) NOT NULL,
  `PRIMARYKEY_NAME` varchar(20) NOT NULL,
  PRIMARY KEY (`POJO_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_primarykey_seq`
--

LOCK TABLES `syspl_primarykey_seq` WRITE;
/*!40000 ALTER TABLE `syspl_primarykey_seq` DISABLE KEYS */;
INSERT INTO `syspl_primarykey_seq` VALUES ('SysplAccessory','accessoryId'),('SysplAffiche','afficheId'),('SysplCode','codeId'),('SysplDicBigType','bigTypeId'),('SysplDicSmallType','smallTypeId'),('SysplDistrict','districtId'),('SysplModOptRef','modOptId'),('SysplModuleMemu','moduleId'),('SysplOperate','operateId'),('SysplSchedulerJob','jobId'),('SysplSysOptLog','optId'),('SysplSysParameter','paraId'),('UumGroup','groupId'),('UumGroupMember','groupMemberId'),('UumOrgan','orgId'),('UumOrgRoleRef','orgRoleId'),('UumPrivilege','privilegeId'),('UumRole','roleId'),('UumRoleUserRef','orgRoleUserId'),('UumUser','userId');
/*!40000 ALTER TABLE `syspl_primarykey_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_scheduler_job`
--

DROP TABLE IF EXISTS `syspl_scheduler_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_scheduler_job` (
  `JOB_ID` bigint(20) NOT NULL,
  `JOB_NAME` varchar(30) DEFAULT NULL,
  `JOB_CLASS_DESCRIPT` varchar(100) DEFAULT NULL,
  `TRIGGER_TYPE` varchar(20) DEFAULT NULL,
  `TIME_EXPRESS` varchar(100) DEFAULT NULL,
  `START_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `END_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REPEAT_TIME` int(11) DEFAULT NULL,
  `SPLIT_TIME` bigint(20) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_scheduler_job`
--

LOCK TABLES `syspl_scheduler_job` WRITE;
/*!40000 ALTER TABLE `syspl_scheduler_job` DISABLE KEYS */;
INSERT INTO `syspl_scheduler_job` VALUES (1,'logJob','com.bhtec.service.impl.platform.job.LoggerJob','Cron','* * 0 15 * ?','2011-01-19 07:28:44','2011-02-19 07:28:44',2,2,'disable','每月15日0点清除日志','admin','2011-01-19 07:28:44'),(3,'postgresqlBbBackup','com.bhtec.service.impl.platform.job.PostgresqlDbBackupJob','Cron','0/10 * * * * ?','2011-01-19 07:28:44','2011-01-19 07:28:44',2,2,'enable','每天0点备份','admin','2011-01-21 03:34:11');
/*!40000 ALTER TABLE `syspl_scheduler_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_sys_opt_log`
--

DROP TABLE IF EXISTS `syspl_sys_opt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_sys_opt_log` (
  `OPT_ID` bigint(20) NOT NULL,
  `OPT_MOD_NAME` varchar(20) DEFAULT NULL,
  `OPT_NAME` varchar(10) DEFAULT NULL,
  `OPT_CONTENT` varchar(1000) DEFAULT NULL,
  `OPT_BUSINESS_ID` varchar(20) DEFAULT NULL,
  `OPT_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `OPT_PC_NAME` varchar(25) DEFAULT NULL,
  `OPT_PC_IP` varchar(25) DEFAULT NULL,
  `OPT_USER_NAME` varchar(20) DEFAULT NULL,
  `OPT_USER_ROLE` varchar(20) DEFAULT NULL,
  `OPT_USER_OGAN` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`OPT_ID`),
  KEY `OPT_TIME_INDEX` (`OPT_TIME`),
  KEY `OPT_MOD_NAME_INDEX` (`OPT_MOD_NAME`),
  KEY `OPT_USER_NAME_INDEX` (`OPT_USER_NAME`),
  KEY `OPT_USER_ROLE_INDEX` (`OPT_USER_ROLE`),
  KEY `OPT_USER_OGAN_INDEX` (`OPT_USER_OGAN`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_sys_opt_log`
--

LOCK TABLES `syspl_sys_opt_log` WRITE;
/*!40000 ALTER TABLE `syspl_sys_opt_log` DISABLE KEYS */;
INSERT INTO `syspl_sys_opt_log` VALUES (1,'用户登录','用户登录','总部-管理员-管理员','','2011-12-01 07:30:35','localhost','127.0.0.1','管理员','管理员','总部'),(2,'用户登录','用户登录','总部-管理员-管理员','','2011-12-01 07:31:08','localhost','127.0.0.1','管理员','管理员','总部'),(3,'用户常用功能设置','保存','用户常用功能保存:用户ID0;模块ID：25','','2011-12-01 07:32:58','localhost','127.0.0.1','管理员','管理员','总部'),(4,'用户分配角色','保存','1','1','2011-12-01 07:35:38','localhost','127.0.0.1','管理员','管理员','总部'),(5,'用户管理','保存','a;a;管理员;','1','2011-12-01 07:35:38','localhost','127.0.0.1','管理员','管理员','总部'),(6,'用户登录','用户登录','总部-管理员-管理员','','2011-12-01 07:36:45','localhost','127.0.0.1','管理员','管理员','总部'),(7,'用户登录','用户登录','总部-管理员-管理员','','2011-12-01 07:40:31','localhost','127.0.0.1','管理员','管理员','总部'),(8,'用户登录','用户登录','总部-管理员-管理员','','2011-12-01 07:42:02','localhost','127.0.0.1','管理员','管理员','总部'),(9,'系统配置管理','保存','设置系统名称:my协同办公管理系统a;','','2011-12-01 07:43:07','localhost','127.0.0.1','管理员','管理员','总部');
/*!40000 ALTER TABLE `syspl_sys_opt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syspl_sys_parameter`
--

DROP TABLE IF EXISTS `syspl_sys_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspl_sys_parameter` (
  `PARA_ID` bigint(20) NOT NULL COMMENT '主键',
  `PARA_NAME` varchar(20) DEFAULT NULL,
  `PARA_KEY_NAME` varchar(20) DEFAULT NULL,
  `PARA_VALUE` varchar(20) DEFAULT NULL,
  `PARA_TYPE` varchar(20) DEFAULT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PARA_ID`),
  KEY `PARA_KEY_NAME_INDEX` (`PARA_KEY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syspl_sys_parameter`
--

LOCK TABLES `syspl_sys_parameter` WRITE;
/*!40000 ALTER TABLE `syspl_sys_parameter` DISABLE KEYS */;
INSERT INTO `syspl_sys_parameter` VALUES (1,'test','test','test','platform','','enable','admin','2010-12-25 03:30:00'),(2,'用户默认密码','userdefaultpassword','123456','uus','','enable','admin','2010-12-11 02:26:23'),(3,'d','d','d','uus','','enable','admin','2010-12-25 03:57:34'),(7,'用户有效期','uservalidate','6','uus','','enable','admin','2010-12-11 02:53:32'),(8,'aaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaa','platform','aaaaaaaaaaaaaaaaaadddddddddffffffffccccccccccccccc','enable','admin','2011-02-15 06:06:18'),(9,'dddddddddddddddddddd','dddddddddddddddddddd','dddddddddddddddddddd','platform','','enable','admin','2011-02-15 06:08:18'),(10,'da','da','d','platform','','enable','admin','2011-02-15 06:08:48');
/*!40000 ALTER TABLE `syspl_sys_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_group`
--

DROP TABLE IF EXISTS `uum_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_group` (
  `GROUP_ID` bigint(20) NOT NULL,
  `GROUP_TYPE` varchar(15) DEFAULT NULL,
  `GROUP_NAME` varchar(20) DEFAULT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_group`
--

LOCK TABLES `uum_group` WRITE;
/*!40000 ALTER TABLE `uum_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `uum_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_group_member`
--

DROP TABLE IF EXISTS `uum_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_group_member` (
  `GROUP_MEMBER_ID` bigint(20) NOT NULL COMMENT '主键',
  `GROUP_MEMBER_TYPE` varchar(15) DEFAULT NULL COMMENT '用户角色',
  `MEMBER_RESOURCE_ID` bigint(20) DEFAULT NULL COMMENT '用户角色ID',
  `GROUP_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`GROUP_MEMBER_ID`),
  KEY `FK_Reference_15` (`GROUP_ID`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`GROUP_ID`) REFERENCES `uum_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_group_member`
--

LOCK TABLES `uum_group_member` WRITE;
/*!40000 ALTER TABLE `uum_group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `uum_group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_org_role_ref`
--

DROP TABLE IF EXISTS `uum_org_role_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_org_role_ref` (
  `ORG_ROLE_ID` bigint(20) NOT NULL,
  `ORG_ID` bigint(20) DEFAULT NULL,
  `ROLE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORG_ROLE_ID`),
  KEY `FK_Reference_10` (`ROLE_ID`),
  KEY `FK_Reference_9` (`ORG_ID`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`ORG_ID`) REFERENCES `uum_organ` (`ORG_ID`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`ROLE_ID`) REFERENCES `uum_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_org_role_ref`
--

LOCK TABLES `uum_org_role_ref` WRITE;
/*!40000 ALTER TABLE `uum_org_role_ref` DISABLE KEYS */;
INSERT INTO `uum_org_role_ref` VALUES (0,0,0),(1,0,1);
/*!40000 ALTER TABLE `uum_org_role_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_organ`
--

DROP TABLE IF EXISTS `uum_organ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_organ` (
  `ORG_ID` bigint(20) NOT NULL,
  `ORG_SIMPLE_NAME` varchar(10) DEFAULT NULL,
  `ORG_FULL_NAME` varchar(60) DEFAULT NULL,
  `ORG_CODE` varchar(10) DEFAULT NULL,
  `ORG_ADDRESS1` varchar(100) DEFAULT NULL,
  `ORG_ADDRESS2` varchar(100) DEFAULT NULL,
  `ORG_TEL1` varchar(25) DEFAULT NULL,
  `ORG_TEL2` varchar(25) DEFAULT NULL,
  `ORG_BEGIN_DATE` date DEFAULT NULL,
  `ORG_TYPE` varchar(20) DEFAULT NULL,
  `ORG_FAX` varchar(20) DEFAULT NULL,
  `ORG_POSTAL` varchar(6) DEFAULT NULL,
  `ORG_LEGAL` varchar(20) DEFAULT NULL,
  `ORG_TAX_NO` varchar(25) DEFAULT NULL,
  `ORG_REG_NO` varchar(25) DEFAULT NULL,
  `ORG_BELONG_DIST` bigint(20) DEFAULT NULL,
  `ORG_PARENT` bigint(20) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ORG_ID`),
  KEY `ORG_SIMPLE_NAME_INDEX` (`ORG_SIMPLE_NAME`),
  KEY `FK_Reference_11` (`ORG_PARENT`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`ORG_PARENT`) REFERENCES `uum_organ` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_organ`
--

LOCK TABLES `uum_organ` WRITE;
/*!40000 ALTER TABLE `uum_organ` DISABLE KEYS */;
INSERT INTO `uum_organ` VALUES (0,'总部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'enable',NULL,NULL,'2011-12-01 07:15:51');
/*!40000 ALTER TABLE `uum_organ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_privilege`
--

DROP TABLE IF EXISTS `uum_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_privilege` (
  `PRIVILEGE_ID` bigint(20) NOT NULL,
  `MOD_OPT_ID` bigint(20) DEFAULT NULL,
  `OWNER_ID` bigint(20) DEFAULT NULL,
  `PRIVILEGE_TYPE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`PRIVILEGE_ID`),
  KEY `MOD_OPT_ID_INDEX` (`MOD_OPT_ID`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`MOD_OPT_ID`) REFERENCES `syspl_mod_opt_ref` (`MOD_OPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_privilege`
--

LOCK TABLES `uum_privilege` WRITE;
/*!40000 ALTER TABLE `uum_privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `uum_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_role`
--

DROP TABLE IF EXISTS `uum_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_role` (
  `ROLE_ID` bigint(20) NOT NULL,
  `ROLE_NAME` varchar(10) DEFAULT NULL,
  `ROLE_LEVEL` smallint(6) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_role`
--

LOCK TABLES `uum_role` WRITE;
/*!40000 ALTER TABLE `uum_role` DISABLE KEYS */;
INSERT INTO `uum_role` VALUES (0,'无角色用户',NULL,'enable','','admin','2011-12-01 07:15:51'),(1,'管理员',1,'enable','','admin','2011-12-01 07:15:51');
/*!40000 ALTER TABLE `uum_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_role_user_ref`
--

DROP TABLE IF EXISTS `uum_role_user_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_role_user_ref` (
  `ORG_ROLE_USER_ID` bigint(20) NOT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `ORG_ROLE_ID` bigint(20) DEFAULT NULL,
  `IS_DEFAULT` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ORG_ROLE_USER_ID`),
  KEY `FK_Reference_13` (`USER_ID`),
  KEY `FK_Reference_17` (`ORG_ROLE_ID`),
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`ORG_ROLE_ID`) REFERENCES `uum_org_role_ref` (`ORG_ROLE_ID`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`USER_ID`) REFERENCES `uum_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_role_user_ref`
--

LOCK TABLES `uum_role_user_ref` WRITE;
/*!40000 ALTER TABLE `uum_role_user_ref` DISABLE KEYS */;
INSERT INTO `uum_role_user_ref` VALUES (0,0,1,'Y'),(1,1,1,'Y');
/*!40000 ALTER TABLE `uum_role_user_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_user`
--

DROP TABLE IF EXISTS `uum_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_user` (
  `USER_ID` bigint(20) NOT NULL,
  `USER_CODE` varchar(20) DEFAULT NULL,
  `USER_NAME` varchar(20) DEFAULT NULL,
  `USER_PASSWORD` varchar(20) DEFAULT NULL,
  `USER_GENDER` varchar(2) DEFAULT NULL,
  `USER_POSITION` varchar(30) DEFAULT NULL,
  `USER_PHOTO_URL` varchar(50) DEFAULT NULL,
  `USER_QQ` varchar(20) DEFAULT NULL,
  `USER_MSN` varchar(20) DEFAULT NULL,
  `USER_MOBILE` varchar(20) DEFAULT NULL,
  `USER_MOBILE2` varchar(20) DEFAULT NULL,
  `USER_OFFICE_TEL` varchar(20) DEFAULT NULL,
  `USER_ADDRESS` varchar(100) DEFAULT NULL,
  `USER_FAMILY_TEL` varchar(20) DEFAULT NULL,
  `USER_EMAIL` varchar(30) DEFAULT NULL,
  `USER_AVIDATE` date DEFAULT NULL,
  `USER_IS_AGENT` varchar(2) DEFAULT NULL,
  `USER_BELONGTO_ORG` bigint(20) DEFAULT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `CREATOR` varchar(15) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`USER_ID`),
  KEY `FK_Reference_14` (`USER_BELONGTO_ORG`),
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`USER_BELONGTO_ORG`) REFERENCES `uum_organ` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_user`
--

LOCK TABLES `uum_user` WRITE;
/*!40000 ALTER TABLE `uum_user` DISABLE KEYS */;
INSERT INTO `uum_user` VALUES (0,'admin','管理员','UlFQV1ZV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'enable','admin','2011-12-01 07:15:51'),(1,'a','a','UlFQV1ZV','0','','','','','','','','','','','2012-06-01',NULL,0,'','enable','admin','2011-12-01 07:35:38');
/*!40000 ALTER TABLE `uum_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_user_agent`
--

DROP TABLE IF EXISTS `uum_user_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_user_agent` (
  `AGENT_ID` bigint(20) NOT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `AGENT_USER_ID` bigint(20) DEFAULT NULL,
  `PRIVILEGE_ID` bigint(20) DEFAULT NULL,
  `BEGIN_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`AGENT_ID`),
  KEY `FK_Reference_7` (`USER_ID`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`USER_ID`) REFERENCES `uum_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_user_agent`
--

LOCK TABLES `uum_user_agent` WRITE;
/*!40000 ALTER TABLE `uum_user_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `uum_user_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_user_commfun`
--

DROP TABLE IF EXISTS `uum_user_commfun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_user_commfun` (
  `USER_ID` bigint(20) NOT NULL,
  `MODULE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_user_commfun`
--

LOCK TABLES `uum_user_commfun` WRITE;
/*!40000 ALTER TABLE `uum_user_commfun` DISABLE KEYS */;
INSERT INTO `uum_user_commfun` VALUES (0,25);
/*!40000 ALTER TABLE `uum_user_commfun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uum_user_page_layout`
--

DROP TABLE IF EXISTS `uum_user_page_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uum_user_page_layout` (
  `USER_ID` bigint(20) NOT NULL,
  `HEADER` varchar(15) DEFAULT NULL,
  `NAVIGATE` varchar(15) DEFAULT NULL,
  `OUTLOOKBAR` varchar(15) DEFAULT NULL,
  `MAINPAGE` varchar(15) DEFAULT NULL,
  `STATEBAR` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uum_user_page_layout`
--

LOCK TABLES `uum_user_page_layout` WRITE;
/*!40000 ALTER TABLE `uum_user_page_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `uum_user_page_layout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-12-01 15:49:43
