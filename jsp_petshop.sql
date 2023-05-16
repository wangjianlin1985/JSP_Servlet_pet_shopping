/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : jsp_petshop

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-01-11 11:28:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `easybuy_comment`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_comment`;
CREATE TABLE `easybuy_comment` (
  `EC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EC_CONTENT` varchar(200) NOT NULL,
  `EC_CREATE_TIME` datetime NOT NULL,
  `EC_REPLY` varchar(200) DEFAULT NULL,
  `EC_REPLY_TIME` datetime DEFAULT NULL,
  `EC_NICK_NAME` varchar(10) NOT NULL,
  PRIMARY KEY (`EC_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_comment
-- ----------------------------
INSERT INTO `easybuy_comment` VALUES ('11', '喜欢对着哈士奇发呆！', '2018-12-19 14:35:35', '', null, '慢慢来');
INSERT INTO `easybuy_comment` VALUES ('12', '有人说慢慢来会比较快', '2018-12-19 14:37:54', '', null, '慢慢来会比较快');
INSERT INTO `easybuy_comment` VALUES ('13', '我喜欢柴犬', '2019-07-12 08:57:11', '', null, '我要买多肉');

-- ----------------------------
-- Table structure for `easybuy_news`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_news`;
CREATE TABLE `easybuy_news` (
  `EN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EN_TITLE` varchar(40) NOT NULL,
  `EN_CONTENT` varchar(1000) NOT NULL,
  `EN_CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`EN_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_news
-- ----------------------------
INSERT INTO `easybuy_news` VALUES ('6', '会员注册须知', '会员注册须知', '2019-04-27 13:23:47');

-- ----------------------------
-- Table structure for `easybuy_order`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order`;
CREATE TABLE `easybuy_order` (
  `EO_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_USER_ID` varchar(10) NOT NULL,
  `EO_USER_NAME` varchar(20) DEFAULT NULL,
  `EO_USER_ADDRESS` varchar(200) DEFAULT NULL,
  `EO_CREATE_TIME` datetime NOT NULL,
  `EO_COST` decimal(10,2) NOT NULL,
  `EO_STATUS` decimal(6,0) NOT NULL,
  `EO_TYPE` decimal(6,0) NOT NULL,
  PRIMARY KEY (`EO_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_order
-- ----------------------------
INSERT INTO `easybuy_order` VALUES ('11', 'user', '我只喜爱猫', '1347845688.com网站', '2019-10-26 15:18:07', '1.00', '1', '1');

-- ----------------------------
-- Table structure for `easybuy_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order_detail`;
CREATE TABLE `easybuy_order_detail` (
  `EOD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_ID` decimal(10,0) NOT NULL,
  `EP_ID` decimal(10,0) NOT NULL,
  `EOD_QUANTITY` decimal(6,0) NOT NULL,
  `EOD_COST` decimal(10,2) NOT NULL,
  PRIMARY KEY (`EOD_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_order_detail
-- ----------------------------
INSERT INTO `easybuy_order_detail` VALUES ('14', '11', '40', '1', '1.00');

-- ----------------------------
-- Table structure for `easybuy_product`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product`;
CREATE TABLE `easybuy_product` (
  `EP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EP_NAME` varchar(128) NOT NULL,
  `EP_DESCRIPTION` varchar(512) DEFAULT NULL,
  `EP_PRICE` decimal(10,2) NOT NULL,
  `EP_STOCK` decimal(10,0) NOT NULL,
  `EPC_ID` decimal(10,0) DEFAULT NULL,
  `EPC_CHILD_ID` decimal(10,0) DEFAULT NULL,
  `EP_FILE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EP_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_product
-- ----------------------------
INSERT INTO `easybuy_product` VALUES ('39', '泰迪狗', '这个狗十分可爱', '500.00', '1', '35', '38', 'taidi.jpg');
INSERT INTO `easybuy_product` VALUES ('40', '藏獒', '这个狗十分凶猛', '1.00', '9999', '35', '36', 'zangao.jpg');
INSERT INTO `easybuy_product` VALUES ('42', '哈士奇', '这个宠物有点傻', '3000.00', '1', '35', '36', 'hashiqi.jpg');
INSERT INTO `easybuy_product` VALUES ('43', '柴犬', '这个宠物十分有趣', '5000.00', '1', '35', '36', 'chaiquan.jpg');
INSERT INTO `easybuy_product` VALUES ('44', '中华田园犬', '这个宠物有点傻', '100.00', '1', '35', '36', 'zhonghua.jpg');
INSERT INTO `easybuy_product` VALUES ('45', '田园猫', '这个猫很好看', '1500.00', '1', '39', '40', 'lanmao.jpg');
INSERT INTO `easybuy_product` VALUES ('46', '波斯猫', '这个猫是贵族品种', '10000.00', '1', '35', '36', 'bosi.jpg');
INSERT INTO `easybuy_product` VALUES ('47', '加菲猫', '有一首关于这个猫的歌', '4000.00', '1', '39', '40', 'jiafei.jpg');

-- ----------------------------
-- Table structure for `easybuy_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product_category`;
CREATE TABLE `easybuy_product_category` (
  `EPC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EPC_NAME` varchar(20) NOT NULL,
  `EPC_PARENT_ID` decimal(10,0) NOT NULL,
  PRIMARY KEY (`EPC_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_product_category
-- ----------------------------
INSERT INTO `easybuy_product_category` VALUES ('35', '狗狗', '0');
INSERT INTO `easybuy_product_category` VALUES ('36', '大型犬', '35');
INSERT INTO `easybuy_product_category` VALUES ('38', '小型犬', '35');
INSERT INTO `easybuy_product_category` VALUES ('39', '喵喵', '0');
INSERT INTO `easybuy_product_category` VALUES ('40', '田园猫', '39');

-- ----------------------------
-- Table structure for `easybuy_shop`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_shop`;
CREATE TABLE `easybuy_shop` (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `es_ep_file_name` varchar(128) DEFAULT NULL,
  `es_ep_name` varchar(64) DEFAULT NULL,
  `es_ep_price` decimal(10,0) DEFAULT NULL,
  `es_eod_quantity` int(11) DEFAULT NULL,
  `es_ep_stock` int(11) DEFAULT NULL,
  `es_ep_id` int(11) DEFAULT NULL,
  `es_eu_user_id` varchar(64) DEFAULT NULL,
  `es_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`es_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_shop
-- ----------------------------
INSERT INTO `easybuy_shop` VALUES ('12', 'goods1438050944_m.jpg', '厄瓜多尔皇家蓝色恋人玫瑰', '16', '1', '19', '20', '董苏醒', '2');
INSERT INTO `easybuy_shop` VALUES ('13', 'goods13772354821288127790_m.jpg', '西伯利亚百合', '27', '1', '22', '21', '董苏醒', '1');
INSERT INTO `easybuy_shop` VALUES ('14', 'goods13772354821288127790_m.jpg', '西伯利亚百合', '27', '1', '22', '21', '董苏醒', '1');
INSERT INTO `easybuy_shop` VALUES ('16', 'u=189404210,2788192053&fm=27&gp=0.jpg', '栀子叶', '12', '323', '323', '27', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('17', 'goods1438050944_m.jpg', '厄瓜多尔皇家蓝色恋人玫瑰', '16', '1', '18', '20', 'admin', '1');
INSERT INTO `easybuy_shop` VALUES ('18', 'goods1438050944_m.jpg', '厄瓜多尔皇家蓝色恋人玫瑰', '16', '1', '18', '20', 'user', '2');
INSERT INTO `easybuy_shop` VALUES ('19', 'zangao.jpg', '藏獒', '1', '1', '10000', '40', 'user', '2');

-- ----------------------------
-- Table structure for `easybuy_user`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_user`;
CREATE TABLE `easybuy_user` (
  `EU_USER_ID` varchar(32) NOT NULL,
  `EU_USER_NAME` varchar(20) NOT NULL,
  `EU_PASSWORD` varchar(20) NOT NULL,
  `EU_SEX` varchar(1) NOT NULL,
  `EU_BIRTHDAY` datetime DEFAULT NULL,
  `EU_IDENTITY_CODE` varchar(60) DEFAULT NULL,
  `EU_EMAIL` varchar(80) DEFAULT NULL,
  `EU_MOBILE` varchar(11) DEFAULT NULL,
  `EU_ADDRESS` varchar(200) DEFAULT NULL,
  `EU_COURTY` varchar(200) DEFAULT NULL,
  `EU_LIKE` varchar(200) DEFAULT NULL,
  `EU_STATUS` decimal(6,0) NOT NULL,
  PRIMARY KEY (`EU_USER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_user
-- ----------------------------
INSERT INTO `easybuy_user` VALUES ('admin', '管理员', 'admin', 'T', '2018-04-11 00:00:00', null, 'llqqxf@163.com', '13666666666', '上海', null, null, '2');
INSERT INTO `easybuy_user` VALUES ('user', '我只喜爱猫', '123456', 'T', '2018-12-13 00:00:00', null, '1347845688@qq.com', '13022502404', '1347845688.com网站', null, null, '1');
INSERT INTO `easybuy_user` VALUES ('yingqi', 'xu', '1111', 'F', '2019-10-02 00:00:00', null, '1104638200', '123432', 'wadszxc', null, null, '1');
