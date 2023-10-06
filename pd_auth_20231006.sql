-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 192.168.216.8    Database: pd_auth
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `pd_auth_menu`
--

DROP TABLE IF EXISTS `pd_auth_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_auth_menu` (
  `id` bigint NOT NULL COMMENT '主键',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `describe_` varchar(200) DEFAULT '' COMMENT '功能描述',
  `is_public` bit(1) DEFAULT b'0' COMMENT '是否公开菜单\r\n就是无需分配就可以访问的。所有人可见',
  `path` varchar(255) DEFAULT '' COMMENT '对应路由path',
  `component` varchar(255) DEFAULT NULL COMMENT '对应路由组件component',
  `is_enable` bit(1) DEFAULT b'1' COMMENT '状态',
  `sort_value` int DEFAULT '1' COMMENT '排序',
  `icon` varchar(255) DEFAULT '' COMMENT '菜单图标',
  `group_` varchar(20) DEFAULT '' COMMENT '菜单分组',
  `parent_id` bigint DEFAULT '0' COMMENT '父级菜单id',
  `create_user` bigint DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint DEFAULT NULL COMMENT '更新人id',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `INX_STATUS` (`is_enable`,`is_public`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_auth_menu`
--

LOCK TABLES `pd_auth_menu` WRITE;
/*!40000 ALTER TABLE `pd_auth_menu` DISABLE KEYS */;
INSERT INTO `pd_auth_menu` VALUES (101,'系统管理','系统管理',_binary '\0','/user','pinda/user/Index',_binary '',0,'el-icon-user-solid','',0,1,'2019-07-25 15:35:12',3,'2020-01-09 19:23:12'),(104,'监控管理','开发者',_binary '\0','/developer','pinda/developer/Index',_binary '',3,'el-icon-user-solid','',0,1,'2019-11-11 14:38:34',3,'2020-01-09 19:22:52'),(603976297063910529,'菜单配置','',_binary '\0','/auth/menu','pinda/auth/menu/Index',_binary '',3,'','',101,1,'2019-07-25 15:46:11',3,'2019-11-11 14:31:52'),(603981723864141121,'角色管理','',_binary '\0','/auth/role','pinda/auth/role/Index',_binary '',4,'','',101,1,'2019-07-25 16:07:45',3,'2019-11-11 14:31:57'),(603982542332235201,'组织管理','',_binary '\0','/user/org','pinda/user/org/Index',_binary '',0,'','',101,1,'2019-07-25 16:11:00',3,'2020-01-11 08:51:22'),(603982713849908801,'岗位管理','',_binary '\0','/user/station','pinda/user/station/Index',_binary '',1,'','',101,1,'2019-07-25 16:11:41',3,'2019-11-11 14:28:43'),(603983082961243905,'用户管理','',_binary '\0','/user/user','pinda/user/user/Index',_binary '',2,'','',101,1,'2019-07-25 16:13:09',3,'2020-01-09 19:27:02'),(605078672772170209,'操作日志','',_binary '\0','/developer/optLog','pinda/developer/optLog/Index',_binary '',3,'','',104,1,'2019-07-28 16:46:38',3,'2019-11-11 14:35:14'),(605078979149300257,'数据库监控','',_binary '\0','/developer/db','pinda/developer/db/Index',_binary '\0',2,'','',104,1,'2019-07-28 16:47:51',3,'2020-01-10 10:40:42'),(605079239015793249,'接口文档','',_binary '\0','http://39.100.244.120:8760/api/gate/doc.html','Layout',_binary '',5,'','',104,1,'2019-07-28 16:48:53',3,'2020-01-10 10:33:23'),(605079411338773153,'注册配置中心','',_binary '\0','http://localhost:8848/nacos','Layout',_binary '\0',6,'','',104,1,'2019-07-28 16:49:34',3,'2020-01-10 10:40:47'),(645215230518909025,'登录日志','',_binary '\0','/developer/loginLog','pinda/developer/loginLog/Index',_binary '',4,'','',104,3,'2019-11-16 10:54:59',3,'2019-11-16 10:54:59'),(667033750256747169,'文件管理','',_binary '\0','/file/attachment','pinda/file/attachment/Index',_binary '\0',5,'','',101,3,'2020-01-15 15:53:59',3,'2020-02-05 08:47:15'),(676762150244450433,'接口路由','',_binary '\0','/ofpay','pinda/ofpay/Index',_binary '',10,'el-icon-guide','',0,3,'2020-02-11 12:11:10',3,'2020-02-11 12:11:10'),(676762509503365569,'调用记录','',_binary '\0','/ofpay/receive','pinda/ofpay/receive/Index',_binary '',0,'','',676762150244450433,3,'2020-02-11 12:12:36',3,'2020-02-11 12:14:24'),(676762719185011233,'请求记录','',_binary '\0','/ofpay/send','pinda/ofpay/send/Index',_binary '',1,'','',676762150244450433,3,'2020-02-11 12:13:26',3,'2020-02-11 12:13:26'),(680085395794296897,'平台管理','',_binary '\0','/ofpay/platform','pinda/ofpay/platform/Index',_binary '',2,'','',676762150244450433,3,'2020-02-20 16:16:34',3,'2020-02-20 18:24:30'),(681133179561574689,'客户管理','1',_binary '\0','/ofpay/customer','pinda/ofpay/customer/Index',_binary '',3,'','',676762150244450433,3,'2020-02-23 13:40:05',3,'2020-03-01 18:31:12');
/*!40000 ALTER TABLE `pd_auth_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_auth_resource`
--

DROP TABLE IF EXISTS `pd_auth_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_auth_resource` (
  `id` bigint NOT NULL COMMENT 'ID',
  `code` varchar(150) DEFAULT '' COMMENT '资源编码\n规则：\n链接：\n数据列：\n按钮：',
  `name` varchar(150) NOT NULL DEFAULT '' COMMENT '接口名称',
  `menu_id` bigint DEFAULT NULL COMMENT '菜单ID\n#c_auth_menu',
  `method` varchar(10) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `describe_` varchar(255) DEFAULT '' COMMENT '接口描述',
  `create_user` bigint DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint DEFAULT NULL COMMENT '更新人id',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UN_CODE` (`code`) USING BTREE COMMENT '编码唯一'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_auth_resource`
--

LOCK TABLES `pd_auth_resource` WRITE;
/*!40000 ALTER TABLE `pd_auth_resource` DISABLE KEYS */;
INSERT INTO `pd_auth_resource` VALUES (643444685339100193,'org:add','添加',603982542332235201,'POST','/org','',3,'2019-11-11 13:39:28',3,'2019-11-11 13:39:50'),(643444685339100194,'role:config','配置',603981723864141121,'POST','/role/authority','',3,'2019-11-11 13:39:28',3,'2020-03-03 19:57:51'),(643444685339100195,'resource:add','添加',603976297063910529,'POST','/resource','',3,'2019-11-11 13:39:28',3,'2019-11-11 13:39:50'),(643444685339100196,'resource:update','修改',603976297063910529,'PUT','/resource','',3,'2019-11-11 13:39:28',3,'2019-11-11 13:39:50'),(643444685339100197,'resource:delete','删除',603976297063910529,'DELETE','/resource','',3,'2019-11-11 13:39:28',3,'2019-11-11 13:39:50'),(643444819758154945,'org:update','修改',603982542332235201,'PUT','/org','',3,'2019-11-11 13:40:00',3,'2019-11-11 13:40:00'),(643444858974897441,'org:delete','删除',603982542332235201,'DELETE','/org','',3,'2019-11-11 13:40:09',3,'2019-11-11 13:40:09'),(643444897201784193,'org:view','查询',603982542332235201,'GET','/org/tree','',3,'2019-11-11 13:40:18',3,'2020-03-03 19:53:41'),(643444992357959137,'org:import','导入',603982542332235201,'POST','/org','',3,'2019-11-11 13:40:41',3,'2019-11-11 13:40:41'),(643445016773002817,'org:export','导出',603982542332235201,'GET','/org','',3,'2019-11-11 13:40:47',3,'2019-11-11 13:40:47'),(643445116756821697,'station:add','添加',603982713849908801,'POST','/station','',3,'2019-11-11 13:41:11',3,'2019-11-11 13:41:11'),(643445162915137313,'station:update','修改',603982713849908801,'PUT','/station','',3,'2019-11-11 13:41:22',3,'2019-11-11 13:41:22'),(643445197954353025,'station:delete','删除',603982713849908801,'DELETE','/station','',3,'2019-11-11 13:41:30',3,'2019-11-11 13:41:30'),(643445229575210977,'station:view','查看',603982713849908801,'GET','/station/page','',3,'2019-11-11 13:41:38',3,'2020-03-03 19:54:12'),(643445262110427201,'station:export','导出',603982713849908801,'GET','/station','',3,'2019-11-11 13:41:45',3,'2019-11-11 13:41:45'),(643445283996305569,'station:import','导入',603982713849908801,'POST','/station','',3,'2019-11-11 13:41:51',3,'2019-11-11 13:41:51'),(643445352703199521,'user:add','添加',603983082961243905,'POST','/user','',3,'2019-11-11 13:42:07',3,'2019-11-11 13:42:07'),(643445412774021505,'user:update','修改',603983082961243905,'PUT','/user','',3,'2019-11-11 13:42:21',3,'2019-11-11 13:42:21'),(643445448081672673,'user:delete','删除',603983082961243905,'DELETE','/user','',3,'2019-11-11 13:42:30',3,'2019-11-11 13:42:30'),(643445477274028609,'user:view','查看',603983082961243905,'GET','/user/page','',3,'2019-11-11 13:42:37',3,'2020-03-03 19:54:41'),(643445514607528609,'user:import','导入',603983082961243905,'POST','/user','',3,'2019-11-11 13:42:46',3,'2019-11-11 13:42:46'),(643445542076025601,'user:export','导出',603983082961243905,'GET','/user','',3,'2019-11-11 13:42:52',3,'2019-11-11 13:42:52'),(643445641149680705,'menu:add','添加',603976297063910529,'POST','/menu','',3,'2019-11-11 13:43:16',3,'2019-11-11 13:43:16'),(643445674330819745,'menu:update','修改',603976297063910529,'PUT','/menu','',3,'2019-11-11 13:43:24',3,'2019-11-11 13:43:24'),(643445704177487105,'menu:delete','删除',603976297063910529,'DELETE','/menu','',3,'2019-11-11 13:43:31',3,'2019-11-11 13:43:31'),(643445747320098145,'menu:view','查看',603976297063910529,'GET','/menu/tree','',3,'2019-11-11 13:43:41',3,'2020-03-03 19:55:10'),(643445774687931841,'menu:export','导出',603976297063910529,'GET','/menu','',3,'2019-11-11 13:43:48',3,'2019-11-11 13:43:48'),(643445802106097185,'menu:import','导入',603976297063910529,'POST','/menu','',3,'2019-11-11 13:43:54',3,'2019-11-11 13:43:54'),(643448338154263521,'role:add','添加',603981723864141121,'POST','/role','',3,'2019-11-11 13:53:59',3,'2019-11-11 13:53:59'),(643448369779315777,'role:update','修改',603981723864141121,'PUT','/role','',3,'2019-11-11 13:54:06',3,'2019-11-11 13:54:06'),(643448507767723169,'role:delete','删除',603981723864141121,'DELETE','/role','',3,'2019-11-11 13:54:39',3,'2019-11-11 13:54:39'),(643448611161511169,'role:view','查看',603981723864141121,'GET','/role/page','',3,'2019-11-11 13:55:04',3,'2020-03-03 19:55:44'),(643448656451605857,'role:export','导出',603981723864141121,'GET','/role','',3,'2019-11-11 13:55:15',3,'2019-11-11 13:55:15'),(643448730950833601,'role:import','导入',603981723864141121,'POST','/role','',3,'2019-11-11 13:55:32',3,'2019-11-11 13:55:32'),(643448826945869409,'role:auth','授权',603981723864141121,'POST','/role/user','',3,'2019-11-11 13:55:55',3,'2020-03-03 19:57:57'),(643450770317909249,'optLog:view','查看',605078672772170209,'GET','/optLog','',3,'2019-11-11 14:03:39',3,'2019-11-11 14:03:39'),(643450853134441825,'optLog:export','导出',605078672772170209,'GET','/optLog','',3,'2019-11-11 14:03:58',3,'2019-11-11 14:03:58'),(645288214990422241,'optLog:delete','删除',605078672772170209,'DELETE','/optLog','',3,'2019-11-16 15:45:00',3,'2019-11-16 15:45:00'),(645288283693121889,'loginLog:delete','删除',645215230518909025,'DELETE','/loginLog','',3,'2019-11-16 15:45:16',3,'2019-11-16 15:45:16'),(645288375300915649,'loginLog:export','导出',645215230518909025,'GET','/loginLog','',3,'2019-11-16 15:45:38',3,'2019-11-16 15:45:38'),(667033832750318369,'file:add','添加',667033750256747169,'POST','/file','',3,'2020-01-15 15:54:19',3,'2020-01-15 15:54:19'),(667033888949797761,'file:update','修改',667033750256747169,'PUT','/file','',3,'2020-01-15 15:54:32',3,'2020-01-15 15:54:32'),(667033951713362913,'file:delete','删除',667033750256747169,'DELETE','/file','',3,'2020-01-15 15:54:47',3,'2020-01-15 15:54:47'),(667034024379679809,'file:view','查看',667033750256747169,'GET','/file','',3,'2020-01-15 15:55:05',3,'2020-01-15 15:55:05'),(676763119808152449,'receive:view','查看',676762509503365569,'GET','/receiveRecord/page','',3,'2020-02-11 12:15:02',3,'2020-03-03 23:29:14'),(676763196182234113,'send:view','查看',676762719185011233,'GET','/sendRecord/page','',3,'2020-02-11 12:15:20',3,'2020-03-03 23:29:03'),(684536767625301441,'rule:config-view','配置-查看',603981723864141121,'GET','/role/authority/*','',3,'2020-03-03 23:04:44',3,'2020-03-03 23:26:26'),(684539815017848257,'resource:view','查看',603976297063910529,'GET','/resource/page','',3,'2020-03-03 23:16:50',3,'2020-03-03 23:16:50');
/*!40000 ALTER TABLE `pd_auth_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_auth_role`
--

DROP TABLE IF EXISTS `pd_auth_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_auth_role` (
  `id` bigint NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '角色名称',
  `code` varchar(20) DEFAULT '' COMMENT '角色编码',
  `describe_` varchar(100) DEFAULT '' COMMENT '功能描述',
  `status` bit(1) DEFAULT b'1' COMMENT '状态',
  `readonly` bit(1) DEFAULT b'0' COMMENT '是否内置角色',
  `create_user` bigint DEFAULT '0' COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint DEFAULT '0' COMMENT '更新人id',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UN_CODE` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_auth_role`
--

LOCK TABLES `pd_auth_role` WRITE;
/*!40000 ALTER TABLE `pd_auth_role` DISABLE KEYS */;
INSERT INTO `pd_auth_role` VALUES (100,'平台管理员','PT_ADMIN','平台内置管理员',_binary '',_binary '',1,'2019-10-25 13:46:00',3,'2020-03-03 21:19:27'),(643779012732130273,'普通员工','BASE_USER','只有最基本的权限',_binary '',_binary '\0',3,'2019-11-12 11:47:58',3,'2019-11-16 09:47:11'),(645198153556958497,'部门经理','DEPT_MANAGER','管理本级以及子级用户',_binary '',_binary '\0',3,'2019-11-16 09:47:07',3,'2020-03-19 13:30:25');
/*!40000 ALTER TABLE `pd_auth_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_auth_role_authority`
--

DROP TABLE IF EXISTS `pd_auth_role_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_auth_role_authority` (
  `id` bigint NOT NULL COMMENT '主键',
  `authority_id` bigint NOT NULL COMMENT '权限id\n#c_auth_resource\n#c_auth_menu',
  `authority_type` varchar(10) NOT NULL DEFAULT 'MENU' COMMENT '权限类型\n#AuthorizeType{MENU:菜单;RESOURCE:资源;}',
  `role_id` bigint NOT NULL COMMENT '角色id\n#c_auth_role',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint DEFAULT '0' COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_KEY` (`role_id`,`authority_type`,`authority_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='角色的资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_auth_role_authority`
--

LOCK TABLES `pd_auth_role_authority` WRITE;
/*!40000 ALTER TABLE `pd_auth_role_authority` DISABLE KEYS */;
INSERT INTO `pd_auth_role_authority` VALUES (646807586212951009,643444685339100193,'RESOURCE',646807483838377697,'2019-11-20 20:22:26',3),(646807586229728257,101,'MENU',646807483838377697,'2019-11-20 20:22:26',3),(646807586229728289,643464272629728001,'MENU',646807483838377697,'2019-11-20 20:22:26',3),(646807586229728321,643464953478514081,'MENU',646807483838377697,'2019-11-20 20:22:26',3),(646807586229728353,643464392888812545,'MENU',646807483838377697,'2019-11-20 20:22:26',3),(646807586233922689,603982542332235201,'MENU',646807483838377697,'2019-11-20 20:22:26',3),(648840524161089921,605080648767505601,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524186255777,605080107379327969,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524190450113,101,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524190450145,605080359394083937,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524190450177,102,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524194644513,103,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524198838849,603983082961243905,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524198838881,105,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524203033217,106,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524203033249,107,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524203033281,605078463069552993,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524207227617,603981723864141121,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524207227649,605078371293987105,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524207227681,605079751035454305,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524207227713,605080023753294753,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(648840524211422049,603976297063910529,'MENU',645198153556958497,'2019-11-26 11:00:36',3),(690284625204871937,643445116756821697,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625213260577,643444685339100197,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625217454913,643445802106097185,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625217454945,643448826945869409,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625221649281,643444685339100196,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625225843617,643444685339100193,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625225843649,643445514607528609,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625225843681,643444685339100195,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625225843713,643444685339100194,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625230038049,667033888949797761,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625230038081,643448507767723169,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625230038113,643445197954353025,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625230038145,645288283693121889,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625234232481,643444897201784193,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625234232513,667034094479082657,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625234232545,643448730950833601,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625238426881,667033832750318369,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625238426913,643445412774021505,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625242621249,643445262110427201,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625242621281,643448656451605857,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625246815617,643450853134441825,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625246815649,643445774687931841,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625246815681,667034024379679809,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625246815713,684539815017848257,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625251010049,643445477274028609,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625251010081,684536767625301441,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625255204417,643445352703199521,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625255204449,643445747320098145,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625259398785,643445016773002817,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625259398817,643445162915137313,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625259398849,643444858974897441,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625263593185,643450770317909249,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625263593217,643444992357959137,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625263593249,643445229575210977,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625263593281,643445641149680705,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625263593313,643444819758154945,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625267787649,643448369779315777,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625267787681,643448338154263521,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625267787713,643445704177487105,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625267787745,676763119808152449,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625267787777,643445283996305569,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625271982113,643445674330819745,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625271982145,643445542076025601,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625271982177,645288214990422241,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625271982209,645288375300915649,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625276176545,676763196182234113,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625276176577,643445448081672673,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625276176609,643448611161511169,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625276176641,667033951713362913,'RESOURCE',100,'2020-03-19 19:44:40',3),(690284625280370977,645215230518909025,'MENU',100,'2020-03-19 19:44:40',3),(690284625280371009,605079411338773153,'MENU',100,'2020-03-19 19:44:40',3),(690284625280371041,603983082961243905,'MENU',100,'2020-03-19 19:44:40',3),(690284625280371073,667033750256747169,'MENU',100,'2020-03-19 19:44:40',3),(690284625280371105,603982542332235201,'MENU',100,'2020-03-19 19:44:40',3),(690284625284565441,603981723864141121,'MENU',100,'2020-03-19 19:44:40',3),(690284625284565473,676762509503365569,'MENU',100,'2020-03-19 19:44:40',3),(690284625284565505,681133179561574689,'MENU',100,'2020-03-19 19:44:40',3),(690284625284565537,605079239015793249,'MENU',100,'2020-03-19 19:44:40',3),(690284625288759873,605078672772170209,'MENU',100,'2020-03-19 19:44:40',3),(690284625288759905,603976297063910529,'MENU',100,'2020-03-19 19:44:40',3),(690284625288759937,676762719185011233,'MENU',100,'2020-03-19 19:44:40',3),(690284625288759969,680085395794296897,'MENU',100,'2020-03-19 19:44:40',3),(690284625288760001,605078979149300257,'MENU',100,'2020-03-19 19:44:40',3),(690284625292954337,101,'MENU',100,'2020-03-19 19:44:40',3),(690284625292954369,104,'MENU',100,'2020-03-19 19:44:40',3),(690284625292954401,676762150244450433,'MENU',100,'2020-03-19 19:44:40',3),(690284625292954433,603982713849908801,'MENU',100,'2020-03-19 19:44:40',3),(690609420521966817,643445116756821697,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420526161153,643445262110427201,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420526161185,643444992357959137,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420530355521,643444685339100193,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420530355553,643444897201784193,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420530355585,643445016773002817,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420534549921,643445229575210977,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420534549953,643444819758154945,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420534549985,643445162915137313,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420534550017,643445283996305569,'RESOURCE',643779012732130273,'2020-03-20 17:15:17',3),(690609420534550049,603982713849908801,'MENU',643779012732130273,'2020-03-20 17:15:17',3),(690609420538744385,101,'MENU',643779012732130273,'2020-03-20 17:15:17',3),(690609420538744417,603982542332235201,'MENU',643779012732130273,'2020-03-20 17:15:17',3);
/*!40000 ALTER TABLE `pd_auth_role_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_auth_role_org`
--

DROP TABLE IF EXISTS `pd_auth_role_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_auth_role_org` (
  `id` bigint NOT NULL COMMENT 'ID',
  `role_id` bigint DEFAULT NULL COMMENT '角色ID\n#c_auth_role',
  `org_id` bigint DEFAULT NULL COMMENT '部门ID\n#c_core_org',
  `create_time` datetime DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='角色组织关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_auth_role_org`
--

LOCK TABLES `pd_auth_role_org` WRITE;
/*!40000 ALTER TABLE `pd_auth_role_org` DISABLE KEYS */;
INSERT INTO `pd_auth_role_org` VALUES (684510274555769057,100,100,'2020-03-03 21:19:27',3),(684510274564157697,100,101,'2020-03-03 21:19:27',3),(684510274564157729,100,102,'2020-03-03 21:19:27',3),(684510274564157761,100,643775612976106881,'2020-03-03 21:19:27',3),(684510274564157793,100,643775664683486689,'2020-03-03 21:19:27',3),(684510274564157825,100,643775904077582049,'2020-03-03 21:19:27',3),(684510274564157857,100,643776324342648929,'2020-03-03 21:19:27',3),(684510274564157889,100,643776407691858113,'2020-03-03 21:19:27',3),(684510274564157921,100,643776508795556193,'2020-03-03 21:19:27',3),(684510274568352257,100,643776594376135105,'2020-03-03 21:19:27',3),(684510274568352289,100,643776633823564321,'2020-03-03 21:19:27',3),(684510274568352321,100,643776668917305985,'2020-03-03 21:19:27',3),(684510274568352353,100,643776713909605089,'2020-03-03 21:19:27',3),(684510274568352385,100,643776757199016769,'2020-03-03 21:19:27',3),(684510274568352417,100,684470048693160353,'2020-03-03 21:19:27',3),(690190442947420673,645198153556958497,100,'2020-03-19 13:30:25',3),(690190442951615009,645198153556958497,101,'2020-03-19 13:30:25',3),(690190442951615041,645198153556958497,643775612976106881,'2020-03-19 13:30:25',3),(690190442951615073,645198153556958497,643776594376135105,'2020-03-19 13:30:25',3),(690190442951615105,645198153556958497,643776633823564321,'2020-03-19 13:30:25',3),(690190442951615137,645198153556958497,102,'2020-03-19 13:30:25',3),(690190442955809473,645198153556958497,643776668917305985,'2020-03-19 13:30:25',3),(690190442955809505,645198153556958497,643776713909605089,'2020-03-19 13:30:25',3),(690190442955809537,645198153556958497,643776757199016769,'2020-03-19 13:30:25',3),(690190442955809569,645198153556958497,643775904077582049,'2020-03-19 13:30:25',3),(690190442955809601,645198153556958497,643775664683486689,'2020-03-19 13:30:25',3),(690190442955809633,645198153556958497,643776324342648929,'2020-03-19 13:30:25',3),(690190442955809665,645198153556958497,643776407691858113,'2020-03-19 13:30:25',3),(690190442955809697,645198153556958497,643776508795556193,'2020-03-19 13:30:25',3);
/*!40000 ALTER TABLE `pd_auth_role_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_auth_user`
--

DROP TABLE IF EXISTS `pd_auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_auth_user` (
  `id` bigint NOT NULL COMMENT 'ID',
  `account` varchar(30) NOT NULL COMMENT '账号',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `org_id` bigint DEFAULT NULL COMMENT '组织ID\n#c_core_org',
  `station_id` bigint DEFAULT NULL COMMENT '岗位ID\n#c_core_station',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机',
  `sex` varchar(1) DEFAULT 'N' COMMENT '性别\n#Sex{W:女;M:男;N:未知}',
  `status` bit(1) DEFAULT b'0' COMMENT '启用状态 1启用 0禁用',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像',
  `work_describe` varchar(255) DEFAULT '' COMMENT '工作描述\r\n比如：  市长、管理员、局长等等   用于登陆展示',
  `password_error_last_time` datetime DEFAULT NULL COMMENT '最后一次输错密码时间',
  `password_error_num` int DEFAULT '0' COMMENT '密码错误次数',
  `password_expire_time` datetime DEFAULT NULL COMMENT '密码过期时间',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_user` bigint DEFAULT '0' COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint DEFAULT '0' COMMENT '更新人id',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UN_ACCOUNT` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_auth_user`
--

LOCK TABLES `pd_auth_user` WRITE;
/*!40000 ALTER TABLE `pd_auth_user` DISABLE KEYS */;
INSERT INTO `pd_auth_user` VALUES (3,'pinda','平台管理员',100,100,'','','M',_binary '','BiazfanxmamNRoxxVxka.png','超级管理员','2020-03-21 18:48:51',0,NULL,'cea87ef1cb2e47570020bf7c014e1074','2020-03-21 18:48:53',1,'2019-09-02 11:32:02',3,'2020-01-15 15:39:59'),(641577229343523041,'test','赵六',102,100,'','','M',_binary '','BiazfanxmamNRoxxVxka.png','','2020-03-18 13:55:15',0,NULL,'cea87ef1cb2e47570020bf7c014e1074','2020-03-18 13:55:26',3,'2019-11-06 09:58:56',3,'2020-01-10 16:32:11'),(641590096981656001,'manong','李四',101,645199319300842081,'','','M',_binary '','BiazfanxmamNRoxxVxka.png','122','2020-03-21 18:49:20',0,NULL,'cea87ef1cb2e47570020bf7c014e1074','2020-03-21 18:49:21',3,'2019-11-06 10:50:01',3,'2020-03-01 13:22:08'),(648841103860041025,'11111','王五',643776668917305985,645200885772724545,'','','M',_binary '','BiazfanxmamNRoxxVxka.png','',NULL,0,NULL,'cea87ef1cb2e47570020bf7c014e1074',NULL,3,'2019-11-26 11:02:54',3,'2020-02-06 13:20:46'),(683356335357559137,'test1','测试',NULL,NULL,'','','W',_binary '','BiazfanxmamNRoxxVxka.png','','2020-02-29 16:55:10',0,NULL,'cea87ef1cb2e47570020bf7c014e1074','2020-02-29 16:55:10',3,'2020-02-29 16:54:07',3,'2020-03-01 19:12:06');
/*!40000 ALTER TABLE `pd_auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_auth_user_role`
--

DROP TABLE IF EXISTS `pd_auth_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_auth_user_role` (
  `id` bigint NOT NULL,
  `role_id` bigint NOT NULL DEFAULT '0' COMMENT '角色ID\n#c_auth_role',
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户ID\n#c_core_accou',
  `create_user` bigint DEFAULT NULL COMMENT '创建人ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_KEY` (`role_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='角色分配\r\n账号角色绑定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_auth_user_role`
--

LOCK TABLES `pd_auth_user_role` WRITE;
/*!40000 ALTER TABLE `pd_auth_user_role` DISABLE KEYS */;
INSERT INTO `pd_auth_user_role` VALUES (646807547461776193,646807483838377697,641590096981656001,3,'2019-11-20 20:22:17'),(647449120218284897,647449059488957153,641577229343523041,641577229343523041,'2019-11-22 14:51:39'),(683356538315735681,645198153556958497,641577229343523041,3,'2020-02-29 16:54:55'),(683356538332512929,645198153556958497,683356335357559137,3,'2020-02-29 16:54:55'),(689124069395663201,100,3,3,'2020-03-16 14:53:02'),(690652179203096993,643779012732130273,641590096981656001,3,'2020-03-20 20:05:11'),(690652179211485633,643779012732130273,641577229343523041,3,'2020-03-20 20:05:11');
/*!40000 ALTER TABLE `pd_auth_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_common_login_log`
--

DROP TABLE IF EXISTS `pd_common_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_common_login_log` (
  `id` bigint NOT NULL COMMENT '主键',
  `request_ip` varchar(50) DEFAULT '' COMMENT '操作IP',
  `user_id` bigint DEFAULT NULL COMMENT '登录人ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '登录人姓名',
  `account` varchar(30) DEFAULT '' COMMENT '登录人账号',
  `description` varchar(255) DEFAULT '' COMMENT '登录描述',
  `login_date` date DEFAULT NULL COMMENT '登录时间',
  `ua` varchar(500) DEFAULT '0' COMMENT '浏览器请求头',
  `browser` varchar(100) DEFAULT NULL COMMENT '浏览器名称',
  `browser_version` varchar(255) DEFAULT NULL COMMENT '浏览器版本',
  `operating_system` varchar(100) DEFAULT NULL COMMENT '操作系统',
  `location` varchar(50) DEFAULT '' COMMENT '登录地点',
  `create_time` datetime DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_BROWSER` (`browser`) USING BTREE,
  KEY `IDX_OPERATING` (`operating_system`) USING BTREE,
  KEY `IDX_LOGIN_DATE` (`login_date`,`account`) USING BTREE,
  KEY `IDX_ACCOUNT_IP` (`account`,`request_ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_common_login_log`
--

LOCK TABLES `pd_common_login_log` WRITE;
/*!40000 ALTER TABLE `pd_common_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pd_common_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_common_opt_log`
--

DROP TABLE IF EXISTS `pd_common_opt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_common_opt_log` (
  `id` bigint NOT NULL COMMENT '主键',
  `request_ip` varchar(50) DEFAULT '' COMMENT '操作IP',
  `type` varchar(5) DEFAULT 'OPT' COMMENT '日志类型\n#LogType{OPT:操作类型;EX:异常类型}',
  `user_name` varchar(50) DEFAULT '' COMMENT '操作人',
  `description` varchar(255) DEFAULT '' COMMENT '操作描述',
  `class_path` varchar(255) DEFAULT '' COMMENT '类路径',
  `action_method` varchar(50) DEFAULT '' COMMENT '请求方法',
  `request_uri` varchar(50) DEFAULT '' COMMENT '请求地址',
  `http_method` varchar(10) DEFAULT 'GET' COMMENT '请求类型\n#HttpMethod{GET:GET请求;POST:POST请求;PUT:PUT请求;DELETE:DELETE请求;PATCH:PATCH请求;TRACE:TRACE请求;HEAD:HEAD请求;OPTIONS:OPTIONS请求;}',
  `params` longtext COMMENT '请求参数',
  `result` longtext COMMENT '返回值',
  `ex_desc` longtext COMMENT '异常详情信息',
  `ex_detail` longtext COMMENT '异常描述',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `finish_time` timestamp NULL DEFAULT NULL COMMENT '完成时间',
  `consuming_time` bigint DEFAULT '0' COMMENT '消耗时间',
  `ua` varchar(500) DEFAULT '' COMMENT '浏览器',
  `create_time` datetime DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_type` (`type`) USING BTREE COMMENT '日志类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_common_opt_log`
--

LOCK TABLES `pd_common_opt_log` WRITE;
/*!40000 ALTER TABLE `pd_common_opt_log` DISABLE KEYS */;
INSERT INTO `pd_common_opt_log` VALUES (1158428176225927201,'192.168.10.8','OPT','','登录控制器-登录日志','com.itheima.pinda.authority.controller.auth.LoginController','login','/anno/login','POST','[{\"account\":\"11111\",\"code\":\"8\",\"key\":\"666\",\"password\":\"pinda123\"}]','{\"code\":0,\"data\":{\"token\":{\"expire\":43200,\"token\":\"eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI2NDg4NDExMDM4NjAwNDEwMjUiLCJhY2NvdW50IjoiMTExMTEiLCJuYW1lIjoi546L5LqUIiwib3JnaWQiOjY0Mzc3NjY2ODkxNzMwNTk4NSwic3RhdGlvbmlkIjo2NDUyMDA4ODU3NzI3MjQ1NDUsImV4cCI6MTY5NjI3NTU5OX0.ONaubvl4Ms-uCdf8XnTE_1dLX0ToGuIRi4nFBXZ0fw3-vfhMCGcYkHsS8e25iY-Jm00XuYAhUl2m1R4xYo9ZG3vFLMEX4zHeSAXwt1qj91II3zwjy1phNuZqnL6OGzwstbS1xkLMsSa1aWYw5T-oDn3rBceXkNgeylaF6MtHSHc\"},\"user\":{\"account\":\"11111\",\"avatar\":\"BiazfanxmamNRoxxVxka.png\",\"email\":\"\",\"id\":648841103860041025,\"mobile\":\"\",\"name\":\"王五\",\"orgId\":643776668917305985,\"sex\":\"M\",\"stationId\":645200885772724545,\"status\":true,\"workDescribe\":\"\"}},\"isError\":false,\"isSuccess\":true,\"msg\":\"ok\",\"timestamp\":1696232399923}',NULL,NULL,'2023-10-02 07:39:59','2023-10-02 07:40:00',897,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36','2023-10-02 15:40:00',0),(1158774030233239585,'192.168.10.8','OPT','','菜单-查询系统所有的菜单','com.itheima.pinda.authority.controller.auth.MenuController','allTree','/menu/tree','GET','[]','{\"code\":0,\"data\":[{\"children\":[{\"component\":\"pinda/user/org/Index\",\"createTime\":\"2019-07-25T16:11:00\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603982542332235201,\"isEnable\":true,\"isPublic\":false,\"label\":\"组织管理\",\"name\":\"组织管理\",\"parentId\":101,\"path\":\"/user/org\",\"sortValue\":0,\"updateTime\":\"2020-01-11T08:51:22\",\"updateUser\":3},{\"component\":\"pinda/user/station/Index\",\"createTime\":\"2019-07-25T16:11:41\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603982713849908801,\"isEnable\":true,\"isPublic\":false,\"label\":\"岗位管理\",\"name\":\"岗位管理\",\"parentId\":101,\"path\":\"/user/station\",\"sortValue\":1,\"updateTime\":\"2019-11-11T14:28:43\",\"updateUser\":3},{\"component\":\"pinda/user/user/Index\",\"createTime\":\"2019-07-25T16:13:09\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603983082961243905,\"isEnable\":true,\"isPublic\":false,\"label\":\"用户管理\",\"name\":\"用户管理\",\"parentId\":101,\"path\":\"/user/user\",\"sortValue\":2,\"updateTime\":\"2020-01-09T19:27:02\",\"updateUser\":3},{\"component\":\"pinda/auth/menu/Index\",\"createTime\":\"2019-07-25T15:46:11\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603976297063910529,\"isEnable\":true,\"isPublic\":false,\"label\":\"菜单配置\",\"name\":\"菜单配置\",\"parentId\":101,\"path\":\"/auth/menu\",\"sortValue\":3,\"updateTime\":\"2019-11-11T14:31:52\",\"updateUser\":3},{\"component\":\"pinda/auth/role/Index\",\"createTime\":\"2019-07-25T16:07:45\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603981723864141121,\"isEnable\":true,\"isPublic\":false,\"label\":\"角色管理\",\"name\":\"角色管理\",\"parentId\":101,\"path\":\"/auth/role\",\"sortValue\":4,\"updateTime\":\"2019-11-11T14:31:57\",\"updateUser\":3},{\"component\":\"pinda/file/attachment/Index\",\"createTime\":\"2020-01-15T15:53:59\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":667033750256747169,\"isEnable\":false,\"isPublic\":false,\"label\":\"文件管理\",\"name\":\"文件管理\",\"parentId\":101,\"path\":\"/file/attachment\",\"sortValue\":5,\"updateTime\":\"2020-02-05T08:47:15\",\"updateUser\":3}],\"component\":\"pinda/user/Index\",\"createTime\":\"2019-07-25T15:35:12\",\"createUser\":1,\"describe\":\"系统管理\",\"group\":\"\",\"icon\":\"el-icon-user-solid\",\"id\":101,\"isEnable\":true,\"isPublic\":false,\"label\":\"系统管理\",\"name\":\"系统管理\",\"parentId\":0,\"path\":\"/user\",\"sortValue\":0,\"updateTime\":\"2020-01-09T19:23:12\",\"updateUser\":3},{\"children\":[{\"component\":\"pinda/developer/db/Index\",\"createTime\":\"2019-07-28T16:47:51\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":605078979149300257,\"isEnable\":false,\"isPublic\":false,\"label\":\"数据库监控\",\"name\":\"数据库监控\",\"parentId\":104,\"path\":\"/developer/db\",\"sortValue\":2,\"updateTime\":\"2020-01-10T10:40:42\",\"updateUser\":3},{\"component\":\"pinda/developer/optLog/Index\",\"createTime\":\"2019-07-28T16:46:38\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":605078672772170209,\"isEnable\":true,\"isPublic\":false,\"label\":\"操作日志\",\"name\":\"操作日志\",\"parentId\":104,\"path\":\"/developer/optLog\",\"sortValue\":3,\"updateTime\":\"2019-11-11T14:35:14\",\"updateUser\":3},{\"component\":\"pinda/developer/loginLog/Index\",\"createTime\":\"2019-11-16T10:54:59\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":645215230518909025,\"isEnable\":true,\"isPublic\":false,\"label\":\"登录日志\",\"name\":\"登录日志\",\"parentId\":104,\"path\":\"/developer/loginLog\",\"sortValue\":4,\"updateTime\":\"2019-11-16T10:54:59\",\"updateUser\":3},{\"component\":\"Layout\",\"createTime\":\"2019-07-28T16:48:53\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":605079239015793249,\"isEnable\":true,\"isPublic\":false,\"label\":\"接口文档\",\"name\":\"接口文档\",\"parentId\":104,\"path\":\"http://39.100.244.120:8760/api/gate/doc.html\",\"sortValue\":5,\"updateTime\":\"2020-01-10T10:33:23\",\"updateUser\":3},{\"component\":\"Layout\",\"createTime\":\"2019-07-28T16:49:34\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":605079411338773153,\"isEnable\":false,\"isPublic\":false,\"label\":\"注册配置中心\",\"name\":\"注册配置中心\",\"parentId\":104,\"path\":\"http://localhost:8848/nacos\",\"sortValue\":6,\"updateTime\":\"2020-01-10T10:40:47\",\"updateUser\":3}],\"component\":\"pinda/developer/Index\",\"createTime\":\"2019-11-11T14:38:34\",\"createUser\":1,\"describe\":\"开发者\",\"group\":\"\",\"icon\":\"el-icon-user-solid\",\"id\":104,\"isEnable\":true,\"isPublic\":false,\"label\":\"监控管理\",\"name\":\"监控管理\",\"parentId\":0,\"path\":\"/developer\",\"sortValue\":3,\"updateTime\":\"2020-01-09T19:22:52\",\"updateUser\":3},{\"children\":[{\"component\":\"pinda/ofpay/receive/Index\",\"createTime\":\"2020-02-11T12:12:36\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":676762509503365569,\"isEnable\":true,\"isPublic\":false,\"label\":\"调用记录\",\"name\":\"调用记录\",\"parentId\":676762150244450433,\"path\":\"/ofpay/receive\",\"sortValue\":0,\"updateTime\":\"2020-02-11T12:14:24\",\"updateUser\":3},{\"component\":\"pinda/ofpay/send/Index\",\"createTime\":\"2020-02-11T12:13:26\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":676762719185011233,\"isEnable\":true,\"isPublic\":false,\"label\":\"请求记录\",\"name\":\"请求记录\",\"parentId\":676762150244450433,\"path\":\"/ofpay/send\",\"sortValue\":1,\"updateTime\":\"2020-02-11T12:13:26\",\"updateUser\":3},{\"component\":\"pinda/ofpay/platform/Index\",\"createTime\":\"2020-02-20T16:16:34\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":680085395794296897,\"isEnable\":true,\"isPublic\":false,\"label\":\"平台管理\",\"name\":\"平台管理\",\"parentId\":676762150244450433,\"path\":\"/ofpay/platform\",\"sortValue\":2,\"updateTime\":\"2020-02-20T18:24:30\",\"updateUser\":3},{\"component\":\"pinda/ofpay/customer/Index\",\"createTime\":\"2020-02-23T13:40:05\",\"createUser\":3,\"describe\":\"1\",\"group\":\"\",\"icon\":\"\",\"id\":681133179561574689,\"isEnable\":true,\"isPublic\":false,\"label\":\"客户管理\",\"name\":\"客户管理\",\"parentId\":676762150244450433,\"path\":\"/ofpay/customer\",\"sortValue\":3,\"updateTime\":\"2020-03-01T18:31:12\",\"updateUser\":3}],\"component\":\"pinda/ofpay/Index\",\"createTime\":\"2020-02-11T12:11:10\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"el-icon-guide\",\"id\":676762150244450433,\"isEnable\":true,\"isPublic\":false,\"label\":\"接口路由\",\"name\":\"接口路由\",\"parentId\":0,\"path\":\"/ofpay\",\"sortValue\":10,\"updateTime\":\"2020-02-11T12:11:10\",\"updateUser\":3}],\"isError\":false,\"isSuccess\":true,\"msg\":\"ok\",\"timestamp\":1696314857949}',NULL,NULL,'2023-10-03 06:34:18','2023-10-03 06:34:18',334,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36','2023-10-03 14:34:18',0),(1158774261079343169,'192.168.10.8','OPT','','组织-查询系统所有的组织树','com.itheima.pinda.authority.controller.core.OrgController','tree','/org/tree','GET','[null, null]','{\"code\":0,\"data\":[{\"abbreviation\":\"品达集团\",\"children\":[{\"abbreviation\":\"上海品达\",\"children\":[{\"abbreviation\":\"综合部\",\"createTime\":\"2019-11-12T11:34:27\",\"createUser\":3,\"describe\":\"前台&HR\",\"id\":643775612976106881,\"label\":\"综合部\",\"name\":\"综合部\",\"parentId\":101,\"sortValue\":0,\"status\":true,\"treePath\":\",100,101,\",\"updateTime\":\"2020-03-01T18:25:34\",\"updateUser\":3},{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:38:21\",\"createUser\":3,\"describe\":\"java/html\",\"id\":643776594376135105,\"label\":\"研发部\",\"name\":\"研发部\",\"parentId\":101,\"sortValue\":1,\"status\":true,\"treePath\":\",100,101,\",\"updateTime\":\"2020-03-01T18:25:57\",\"updateUser\":3},{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:38:31\",\"createUser\":3,\"describe\":\"\",\"id\":643776633823564321,\"label\":\"产品部\",\"name\":\"产品部\",\"parentId\":101,\"sortValue\":2,\"status\":true,\"treePath\":\",100,101,\",\"updateTime\":\"2019-11-12T11:38:31\",\"updateUser\":3}],\"createTime\":\"2019-08-06T09:10:53\",\"createUser\":1,\"describe\":\"上海分公司\",\"id\":101,\"label\":\"品达上海分公司\",\"name\":\"品达上海分公司\",\"parentId\":100,\"sortValue\":0,\"status\":true,\"treePath\":\",100,\",\"updateTime\":\"2020-01-10T06:23:32\",\"updateUser\":3},{\"abbreviation\":\"品达北京\",\"children\":[{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:38:39\",\"createUser\":3,\"describe\":\"\",\"id\":643776668917305985,\"label\":\"综合部\",\"name\":\"综合部\",\"parentId\":102,\"sortValue\":0,\"status\":true,\"treePath\":\",100,102,\",\"updateTime\":\"2019-11-12T11:38:39\",\"updateUser\":3},{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:38:50\",\"createUser\":3,\"describe\":\"\",\"id\":643776713909605089,\"label\":\"研发部\",\"name\":\"研发部\",\"parentId\":102,\"sortValue\":0,\"status\":true,\"treePath\":\",100,102,\",\"updateTime\":\"2019-11-12T11:38:50\",\"updateUser\":3},{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:39:00\",\"createUser\":3,\"describe\":\"\",\"id\":643776757199016769,\"label\":\"销售部\",\"name\":\"销售部\",\"parentId\":102,\"sortValue\":2,\"status\":true,\"treePath\":\",100,102,\",\"updateTime\":\"2019-11-12T11:39:00\",\"updateUser\":3}],\"createTime\":\"2019-11-07T16:13:09\",\"createUser\":1,\"describe\":\"北京分公司\",\"id\":102,\"label\":\"品达北京分公司\",\"name\":\"品达北京分公司\",\"parentId\":100,\"sortValue\":1,\"status\":true,\"treePath\":\",100,\",\"updateTime\":\"2020-01-10T06:23:48\",\"updateUser\":3},{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:35:37\",\"createUser\":3,\"describe\":\"\",\"id\":643775904077582049,\"label\":\"总经办\",\"name\":\"总经办\",\"parentId\":100,\"sortValue\":2,\"status\":true,\"treePath\":\",100,\",\"updateTime\":\"2019-11-12T11:36:52\",\"updateUser\":3},{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:34:39\",\"createUser\":3,\"describe\":\"\",\"id\":643775664683486689,\"label\":\"管理层\",\"name\":\"管理层\",\"parentId\":100,\"sortValue\":3,\"status\":true,\"treePath\":\",100,\",\"updateTime\":\"2019-11-12T11:36:16\",\"updateUser\":3},{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:37:17\",\"createUser\":3,\"describe\":\"\",\"id\":643776324342648929,\"label\":\"财务部\",\"name\":\"财务部\",\"parentId\":100,\"sortValue\":4,\"status\":true,\"treePath\":\",100,\",\"updateTime\":\"2019-11-12T11:37:40\",\"updateUser\":3},{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:37:37\",\"createUser\":3,\"describe\":\"\",\"id\":643776407691858113,\"label\":\"市场部\",\"name\":\"市场部\",\"parentId\":100,\"sortValue\":5,\"status\":true,\"treePath\":\",100,\",\"updateTime\":\"2019-11-12T11:37:37\",\"updateUser\":3},{\"abbreviation\":\"\",\"createTime\":\"2019-11-12T11:38:01\",\"createUser\":3,\"describe\":\"\",\"id\":643776508795556193,\"label\":\"销售部\",\"name\":\"销售部\",\"parentId\":100,\"sortValue\":6,\"status\":true,\"treePath\":\",100,\",\"updateTime\":\"2019-11-12T11:38:01\",\"updateUser\":3}],\"createTime\":\"2019-07-10T17:02:18\",\"createUser\":1,\"describe\":\"总公司\",\"id\":100,\"label\":\"品达物流集团有限公司\",\"name\":\"品达物流集团有限公司\",\"parentId\":0,\"sortValue\":1,\"status\":true,\"treePath\":\",\",\"updateTime\":\"2020-02-20T20:57:11\",\"updateUser\":3}],\"isError\":false,\"isSuccess\":true,\"msg\":\"ok\",\"timestamp\":1696314913026}',NULL,NULL,'2023-10-03 06:35:13','2023-10-03 06:35:13',84,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36','2023-10-03 14:35:13',0),(1158861080752029729,'192.168.10.8','OPT','','登录控制器-登录日志','com.itheima.pinda.authority.controller.auth.LoginController','login','/anno/login','POST','[{\"account\":\"11111\",\"code\":\"0\",\"key\":\"666\",\"password\":\"pinda123\"}]','{\"code\":0,\"data\":{\"token\":{\"expire\":43200,\"token\":\"eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI2NDg4NDExMDM4NjAwNDEwMjUiLCJhY2NvdW50IjoiMTExMTEiLCJuYW1lIjoi546L5LqUIiwib3JnaWQiOjY0Mzc3NjY2ODkxNzMwNTk4NSwic3RhdGlvbmlkIjo2NDUyMDA4ODU3NzI3MjQ1NDUsImV4cCI6MTY5NjM3ODgxMX0.HV1jWY81lNeFD9nAVdgfliYjP_-U8jHL2Qv_TcXOEYJBzEZlogoBQKyM2pB3FMtYk3U8Clp44urnumnCWu0eXOLPwq7VEy8EttKq9UnzUoGOHDxNanXGvvoo8Z5uyVYb76ziY9Mlsy5ZY_GDfL8VFTwn8hFq6Ah7eVbLWCRszlY\"},\"user\":{\"account\":\"11111\",\"avatar\":\"BiazfanxmamNRoxxVxka.png\",\"email\":\"\",\"id\":648841103860041025,\"mobile\":\"\",\"name\":\"王五\",\"orgId\":643776668917305985,\"sex\":\"M\",\"stationId\":645200885772724545,\"status\":true,\"workDescribe\":\"\"}},\"isError\":false,\"isSuccess\":true,\"msg\":\"ok\",\"timestamp\":1696335612408}',NULL,NULL,'2023-10-03 12:20:12','2023-10-03 12:20:12',875,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36','2023-10-03 20:20:12',0),(1158861325581942849,'192.168.10.8','OPT','','登录控制器-登录日志','com.itheima.pinda.authority.controller.auth.LoginController','login','/anno/login','POST','[{\"account\":\"pinda\",\"code\":\"3\",\"key\":\"666111\",\"password\":\"pinda123\"}]','{\"code\":0,\"data\":{\"permissionsList\":[\"org:add\",\"role:config\",\"resource:add\",\"resource:update\",\"resource:delete\",\"org:update\",\"org:delete\",\"org:view\",\"org:import\",\"org:export\",\"station:add\",\"station:update\",\"station:delete\",\"station:view\",\"station:export\",\"station:import\",\"user:add\",\"user:update\",\"user:delete\",\"user:view\",\"user:import\",\"user:export\",\"menu:add\",\"menu:update\",\"menu:delete\",\"menu:view\",\"menu:export\",\"menu:import\",\"role:add\",\"role:update\",\"role:delete\",\"role:view\",\"role:export\",\"role:import\",\"role:auth\",\"optLog:view\",\"optLog:export\",\"optLog:delete\",\"loginLog:delete\",\"loginLog:export\",\"file:add\",\"file:update\",\"file:delete\",\"file:view\",\"receive:view\",\"send:view\",\"rule:config-view\",\"resource:view\"],\"token\":{\"expire\":43200,\"token\":\"eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIzIiwiYWNjb3VudCI6InBpbmRhIiwibmFtZSI6IuW5s-WPsOeuoeeQhuWRmCIsIm9yZ2lkIjoxMDAsInN0YXRpb25pZCI6MTAwLCJleHAiOjE2OTYzNzg4NzB9.OGmrwKkryHim1a5tQerg0qhHppdswjZ10Hp6FiaHjWL0GcMBb07pmB47EXnf8R0sM4jWpmE7bVvE24LbQBcMM2S32MAWm6pB2eD1nX2-n-NdUJ6iiZll2CE4mLf5anKQMwPTPWCnZWmfySUTOnNub54-ji-qL8ZmKUVnoPWu6Nw\"},\"user\":{\"account\":\"pinda\",\"avatar\":\"BiazfanxmamNRoxxVxka.png\",\"email\":\"\",\"id\":3,\"lastLoginTime\":\"2020-03-21T18:48:53\",\"mobile\":\"\",\"name\":\"平台管理员\",\"orgId\":100,\"sex\":\"M\",\"stationId\":100,\"status\":true,\"workDescribe\":\"超级管理员\"}},\"isError\":false,\"isSuccess\":true,\"msg\":\"ok\",\"timestamp\":1696335670820}',NULL,NULL,'2023-10-03 12:21:11','2023-10-03 12:21:11',77,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36','2023-10-03 20:21:11',0),(1159850032216670241,'192.168.10.8','OPT','','菜单-分页查询菜单','com.itheima.pinda.authority.controller.auth.MenuController','page','/menu/page','GET','[Menu(super=Entity(super=SuperEntity(super=com.itheima.pinda.authority.entity.auth.Menu@aa9749c, id=null, createTime=null, createUser=null), updateTime=null, updateUser=null), name=null, describe=null, isPublic=null, path=null, component=null, isEnable=null, sortValue=null, icon=null, group=null, parentId=null)]','{\"code\":0,\"data\":{\"current\":1,\"orders\":[],\"pages\":1,\"records\":[{\"component\":\"pinda/ofpay/customer/Index\",\"createTime\":\"2020-02-23T13:40:05\",\"createUser\":3,\"describe\":\"1\",\"group\":\"\",\"icon\":\"\",\"id\":681133179561574689,\"isEnable\":true,\"isPublic\":false,\"name\":\"客户管理\",\"parentId\":676762150244450433,\"path\":\"/ofpay/customer\",\"sortValue\":3,\"updateTime\":\"2020-03-01T18:31:12\",\"updateUser\":3},{\"component\":\"pinda/ofpay/platform/Index\",\"createTime\":\"2020-02-20T16:16:34\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":680085395794296897,\"isEnable\":true,\"isPublic\":false,\"name\":\"平台管理\",\"parentId\":676762150244450433,\"path\":\"/ofpay/platform\",\"sortValue\":2,\"updateTime\":\"2020-02-20T18:24:30\",\"updateUser\":3},{\"component\":\"pinda/ofpay/receive/Index\",\"createTime\":\"2020-02-11T12:12:36\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":676762509503365569,\"isEnable\":true,\"isPublic\":false,\"name\":\"调用记录\",\"parentId\":676762150244450433,\"path\":\"/ofpay/receive\",\"sortValue\":0,\"updateTime\":\"2020-02-11T12:14:24\",\"updateUser\":3},{\"component\":\"pinda/ofpay/send/Index\",\"createTime\":\"2020-02-11T12:13:26\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":676762719185011233,\"isEnable\":true,\"isPublic\":false,\"name\":\"请求记录\",\"parentId\":676762150244450433,\"path\":\"/ofpay/send\",\"sortValue\":1,\"updateTime\":\"2020-02-11T12:13:26\",\"updateUser\":3},{\"component\":\"pinda/ofpay/Index\",\"createTime\":\"2020-02-11T12:11:10\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"el-icon-guide\",\"id\":676762150244450433,\"isEnable\":true,\"isPublic\":false,\"name\":\"接口路由\",\"parentId\":0,\"path\":\"/ofpay\",\"sortValue\":10,\"updateTime\":\"2020-02-11T12:11:10\",\"updateUser\":3},{\"component\":\"pinda/file/attachment/Index\",\"createTime\":\"2020-01-15T15:53:59\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":667033750256747169,\"isEnable\":false,\"isPublic\":false,\"name\":\"文件管理\",\"parentId\":101,\"path\":\"/file/attachment\",\"sortValue\":5,\"updateTime\":\"2020-02-05T08:47:15\",\"updateUser\":3},{\"component\":\"pinda/user/org/Index\",\"createTime\":\"2019-07-25T16:11:00\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603982542332235201,\"isEnable\":true,\"isPublic\":false,\"name\":\"组织管理\",\"parentId\":101,\"path\":\"/user/org\",\"sortValue\":0,\"updateTime\":\"2020-01-11T08:51:22\",\"updateUser\":3},{\"component\":\"Layout\",\"createTime\":\"2019-07-28T16:49:34\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":605079411338773153,\"isEnable\":false,\"isPublic\":false,\"name\":\"注册配置中心\",\"parentId\":104,\"path\":\"http://localhost:8848/nacos\",\"sortValue\":6,\"updateTime\":\"2020-01-10T10:40:47\",\"updateUser\":3},{\"component\":\"pinda/developer/db/Index\",\"createTime\":\"2019-07-28T16:47:51\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":605078979149300257,\"isEnable\":false,\"isPublic\":false,\"name\":\"数据库监控\",\"parentId\":104,\"path\":\"/developer/db\",\"sortValue\":2,\"updateTime\":\"2020-01-10T10:40:42\",\"updateUser\":3},{\"component\":\"Layout\",\"createTime\":\"2019-07-28T16:48:53\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":605079239015793249,\"isEnable\":true,\"isPublic\":false,\"name\":\"接口文档\",\"parentId\":104,\"path\":\"http://39.100.244.120:8760/api/gate/doc.html\",\"sortValue\":5,\"updateTime\":\"2020-01-10T10:33:23\",\"updateUser\":3},{\"component\":\"pinda/user/user/Index\",\"createTime\":\"2019-07-25T16:13:09\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603983082961243905,\"isEnable\":true,\"isPublic\":false,\"name\":\"用户管理\",\"parentId\":101,\"path\":\"/user/user\",\"sortValue\":2,\"updateTime\":\"2020-01-09T19:27:02\",\"updateUser\":3},{\"component\":\"pinda/user/Index\",\"createTime\":\"2019-07-25T15:35:12\",\"createUser\":1,\"describe\":\"系统管理\",\"group\":\"\",\"icon\":\"el-icon-user-solid\",\"id\":101,\"isEnable\":true,\"isPublic\":false,\"name\":\"系统管理\",\"parentId\":0,\"path\":\"/user\",\"sortValue\":0,\"updateTime\":\"2020-01-09T19:23:12\",\"updateUser\":3},{\"component\":\"pinda/developer/Index\",\"createTime\":\"2019-11-11T14:38:34\",\"createUser\":1,\"describe\":\"开发者\",\"group\":\"\",\"icon\":\"el-icon-user-solid\",\"id\":104,\"isEnable\":true,\"isPublic\":false,\"name\":\"监控管理\",\"parentId\":0,\"path\":\"/developer\",\"sortValue\":3,\"updateTime\":\"2020-01-09T19:22:52\",\"updateUser\":3},{\"component\":\"pinda/developer/loginLog/Index\",\"createTime\":\"2019-11-16T10:54:59\",\"createUser\":3,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":645215230518909025,\"isEnable\":true,\"isPublic\":false,\"name\":\"登录日志\",\"parentId\":104,\"path\":\"/developer/loginLog\",\"sortValue\":4,\"updateTime\":\"2019-11-16T10:54:59\",\"updateUser\":3},{\"component\":\"pinda/developer/optLog/Index\",\"createTime\":\"2019-07-28T16:46:38\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":605078672772170209,\"isEnable\":true,\"isPublic\":false,\"name\":\"操作日志\",\"parentId\":104,\"path\":\"/developer/optLog\",\"sortValue\":3,\"updateTime\":\"2019-11-11T14:35:14\",\"updateUser\":3},{\"component\":\"pinda/auth/role/Index\",\"createTime\":\"2019-07-25T16:07:45\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603981723864141121,\"isEnable\":true,\"isPublic\":false,\"name\":\"角色管理\",\"parentId\":101,\"path\":\"/auth/role\",\"sortValue\":4,\"updateTime\":\"2019-11-11T14:31:57\",\"updateUser\":3},{\"component\":\"pinda/auth/menu/Index\",\"createTime\":\"2019-07-25T15:46:11\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603976297063910529,\"isEnable\":true,\"isPublic\":false,\"name\":\"菜单配置\",\"parentId\":101,\"path\":\"/auth/menu\",\"sortValue\":3,\"updateTime\":\"2019-11-11T14:31:52\",\"updateUser\":3},{\"component\":\"pinda/user/station/Index\",\"createTime\":\"2019-07-25T16:11:41\",\"createUser\":1,\"describe\":\"\",\"group\":\"\",\"icon\":\"\",\"id\":603982713849908801,\"isEnable\":true,\"isPublic\":false,\"name\":\"岗位管理\",\"parentId\":101,\"path\":\"/user/station\",\"sortValue\":1,\"updateTime\":\"2019-11-11T14:28:43\",\"updateUser\":3}],\"searchCount\":true,\"size\":20,\"total\":18},\"isError\":false,\"isSuccess\":true,\"msg\":\"ok\",\"timestamp\":1696571396844}',NULL,NULL,'2023-10-06 05:49:57','2023-10-06 05:49:57',37,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36','2023-10-06 13:49:57',0);
/*!40000 ALTER TABLE `pd_common_opt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_core_org`
--

DROP TABLE IF EXISTS `pd_core_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_core_org` (
  `id` bigint NOT NULL COMMENT 'ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `abbreviation` varchar(255) DEFAULT '' COMMENT '简称',
  `parent_id` bigint DEFAULT '0' COMMENT '父ID',
  `tree_path` varchar(255) DEFAULT ',' COMMENT '树结构',
  `sort_value` int DEFAULT '1' COMMENT '排序',
  `status` bit(1) DEFAULT b'1' COMMENT '状态',
  `describe_` varchar(255) DEFAULT '' COMMENT '描述',
  `create_time` datetime DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  FULLTEXT KEY `FU_PATH` (`tree_path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='组织';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_core_org`
--

LOCK TABLES `pd_core_org` WRITE;
/*!40000 ALTER TABLE `pd_core_org` DISABLE KEYS */;
INSERT INTO `pd_core_org` VALUES (100,'品达物流集团有限公司','品达集团',0,',',1,_binary '','总公司','2019-07-10 17:02:18',1,'2020-02-20 20:57:11',3),(101,'品达上海分公司','上海品达',100,',100,',0,_binary '','上海分公司','2019-08-06 09:10:53',1,'2020-01-10 06:23:32',3),(102,'品达北京分公司','品达北京',100,',100,',1,_binary '','北京分公司','2019-11-07 16:13:09',1,'2020-01-10 06:23:48',3),(643775612976106881,'综合部','综合部',101,',100,101,',0,_binary '','前台&HR','2019-11-12 11:34:27',3,'2020-03-01 18:25:34',3),(643775664683486689,'管理层','',100,',100,',3,_binary '','','2019-11-12 11:34:39',3,'2019-11-12 11:36:16',3),(643775904077582049,'总经办','',100,',100,',2,_binary '','','2019-11-12 11:35:37',3,'2019-11-12 11:36:52',3),(643776324342648929,'财务部','',100,',100,',4,_binary '','','2019-11-12 11:37:17',3,'2019-11-12 11:37:40',3),(643776407691858113,'市场部','',100,',100,',5,_binary '','','2019-11-12 11:37:37',3,'2019-11-12 11:37:37',3),(643776508795556193,'销售部','',100,',100,',6,_binary '','','2019-11-12 11:38:01',3,'2019-11-12 11:38:01',3),(643776594376135105,'研发部','',101,',100,101,',1,_binary '','java/html','2019-11-12 11:38:21',3,'2020-03-01 18:25:57',3),(643776633823564321,'产品部','',101,',100,101,',2,_binary '','','2019-11-12 11:38:31',3,'2019-11-12 11:38:31',3),(643776668917305985,'综合部','',102,',100,102,',0,_binary '','','2019-11-12 11:38:39',3,'2019-11-12 11:38:39',3),(643776713909605089,'研发部','',102,',100,102,',0,_binary '','','2019-11-12 11:38:50',3,'2019-11-12 11:38:50',3),(643776757199016769,'销售部','',102,',100,102,',2,_binary '','','2019-11-12 11:39:00',3,'2019-11-12 11:39:00',3);
/*!40000 ALTER TABLE `pd_core_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_core_station`
--

DROP TABLE IF EXISTS `pd_core_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_core_station` (
  `id` bigint NOT NULL COMMENT 'ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `org_id` bigint DEFAULT '0' COMMENT '组织ID\n#c_core_org',
  `status` bit(1) DEFAULT b'1' COMMENT '状态',
  `describe_` varchar(255) DEFAULT '' COMMENT '描述',
  `create_time` datetime DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='岗位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_core_station`
--

LOCK TABLES `pd_core_station` WRITE;
/*!40000 ALTER TABLE `pd_core_station` DISABLE KEYS */;
INSERT INTO `pd_core_station` VALUES (100,'总经理',643775904077582049,_binary '','总部-1把手','2019-07-10 17:03:03',1,'2019-11-16 09:59:17',3),(101,'副总经理',643775904077582049,_binary '','总部-2把手','2019-07-22 17:07:55',1,'2019-11-16 09:59:21',3),(642032719487828225,'研发经理',643776594376135105,_binary '','子公司-研发部老大','2019-11-07 16:08:49',3,'2019-11-16 09:53:42',3),(645199319300842081,'副总经理',101,_binary '','子公司-老大','2019-11-16 09:51:45',3,'2019-11-16 09:53:50',3),(645199745026892801,'产品经理',643776633823564321,_binary '','子公司-产品部老大','2019-11-16 09:53:27',3,'2019-11-16 09:54:01',3),(645200064280536545,'人事经理',643775612976106881,_binary '','子公司-综合老大','2019-11-16 09:54:43',3,'2019-11-16 09:54:43',3),(645200151886964289,'Java工程师',643776594376135105,_binary '','普通员工','2019-11-16 09:55:04',3,'2019-11-16 09:55:04',3),(645200250243393185,'需求工程师',643776633823564321,_binary '','普通员工','2019-11-16 09:55:27',3,'2019-11-16 09:55:27',3),(645200304014370561,'UI工程师',643776633823564321,_binary '','普通员工','2019-11-16 09:55:40',3,'2019-11-16 09:55:40',3),(645200358959753057,'运维工程师',643776594376135105,_binary '','普通员工','2019-11-16 09:55:53',3,'2019-11-16 09:55:53',3),(645200405453612993,'前台小姐姐',643775612976106881,_binary '','普通员工','2019-11-16 09:56:04',3,'2019-11-16 09:56:04',3),(645200545698555937,'人事经理',643776668917305985,_binary '','北京分公司-综合部老大','2019-11-16 09:56:38',3,'2019-11-16 09:56:38',3),(645200670781089921,'研发经理',643776713909605089,_binary '','北京分公司-研发部老大','2019-11-16 09:57:07',3,'2019-11-16 09:57:07',3),(645200806559099105,'销售经理',643776757199016769,_binary '','北京销售部老大','2019-11-16 09:57:40',3,'2019-11-16 09:57:40',3),(645200885772724545,'行政',643776668917305985,_binary '','普通员工','2019-11-16 09:57:59',3,'2019-11-16 09:57:59',3),(645200938289605025,'大前端工程师',643776713909605089,_binary '','普通员工','2019-11-16 09:58:11',3,'2019-11-16 09:58:11',3),(645201064705927681,'销售员工',643776757199016769,_binary '','普通员工','2019-11-16 09:58:41',3,'2019-11-16 09:58:41',3),(645201184268757601,'销售总监',643775664683486689,_binary '','总部2把手','2019-11-16 09:59:10',3,'2019-11-16 09:59:10',3),(645201307765844833,'财务总监',643776324342648929,_binary '','总部2把手','2019-11-16 09:59:39',3,'2019-11-16 09:59:39',3),(645201405757369281,'市场经理',643776407691858113,_binary '','总部市场部老大','2019-11-16 10:00:03',3,'2019-11-16 10:00:03',3),(645201481133206561,'销售总监',643776508795556193,_binary '','总部销售部老大','2019-11-16 10:00:21',3,'2019-11-16 10:00:21',3),(645201573391117441,'前端工程师',643776594376135105,_binary '','普通员工','2019-11-16 10:00:43',3,'2020-03-01 19:11:58',3);
/*!40000 ALTER TABLE `pd_core_station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06 13:57:15
