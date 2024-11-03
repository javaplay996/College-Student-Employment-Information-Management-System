/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - daxuejiuyexinxi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daxuejiuyexinxi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `daxuejiuyexinxi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/daxuejiuyexinxi/upload/1612608992655.jpg'),(2,'picture2','http://localhost:8080/daxuejiuyexinxi/upload/1612608998686.jpg'),(3,'picture3','http://localhost:8080/daxuejiuyexinxi/upload/1612609009615.jpg'),(6,'homepage','');

/*Table structure for table `discussqiyexinxi` */

DROP TABLE IF EXISTS `discussqiyexinxi`;

CREATE TABLE `discussqiyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617260411019 DEFAULT CHARSET=utf8 COMMENT='企业信息评论表';

/*Data for the table `discussqiyexinxi` */

insert  into `discussqiyexinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (131,'2021-04-01 18:52:20',1,1,'评论内容1','回复内容1'),(132,'2021-04-01 18:52:20',2,2,'评论内容2','回复内容2'),(133,'2021-04-01 18:52:20',3,3,'评论内容3','回复内容3'),(134,'2021-04-01 18:52:20',4,4,'评论内容4','回复内容4'),(135,'2021-04-01 18:52:20',5,5,'评论内容5','回复内容5'),(136,'2021-04-01 18:52:20',6,6,'评论内容6','回复内容6'),(1617260411018,'2021-04-01 15:00:10',1617259841385,1617260330936,'123',NULL);

/*Table structure for table `discusszhaopinxinxi` */

DROP TABLE IF EXISTS `discusszhaopinxinxi`;

CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='招聘信息评论表';

/*Data for the table `discusszhaopinxinxi` */

insert  into `discusszhaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (141,'2021-04-01 18:52:20',1,1,'评论内容1','回复内容1'),(142,'2021-04-01 18:52:20',2,2,'评论内容2','回复内容2'),(143,'2021-04-01 18:52:20',3,3,'评论内容3','回复内容3'),(144,'2021-04-01 18:52:20',4,4,'评论内容4','回复内容4'),(145,'2021-04-01 18:52:20',5,5,'评论内容5','回复内容5'),(146,'2021-04-01 18:52:20',6,6,'评论内容6','回复内容6');

/*Table structure for table `discusszhaopinzixun` */

DROP TABLE IF EXISTS `discusszhaopinzixun`;

