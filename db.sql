/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanzutuanpingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanzutuanpingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanzutuanpingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiaoyuanzutuanpingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xiaoyuanzutuanpingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xiaoyuanzutuanpingtai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-05-11 14:02:56'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-05-11 14:02:56'),(3,'xueyuan_types','学院',1,'学院1',NULL,NULL,'2022-05-11 14:02:56'),(4,'xueyuan_types','学院',2,'学院2',NULL,NULL,'2022-05-11 14:02:56'),(5,'zhuanye_types','专业',1,'专业1',NULL,NULL,'2022-05-11 14:02:56'),(6,'zhuanye_types','专业',2,'专业2',NULL,NULL,'2022-05-11 14:02:56'),(7,'banji_types','班级',1,'班级1',NULL,NULL,'2022-05-11 14:02:56'),(8,'banji_types','班级',2,'班级2',NULL,NULL,'2022-05-11 14:02:56'),(9,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-11 14:02:56'),(10,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-11 14:02:56'),(11,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-05-11 14:02:56'),(12,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-05-11 14:02:56'),(13,'huodong_types','组团活动类型',1,'组团活动类型1',NULL,NULL,'2022-05-11 14:02:56'),(14,'huodong_types','组团活动类型',2,'组团活动类型2',NULL,NULL,'2022-05-11 14:02:56'),(15,'huodong_types','组团活动类型',3,'组团活动类型3',NULL,NULL,'2022-05-11 14:02:56'),(16,'huodong_types','组团活动类型',4,'组团活动类型4',NULL,NULL,'2022-05-11 14:02:56'),(17,'huodong_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-05-11 14:02:56'),(18,'huodong_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-05-11 14:02:56'),(19,'huodong_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-05-11 14:02:56'),(20,'huodong_order_yesno_types','报名状态',1,'待审核',NULL,NULL,'2022-05-11 14:02:56'),(21,'huodong_order_yesno_types','报名状态',2,'同意参与',NULL,NULL,'2022-05-11 14:02:56'),(22,'huodong_order_yesno_types','报名状态',3,'拒绝参与',NULL,NULL,'2022-05-11 14:02:56'),(23,'huodong_types','组团活动类型',5,'组团活动类型5',NULL,'','2022-05-11 14:42:01');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/xiaoyuanzutuanpingtai/upload/gonggao1.jpg',2,'2022-05-11 14:03:28','公告详情1','2022-05-11 14:03:28'),(2,'公告名称2','http://localhost:8080/xiaoyuanzutuanpingtai/upload/gonggao2.jpg',1,'2022-05-11 14:03:28','公告详情2','2022-05-11 14:03:28'),(3,'公告名称3','http://localhost:8080/xiaoyuanzutuanpingtai/upload/gonggao3.jpg',1,'2022-05-11 14:03:28','公告详情3','2022-05-11 14:03:28'),(4,'公告名称4','http://localhost:8080/xiaoyuanzutuanpingtai/upload/gonggao4.jpg',1,'2022-05-11 14:03:28','公告详情4','2022-05-11 14:03:28'),(5,'公告名称5','http://localhost:8080/xiaoyuanzutuanpingtai/upload/gonggao5.jpg',2,'2022-05-11 14:03:28','公告详情5','2022-05-11 14:03:28'),(6,'公告111','http://localhost:8080/xiaoyuanzutuanpingtai/upload/1652251372063.jpg',1,'2022-05-11 14:42:55','<p>的胜多负少</p>','2022-05-11 14:42:55');

/*Table structure for table `huodong` */

DROP TABLE IF EXISTS `huodong`;

CREATE TABLE `huodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodongguanliyuan_id` int(11) DEFAULT NULL COMMENT '活动管理员',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '组团活动名称  Search111 ',
  `huodong_uuid_number` varchar(200) DEFAULT NULL COMMENT '组团活动编号  Search111 ',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '组团活动照片',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '活动开始时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '活动结束时间',
  `huodong_address` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodong_types` int(11) DEFAULT NULL COMMENT '组团活动类型 Search111',
  `huodong_zuida_number` int(11) DEFAULT NULL COMMENT '最大参与人数',
  `huodong_clicknum` int(11) DEFAULT NULL COMMENT '活动热度 ',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞数量',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩数量',
  `huodong_content` text COMMENT '组团活动详细介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `huodong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='组团活动';

/*Data for the table `huodong` */

