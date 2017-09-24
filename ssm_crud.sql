/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ssm_crud

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2017-09-24 15:34:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `dept_id` int(11) NOT NULL auto_increment,
  `dept_name` varchar(255) NOT NULL COMMENT '部门名',
  PRIMARY KEY  (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO tb_dept VALUES ('1', '研发部');
INSERT INTO tb_dept VALUES ('2', '测试部');

-- ----------------------------
-- Table structure for `tb_emp`
-- ----------------------------
DROP TABLE IF EXISTS `tb_emp`;
CREATE TABLE `tb_emp` (
  `emp_id` int(11) NOT NULL auto_increment COMMENT '主键',
  `emp_name` varchar(255) NOT NULL COMMENT '员工姓名',
  `emp_sex` char(1) default NULL COMMENT '性别',
  `emp_email` varchar(255) default NULL COMMENT '邮箱',
  `d_id` int(11) default NULL COMMENT '外键列,保存员工所在部门id',
  PRIMARY KEY  (`emp_id`),
  KEY `d_id` (`d_id`),
  CONSTRAINT `tb_emp_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `tb_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_emp
-- ----------------------------
INSERT INTO tb_emp VALUES ('1', '李展', '1', '11@163.com', '1');
INSERT INTO tb_emp VALUES ('2', '0edeed', '1', 'edeed@qq.com', '1');
INSERT INTO tb_emp VALUES ('3', '1e947a', '1', 'e947a@qq.com', '1');
INSERT INTO tb_emp VALUES ('4', '266be1', '1', '66be1@qq.com', '1');
INSERT INTO tb_emp VALUES ('5', '3fad7f', '1', 'fad7f@qq.com', '1');
INSERT INTO tb_emp VALUES ('6', '481ba7', '1', '81ba7@qq.com', '1');
INSERT INTO tb_emp VALUES ('7', '5c3a2f', '1', 'c3a2f@qq.com', '1');
INSERT INTO tb_emp VALUES ('8', '6b728a', '1', 'b728a@qq.com', '1');
INSERT INTO tb_emp VALUES ('9', '7154f1', '1', '154f1@qq.com', '1');
INSERT INTO tb_emp VALUES ('10', '8ffd08', '1', 'ffd08@qq.com', '1');
INSERT INTO tb_emp VALUES ('11', '9579f7', '1', '579f7@qq.com', '1');
INSERT INTO tb_emp VALUES ('12', '10e7a6e', '1', 'e7a6e@qq.com', '1');
INSERT INTO tb_emp VALUES ('13', '112339e', '1', '2339e@qq.com', '1');
INSERT INTO tb_emp VALUES ('14', '12fbab9', '1', 'fbab9@qq.com', '1');
INSERT INTO tb_emp VALUES ('15', '1333b7c', '1', '33b7c@qq.com', '1');
INSERT INTO tb_emp VALUES ('16', '147f522', '1', '7f522@qq.com', '1');
INSERT INTO tb_emp VALUES ('17', '15f8cb6', '1', 'f8cb6@qq.com', '1');
INSERT INTO tb_emp VALUES ('18', '162ceb5', '1', '2ceb5@qq.com', '1');
INSERT INTO tb_emp VALUES ('19', '17f9d97', '1', 'f9d97@qq.com', '1');
INSERT INTO tb_emp VALUES ('20', '18b1b5e', '1', 'b1b5e@qq.com', '1');
INSERT INTO tb_emp VALUES ('21', '196b21f', '1', '6b21f@qq.com', '1');
INSERT INTO tb_emp VALUES ('22', '2042531', '1', '42531@qq.com', '1');
INSERT INTO tb_emp VALUES ('23', '21e7973', '1', 'e7973@qq.com', '1');
INSERT INTO tb_emp VALUES ('24', '22de3e1', '1', 'de3e1@qq.com', '1');
INSERT INTO tb_emp VALUES ('25', '238bbe6', '1', '8bbe6@qq.com', '1');
INSERT INTO tb_emp VALUES ('26', '245ff03', '1', '5ff03@qq.com', '1');
INSERT INTO tb_emp VALUES ('27', '25bcb54', '1', 'bcb54@qq.com', '1');
INSERT INTO tb_emp VALUES ('28', '2697947', '1', '97947@qq.com', '1');
INSERT INTO tb_emp VALUES ('29', '2782f77', '1', '82f77@qq.com', '1');
INSERT INTO tb_emp VALUES ('30', '28cd2ea', '1', 'cd2ea@qq.com', '1');
INSERT INTO tb_emp VALUES ('31', '29413de', '1', '413de@qq.com', '1');
INSERT INTO tb_emp VALUES ('32', '3074a97', '1', '74a97@qq.com', '1');
INSERT INTO tb_emp VALUES ('33', '312e9c0', '1', '2e9c0@qq.com', '1');
INSERT INTO tb_emp VALUES ('34', '32b0cc4', '1', 'b0cc4@qq.com', '1');
INSERT INTO tb_emp VALUES ('35', '3384b80', '1', '84b80@qq.com', '1');
INSERT INTO tb_emp VALUES ('36', '348854a', '1', '8854a@qq.com', '1');
INSERT INTO tb_emp VALUES ('37', '353419f', '1', '3419f@qq.com', '1');
INSERT INTO tb_emp VALUES ('38', '36fb2d4', '1', 'fb2d4@qq.com', '1');
INSERT INTO tb_emp VALUES ('39', '37fdbea', '1', 'fdbea@qq.com', '1');
INSERT INTO tb_emp VALUES ('40', '381355f', '1', '1355f@qq.com', '1');
INSERT INTO tb_emp VALUES ('41', '3920ac3', '1', '20ac3@qq.com', '1');
INSERT INTO tb_emp VALUES ('42', '4065d44', '1', '65d44@qq.com', '1');
INSERT INTO tb_emp VALUES ('43', '414cb5c', '1', '4cb5c@qq.com', '1');
INSERT INTO tb_emp VALUES ('44', '427d81b', '1', '7d81b@qq.com', '1');
INSERT INTO tb_emp VALUES ('45', '43c8fe1', '1', 'c8fe1@qq.com', '1');
INSERT INTO tb_emp VALUES ('46', '44f98e4', '1', 'f98e4@qq.com', '1');
INSERT INTO tb_emp VALUES ('47', '45ae23f', '1', 'ae23f@qq.com', '1');
INSERT INTO tb_emp VALUES ('48', '466e216', '1', '6e216@qq.com', '1');
INSERT INTO tb_emp VALUES ('49', '4776e87', '1', '76e87@qq.com', '1');
INSERT INTO tb_emp VALUES ('50', '483d2d5', '1', '3d2d5@qq.com', '1');
INSERT INTO tb_emp VALUES ('51', '49afc54', '1', 'afc54@qq.com', '1');
INSERT INTO tb_emp VALUES ('52', '50ac927', '1', 'ac927@qq.com', '1');
INSERT INTO tb_emp VALUES ('53', '516560d', '1', '6560d@qq.com', '1');
INSERT INTO tb_emp VALUES ('54', '526b991', '1', '6b991@qq.com', '1');
INSERT INTO tb_emp VALUES ('55', '53c1a45', '1', 'c1a45@qq.com', '1');
INSERT INTO tb_emp VALUES ('56', '548d99e', '1', '8d99e@qq.com', '1');
INSERT INTO tb_emp VALUES ('57', '55411fc', '1', '411fc@qq.com', '1');
INSERT INTO tb_emp VALUES ('58', '560c324', '1', '0c324@qq.com', '1');
INSERT INTO tb_emp VALUES ('59', '5754ce9', '1', '54ce9@qq.com', '1');
INSERT INTO tb_emp VALUES ('60', '58d5e9a', '1', 'd5e9a@qq.com', '1');
INSERT INTO tb_emp VALUES ('61', '59e2a2d', '1', 'e2a2d@qq.com', '1');
INSERT INTO tb_emp VALUES ('62', '6074e68', '1', '74e68@qq.com', '1');
INSERT INTO tb_emp VALUES ('63', '6149570', '1', '49570@qq.com', '1');
INSERT INTO tb_emp VALUES ('64', '62157b0', '1', '157b0@qq.com', '1');
INSERT INTO tb_emp VALUES ('65', '63545a5', '1', '545a5@qq.com', '1');
INSERT INTO tb_emp VALUES ('66', '64f2e89', '1', 'f2e89@qq.com', '1');
INSERT INTO tb_emp VALUES ('67', '65ff831', '1', 'ff831@qq.com', '1');
INSERT INTO tb_emp VALUES ('68', '6608e08', '1', '08e08@qq.com', '1');
INSERT INTO tb_emp VALUES ('69', '6760322', '1', '60322@qq.com', '1');
INSERT INTO tb_emp VALUES ('70', '68ec02c', '1', 'ec02c@qq.com', '1');
INSERT INTO tb_emp VALUES ('71', '69f721e', '1', 'f721e@qq.com', '1');
INSERT INTO tb_emp VALUES ('72', '7056bbd', '1', '56bbd@qq.com', '1');
INSERT INTO tb_emp VALUES ('73', '7129245', '1', '29245@qq.com', '1');
INSERT INTO tb_emp VALUES ('74', '723b6ef', '1', '3b6ef@qq.com', '1');
INSERT INTO tb_emp VALUES ('75', '73aa9cb', '1', 'aa9cb@qq.com', '1');
INSERT INTO tb_emp VALUES ('76', '746a4d4', '1', '6a4d4@qq.com', '1');
INSERT INTO tb_emp VALUES ('77', '759aa6a', '1', '9aa6a@qq.com', '1');
INSERT INTO tb_emp VALUES ('78', '760c1e2', '1', '0c1e2@qq.com', '1');
INSERT INTO tb_emp VALUES ('79', '773605c', '1', '3605c@qq.com', '1');
INSERT INTO tb_emp VALUES ('80', '7872374', '1', '72374@qq.com', '1');
INSERT INTO tb_emp VALUES ('81', '7903fb5', '1', '03fb5@qq.com', '1');
INSERT INTO tb_emp VALUES ('82', '806a35d', '1', '6a35d@qq.com', '1');
INSERT INTO tb_emp VALUES ('83', '8104a36', '1', '04a36@qq.com', '1');
INSERT INTO tb_emp VALUES ('84', '82b39fe', '1', 'b39fe@qq.com', '1');
INSERT INTO tb_emp VALUES ('85', '836b916', '1', '6b916@qq.com', '1');
INSERT INTO tb_emp VALUES ('86', '846d18a', '1', '6d18a@qq.com', '1');
INSERT INTO tb_emp VALUES ('87', '851fbd8', '1', '1fbd8@qq.com', '1');
INSERT INTO tb_emp VALUES ('88', '86dd2c7', '1', 'dd2c7@qq.com', '1');
INSERT INTO tb_emp VALUES ('89', '8703aef', '1', '03aef@qq.com', '1');
INSERT INTO tb_emp VALUES ('90', '8848ef8', '1', '48ef8@qq.com', '1');
INSERT INTO tb_emp VALUES ('91', '8955f65', '1', '55f65@qq.com', '1');
INSERT INTO tb_emp VALUES ('92', '907cde6', '1', '7cde6@qq.com', '1');
INSERT INTO tb_emp VALUES ('93', '9146347', '1', '46347@qq.com', '1');
INSERT INTO tb_emp VALUES ('94', '92a0639', '1', 'a0639@qq.com', '1');
INSERT INTO tb_emp VALUES ('95', '93f9392', '1', 'f9392@qq.com', '1');
INSERT INTO tb_emp VALUES ('96', '9449a68', '1', '49a68@qq.com', '1');
INSERT INTO tb_emp VALUES ('97', '958ac86', '1', '8ac86@qq.com', '1');
INSERT INTO tb_emp VALUES ('98', '96408ba', '1', '408ba@qq.com', '1');
INSERT INTO tb_emp VALUES ('99', '97f1bbb', '1', 'f1bbb@qq.com', '1');
INSERT INTO tb_emp VALUES ('100', '9852843', '1', '52843@qq.com', '1');
INSERT INTO tb_emp VALUES ('101', '9925303', '1', '25303@qq.com', '1');
INSERT INTO tb_emp VALUES ('102', 'tomcat', '1', '11@qq.com', '1');
INSERT INTO tb_emp VALUES ('103', 'admin', '0', 'admin@qq.com', '2');
