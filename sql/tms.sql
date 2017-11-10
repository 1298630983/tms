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

/*Data for the table `base_dict` */

insert  into `base_dict`(`dict_id`,`dict_type_code`,`dict_type_name`,`dict_item_name`,`dict_item_code`,`dict_sort`,`dict_enable`,`dict_memo`) values ('1','001','客户行业','教育培训 ',NULL,1,'1',NULL),('10','010','导游等级','初级',NULL,1,'1',NULL),('11','010','导游等级','中级',NULL,2,'1',NULL),('12','010','导游等级','高级',NULL,3,'1',NULL),('13','011','导游语种','普通话',NULL,1,'1',NULL),('14','011','导游语种','英语',NULL,2,'1',NULL),('15','012','线路类型','国内',NULL,1,'1',NULL),('16','012','线路类型','国际',NULL,2,'1',NULL),('17','013','目的地','苏州',NULL,1,'1',NULL),('18','013','目的地','无锡',NULL,2,'1',NULL),('19','013','目的地','日本',NULL,3,'1',NULL),('2','001','客户行业','电子商务',NULL,2,'1',NULL),('20','005','客户状态','成功客户',NULL,3,'1',NULL),('21','005','客户状态','无效客户',NULL,4,'1',NULL),('22','006','客户级别','普通客户',NULL,1,'1',NULL),('23','006','客户级别','VIP客户',NULL,2,'1',NULL),('24','007','商机状态','意向客户',NULL,1,'1',NULL),('25','007','商机状态','初步沟通',NULL,2,'1',NULL),('26','007','商机状态','深度沟通',NULL,3,'1',NULL),('27','007','商机状态','签订合同',NULL,4,'1',NULL),('3','001','客户行业','对外贸易',NULL,3,'1',NULL),('30','008','商机类型','新业务',NULL,1,'1',NULL),('31','008','商机类型','现有业务',NULL,2,'1',NULL),('32','009','商机来源','电话营销',NULL,1,'1',NULL),('33','009','商机来源','网络营销',NULL,2,'1',NULL),('34','009','商机来源','推广活动',NULL,3,'1',NULL),('4','001','客户行业','酒店旅游',NULL,4,'1',NULL),('40','014','用户部门','技术部',NULL,1,'1',NULL),('41','014','用户部门','人事部',NULL,2,'1',NULL),('42','014','用户部门','销售部',NULL,3,'1',NULL),('43','015','用户级别','经理',NULL,1,'1',NULL),('44','015','用户级别','技术管理员',NULL,2,'1',NULL),('45','015','用户级别','导游',NULL,3,'1',NULL),('5','001','客户行业','房地产',NULL,5,'1',NULL),('6','002','客户信息来源','电话营销',NULL,1,'1',NULL),('7','002','客户信息来源','网络营销',NULL,2,'1',NULL),('8','003','公司性质','合资',NULL,1,'1',NULL),('9','003','公司性质','国企',NULL,2,'1',NULL);

/*Data for the table `customer` */

insert  into `customer`(`cust_id`,`cust_name`,`cust_user_id`,`cust_create_id`,`cust_source`,`cust_industry`,`cust_level`,`cust_linkman`,`cust_phone`,`cust_mobile`,`cust_zipcode`,`cust_address`,`cust_createtime`) values (29,'江松',NULL,NULL,'7','1','23','任盈盈','0108888886','13888888886','6123456','北京三里桥6','2017-11-08 22:00:53'),(152,'李彦宏',NULL,NULL,'7','1','23','马化腾','0108888887','13888888888','123456','北京三里桥','2017-11-08 21:59:59'),(154,'马化腾',NULL,NULL,'6','5','22','马化腾','0108888887','13888888888','123456','北京三里桥','2017-11-08 22:00:22'),(155,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:46'),(156,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:46'),(157,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:46'),(158,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:47'),(159,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:47'),(160,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:47'),(161,'马云',NULL,NULL,'6','2','22','马化腾','0108888887','13888888888','123456','北京三里桥','2016-04-08 16:32:47'),(164,'jason',NULL,NULL,'6','1','22','江松','88775668','13205170031','224000','苏州','2017-11-07 22:13:15'),(165,'22',NULL,NULL,'6','1','22','','','','','','2017-11-08 19:04:39');

/*Data for the table `guide` */

insert  into `guide`(`guide_id`,`guide_name`,`guide_level`,`guide_language`,`guide_phone`,`guide_mobile`,`guide_address`,`guide_createtime`) values (8,'江松','12','14','13205170031','88775668','苏州大学','2017-11-08 19:25:10'),(9,'朱雪岩','11','13','18896825070','88775669','苏州大学','2017-11-08 21:56:28');

/*Data for the table `line` */

insert  into `line`(`line_id`,`line_name`,`line_type`,`line_des`,`line_days`,`line_number`,`line_createtime`) values (1,'太湖一日游','15','18','1','3',NULL),(2,'日本游','16','19','2','5','2017-11-09 01:09:16');

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_pwd`,`user_dep`,`user_level`,`user_doc`,`user_mobile`,`user_createtime`) values (1,'jasonos','123','40','44','320911199409212812','13205170031','2017-11-09 15:50:54'),(2,'1','1',NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
