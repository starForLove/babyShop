# Host: localhost  (Version 8.0.12)
# Date: 2019-01-09 14:21:43
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'admin','123456','tjpu_feihong@163.com','2019-01-07 22:55:03',NULL);

#
# Structure for table "gclassify"
#

DROP TABLE IF EXISTS `gclassify`;
CREATE TABLE `gclassify` (
  `gclass_id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_name` varchar(100) NOT NULL,
  `fid` int(11) NOT NULL DEFAULT '0',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`gclass_id`),
  KEY `fid` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "gclassify"
#

INSERT INTO `gclassify` VALUES (1,'新品推荐',0,'2019-01-08 20:39:03',NULL),(2,'热销商品',0,'2019-01-08 20:39:07',NULL),(3,'轮播推荐',0,'2019-01-08 20:39:12',NULL);

#
# Structure for table "goods"
#

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `gclass_id` int(11) NOT NULL,
  `goods_name` varchar(64) NOT NULL,
  `goods_stock` int(11) NOT NULL,
  `goods_price` float(8,2) NOT NULL,
  `promotion_price` float(8,2) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `content` text,
  `average_grade` float(1,1) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `FK_Reference_9` (`gclass_id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`gclass_id`) REFERENCES `gclassify` (`gclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "goods"
#

INSERT INTO `goods` VALUES (1,3,'妈咪宝贝纸尿裤',563,189.00,189.00,'/upload/goodsimg/2019/1/goods_20190108205835352.jpg','{\"imgDetails\":[\"/upload/goodsimg/2019/1/goods_20190108205835352.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835371.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835386.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835401.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835417.gif\",\"/upload/goodsimg/2019/1/goods_20190108205835436.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835452.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835467.gif\",\"/upload/goodsimg/2019/1/goods_20190108205835487.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835502.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835519.gif\",\"/upload/goodsimg/2019/1/goods_20190108205835536.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835554.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835570.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835585.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835600.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835651.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835665.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835681.jpg\",\"/upload/goodsimg/2019/1/goods_20190108205835695.jpg\"],\"material\":\"无纺布、卫生纸\",\"type\":\"通用\"}',NULL,'妈咪宝贝（Mamypoko）','2019-01-08 20:58:06',NULL),(2,2,'象宝宝婴儿护肤柔纸巾',999,52.00,60.00,'/upload/goodsimg/2019/1/goods_20190108211558356.jpg','{\"imgDetails\":[\"/upload/goodsimg/2019/1/goods_20190108211558356.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558369.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558382.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558399.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558415.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558430.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558450.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558466.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558482.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558498.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558515.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558527.jpg\",\"/upload/goodsimg/2019/1/goods_20190108211558544.jpg\"],\"material\":\"原生木浆\",\"type\":\"通用\"}',NULL,'象宝宝（elepbaby）','2019-01-08 21:07:30',NULL),(3,1,'子初（Springbuds）婴儿泡泡棉纱方巾',8999,49.00,99.00,'/upload/goodsimg/2019/1/goods_20190108212559915.jpg','{\"imgDetails\":[\"/upload/goodsimg/2019/1/goods_20190108212559915.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212559930.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212559944.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212559960.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212559978.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212559993.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821260006.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821260020.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821260035.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821260051.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821260067.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821260086.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212600100.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212600116.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212600134.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212600150.jpg\",\"/upload/goodsimg/2019/1/goods_20190108212600168.jpg\"],\"material\":\"纯棉\",\"type\":\"通用\"}',NULL,'子初（Springbuds）','2019-01-08 21:23:33',NULL),(4,3,'贝亲（Pigeon） 新生儿玻璃奶瓶',856,168.00,168.00,'/upload/goodsimg/2019/1/goods_20190108213410844.jpg','{\"imgDetails\":[\"/upload/goodsimg/2019/1/goods_20190108213410844.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213410854.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213410870.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213410896.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213410911.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213410928.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213410943.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213410958.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213410974.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213410990.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821341106.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821341122.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821341139.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821341154.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821341171.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821341187.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213411105.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213411119.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213411151.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213411168.jpg\",\"/upload/goodsimg/2019/1/goods_20190108213411182.jpg\"],\"material\":\"玻璃塑料硅橡胶\",\"type\":\"婴儿/儿童/老人\"}',NULL,'贝亲（Pigeon）','2019-01-08 21:29:04',NULL),(5,3,'智儿乐婴儿推车',896,169.00,169.00,'/upload/goodsimg/2019/1/goods_20190108214234462.jpg','{\"imgDetails\":[\"/upload/goodsimg/2019/1/goods_20190108214234462.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234476.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234489.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234505.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234522.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234540.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234554.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234568.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234582.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234599.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234666.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234682.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234699.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234713.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234729.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234745.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234763.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234776.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234793.gif\",\"/upload/goodsimg/2019/1/goods_20190108214234812.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234830.gif\",\"/upload/goodsimg/2019/1/goods_20190108214234847.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234863.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234881.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234897.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234914.jpg\",\"/upload/goodsimg/2019/1/goods_20190108214234932.jpg\"],\"material\":\"发泡轮、碳钢\",\"type\":\"全阶段（0-3岁）\"}',NULL,'智儿乐','2019-01-08 21:41:46',NULL),(6,3,'婴儿床多功能可折叠宝宝床',562,699.00,699.00,'/upload/goodsimg/2019/1/goods_20190108215013856.png','{\"imgDetails\":[\"/upload/goodsimg/2019/1/goods_20190108215013856.png\",\"/upload/goodsimg/2019/1/goods_20190108215013866.jpg\",\"/upload/goodsimg/2019/1/goods_20190108215013881.jpg\",\"/upload/goodsimg/2019/1/goods_20190108215013899.jpg\",\"/upload/goodsimg/2019/1/goods_20190108215013914.jpg\",\"/upload/goodsimg/2019/1/goods_20190108215013932.jpg\",\"/upload/goodsimg/2019/1/goods_20190108215013952.jpg\",\"/upload/goodsimg/2019/1/goods_20190108215013967.jpg\",\"/upload/goodsimg/2019/1/goods_20190108215013982.jpg\",\"/upload/goodsimg/2019/1/goods_20190108215013997.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821501413.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821501429.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821501446.jpg\",\"/upload/goodsimg/2019/1/goods_2019010821501461.jpg\"],\"material\":\"塑料、碳钢\",\"type\":\"0-3岁\"}',NULL,'VALDERA','2019-01-08 21:46:43',NULL);

#
# Structure for table "goodsitem"
#

DROP TABLE IF EXISTS `goodsitem`;
CREATE TABLE `goodsitem` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `goodsitem_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

#
# Data for table "goodsitem"
#

INSERT INTO `goodsitem` VALUES (1,'新生儿NB70',1,99,'2019-01-08 21:00:06',NULL),(2,'新生儿S104',1,120,'2019-01-08 21:00:18',NULL),(3,'新生儿S132',1,200,'2019-01-08 21:00:27',NULL),(4,'纸尿裤M168',1,156,'2019-01-08 21:00:46',NULL),(5,'纸尿裤L138',1,596,'2019-01-08 21:01:01',NULL),(6,'纸尿裤XL108',1,96,'2019-01-08 21:01:15',NULL),(7,'均吸S180',1,120,'2019-01-08 21:01:42',NULL),(8,'均吸M144',1,203,'2019-01-08 21:01:54',NULL),(9,'均吸L120',1,252,'2019-01-08 21:02:07',NULL),(10,'均吸XL96',1,356,'2019-01-08 21:02:20',NULL),(11,'润肤纸60抽*60包（整箱）',2,99,'2019-01-08 21:17:26',NULL),(12,'润肤纸60抽*30包（整箱）',2,132,'2019-01-08 21:17:38',NULL),(13,'润肤纸60抽*15包',2,200,'2019-01-08 21:17:56',NULL),(14,'润肤纸60抽*1包',2,500,'2019-01-08 21:18:08',NULL),(15,'润肤纸130抽*3包',2,230,'2019-01-08 21:18:22',NULL),(16,'润肤纸130抽*6包',2,520,'2019-01-08 21:18:31',NULL),(17,'润肤纸40抽*15包',2,53,'2019-01-08 21:18:43',NULL),(18,'润肤纸40抽*45包（整箱）',2,152,'2019-01-08 21:19:00',NULL),(19,'组合装',3,999,'2019-01-08 21:26:30',NULL),(20,'240ml奶瓶AA71',4,566,'2019-01-08 21:35:11',NULL),(21,'160ml奶瓶AA73',4,325,'2019-01-08 21:35:22',NULL),(22,'卡其色双向旗舰版',5,66,'2019-01-08 21:42:55',NULL),(23,'宝石红双向旗舰版',5,50,'2019-01-08 21:43:05',NULL),(24,'深紫色双向旗舰版',5,120,'2019-01-08 21:43:23',NULL),(25,'芭比粉彩管旗舰版',5,120,'2019-01-08 21:43:44',NULL),(26,'对接长颈鹿至尊款+棉被套装+椰棕床垫+冰丝凉席',6,66,'2019-01-08 21:50:50',NULL),(27,'对接狮子标准款',6,120,'2019-01-08 21:51:04',NULL),(28,'对接长颈鹿标准款',6,230,'2019-01-08 21:51:14',NULL);

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) NOT NULL,
  `nick_name` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `ture_name` varchar(64) DEFAULT NULL,
  `id_card` varchar(32) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `createime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'祝飞鸿','鸿小鸿','123456','祝飞鸿','522321199402287335',NULL,NULL,'tjpu_feihong@163.com',15902225075,'2019-01-08 20:37:09',NULL);