CREATE TABLE `discusszhaopinzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='招聘资讯评论表';

/*Data for the table `discusszhaopinzixun` */

insert  into `discusszhaopinzixun`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-04-01 18:52:20',1,1,'评论内容1','回复内容1'),(122,'2021-04-01 18:52:20',2,2,'评论内容2','回复内容2'),(123,'2021-04-01 18:52:20',3,3,'评论内容3','回复内容3'),(124,'2021-04-01 18:52:20',4,4,'评论内容4','回复内容4'),(125,'2021-04-01 18:52:20',5,5,'评论内容5','回复内容5'),(126,'2021-04-01 18:52:20',6,6,'评论内容6','回复内容6');

/*Table structure for table `gerenjianli` */

DROP TABLE IF EXISTS `gerenjianli`;

CREATE TABLE `gerenjianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoyujingli` varchar(200) DEFAULT NULL COMMENT '教育经历',
  `gongzuojingli` longtext COMMENT '工作经历',
  `gongzuoyeji` longtext COMMENT '工作业绩',
  `jineng` varchar(200) DEFAULT NULL COMMENT '技能',
  `ziwojieshao` varchar(200) DEFAULT NULL COMMENT '自我介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617260377158 DEFAULT CHARSET=utf8 COMMENT='个人简历';

/*Data for the table `gerenjianli` */

insert  into `gerenjianli`(`id`,`addtime`,`yonghuming`,`xingming`,`zhaopian`,`shouji`,`youxiang`,`jiaoyujingli`,`gongzuojingli`,`gongzuoyeji`,`jineng`,`ziwojieshao`) values (51,'2021-04-01 18:52:20','用户名1','姓名1','http://localhost:8080/daxuejiuyexinxi/upload/gerenjianli_zhaopian1.jpg','手机1','邮箱1','教育经历1','工作经历1','工作业绩1','技能1','自我介绍1'),(52,'2021-04-01 18:52:20','用户名2','姓名2','http://localhost:8080/daxuejiuyexinxi/upload/gerenjianli_zhaopian2.jpg','手机2','邮箱2','教育经历2','工作经历2','工作业绩2','技能2','自我介绍2'),(53,'2021-04-01 18:52:20','用户名3','姓名3','http://localhost:8080/daxuejiuyexinxi/upload/gerenjianli_zhaopian3.jpg','手机3','邮箱3','教育经历3','工作经历3','工作业绩3','技能3','自我介绍3'),(54,'2021-04-01 18:52:20','用户名4','姓名4','http://localhost:8080/daxuejiuyexinxi/upload/gerenjianli_zhaopian4.jpg','手机4','邮箱4','教育经历4','工作经历4','工作业绩4','技能4','自我介绍4'),(55,'2021-04-01 18:52:20','用户名5','姓名5','http://localhost:8080/daxuejiuyexinxi/upload/gerenjianli_zhaopian5.jpg','手机5','邮箱5','教育经历5','工作经历5','工作业绩5','技能5','自我介绍5'),(56,'2021-04-01 18:52:20','用户名6','姓名6','http://localhost:8080/daxuejiuyexinxi/upload/gerenjianli_zhaopian6.jpg','手机6','邮箱6','教育经历6','工作经历6','工作业绩6','技能6','自我介绍6'),(1617260377157,'2021-04-01 14:59:36','333','333','http://localhost:8080/daxuejiuyexinxi/upload/1617260351223.jpg','333','333@qq.com','狗子学院','工作经历1','工作业绩1\r\n','技能1','自我介绍1');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `shenhe` int(11) DEFAULT '0' COMMENT '审核',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617259637260 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`touxiang`,`lianxiren`,`lianxidianhua`,`qiyeyouxiang`,`qiyedizhi`,`shenhe`) values (31,'2021-04-01 18:52:20','企业1','123456','企业名称1','http://localhost:8080/daxuejiuyexinxi/upload/qiye_touxiang1.jpg','联系人1','13823888881','773890001@qq.com','企业地址1',1),(32,'2021-04-01 18:52:20','企业2','123456','企业名称2','http://localhost:8080/daxuejiuyexinxi/upload/qiye_touxiang2.jpg','联系人2','13823888882','773890002@qq.com','企业地址2',1),(33,'2021-04-01 18:52:20','企业3','123456','企业名称3','http://localhost:8080/daxuejiuyexinxi/upload/qiye_touxiang3.jpg','联系人3','13823888883','773890003@qq.com','企业地址3',0),(34,'2021-04-01 18:52:20','企业4','123456','企业名称4','http://localhost:8080/daxuejiuyexinxi/upload/qiye_touxiang4.jpg','联系人4','13823888884','773890004@qq.com','企业地址4',0),(35,'2021-04-01 18:52:20','企业5','123456','企业名称5','http://localhost:8080/daxuejiuyexinxi/upload/qiye_touxiang5.jpg','联系人5','13823888885','773890005@qq.com','企业地址5',0),(36,'2021-04-01 18:52:20','企业6','123456','企业名称6','http://localhost:8080/daxuejiuyexinxi/upload/qiye_touxiang6.jpg','联系人6','13823888886','773890006@qq.com','企业地址6',0),(1617259637259,'2021-04-01 14:47:17','111','111','111','http://localhost:8080/daxuejiuyexinxi/upload/1617259813571.jpg','111','11111111111','111@qq.com','1111',1);

/*Table structure for table `qiyexinxi` */

DROP TABLE IF EXISTS `qiyexinxi`;

CREATE TABLE `qiyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiyeleixing` varchar(200) DEFAULT NULL COMMENT '企业类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuangongrenshu` varchar(200) DEFAULT NULL COMMENT '员工人数',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `qiyejieshao` longtext COMMENT '企业介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617259841386 DEFAULT CHARSET=utf8 COMMENT='企业信息';

/*Data for the table `qiyexinxi` */

