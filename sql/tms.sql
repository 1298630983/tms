/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.18-log : Database - tms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tms`;

/*Table structure for table `base_dict` */

DROP TABLE IF EXISTS `base_dict`;

CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(64) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(64) NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) DEFAULT NULL COMMENT '数据字典项目代码(可为空)',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_dict` */

insert  into `base_dict`(`dict_id`,`dict_type_code`,`dict_type_name`,`dict_item_name`,`dict_item_code`,`dict_sort`,`dict_enable`,`dict_memo`) values ('1','001','客户行业','教育培训 ',NULL,1,'1',NULL),('10','010','导游等级','初级',NULL,1,'1',NULL),('11','010','导游等级','中级',NULL,2,'1',NULL),('12','010','导游等级','高级',NULL,3,'1',NULL),('13','011','导游语种','普通话',NULL,1,'1',NULL),('14','011','导游语种','英语',NULL,2,'1',NULL),('15','012','线路类型','国内',NULL,1,'1',NULL),('16','012','线路类型','国际',NULL,2,'1',NULL),('17','013','目的地','苏州',NULL,1,'1',NULL),('18','013','目的地','无锡',NULL,2,'1',NULL),('19','013','目的地','日本',NULL,3,'1',NULL),('2','001','客户行业','电子商务',NULL,2,'1',NULL),('20','005','客户状态','成功客户',NULL,3,'1',NULL),('21','005','客户状态','无效客户',NULL,4,'1',NULL),('22','006','客户级别','普通客户',NULL,1,'1',NULL),('23','006','客户级别','VIP客户',NULL,2,'1',NULL),('24','007','商机状态','意向客户',NULL,1,'1',NULL),('25','007','商机状态','初步沟通',NULL,2,'1',NULL),('26','007','商机状态','深度沟通',NULL,3,'1',NULL),('27','007','商机状态','签订合同',NULL,4,'1',NULL),('3','001','客户行业','对外贸易',NULL,3,'1',NULL),('30','008','商机类型','新业务',NULL,1,'1',NULL),('31','008','商机类型','现有业务',NULL,2,'1',NULL),('32','009','商机来源','电话营销',NULL,1,'1',NULL),('33','009','商机来源','网络营销',NULL,2,'1',NULL),('34','009','商机来源','推广活动',NULL,3,'1',NULL),('4','001','客户行业','酒店旅游',NULL,4,'1',NULL),('40','014','用户部门','技术部',NULL,1,'1',NULL),('41','014','用户部门','人事部',NULL,2,'1',NULL),('42','014','用户部门','销售部',NULL,3,'1',NULL),('43','015','用户级别','经理',NULL,1,'1',NULL),('44','015','用户级别','技术管理员',NULL,2,'1',NULL),('45','015','用户级别','导游',NULL,3,'1',NULL),('5','001','客户行业','房地产',NULL,5,'1',NULL),('6','002','客户信息来源','电话营销',NULL,1,'1',NULL),('7','002','客户信息来源','网络营销',NULL,2,'1',NULL),('8','003','公司性质','合资',NULL,1,'1',NULL),('9','003','公司性质','国企',NULL,2,'1',NULL);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cust_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(32) NOT NULL COMMENT '客户名称(公司名称)',
  `cust_user_id` bigint(32) DEFAULT NULL COMMENT '负责人id',
  `cust_create_id` bigint(32) DEFAULT NULL COMMENT '创建人id',
  `cust_source` varchar(32) DEFAULT NULL COMMENT '客户信息来源',
  `cust_industry` varchar(32) DEFAULT NULL COMMENT '客户所属行业',
  `cust_level` varchar(32) DEFAULT NULL COMMENT '客户级别',
  `cust_linkman` varchar(64) DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) DEFAULT NULL COMMENT '移动电话',
  `cust_zipcode` varchar(10) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  `cust_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cust_id`),
  KEY `FK_cst_customer_source` (`cust_source`),
  KEY `FK_cst_customer_industry` (`cust_industry`),
  KEY `FK_cst_customer_level` (`cust_level`),
  KEY `FK_cst_customer_user_id` (`cust_user_id`),
  KEY `FK_cst_customer_create_id` (`cust_create_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`cust_id`,`cust_name`,`cust_user_id`,`cust_create_id`,`cust_source`,`cust_industry`,`cust_level`,`cust_linkman`,`cust_phone`,`cust_mobile`,`cust_zipcode`,`cust_address`,`cust_createtime`) values (29,'江松',NULL,NULL,'7','1','23','任盈盈','0108888886','13888888886','6123456','北京三里桥6','2017-11-08 22:00:53'),(152,'李彦宏',NULL,NULL,'7','1','23','马化腾','0108888887','13888888888','123456','北京三里桥','2017-11-08 21:59:59'),(154,'马化腾',NULL,NULL,'6','5','22','马化腾','0108888887','13888888888','123456','北京三里桥','2017-11-08 22:00:22'),(155,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:46'),(156,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:46'),(157,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:46'),(158,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:47'),(159,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:47'),(160,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:47'),(161,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:47'),(164,'jason',NULL,NULL,'6','1','22','江松','88775668','13205170031','224000','苏州','2017-11-07 22:13:15'),(165,'22',NULL,NULL,'6','1','22','','','','','','2017-11-08 19:04:39');

/*Table structure for table `guide` */

DROP TABLE IF EXISTS `guide`;

CREATE TABLE `guide` (
  `guide_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '导游编号(主键)',
  `guide_name` varchar(32) NOT NULL COMMENT '导游姓名',
  `guide_level` varchar(32) DEFAULT NULL COMMENT '导游等级',
  `guide_language` varchar(32) DEFAULT NULL COMMENT '导游语种',
  `guide_phone` varchar(64) DEFAULT NULL COMMENT '固定电话',
  `guide_mobile` varchar(16) DEFAULT NULL COMMENT '手机',
  `guide_address` varchar(100) DEFAULT NULL COMMENT '住址',
  `guide_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`guide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `guide` */

insert  into `guide`(`guide_id`,`guide_name`,`guide_level`,`guide_language`,`guide_phone`,`guide_mobile`,`guide_address`,`guide_createtime`) values (8,'江松','12','14','13205170031','88775668','苏州大学','2017-11-08 19:25:10'),(9,'朱雪岩','11','13','18896825070','88775669','苏州大学','2017-11-08 21:56:28');

/*Table structure for table `line` */

DROP TABLE IF EXISTS `line`;

CREATE TABLE `line` (
  `line_id` bigint(32) NOT NULL AUTO_INCREMENT,
  `line_name` varchar(32) NOT NULL,
  `line_type` varchar(32) DEFAULT NULL,
  `line_des` varchar(32) DEFAULT NULL,
  `line_days` varchar(3) DEFAULT NULL,
  `line_number` varchar(3) DEFAULT NULL,
  `line_createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `line` */

insert  into `line`(`line_id`,`line_name`,`line_type`,`line_des`,`line_days`,`line_number`,`line_createtime`) values (1,'太湖一日游','15','18','1','3',NULL),(2,'日本游','16','19','2','5','2017-11-09 01:09:16');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '登陆ID',
  `user_name` varchar(32) NOT NULL COMMENT '用户名',
  `user_pwd` varchar(32) NOT NULL COMMENT '密码',
  `user_dep` varchar(16) DEFAULT NULL COMMENT '用户部门',
  `user_level` varchar(16) DEFAULT NULL COMMENT '用户级别',
  `user_doc` varchar(32) DEFAULT NULL COMMENT '身份证',
  `user_mobile` varchar(16) DEFAULT NULL COMMENT '手机号',
  `user_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_pwd`,`user_dep`,`user_level`,`user_doc`,`user_mobile`,`user_createtime`) values (1,'jasonos','123','40','44','320911199409212812','13205170031','2017-11-09 15:50:54'),(2,'1','1',NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