#
# Structure for table "grade"
#

DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `grade_num` int(1) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `FK_Relationship_12` (`goods_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `FK_Relationship_12` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "grade"
#


#
# Structure for table "cart"
#

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `gooditem_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goods_num` int(11) NOT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FK_Reference_10` (`user_id`),
  KEY `FK_Relationship_15` (`goods_id`),
  KEY `gooditem_id` (`gooditem_id`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_Relationship_15` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`gooditem_id`) REFERENCES `goodsitem` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "cart"
#

INSERT INTO `cart` VALUES (1,1,4,1,1,'2019-01-08 22:08:00',1546956496),(2,6,26,1,1,'2019-01-08 22:22:08',1546957347);

#
# Structure for table "address"
#

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `detial` varchar(500) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `FK_Reference_6` (`user_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "address"
#

INSERT INTO `address` VALUES (1,1,'天津市','天津市','西青区','天津工业大学软件园','祝飞鸿','15902225075','2019-01-08 21:52:54',NULL),(2,1,'贵州省','黔西南布依族苗族自治州','兴义市','猪场坪乡丫溪田村大坪子组','祝飞鸿','18224927357','2019-01-08 21:59:15',NULL);

#
# Structure for table "gorder"
#

DROP TABLE IF EXISTS `gorder`;
CREATE TABLE `gorder` (
  `gorder_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` float(32,0) DEFAULT NULL,
  `gorder_state` int(11) NOT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`gorder_id`),
  KEY `FK_Reference_16` (`user_id`),
  KEY `FK_Reference_7` (`address_id`),
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "gorder"
#

INSERT INTO `gorder` VALUES (1,1,1,378,3,'2019-01-08 22:08:16',NULL),(2,1,1,2796,0,'2019-01-08 22:22:27',NULL);

#
# Structure for table "orderdetial"
#

DROP TABLE IF EXISTS `orderdetial`;
CREATE TABLE `orderdetial` (
  `goods_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `gorder_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_order_id`),
  KEY `FK_Relationship_18` (`goods_id`) USING BTREE,
  KEY `FK_Relationship_8` (`gorder_id`) USING BTREE,
  CONSTRAINT `FK_Relationship_18` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `FK_Relationship_8` FOREIGN KEY (`gorder_id`) REFERENCES `gorder` (`gorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "orderdetial"
#

INSERT INTO `orderdetial` VALUES (1,1,1,2,189.00,'2019-01-08 22:08:16',NULL),(2,2,6,4,699.00,'2019-01-08 22:22:27',NULL);