insert  into `qiyexinxi`(`id`,`addtime`,`qiyezhanghao`,`qiyemingcheng`,`qiyeleixing`,`tupian`,`yuangongrenshu`,`lianxiren`,`lianxidianhua`,`qiyeyouxiang`,`qiyejieshao`) values (41,'2021-04-01 18:52:20','企业账号1','企业名称1','国有企业','http://localhost:8080/daxuejiuyexinxi/upload/qiyexinxi_tupian1.jpg','20人以下','联系人1','联系电话1','企业邮箱1','企业介绍1'),(42,'2021-04-01 18:52:20','企业账号2','企业名称2','国有企业','http://localhost:8080/daxuejiuyexinxi/upload/qiyexinxi_tupian2.jpg','20人以下','联系人2','联系电话2','企业邮箱2','企业介绍2'),(43,'2021-04-01 18:52:20','企业账号3','企业名称3','国有企业','http://localhost:8080/daxuejiuyexinxi/upload/qiyexinxi_tupian3.jpg','20人以下','联系人3','联系电话3','企业邮箱3','企业介绍3'),(44,'2021-04-01 18:52:20','企业账号4','企业名称4','国有企业','http://localhost:8080/daxuejiuyexinxi/upload/qiyexinxi_tupian4.jpg','20人以下','联系人4','联系电话4','企业邮箱4','企业介绍4'),(45,'2021-04-01 18:52:20','企业账号5','企业名称5','国有企业','http://localhost:8080/daxuejiuyexinxi/upload/qiyexinxi_tupian5.jpg','20人以下','联系人5','联系电话5','企业邮箱5','企业介绍5'),(46,'2021-04-01 18:52:20','企业账号6','企业名称6','国有企业','http://localhost:8080/daxuejiuyexinxi/upload/qiyexinxi_tupian6.jpg','20人以下','联系人6','联系电话6','企业邮箱6','企业介绍6'),(1617259841385,'2021-04-01 14:50:41','111','菜狗集团111','上市公司','http://localhost:8080/daxuejiuyexinxi/upload/1617259822115.jpg','500人以上','11111','1111111','1111@qq.com','很菜11\r\n');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617260424227 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617260424226,'2021-04-01 15:00:23',1617260330936,1617259841385,'qiyexinxi','菜狗集团111','http://localhost:8080/daxuejiuyexinxi/upload/1617259822115.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,31,'企业1','qiye','企业','1vywfggd1qu7l6jt00lj4rh96g3rmjkt','2021-04-01 18:53:37','2021-04-01 15:38:19'),(2,1,'abo','users','管理员','vzdjr6cs6k8oa8elvo6jhjpvqo3igt5z','2021-04-01 18:54:44','2021-04-01 15:47:28'),(3,1617259637259,'111','qiye','企业','o89sv711hmtsml2jp7f0vum789ruhwvg','2021-04-01 14:50:04','2021-04-01 16:07:13'),(4,1617260330936,'333','yonghu','用户','5r5ioblxjzf1cppkqdsltrbhezy8oehw','2021-04-01 14:58:58','2021-04-01 16:03:54');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-04-01 18:52:20');

/*Table structure for table `xingyelingyu` */

DROP TABLE IF EXISTS `xingyelingyu`;

CREATE TABLE `xingyelingyu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingye` varchar(200) NOT NULL COMMENT '行业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xingye` (`xingye`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='行业领域';

/*Data for the table `xingyelingyu` */

insert  into `xingyelingyu`(`id`,`addtime`,`xingye`) values (71,'2021-04-01 18:52:20','行业1'),(72,'2021-04-01 18:52:20','行业2'),(73,'2021-04-01 18:52:20','行业3'),(74,'2021-04-01 18:52:20','行业4'),(75,'2021-04-01 18:52:20','行业5'),(76,'2021-04-01 18:52:20','行业6');

/*Table structure for table `yingpinxinxi` */

DROP TABLE IF EXISTS `yingpinxinxi`;

