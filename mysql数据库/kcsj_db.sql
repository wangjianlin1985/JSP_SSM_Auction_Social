/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : kcsj_db

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2018-02-07 17:40:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL default '',
  `password` varchar(32) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a');

-- ----------------------------
-- Table structure for `t_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item` (
  `itemId` int(11) NOT NULL auto_increment COMMENT '商品id',
  `itemClassObj` int(11) NOT NULL COMMENT '商品分类',
  `pTitle` varchar(80) NOT NULL COMMENT '商品标题',
  `itemPhoto` varchar(60) NOT NULL COMMENT '商品图片',
  `itemDesc` varchar(5000) NOT NULL COMMENT '商品描述',
  `userObj` varchar(20) NOT NULL COMMENT '发布人',
  `startPrice` float NOT NULL COMMENT '起拍价',
  `startTime` varchar(20) default NULL COMMENT '起拍时间',
  `endTime` varchar(20) default NULL COMMENT '结束时间',
  PRIMARY KEY  (`itemId`),
  KEY `itemClassObj` (`itemClassObj`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_item_ibfk_1` FOREIGN KEY (`itemClassObj`) REFERENCES `t_itemclass` (`classId`),
  CONSTRAINT `t_item_ibfk_2` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_item
-- ----------------------------
INSERT INTO `t_item` VALUES ('1', '1', '现代 翡翠老坑糯种鸡油黄黄翡观音', 'upload/2297ed00-9069-4d55-a579-003b833f9d2d.jpg', '宽 :2.5cm 高:5.6cm 。 物品描述 注：总重14.48克。带国家首饰质量监督检验中心鉴定证书。', 'user1', '3000', '2017-12-14 15:09:35', '2017-12-17 15:14:35');
INSERT INTO `t_item` VALUES ('2', '1', '收藏级精品金丝玉籽料乌鸦皮达摩手', 'upload/0314eabb-033f-47d2-801f-8ca90f8dc400.jpg', '丝玉重量130.00克 尺寸95.00*49.00*24.00mm 。精湛的雕刻达摩形神兼备，身披袈裟，深邃坚毅的双眼凸显出达摩不同凡响的精神境界和完美的寓意内涵。微微向下的嘴角，仿佛在不停的点头，一副面壁静思的形态.新疆“金丝玉”，是产于中国新疆克拉玛依市 乌尔禾魔鬼城方圆100公里、阶地、戈壁滩、沙漠等地域，是非常具有潜力，可供雕琢艺术品的玉石品种，因产于古丝绸之路玉石为金黄色，内部带萝卜纹而得名“金丝玉”。“金丝玉”主要产于经过河流长距离搬运的次生矿床中。经雕刻后具有很高的观赏、收藏价值，是我国独有的', 'user1', '3500', '2017-12-14 15:29:52', '2017-12-18 15:34:52');
INSERT INTO `t_item` VALUES ('3', '2', '黄秋生(黄开武) 葡萄', 'upload/0b8e3f0f-df6f-4d0f-b789-ecc144f7b4da.jpg', '长 :55cm 宽 :50cm 材质: 纸本 形式: 画心 完残状况：边有小口。 本公司欢迎您亲临查看拍品。 物品描述 注：此拍品约为2.48平尺黄秋生，现为中国美协、书协会员，70年代末跟随著名画家石鲁学习中国画大写意...... 黄秋生简介', 'user1', '3000', '2017-12-14 15:36:31', '2017-12-14 15:41:31');
INSERT INTO `t_item` VALUES ('4', '1', '天然鸡油黄藏老蜜蜡原蜡手莲', 'upload/d8108c58-0b78-4184-a262-921a598b39ef.JPG', '本品天然鸡油黄藏老蜜蜡原蜡手莲，藏蜜蜡原蜡（带**）形状似三角菱形、天然原*一串有23粒等具体参考图片和藏品尺寸，在起拍价之上随意加价，拍多少，算多少。祝愿“华夏网”藏友开心快乐，全家幸福，平安吉祥，收藏进步！谢谢朋友的支持和关注。到新开宏鹤轩，欢迎朋友们到我的店里来指导、指导哦，谢谢！。', 'user2', '1800', '2018-02-07 17:29:26', '2018-02-07 17:34:26');

-- ----------------------------
-- Table structure for `t_itemclass`
-- ----------------------------
DROP TABLE IF EXISTS `t_itemclass`;
CREATE TABLE `t_itemclass` (
  `classId` int(11) NOT NULL auto_increment COMMENT '商品分类id',
  `className` varchar(50) NOT NULL COMMENT '商品类别名称',
  `classDesc` varchar(2000) NOT NULL COMMENT '类别描述',
  PRIMARY KEY  (`classId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_itemclass
-- ----------------------------
INSERT INTO `t_itemclass` VALUES ('1', '玉翠珠宝', '玉翠珠宝玉翠珠宝');
INSERT INTO `t_itemclass` VALUES ('2', '书画篆刻', '书画篆刻书画篆刻');
INSERT INTO `t_itemclass` VALUES ('3', '紫砂陶瓷', '紫砂陶瓷紫砂陶瓷');
INSERT INTO `t_itemclass` VALUES ('4', '工艺作品', '工艺作品工艺作品');
INSERT INTO `t_itemclass` VALUES ('5', '茶酒滋补', '茶酒滋补茶酒滋补');

-- ----------------------------
-- Table structure for `t_postinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_postinfo`;
CREATE TABLE `t_postinfo` (
  `postInfoId` int(11) NOT NULL auto_increment COMMENT '帖子id',
  `pTitle` varchar(80) NOT NULL COMMENT '帖子标题',
  `content` varchar(5000) NOT NULL COMMENT '帖子内容',
  `userObj` varchar(20) NOT NULL COMMENT '发帖人',
  `addTime` varchar(20) default NULL COMMENT '发帖时间',
  `hitNum` int(11) NOT NULL COMMENT '浏览量',
  PRIMARY KEY  (`postInfoId`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_postinfo_ibfk_1` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_postinfo
-- ----------------------------
INSERT INTO `t_postinfo` VALUES ('1', '大家好，我来拍拍宝贝', '我喜欢书画作品，来看看！', 'user1', '2017-12-14 15:16:36', '62');
INSERT INTO `t_postinfo` VALUES ('2', '2234', '2324', 'user2', '2017-12-15 16:32:32', '2');

-- ----------------------------
-- Table structure for `t_productbidding`
-- ----------------------------
DROP TABLE IF EXISTS `t_productbidding`;
CREATE TABLE `t_productbidding` (
  `biddingId` int(11) NOT NULL auto_increment COMMENT '订单编号',
  `itemObj` int(11) NOT NULL COMMENT '竞拍商品',
  `userObj` varchar(20) NOT NULL COMMENT '竞拍用户',
  `biddingTime` varchar(20) default NULL COMMENT '竞拍时间',
  `biddingPrice` float NOT NULL COMMENT '竞拍出价',
  PRIMARY KEY  (`biddingId`),
  KEY `itemObj` (`itemObj`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_productbidding_ibfk_1` FOREIGN KEY (`itemObj`) REFERENCES `t_item` (`itemId`),
  CONSTRAINT `t_productbidding_ibfk_2` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_productbidding
-- ----------------------------
INSERT INTO `t_productbidding` VALUES ('1', '1', 'user2', '2017-12-14 15:10:06', '3100');
INSERT INTO `t_productbidding` VALUES ('3', '1', 'user2', '2017-12-14 15:11:45', '3200');
INSERT INTO `t_productbidding` VALUES ('4', '1', 'user2', '2017-12-14 18:20:36', '3300');
INSERT INTO `t_productbidding` VALUES ('5', '1', 'user2', '2017-12-14 18:21:20', '3400');
INSERT INTO `t_productbidding` VALUES ('6', '2', 'user2', '2017-12-14 18:23:51', '3600');
INSERT INTO `t_productbidding` VALUES ('7', '1', 'user2', '2017-12-15 18:07:01', '3500');
INSERT INTO `t_productbidding` VALUES ('8', '1', 'user3', '2017-12-15 18:16:46', '3620');

-- ----------------------------
-- Table structure for `t_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply` (
  `replyId` int(11) NOT NULL auto_increment COMMENT '回复id',
  `postInfoObj` int(11) NOT NULL COMMENT '被回帖子',
  `content` varchar(2000) NOT NULL COMMENT '回复内容',
  `userObj` varchar(20) NOT NULL COMMENT '回复人',
  `replyTime` varchar(20) default NULL COMMENT '回复时间',
  PRIMARY KEY  (`replyId`),
  KEY `postInfoObj` (`postInfoObj`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_reply_ibfk_1` FOREIGN KEY (`postInfoObj`) REFERENCES `t_postinfo` (`postInfoId`),
  CONSTRAINT `t_reply_ibfk_2` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_reply
-- ----------------------------
INSERT INTO `t_reply` VALUES ('1', '1', '大家多多捧场！', 'user2', '2017-12-14 15:16:45');
INSERT INTO `t_reply` VALUES ('2', '1', '嗯嗯 一起发展', 'user1', '2017-12-15 17:29:03');

-- ----------------------------
-- Table structure for `t_userfollow`
-- ----------------------------
DROP TABLE IF EXISTS `t_userfollow`;
CREATE TABLE `t_userfollow` (
  `followId` int(11) NOT NULL auto_increment COMMENT '记录id',
  `userObj1` varchar(20) NOT NULL COMMENT '被关注人',
  `userObj2` varchar(20) NOT NULL COMMENT '关注人',
  `followTime` varchar(20) default NULL COMMENT '关注时间',
  PRIMARY KEY  (`followId`),
  KEY `userObj1` (`userObj1`),
  KEY `userObj2` (`userObj2`),
  CONSTRAINT `t_userfollow_ibfk_1` FOREIGN KEY (`userObj1`) REFERENCES `t_userinfo` (`user_name`),
  CONSTRAINT `t_userfollow_ibfk_2` FOREIGN KEY (`userObj2`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userfollow
-- ----------------------------
INSERT INTO `t_userfollow` VALUES ('7', 'user1', 'user2', '2017-12-15 18:06:33');
INSERT INTO `t_userfollow` VALUES ('8', 'user1', 'user3', '2017-12-15 18:17:06');

-- ----------------------------
-- Table structure for `t_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfo`;
CREATE TABLE `t_userinfo` (
  `user_name` varchar(20) NOT NULL COMMENT 'user_name',
  `password` varchar(20) NOT NULL COMMENT '登录密码',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `gender` varchar(4) NOT NULL COMMENT '性别',
  `birthDate` varchar(20) default NULL COMMENT '生日',
  `userImage` varchar(60) NOT NULL COMMENT '用户照片',
  `telephone` varchar(20) NOT NULL COMMENT '联系电话',
  `city` varchar(20) NOT NULL COMMENT '所在城市',
  `address` varchar(80) NOT NULL COMMENT '家庭地址',
  `email` varchar(50) default NULL COMMENT '邮箱',
  `paypalAccount` varchar(20) NOT NULL COMMENT 'paypal账户名',
  `createTime` varchar(20) default NULL COMMENT '注册时间',
  PRIMARY KEY  (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userinfo
-- ----------------------------
INSERT INTO `t_userinfo` VALUES ('user1', '123', '双鱼林', '男', '2017-12-06', 'upload/6f900dc9-0257-4fa2-bbd9-48fe6a4d3457.jpg', '13958342342', '成都', '成都红星路13号', 'dashen@163.com', '15141441@qq.com', '2017-12-14 15:04:12');
INSERT INTO `t_userinfo` VALUES ('user2', '123', '李玲', '女', '2017-12-07', 'upload/7cebdfd7-171d-4832-8be2-4eedaca7930b.jpg', '13573598343', '北京', '北京海定区', '15141561@qq.com', 'liling@163.com', '2017-12-14 15:12:33');
INSERT INTO `t_userinfo` VALUES ('user3', '123', '王晓曦', '女', '2017-12-01', 'upload/db6b85ce-7efa-46d1-9731-8bdc312426e7.jpg', '13939840834', '南京', '南京飞机场路10号', '315141414@qq.com', 'wangxiaoxi@163.com', '2017-12-15 18:16:20');
