/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : logs

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-11-20 09:11:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for microblogs
-- ----------------------------
DROP TABLE IF EXISTS `microblogs`;
CREATE TABLE `microblogs` (
  `mb_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `mb_text` varchar(100) NOT NULL,
  `mb_picture` varchar(500) DEFAULT NULL,
  `mb_video` varchar(100) DEFAULT NULL,
  `mb_time` datetime DEFAULT NULL,
  `like_times` int(11) DEFAULT NULL,
  `comment_times` int(11) DEFAULT NULL,
  `forward_times` int(11) DEFAULT NULL,
  PRIMARY KEY (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of microblogs
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `self_introduction` varchar(30) DEFAULT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `register_location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'kzg2', 'kzg2', '22', '1', '2018-11-09', '123456', 'kzg8267@gmail.com', '这是一个测试', null, '2018-11-09 13:41:25', '北京');
INSERT INTO `users` VALUES ('4', 'ceshi', 'ceshi', null, null, null, null, null, null, null, '2018-11-09 22:33:34', '北京');
INSERT INTO `users` VALUES ('5', 'laobai', '123', null, null, null, null, null, null, null, null, '北京');