CREATE TABLE `yingpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `zhiweifenlei` varchar(200) DEFAULT NULL COMMENT '职位分类',
  `zhiweixinxi` varchar(200) DEFAULT NULL COMMENT '职位信息',
  `shangbandidian` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `gerenjianli` varchar(200) DEFAULT NULL COMMENT '个人简历',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617260617998 DEFAULT CHARSET=utf8 COMMENT='应聘信息';

/*Data for the table `yingpinxinxi` */

insert  into `yingpinxinxi`(`id`,`addtime`,`qiyezhanghao`,`qiyemingcheng`,`zhiweimingcheng`,`zhiweifenlei`,`zhiweixinxi`,`shangbandidian`,`shangbanshijian`,`xinzidaiyu`,`shenqingriqi`,`gerenjianli`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (91,'2021-04-01 18:52:20','企业账号1','企业名称1','职位名称1','职位分类1','职位信息1','上班地点1','上班时间1','薪资待遇1','2021-04-01','','用户名1','姓名1','手机1','是',''),(92,'2021-04-01 18:52:20','企业账号2','企业名称2','职位名称2','职位分类2','职位信息2','上班地点2','上班时间2','薪资待遇2','2021-04-01','','用户名2','姓名2','手机2','是',''),(93,'2021-04-01 18:52:20','企业账号3','企业名称3','职位名称3','职位分类3','职位信息3','上班地点3','上班时间3','薪资待遇3','2021-04-01','','用户名3','姓名3','手机3','是',''),(94,'2021-04-01 18:52:20','企业账号4','企业名称4','职位名称4','职位分类4','职位信息4','上班地点4','上班时间4','薪资待遇4','2021-04-01','','用户名4','姓名4','手机4','是',''),(95,'2021-04-01 18:52:20','企业账号5','企业名称5','职位名称5','职位分类5','职位信息5','上班地点5','上班时间5','薪资待遇5','2021-04-01','','用户名5','姓名5','手机5','是',''),(96,'2021-04-01 18:52:20','企业账号6','企业名称6','职位名称6','职位分类6','职位信息6','上班地点6','上班时间6','薪资待遇6','2021-04-01','','用户名6','姓名6','手机6','是',''),(1617260617997,'2021-04-01 15:03:37','111','111','门童','职位分类1','职位信息1','上班地点1','上班时间1','111','2021-04-15','http://localhost:8080/daxuejiuyexinxi/upload/1617260616103.doc','333','333','333','是','321');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617260330937 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (21,'2021-04-01 18:52:20','用户1','123456','姓名1','http://localhost:8080/daxuejiuyexinxi/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com','440300199101010001'),(22,'2021-04-01 18:52:20','用户2','123456','姓名2','http://localhost:8080/daxuejiuyexinxi/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com','440300199202020002'),(23,'2021-04-01 18:52:20','用户3','123456','姓名3','http://localhost:8080/daxuejiuyexinxi/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com','440300199303030003'),(24,'2021-04-01 18:52:20','用户4','123456','姓名4','http://localhost:8080/daxuejiuyexinxi/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com','440300199404040004'),(25,'2021-04-01 18:52:20','用户5','123456','姓名5','http://localhost:8080/daxuejiuyexinxi/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com','440300199505050005'),(26,'2021-04-01 18:52:20','用户6','123456','姓名6','http://localhost:8080/daxuejiuyexinxi/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com','440300199606060006'),(1617260330936,'2021-04-01 14:58:50','333','333','333','http://localhost:8080/daxuejiuyexinxi/upload/1617260432967.jpg','男','333','333@qq.com','333');

/*Table structure for table `zhaopinxinxi` */

DROP TABLE IF EXISTS `zhaopinxinxi`;

CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `zhiweimingcheng` varchar(200) NOT NULL COMMENT '职位名称',
  `bangonghuanjing` varchar(200) NOT NULL COMMENT '办公环境',
  `zhiweifenlei` varchar(200) DEFAULT NULL COMMENT '职位分类',
  `xingye` varchar(200) DEFAULT NULL COMMENT '行业',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhiweixinxi` longtext COMMENT '职位信息',
  `renzhiyaoqiu` longtext COMMENT '任职要求',
  `shangbandidian` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `xinzidaiyu` int(11) DEFAULT NULL COMMENT '薪资待遇',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617260097939 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopinxinxi` */

insert  into `zhaopinxinxi`(`id`,`addtime`,`qiyezhanghao`,`qiyemingcheng`,`lianxiren`,`lianxidianhua`,`qiyeyouxiang`,`zhiweimingcheng`,`bangonghuanjing`,`zhiweifenlei`,`xingye`,`zhaopinrenshu`,`zhiweixinxi`,`renzhiyaoqiu`,`shangbandidian`,`shangbanshijian`,`xinzidaiyu`,`clicktime`,`clicknum`) values (81,'2021-04-01 18:52:20','企业账号1','企业名称1','联系人1','联系电话1','企业邮箱1','职位名称1','http://localhost:8080/daxuejiuyexinxi/upload/zhaopinxinxi_bangonghuanjing1.jpg','职位分类1','行业1',1,'职位信息1','任职要求1','上班地点1','上班时间1',1,'2021-04-01 18:52:20',1),(82,'2021-04-01 18:52:20','企业账号2','企业名称2','联系人2','联系电话2','企业邮箱2','职位名称2','http://localhost:8080/daxuejiuyexinxi/upload/zhaopinxinxi_bangonghuanjing2.jpg','职位分类2','行业2',2,'职位信息2','任职要求2','上班地点2','上班时间2',2,'2021-04-01 18:52:20',2),(83,'2021-04-01 18:52:20','企业账号3','企业名称3','联系人3','联系电话3','企业邮箱3','职位名称3','http://localhost:8080/daxuejiuyexinxi/upload/zhaopinxinxi_bangonghuanjing3.jpg','职位分类3','行业3',3,'职位信息3','任职要求3','上班地点3','上班时间3',3,'2021-04-01 18:52:20',3),(84,'2021-04-01 18:52:20','企业账号4','企业名称4','联系人4','联系电话4','企业邮箱4','职位名称4','http://localhost:8080/daxuejiuyexinxi/upload/1612608976602.jpg','职位分类4','行业4',4,'职位信息4','任职要求4\r\n','上班地点4','上班时间4',4,'2021-04-01 18:56:13',6),(85,'2021-04-01 18:52:20','企业账号5','企业名称5','联系人5','联系电话5','企业邮箱5','职位名称5','http://localhost:8080/daxuejiuyexinxi/upload/zhaopinxinxi_bangonghuanjing5.jpg','职位分类5','行业5',5,'职位信息5','任职要求5','上班地点5','上班时间5',5,'2021-04-01 18:52:20',5),(86,'2021-04-01 18:52:20','企业账号6','企业名称6','联系人6','联系电话6','企业邮箱6','职位名称6','http://localhost:8080/daxuejiuyexinxi/upload/zhaopinxinxi_bangonghuanjing6.jpg','职位分类6','行业6',6,'职位信息6','任职要求6','上班地点6','上班时间6',6,'2021-04-01 18:52:20',6),(1617260097938,'2021-04-01 14:54:57','111','111','111','11111111111','111@qq.com','门童','http://localhost:8080/daxuejiuyexinxi/upload/1617260069912.jpg','职位分类1','行业1',100,'职位信息1','任职要求\r\n','上班地点1','上班时间1',111,'2021-04-01 15:03:19',1);

/*Table structure for table `zhaopinzixun` */

DROP TABLE IF EXISTS `zhaopinzixun`;

CREATE TABLE `zhaopinzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) NOT NULL COMMENT '资讯标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617259519487 DEFAULT CHARSET=utf8 COMMENT='招聘资讯';

