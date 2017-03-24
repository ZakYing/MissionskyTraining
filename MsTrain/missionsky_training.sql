/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : missionsky_training

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2017-03-24 14:57:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `docId` int(11) NOT NULL auto_increment,
  `docName` varchar(30) NOT NULL,
  `docSize` varchar(20) NOT NULL,
  `uploadDate` datetime NOT NULL,
  `uploadUser` int(11) NOT NULL,
  PRIMARY KEY  (`docId`),
  KEY `uploadUser` (`uploadUser`),
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`uploadUser`) REFERENCES `userinfo` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of document
-- ----------------------------
INSERT INTO `document` VALUES ('10', 'ACA&&AA调试出sql记录.docx', '13KB', '2017-03-23 10:59:25', '1');
INSERT INTO `document` VALUES ('11', '环境配置和启动步骤.txt', '2KB', '2017-03-23 11:17:20', '1');
INSERT INTO `document` VALUES ('13', 'GUI_TEXT.txt', '251B', '2017-03-23 12:58:00', '2');
INSERT INTO `document` VALUES ('15', 'comment.txt', '656B', '2017-03-23 13:09:28', '1');
INSERT INTO `document` VALUES ('16', 'test.js', '844B', '2017-03-23 13:12:03', '1');
INSERT INTO `document` VALUES ('17', 'jquery-1.8.3.js', '259KB', '2017-03-23 13:12:11', '1');
INSERT INTO `document` VALUES ('18', 'Record.pptx', '575KB', '2017-03-23 17:24:36', '1');
INSERT INTO `document` VALUES ('19', 'ASI&ASIT.pptx', '488KB', '2017-03-23 17:28:31', '1');
INSERT INTO `document` VALUES ('21', 'Java Coding Standard.docx', '114KB', '2017-03-23 17:35:46', '1');
INSERT INTO `document` VALUES ('22', 'Email Training整理.docx', '19KB', '2017-03-24 14:55:54', '1');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `admin_flag` int(11) default '0',
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'andy', '123456', '0');
INSERT INTO `userinfo` VALUES ('2', 'zak', '123456', '0');
INSERT INTO `userinfo` VALUES ('3', 'zhangsan', '123456', '0');
INSERT INTO `userinfo` VALUES ('4', 'testuser', '123456', '0');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `videoId` int(11) NOT NULL auto_increment,
  `videoTypeId` int(11) NOT NULL,
  `VideoFileName` varchar(30) NOT NULL,
  `publishDate` datetime NOT NULL,
  `publishUser` varchar(30) NOT NULL,
  `VideoURL` varchar(100) NOT NULL,
  `videoImg` varchar(100) default NULL,
  PRIMARY KEY  (`videoId`),
  KEY `videoTypeId` (`videoTypeId`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`videoTypeId`) REFERENCES `videotype` (`videoTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('2', '1', 'AA业务入门级培训', '2017-03-24 14:47:18', 'andy', 'http://www.youku.123', 'IMG_7481.JPG');

-- ----------------------------
-- Table structure for videotype
-- ----------------------------
DROP TABLE IF EXISTS `videotype`;
CREATE TABLE `videotype` (
  `videoTypeId` int(11) NOT NULL auto_increment,
  `videoTypeName` varchar(20) default NULL,
  PRIMARY KEY  (`videoTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videotype
-- ----------------------------
INSERT INTO `videotype` VALUES ('1', 'AA业务培训');
INSERT INTO `videotype` VALUES ('2', 'ACA业务培训');
INSERT INTO `videotype` VALUES ('3', 'QA测试培训');
