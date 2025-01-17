-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot1xam1
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `checixinxi`
--

DROP TABLE IF EXISTS `checixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `checimingcheng` varchar(200) DEFAULT NULL COMMENT '车次名称',
  `huochemingcheng` varchar(200) NOT NULL COMMENT '火车名称',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `qidianzhan` varchar(200) DEFAULT NULL COMMENT '起点站',
  `zhongdianzhan` varchar(200) DEFAULT NULL COMMENT '终点站',
  `tujing` longtext COMMENT '途经',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `chufashijian` datetime DEFAULT NULL COMMENT '出发时间',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `zuoweileixing` varchar(200) DEFAULT NULL COMMENT '座位类型',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `piaoshu` int(11) NOT NULL COMMENT '票数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='车次信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checixinxi`
--

LOCK TABLES `checixinxi` WRITE;
/*!40000 ALTER TABLE `checixinxi` DISABLE KEYS */;
INSERT INTO `checixinxi` VALUES (31,'2021-02-27 03:46:25','车次名称1','火车名称1','车牌1','http://localhost:8080/springboot1xam1/upload/checixinxi_tupian1.jpg','起点站1','终点站1','途经1','2021-02-25','2021-02-27 11:46:25','时长1','一等座',1,20),(32,'2021-02-27 03:46:25','车次名称2','火车名称2','车牌2','http://localhost:8080/springboot1xam1/upload/checixinxi_tupian2.jpg','起点站2','终点站2','途经2','2021-02-27','2021-02-27 11:46:25','时长2','一等座',2,2),(33,'2021-02-27 03:46:25','车次名称3','火车名称3','车牌3','http://localhost:8080/springboot1xam1/upload/checixinxi_tupian3.jpg','起点站3','终点站3','途经3','2021-02-27','2021-02-27 11:46:25','时长3','一等座',3,3),(34,'2021-02-27 03:46:25','车次名称4','火车名称4','车牌4','http://localhost:8080/springboot1xam1/upload/checixinxi_tupian4.jpg','起点站4','终点站4','途经4','2021-02-27','2021-02-27 11:46:25','时长4','一等座',4,4),(35,'2021-02-27 03:46:25','车次名称5','火车名称5','车牌5','http://localhost:8080/springboot1xam1/upload/checixinxi_tupian5.jpg','起点站5','终点站5','途经5','2021-02-27','2021-02-27 11:46:25','时长5','一等座',5,5),(36,'2021-02-27 03:46:25','车次名称6','火车名称6','车牌6','http://localhost:8080/springboot1xam1/upload/checixinxi_tupian6.jpg','起点站6','终点站6','途经6','2021-02-27','2021-02-27 11:46:25','时长6','一等座',6,6);
/*!40000 ALTER TABLE `checixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chexingxinxi`
--

DROP TABLE IF EXISTS `chexingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chexingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huochebianhao` varchar(200) NOT NULL COMMENT '火车编号',
  `huochemingcheng` varchar(200) NOT NULL COMMENT '火车名称',
  `shisu` varchar(200) DEFAULT NULL COMMENT '时速',
  `zuoweishu` varchar(200) DEFAULT NULL COMMENT '座位数',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huochebianhao` (`huochebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='车型信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chexingxinxi`
--

LOCK TABLES `chexingxinxi` WRITE;
/*!40000 ALTER TABLE `chexingxinxi` DISABLE KEYS */;
INSERT INTO `chexingxinxi` VALUES (21,'2021-02-27 03:46:25','火车编号1','火车名称1','时速1','座位数1','车牌1'),(22,'2021-02-27 03:46:25','火车编号2','火车名称2','时速2','座位数2','车牌2'),(23,'2021-02-27 03:46:25','火车编号3','火车名称3','时速3','座位数3','车牌3'),(24,'2021-02-27 03:46:25','火车编号4','火车名称4','时速4','座位数4','车牌4'),(25,'2021-02-27 03:46:25','火车编号5','火车名称5','时速5','座位数5','车牌5'),(26,'2021-02-27 03:46:25','火车编号6','火车名称6','时速6','座位数6','车牌6');
/*!40000 ALTER TABLE `chexingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot1xam1/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot1xam1/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot1xam1/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaiqiandingdan`
--

DROP TABLE IF EXISTS `gaiqiandingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gaiqiandingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `checimingcheng` varchar(200) DEFAULT NULL COMMENT '车次名称',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `qidianzhan` varchar(200) DEFAULT NULL COMMENT '起点站',
  `zhongdianzhan` varchar(200) DEFAULT NULL COMMENT '终点站',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `gaiqianriqi` datetime DEFAULT NULL COMMENT '改签日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614397950146 DEFAULT CHARSET=utf8 COMMENT='改签订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaiqiandingdan`
--

LOCK TABLES `gaiqiandingdan` WRITE;
/*!40000 ALTER TABLE `gaiqiandingdan` DISABLE KEYS */;
INSERT INTO `gaiqiandingdan` VALUES (51,'2021-02-27 03:46:25','订单编号1','车次名称1','车牌1','起点站1','终点站1','总价格1','2021-02-27 11:46:25','用户名1','姓名1','手机1','是',''),(52,'2021-02-27 03:46:25','订单编号2','车次名称2','车牌2','起点站2','终点站2','总价格2','2021-02-27 11:46:25','用户名2','姓名2','手机2','是',''),(53,'2021-02-27 03:46:25','订单编号3','车次名称3','车牌3','起点站3','终点站3','总价格3','2021-02-27 11:46:25','用户名3','姓名3','手机3','是',''),(54,'2021-02-27 03:46:25','订单编号4','车次名称4','车牌4','起点站4','终点站4','总价格4','2021-02-27 11:46:25','用户名4','姓名4','手机4','是',''),(55,'2021-02-27 03:46:25','订单编号5','车次名称5','车牌5','起点站5','终点站5','总价格5','2021-02-27 11:46:25','用户名5','姓名5','手机5','是',''),(56,'2021-02-27 03:46:25','订单编号6','车次名称6','车牌6','起点站6','终点站6','总价格6','2021-02-27 11:46:25','用户名6','姓名6','手机6','是',''),(1614397950145,'2021-02-27 03:52:30','202122711514888240762','车次名称3','车牌3','起点站3','终点站3','1','2021-02-01 16:00:00','001','姓名1','13823888881','否',NULL);
/*!40000 ALTER TABLE `gaiqiandingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goupiaodingdan`
--

DROP TABLE IF EXISTS `goupiaodingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goupiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `checimingcheng` varchar(200) DEFAULT NULL COMMENT '车次名称',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `qidianzhan` varchar(200) DEFAULT NULL COMMENT '起点站',
  `zhongdianzhan` varchar(200) DEFAULT NULL COMMENT '终点站',
  `chufashijian` varchar(200) DEFAULT NULL COMMENT '出发时间',
  `zuoweileixing` varchar(200) DEFAULT NULL COMMENT '座位类型',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `piaoshu` int(11) NOT NULL COMMENT '票数',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614397911007 DEFAULT CHARSET=utf8 COMMENT='购票订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goupiaodingdan`
--

LOCK TABLES `goupiaodingdan` WRITE;
/*!40000 ALTER TABLE `goupiaodingdan` DISABLE KEYS */;
INSERT INTO `goupiaodingdan` VALUES (41,'2021-02-27 03:46:25','订单编号1','车次名称1','车牌1','起点站1','终点站1','出发时间1','座位类型1','价格1',1,'总价格1','2021-02-27','用户名1','姓名1','手机1','身份证1','未支付'),(42,'2021-02-27 03:46:25','订单编号2','车次名称2','车牌2','起点站2','终点站2','出发时间2','座位类型2','价格2',2,'总价格2','2021-02-27','用户名2','姓名2','手机2','身份证2','未支付'),(43,'2021-02-27 03:46:25','订单编号3','车次名称3','车牌3','起点站3','终点站3','出发时间3','座位类型3','价格3',3,'总价格3','2021-02-27','用户名3','姓名3','手机3','身份证3','未支付'),(44,'2021-02-27 03:46:25','订单编号4','车次名称4','车牌4','起点站4','终点站4','出发时间4','座位类型4','价格4',4,'总价格4','2021-02-27','用户名4','姓名4','手机4','身份证4','未支付'),(45,'2021-02-27 03:46:25','订单编号5','车次名称5','车牌5','起点站5','终点站5','出发时间5','座位类型5','价格5',5,'总价格5','2021-02-27','用户名5','姓名5','手机5','身份证5','未支付'),(46,'2021-02-27 03:46:25','订单编号6','车次名称6','车牌6','起点站6','终点站6','出发时间6','座位类型6','价格6',6,'总价格6','2021-02-27','用户名6','姓名6','手机6','身份证6','未支付'),(1614397911006,'2021-02-27 03:51:50','202122711514888240762','车次名称1','车牌1','起点站1','终点站1','2021-02-27 19:46:25','一等座','1',1,'1','2021-01-30','001','姓名1','13823888881','440300199101010001','已支付');
/*!40000 ALTER TABLE `goupiaodingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='火车资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (71,'2021-02-27 03:46:25','标题1','简介1','http://localhost:8080/springboot1xam1/upload/1614397972966.jpg','<p>内容1</p>'),(72,'2021-02-27 03:46:25','标题2','简介2','http://localhost:8080/springboot1xam1/upload/1614397981050.jpg','<p>内容2</p>'),(73,'2021-02-27 03:46:25','标题3','简介3','http://localhost:8080/springboot1xam1/upload/1614397989870.jpg','<p>内容3</p>'),(74,'2021-02-27 03:46:25','标题4','简介4','http://localhost:8080/springboot1xam1/upload/1614398000765.jpg','<p>内容4</p>'),(75,'2021-02-27 03:46:25','标题5','简介5','http://localhost:8080/springboot1xam1/upload/1614398010710.jpg','<p>内容5</p>'),(76,'2021-02-27 03:46:25','标题6','简介6','http://localhost:8080/springboot1xam1/upload/1614398033187.jpg','<p>内容6</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','ibhlcnno34n4qbvt18g75sd2ahv52cz9','2021-02-27 03:48:35','2021-02-26 20:52:40'),(2,11,'001','yonghu','用户','unajuaf9h7ma1aul5q4ocsepb9a6xe9g','2021-02-27 03:51:39','2021-02-26 20:52:14');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuipiaodingdan`
--

DROP TABLE IF EXISTS `tuipiaodingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuipiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `checimingcheng` varchar(200) DEFAULT NULL COMMENT '车次名称',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `piaoshu` varchar(200) NOT NULL COMMENT '票数',
  `chepiaotupian` varchar(200) DEFAULT NULL COMMENT '车票图片',
  `zongjiage` int(11) NOT NULL COMMENT '总价格',
  `tuipiaoyuanyin` varchar(200) DEFAULT NULL COMMENT '退票原因',
  `tuipiaoriqi` date DEFAULT NULL COMMENT '退票日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614397924200 DEFAULT CHARSET=utf8 COMMENT='退票订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuipiaodingdan`
--

LOCK TABLES `tuipiaodingdan` WRITE;
/*!40000 ALTER TABLE `tuipiaodingdan` DISABLE KEYS */;
INSERT INTO `tuipiaodingdan` VALUES (61,'2021-02-27 03:46:25','订单编号1','车次名称1','车牌1','票数1','http://localhost:8080/springboot1xam1/upload/tuipiaodingdan_chepiaotupian1.jpg',1,'退票原因1','2021-02-27','用户名1','姓名1','身份证1','手机1','是',''),(62,'2021-02-27 03:46:25','订单编号2','车次名称2','车牌2','票数2','http://localhost:8080/springboot1xam1/upload/tuipiaodingdan_chepiaotupian2.jpg',2,'退票原因2','2021-02-27','用户名2','姓名2','身份证2','手机2','是',''),(63,'2021-02-27 03:46:25','订单编号3','车次名称3','车牌3','票数3','http://localhost:8080/springboot1xam1/upload/tuipiaodingdan_chepiaotupian3.jpg',3,'退票原因3','2021-02-27','用户名3','姓名3','身份证3','手机3','是',''),(64,'2021-02-27 03:46:25','订单编号4','车次名称4','车牌4','票数4','http://localhost:8080/springboot1xam1/upload/tuipiaodingdan_chepiaotupian4.jpg',4,'退票原因4','2021-02-27','用户名4','姓名4','身份证4','手机4','是',''),(65,'2021-02-27 03:46:25','订单编号5','车次名称5','车牌5','票数5','http://localhost:8080/springboot1xam1/upload/tuipiaodingdan_chepiaotupian5.jpg',5,'退票原因5','2021-02-27','用户名5','姓名5','身份证5','手机5','是',''),(66,'2021-02-27 03:46:25','订单编号6','车次名称6','车牌6','票数6','http://localhost:8080/springboot1xam1/upload/tuipiaodingdan_chepiaotupian6.jpg',6,'退票原因6','2021-02-27','用户名6','姓名6','身份证6','手机6','是',''),(1614397924199,'2021-02-27 03:52:03',NULL,'车次名称1','车牌1','20',NULL,100,'1','2021-01-31','001','姓名1','440300199101010001','13823888881','否',NULL);
/*!40000 ALTER TABLE `tuipiaodingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-27 03:46:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-27 03:46:25','001','001','姓名1','男','http://localhost:8080/springboot1xam1/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-02-27 03:46:25','用户2','123456','姓名2','男','http://localhost:8080/springboot1xam1/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-02-27 03:46:25','用户3','123456','姓名3','男','http://localhost:8080/springboot1xam1/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-02-27 03:46:25','用户4','123456','姓名4','男','http://localhost:8080/springboot1xam1/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-02-27 03:46:25','用户5','123456','姓名5','男','http://localhost:8080/springboot1xam1/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-02-27 03:46:25','用户6','123456','姓名6','男','http://localhost:8080/springboot1xam1/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-28 18:40:09