/*Data for the table `zhaopinzixun` */

insert  into `zhaopinzixun`(`id`,`addtime`,`zixunbiaoti`,`tupian`,`neirong`,`faburiqi`) values (11,'2021-04-01 18:52:20','资讯标题1','http://localhost:8080/daxuejiuyexinxi/upload/1612608918838.jpg','内容1\r\n','2021-04-01'),(12,'2021-04-01 18:52:20','资讯标题2','http://localhost:8080/daxuejiuyexinxi/upload/1612608926674.jpg','内容2\r\n','2021-04-01'),(13,'2021-04-01 18:52:20','资讯标题3','http://localhost:8080/daxuejiuyexinxi/upload/1612608934939.jpg','内容3\r\n','2021-04-01'),(14,'2021-04-01 18:52:20','资讯标题4','http://localhost:8080/daxuejiuyexinxi/upload/1612608942728.jpg','内容4\r\n','2021-04-01'),(15,'2021-04-01 18:52:20','资讯标题5','http://localhost:8080/daxuejiuyexinxi/upload/1612608950248.jpg','内容5\r\n','2021-04-01'),(16,'2021-04-01 18:52:20','资讯标题6','http://localhost:8080/daxuejiuyexinxi/upload/1612608963236.jpg','内容6\r\n','2021-04-01');

/*Table structure for table `zhiweifenlei` */

DROP TABLE IF EXISTS `zhiweifenlei`;

CREATE TABLE `zhiweifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweifenlei` varchar(200) NOT NULL COMMENT '职位分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhiweifenlei` (`zhiweifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='职位分类';

/*Data for the table `zhiweifenlei` */

insert  into `zhiweifenlei`(`id`,`addtime`,`zhiweifenlei`) values (61,'2021-04-01 18:52:20','职位分类1'),(62,'2021-04-01 18:52:20','职位分类2'),(63,'2021-04-01 18:52:20','职位分类3'),(64,'2021-04-01 18:52:20','职位分类4'),(65,'2021-04-01 18:52:20','职位分类5'),(66,'2021-04-01 18:52:20','职位分类6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
