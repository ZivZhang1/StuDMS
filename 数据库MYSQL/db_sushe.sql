/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_sushe
Target Host: localhost
Target Database: db_sushe
Date: 2017/5/27 10:55:39
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for dtproperties
-- ----------------------------
CREATE TABLE `dtproperties` (
  `id` int(11) NOT NULL auto_increment,
  `objectid` int(11) default NULL,
  `property` varchar(65) NOT NULL,
  `value` varchar(255) default NULL,
  `uvalue` varchar(255) default NULL,
  `lvalue` longblob,
  `version` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`,`property`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) default NULL,
  `userPw` text,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_baoxiu
-- ----------------------------
CREATE TABLE `t_baoxiu` (
  `id` int(11) NOT NULL,
  `shijian` varchar(50) default NULL,
  `yuanyin` text,
  `sushe_id` int(11) default NULL,
  `sushe` text,
  `stu_id` int(11) default NULL,
  `zhuangtai` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_laifang
-- ----------------------------
CREATE TABLE `t_laifang` (
  `id` int(11) NOT NULL,
  `laishijian` varchar(50) default NULL,
  `qushijian` text,
  `laifangzhe` varchar(50) default NULL,
  `sushe_id` int(11) default NULL,
  `suoqusushe` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_shijian
-- ----------------------------
CREATE TABLE `t_shijian` (
  `id` int(11) NOT NULL,
  `shijian` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_stu
-- ----------------------------
CREATE TABLE `t_stu` (
  `stu_id` int(11) NOT NULL,
  `stu_xuehao` text,
  `stu_realname` varchar(50) default NULL,
  `stu_sex` varchar(50) default NULL,
  `stu_age` varchar(50) default NULL,
  `stu_card` varchar(50) default NULL,
  `stu_zhengzhimianmao` varchar(50) default NULL,
  `login_name` varchar(50) default NULL,
  `login_pw` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_sushe
-- ----------------------------
CREATE TABLE `t_sushe` (
  `id` int(11) NOT NULL,
  `fangjianhao` varchar(50) default NULL,
  `xueshengrenshu` int(11) default NULL,
  `xueshengbanji` text,
  `louhao` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_weisheng
-- ----------------------------
CREATE TABLE `t_weisheng` (
  `id` int(11) NOT NULL,
  `shijian` text,
  `sushe_id` int(11) default NULL,
  `sushe` varchar(50) default NULL,
  `fenshu` int(11) default NULL,
  `beizhu` text,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('2', 'admin', '456');
INSERT INTO `t_admin` VALUES ('3', 'qqq', '456');
INSERT INTO `t_baoxiu` VALUES ('15', '2017-05-26', '灯坏了 （1#A01）', null, 'A01', '8', 'weishouli', 'no');
INSERT INTO `t_baoxiu` VALUES ('16', '2017-05-10', '222', null, '222', '8', 'weishouli', 'no');
INSERT INTO `t_laifang` VALUES ('8', '2017-05-26 16:21', '', '一二三', null, 'A01', 'no');
INSERT INTO `t_laifang` VALUES ('9', '2017-05-25 16:21', '2017-05-26 16:22', '三二一', null, 'B01', 'no');
INSERT INTO `t_shijian` VALUES ('1', '00:00');
INSERT INTO `t_shijian` VALUES ('2', '23:55');
INSERT INTO `t_stu` VALUES ('8', '1501', '王一', '男', '20', '计算机1', 'A01', 'wangyi', '123', 'no');
INSERT INTO `t_stu` VALUES ('9', '1502', '王二', '男', '20', '计算机1', 'A01', 'wanger', '123', 'no');
INSERT INTO `t_stu` VALUES ('10', '1503', '李一', '男', '20', '计算机2', 'A02', 'liyi', '123', 'no');
INSERT INTO `t_stu` VALUES ('11', '1504', '李二', '男', '20', '计算机2', 'A02', 'lier', '123', 'no');
INSERT INTO `t_stu` VALUES ('12', '1401', '刘一', '男', '20', '土木1', 'B01', 'liuyi', '123', 'no');
INSERT INTO `t_sushe` VALUES ('8', 'A01', '6', '计算机1', '1', 'no');
INSERT INTO `t_sushe` VALUES ('9', 'A02', '6', '计算机2', '1', 'no');
INSERT INTO `t_sushe` VALUES ('10', 'B01', '6', '土木1', '2', 'no');
INSERT INTO `t_sushe` VALUES ('11', 'B02', '6', '土木2', '2', 'no');
INSERT INTO `t_weisheng` VALUES ('1', '2017-05-26', null, 'A01', '8', '<p>干净</p>', null);
INSERT INTO `t_weisheng` VALUES ('2', '2017-05-26', null, 'A02', '2', '<p>烟头</p>', null);
INSERT INTO `t_weisheng` VALUES ('3', '2017-05-26', null, 'B01', '5', '有垃圾', null);