insert  into `huodong`(`id`,`huodongguanliyuan_id`,`huodong_name`,`huodong_uuid_number`,`huodong_photo`,`kaishi_time`,`jieshu_time`,`huodong_address`,`huodong_types`,`huodong_zuida_number`,`huodong_clicknum`,`zan_number`,`cai_number`,`huodong_content`,`shangxia_types`,`huodong_delete`,`create_time`) values (1,1,'组团活动名称1','165224900862059','http://localhost:8080/xiaoyuanzutuanpingtai/upload/huodong1.jpg','2022-05-11 14:03:28','2022-05-11 14:03:28','活动地点1',3,313,330,226,300,'组团活动详细介绍1',1,1,'2022-05-11 14:03:28'),(2,3,'组团活动名称2','165224900862114','http://localhost:8080/xiaoyuanzutuanpingtai/upload/huodong2.jpg','2022-05-11 14:03:28','2022-05-11 14:03:28','活动地点2',2,147,418,225,271,'组团活动详细介绍2',1,1,'2022-05-11 14:03:28'),(3,2,'组团活动名称3','165224900862198','http://localhost:8080/xiaoyuanzutuanpingtai/upload/huodong3.jpg','2022-05-11 14:03:28','2022-05-11 14:03:28','活动地点3',4,269,142,439,332,'组团活动详细介绍3',1,1,'2022-05-11 14:03:28'),(4,3,'组团活动名称4','165224900862189','http://localhost:8080/xiaoyuanzutuanpingtai/upload/huodong4.jpg','2022-05-11 14:03:28','2022-05-11 14:03:28','活动地点4',1,457,170,283,496,'组团活动详细介绍4',1,1,'2022-05-11 14:03:28'),(5,3,'组团活动名称5','165224900862190','http://localhost:8080/xiaoyuanzutuanpingtai/upload/huodong5.jpg','2022-05-11 14:03:28','2022-05-11 14:03:28','活动地点5',4,110,39,355,390,'组团活动详细介绍5',1,1,'2022-05-11 14:03:28'),(6,1,'胡哦哦丁11','1652251379514','http://localhost:8080/xiaoyuanzutuanpingtai/upload/1652251389815.jpg','2022-05-20 00:00:00','2022-05-28 00:00:00','地点111',3,30,1,0,0,'<p>非法拘禁</p>',1,1,'2022-05-11 14:43:22');

/*Table structure for table `huodong_collection` */

DROP TABLE IF EXISTS `huodong_collection`;

CREATE TABLE `huodong_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int(11) DEFAULT NULL COMMENT '组团活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huodong_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='组团活动收藏';

/*Data for the table `huodong_collection` */

insert  into `huodong_collection`(`id`,`huodong_id`,`yonghu_id`,`huodong_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-05-11 14:03:28','2022-05-11 14:03:28'),(2,2,3,1,'2022-05-11 14:03:28','2022-05-11 14:03:28'),(3,3,1,1,'2022-05-11 14:03:28','2022-05-11 14:03:28'),(4,4,3,1,'2022-05-11 14:03:28','2022-05-11 14:03:28'),(5,5,3,1,'2022-05-11 14:03:28','2022-05-11 14:03:28');

/*Table structure for table `huodong_liuyan` */

DROP TABLE IF EXISTS `huodong_liuyan`;

CREATE TABLE `huodong_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int(11) DEFAULT NULL COMMENT '组团活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huodong_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='组团活动留言';

/*Data for the table `huodong_liuyan` */

insert  into `huodong_liuyan`(`id`,`huodong_id`,`yonghu_id`,`huodong_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2022-05-11 14:03:28','回复信息1','2022-05-11 14:03:28','2022-05-11 14:03:28'),(2,2,3,'留言内容2','2022-05-11 14:03:28','回复信息2','2022-05-11 14:03:28','2022-05-11 14:03:28'),(3,3,2,'留言内容3','2022-05-11 14:03:28','回复信息3','2022-05-11 14:03:28','2022-05-11 14:03:28'),(4,4,2,'留言内容4','2022-05-11 14:03:28','回复信息4','2022-05-11 14:03:28','2022-05-11 14:03:28'),(5,5,3,'留言内容5','2022-05-11 14:03:28','回复信息5','2022-05-11 14:03:28','2022-05-11 14:03:28'),(6,1,1,'22222','2022-05-11 14:37:16',NULL,NULL,'2022-05-11 14:37:16'),(7,1,1,'待审核','2022-05-11 14:37:33','是否合适','2022-05-11 14:43:33','2022-05-11 14:37:33');

/*Table structure for table `huodong_order` */

DROP TABLE IF EXISTS `huodong_order`;

