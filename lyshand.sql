/*
Navicat MySQL Data Transfer

Source Server         : benji
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : lyshand

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-04-06 15:59:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fwly`
-- ----------------------------
DROP TABLE IF EXISTS `fwly`;
CREATE TABLE `fwly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `saver` varchar(255) DEFAULT NULL,
  `content` text,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fwly
-- ----------------------------
INSERT INTO `fwly` VALUES ('1', '123wwwwwwwwwwwww', 'admin', '<p>123</p>', '2016-04-06 17:04:23');
INSERT INTO `fwly` VALUES ('2', 'fsdfsdf', '123', '<p>sdfsdfsdf</p>', '2016-04-06 13:16:33');

-- ----------------------------
-- Table structure for `fwpl`
-- ----------------------------
DROP TABLE IF EXISTS `fwpl`;
CREATE TABLE `fwpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fwid` varchar(255) DEFAULT NULL,
  `saver` varchar(255) DEFAULT NULL,
  `saverimg` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fwpl
-- ----------------------------
INSERT INTO `fwpl` VALUES ('6', '2', '123', '201302271313120001.jpg', 'dfgdf', '2016-04-06 14:49:28');
INSERT INTO `fwpl` VALUES ('7', '2', '123', '201302271313120001.jpg', 'dfgdf', '2016-04-06 14:51:37');
INSERT INTO `fwpl` VALUES ('8', '2', '123', '201302271313120001.jpg', 'fdgfd', '2016-04-06 14:54:10');
INSERT INTO `fwpl` VALUES ('9', '2', '123', '201302271313120001.jpg', 'ttttt', '2016-04-06 14:58:21');
INSERT INTO `fwpl` VALUES ('10', '2', '123', '201302271313120001.jpg', 'eee', '2016-04-06 14:58:28');

-- ----------------------------
-- Table structure for `hbnews`
-- ----------------------------
DROP TABLE IF EXISTS `hbnews`;
CREATE TABLE `hbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hbnews
-- ----------------------------
INSERT INTO `hbnews` VALUES ('1', '新闻标题', '作者', '201302271557080002.jpg', '<p>123的</p>', '2016-04-06 15:57:11');

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saver` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `resaver` varchar(255) DEFAULT NULL,
  `recontent` varchar(255) DEFAULT NULL,
  `resavetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', '123', '2016-04-06  11:38:05', '123', 'admin', '说得不错', '2016-04-06 09:55:02');
INSERT INTO `messages` VALUES ('2', '123', '2016-04-06  11:39:52', '123', 'admin', '说得不错', '2016-04-06 09:54:52');
INSERT INTO `messages` VALUES ('3', '123', '2016-04-06  09:48:45', '321', '', '', '');
INSERT INTO `messages` VALUES ('14', 'cc', '2016-04-06 15:35:58', '挺好的', 'admin', '谢谢', '2016-04-06 15:39:18');
INSERT INTO `messages` VALUES ('15', 'kk', '2016-04-06 15:42:52', '不错', 'admin', '谢谢支持', '2016-04-06 15:44:33');

-- ----------------------------
-- Table structure for `proscar`
-- ----------------------------
DROP TABLE IF EXISTS `proscar`;
CREATE TABLE `proscar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `touname` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `nums` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proscar
-- ----------------------------

-- ----------------------------
-- Table structure for `prosorders`
-- ----------------------------
DROP TABLE IF EXISTS `prosorders`;
CREATE TABLE `prosorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `touname` varchar(255) DEFAULT NULL,
  `ddinfo` varchar(255) DEFAULT NULL,
  `lxr` varchar(255) DEFAULT NULL,
  `lxtel` varchar(255) DEFAULT NULL,
  `lxqq` varchar(255) DEFAULT NULL,
  `addrs` varchar(255) DEFAULT NULL,
  `fkfs` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prosorders
-- ----------------------------
INSERT INTO `prosorders` VALUES ('12', 'kk', '123', '物品:布娃娃要卖&nbsp;单价:111&nbsp;*1', 'kk', '55555555', '555', '555', '见面交易', '已发货', '2016-04-06 15:43:27');

-- ----------------------------
-- Table structure for `scj`
-- ----------------------------
DROP TABLE IF EXISTS `scj`;
CREATE TABLE `scj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sctype` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `wid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scj
-- ----------------------------
INSERT INTO `scj` VALUES ('20', '二手交易', '123', '9');
INSERT INTO `scj` VALUES ('23', '物品租借', '123', '10');
INSERT INTO `scj` VALUES ('30', '租借分享', '123', '10');
INSERT INTO `scj` VALUES ('31', '二手交易', 'aa', '12');
INSERT INTO `scj` VALUES ('32', '二手分享', 'aa', '12');
INSERT INTO `scj` VALUES ('34', '二手分享', 'cc', '11');
INSERT INTO `scj` VALUES ('35', '物品租借', 'cc', '15');
INSERT INTO `scj` VALUES ('36', '二手分享', 'kk', '11');
INSERT INTO `scj` VALUES ('37', '二手交易', 'kk', '9');

-- ----------------------------
-- Table structure for `secondhand`
-- ----------------------------
DROP TABLE IF EXISTS `secondhand`;
CREATE TABLE `secondhand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `wpbei` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `lxr` varchar(255) DEFAULT NULL,
  `lxtel` varchar(255) DEFAULT NULL,
  `lxaddrs` varchar(255) DEFAULT NULL,
  `lxqq` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `infotype` varchar(255) DEFAULT NULL,
  `wptype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secondhand
-- ----------------------------
INSERT INTO `secondhand` VALUES ('7', '布娃娃要卖', '布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖布娃娃要卖', '201304171009130002.jpg', '老王', '02788888888', '湖北省武汉市', '519954909', '111', '123', '2016-04-06 13:35:22', '二手交易', '日用品类');
INSERT INTO `secondhand` VALUES ('8', '二手锤子有人交换吗', '一天二十元，损坏照赔', '201304201833050002.jpg', '老王', '02788888888', '湖北省武汉市', '519954909', '三成新', '123', '2016-04-06 14:17:36', '物品租借', '日用品类');
INSERT INTO `secondhand` VALUES ('9', '哑铃有人要吗', '还能用', '201304171009010001.jpg', '老王', '02788888888', '湖北省武汉市', '519954909', '60', '123', '2016-04-06 14:50:18', '二手交易', '日用品类');
INSERT INTO `secondhand` VALUES ('10', '旧健身器有人要吗', '一天三十元，损坏照价赔偿', '201304201832500001.jpg', '老王', '02788888888', '湖北省武汉市', '519954909', '三成新', '123', '2016-04-06 14:55:19', '物品租借', '日用品类');
INSERT INTO `secondhand` VALUES ('11', '旧玩具要卖', '...', '201304171103440003.gif', '阿汤', '02788888888', '', '519954909', '12', '123', '2016-04-06 11:03:45', '二手交易', '电子产品类');
INSERT INTO `secondhand` VALUES ('16', '我的', '挺好', '201604061542210008.jpg', '小赵', '1', '宿舍', '33', '99', 'kk', '2016-04-06 15:42:22', '二手交易', '日用品类');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `userpass` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '123', '老张', '女', '543323113', '02788888888', '123@123.com', '深南大道110号', '管理员', '201302260952310001.jpg', '2016-04-06 00:00:00');
INSERT INTO `users` VALUES ('2', 'manager', '123', '胡春龙', '男', '519954343', '13988888888', '51889090@QQ.com', '...', '管理员', '201302252159410001.gif', '2016-04-06 20:25:08');
INSERT INTO `users` VALUES ('3', '123', '123', '小李', '女', '519954343', '02788888888', '132@123.com', '深南大道110号', '会员', '201302271313120001.jpg', '2016-04-06 13:13:13');
INSERT INTO `users` VALUES ('4', '321', '321', '小李', '女', '1111111', '02788888888', '1123111@qq.com', '深南大道110号', '会员', '201302281306100003.jpg', '2016-04-06 13:06:20');
INSERT INTO `users` VALUES ('6', '111', '111', '111', '女', '56781111', '02788888888', '345@34qq.com', 'eee', '会员', '201304172256540001.jpg', '2016-04-06 22:56:57');
INSERT INTO `users` VALUES ('7', 'aa', 'aa', 'aa', '男', '33', '33333333', '33@qq.com', '33', '会员', '201604061454560001.jpg', '2016-04-06 14:56:45');
INSERT INTO `users` VALUES ('8', 'cc', 'cc', 'cc', '男', '33', '33333333', '33@qq.com', '22', '会员', '201604061535440004.jpg', '2016-04-06 15:35:44');
INSERT INTO `users` VALUES ('9', 'kk', 'kk', 'kk', '男', '555', '55555555', '55@qq.com', '555', '会员', '201604061541410007.jpg', '2016-04-06 15:41:49');

-- ----------------------------
-- Table structure for `wpfl`
-- ----------------------------
DROP TABLE IF EXISTS `wpfl`;
CREATE TABLE `wpfl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wpfl
-- ----------------------------
INSERT INTO `wpfl` VALUES ('1', '图书类');
INSERT INTO `wpfl` VALUES ('2', '日用品类');
INSERT INTO `wpfl` VALUES ('3', '电子产品类');

-- ----------------------------
-- Table structure for `yqlj`
-- ----------------------------
DROP TABLE IF EXISTS `yqlj`;
CREATE TABLE `yqlj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ljname` varchar(255) DEFAULT NULL,
  `ljurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqlj
-- ----------------------------
INSERT INTO `yqlj` VALUES ('1', '淘宝网', 'http://www.taobao.com');
INSERT INTO `yqlj` VALUES ('2', '百度网', 'http://www.baidu.com');
INSERT INTO `yqlj` VALUES ('3', '谷歌搜索', 'http://www.google.com');
INSERT INTO `yqlj` VALUES ('4', '见客网', 'http://www.baidu.com');
INSERT INTO `yqlj` VALUES ('5', '阿里巴巴', 'http://www.baidu.com');

-- ----------------------------
-- Table structure for `zdatadic`
-- ----------------------------
DROP TABLE IF EXISTS `zdatadic`;
CREATE TABLE `zdatadic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datatype` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zdatadic
-- ----------------------------
INSERT INTO `zdatadic` VALUES ('1', '网站公告', '<p>在学校设立一个信息收集站（相当于一个校园中介所）。收集各类交易信息（出售或求购皆可）。各高校联盟创建一个网络交易平台，将收集的信息进行整和分类上传。为交易者提供一个方便快捷可靠的交易平台。在平台设立初期为完全免费服务。当我们的交易平台建立的具有一定的影响力和人气后可对一些交易额度高的进行收费</p>');
INSERT INTO `zdatadic` VALUES ('2', '网站简介', '<p>想法起源：在有些校园各寝室楼、食堂等场所中，各种出售、求购的广告铺天盖地。影响校园的整体美观而且起到的广告的效果也并不佳(因为很快会被撕掉或被覆盖)。而有些学校则禁止张贴校园广告。这又给一些想出售或求购的同学造成不便。因此希望能建立一个空间来完善这些不足.<br />');
INSERT INTO `zdatadic` VALUES ('3', '关于我们', '<p>联系地址 : 北京石头山区898号</p>');