CREATE TABLE `huodong_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '申请编号 Search111 ',
  `huodong_id` int(11) DEFAULT NULL COMMENT '组团活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人姓名',
  `lianxiren_phone` varchar(200) DEFAULT NULL COMMENT '联系人手机号',
  `huodong_order_content` text COMMENT '加入活动的理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `huodong_order_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `huodong_order_yesno_text` text COMMENT '审核意见 Search111 ',
  `huodong_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='组团活动报名';

/*Data for the table `huodong_order` */

insert  into `huodong_order`(`id`,`huodong_order_uuid_number`,`huodong_id`,`yonghu_id`,`lianxiren_name`,`lianxiren_phone`,`huodong_order_content`,`insert_time`,`huodong_order_yesno_types`,`huodong_order_yesno_text`,`huodong_order_shenhe_time`,`create_time`) values (1,'1652250471168',1,1,'张三','17703785858','发都是水电费很费劲和','2022-05-11 14:27:51',2,'风发动机','2022-05-11 14:43:44','2022-05-11 14:27:51'),(2,'1652251007761',2,1,'王五','17798989898','的是否商家','2022-05-11 14:36:48',1,NULL,NULL,'2022-05-11 14:36:48'),(3,'1652251086322',3,1,'赵六','17798986969','方法和韩国','2022-05-11 14:38:06',1,NULL,NULL,'2022-05-11 14:38:06');

/*Table structure for table `huodongguanliyuan` */

DROP TABLE IF EXISTS `huodongguanliyuan`;

CREATE TABLE `huodongguanliyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `huodongguanliyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '活动管理员编号 Search111 ',
  `huodongguanliyuan_name` varchar(200) DEFAULT NULL COMMENT '活动管理员姓名 Search111 ',
  `huodongguanliyuan_phone` varchar(200) DEFAULT NULL COMMENT '活动管理员手机号',
  `huodongguanliyuan_id_number` varchar(200) DEFAULT NULL COMMENT '活动管理员身份证号',
  `huodongguanliyuan_photo` varchar(200) DEFAULT NULL COMMENT '活动管理员头像',
  `huodongguanliyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='活动管理员';

/*Data for the table `huodongguanliyuan` */

insert  into `huodongguanliyuan`(`id`,`username`,`password`,`huodongguanliyuan_uuid_number`,`huodongguanliyuan_name`,`huodongguanliyuan_phone`,`huodongguanliyuan_id_number`,`huodongguanliyuan_photo`,`huodongguanliyuan_email`,`sex_types`,`create_time`) values (1,'a1','123456','165224900863415','活动管理员姓名1','17703786901','410224199610232001','http://localhost:8080/xiaoyuanzutuanpingtai/upload/huodongguanliyuan1.jpg','1@qq.com',1,'2022-05-11 14:03:28'),(2,'a2','123456','165224900863561','活动管理员姓名2','17703786902','410224199610232002','http://localhost:8080/xiaoyuanzutuanpingtai/upload/huodongguanliyuan2.jpg','2@qq.com',1,'2022-05-11 14:03:28'),(3,'a3','123456','165224900863594','活动管理员姓名3','17703786903','410224199610232003','http://localhost:8080/xiaoyuanzutuanpingtai/upload/huodongguanliyuan3.jpg','3@qq.com',2,'2022-05-11 14:03:28');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','9hs3cgi337nm4c6kdge6hl9x6x7b4nfo','2022-05-11 14:01:47','2022-05-11 15:41:50'),(2,1,'a1','huodongguanliyuan','活动管理员','a1ms1bn8hhfgngk58eyyawlm4kxhp0d5','2022-05-11 14:03:54','2022-05-11 15:42:37'),(3,1,'a1','yonghu','用户','hokhc6m49dqfiagr05recv3mbc996cqy','2022-05-11 14:41:21','2022-05-11 15:41:22');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xueyuan_types` int(11) DEFAULT NULL COMMENT '学院 Search111 ',
  `zhuanye_types` int(11) DEFAULT NULL COMMENT '专业 Search111 ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`yonghu_email`,`sex_types`,`xueyuan_types`,`zhuanye_types`,`banji_types`,`create_time`) values (1,'a1','123456','165224900863711','用户姓名1','17703786901','410224199610232001','http://localhost:8080/xiaoyuanzutuanpingtai/upload/yonghu1.jpg','1@qq.com',1,1,2,2,'2022-05-11 14:03:28'),(2,'a2','123456','165224900863772','用户姓名2','17703786902','410224199610232002','http://localhost:8080/xiaoyuanzutuanpingtai/upload/yonghu2.jpg','2@qq.com',2,1,2,2,'2022-05-11 14:03:28'),(3,'a3','123456','165224900863740','用户姓名3','17703786903','410224199610232003','http://localhost:8080/xiaoyuanzutuanpingtai/upload/yonghu3.jpg','3@qq.com',1,2,2,2,'2022-05-11 14:03:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
