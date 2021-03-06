/*
Navicat MySQL Data Transfer

Source Server         : happyfind
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-08-16 10:31:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for borrow_information
-- ----------------------------
DROP TABLE IF EXISTS `borrow_information`;
CREATE TABLE `borrow_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借贷信息表',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `id_card` varchar(45) DEFAULT NULL COMMENT '身份证',
  `status` varchar(45) DEFAULT NULL COMMENT '状态\n',
  `source` varchar(200) DEFAULT NULL COMMENT '来源',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间·',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for register_company
-- ----------------------------
DROP TABLE IF EXISTS `register_company`;
CREATE TABLE `register_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '企业注册信息表',
  `company_name` varchar(45) NOT NULL COMMENT '注册公司名称',
  `contact_name` varchar(45) DEFAULT NULL COMMENT '联系人姓名',
  `phone_number` int(11) NOT NULL COMMENT '联系人电话',
  `other_number` int(11) DEFAULT NULL COMMENT '联系人其他号码',
  `email` varchar(45) DEFAULT NULL COMMENT '联系人邮箱',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间·',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for release_information
-- ----------------------------
DROP TABLE IF EXISTS `release_information`;
CREATE TABLE `release_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '举报信息表',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `id_card` varchar(45) DEFAULT NULL COMMENT '身份证',
  `release_type` varchar(45) DEFAULT NULL COMMENT '举报类型',
  `loan_amount` double DEFAULT NULL COMMENT '贷款金额',
  `debt_amount` varchar(45) DEFAULT NULL COMMENT '欠款金额',
  `loan_institutions` varchar(45) DEFAULT NULL COMMENT '贷款机构',
  `release_time` datetime DEFAULT NULL COMMENT '举报时间',
  `contact_number1` varchar(45) DEFAULT NULL,
  `contact_number2` varchar(45) DEFAULT NULL,
  `contact_number3` varchar(45) DEFAULT NULL,
  `loan_time` datetime DEFAULT NULL COMMENT '贷款时间',
  `loan_timelimit` varchar(20) DEFAULT NULL COMMENT '贷款期限',
  `type` varchar(45) DEFAULT NULL COMMENT '个人举报和机构举报',
  `select_amount` varchar(45) DEFAULT NULL COMMENT '查询价格',
  `is_reward` varchar(45) DEFAULT NULL COMMENT '是否悬赏',
  `overdue_time` varchar(45) DEFAULT NULL COMMENT '逾期日期',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间·',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 

-- ----------------------------
-- Table structure for reward_information
-- ----------------------------
DROP TABLE IF EXISTS `reward_information`;
CREATE TABLE `reward_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '悬赏信息表',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `id_card` varchar(45) DEFAULT NULL COMMENT '身份证',
  `loan_time` datetime DEFAULT NULL COMMENT '贷款时间',
  `loan_mount` double DEFAULT NULL COMMENT '贷款金额',
  `release_time` datetime DEFAULT NULL COMMENT '发布日期',
  `reward_amount` double DEFAULT NULL COMMENT '悬赏金额',
  `arrears_amount` double DEFAULT NULL COMMENT '欠款金额',
  `contact_number1` varchar(45) NOT NULL,
  `contact_number2` varchar(45) DEFAULT NULL,
  `contact_number3` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT '分为个人和机构\n',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间·',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 

-- ----------------------------
-- Table structure for reward_information
-- ----------------------------
DROP TABLE IF EXISTS `getreward_information`;
CREATE TABLE `getreward_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '领赏自增列',
  `reward_id` int(11) NOT NULL  COMMENT '悬赏id',
  `contact_number1` varchar(45) NOT NULL,
  `contact_number2` varchar(45) DEFAULT NULL,
  `contact_number3` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `idcardcopy` varchar(200) DEFAULT NULL COMMENT '',
  `getreward_name` varchar(45) DEFAULT NULL,
  `getreward_number` varchar(45) DEFAULT NULL,
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间·',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for select_record_company
-- ----------------------------
DROP TABLE IF EXISTS `select_record_company`;
CREATE TABLE `select_record_company` (
  `serial_number` int(11) NOT NULL COMMENT '企业查询记录表',
  `datetime` datetime DEFAULT NULL,
  `select_company` varchar(45) DEFAULT NULL,
  `select_reason` varchar(45) DEFAULT NULL COMMENT '机构查询记录',
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for select_record_person
-- ----------------------------
DROP TABLE IF EXISTS `select_record_person`;
CREATE TABLE `select_record_person` (
  `serial_number` int(11) NOT NULL COMMENT '个人查询记录表',
  `datetime` datetime DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL COMMENT '个人查询记录',
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for supremecourt_broken_promises
-- ----------------------------
DROP TABLE IF EXISTS `supremecourt_broken_promises`;
CREATE TABLE `supremecourt_broken_promises` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '最高法院失信信息表',
  `name` varchar(45) DEFAULT NULL,
  `record_time` datetime DEFAULT NULL,
  `record_number` varchar(45) DEFAULT NULL COMMENT '最高法院失信信息',
  `release_time` datetime DEFAULT NULL,
  `perform_court` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `obligation` varchar(45) DEFAULT NULL,
  `perform_situation` varchar(45) DEFAULT NULL,
  `perform_situation_detail` varchar(45) DEFAULT NULL,
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间·',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for supremecourt_perform
-- ----------------------------
DROP TABLE IF EXISTS `supremecourt_perform`;
CREATE TABLE `supremecourt_perform` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '最高法院执行信息表',
  `name` varchar(45) DEFAULT NULL,
  `record_time` datetime DEFAULT NULL,
  `record_number` varchar(45) DEFAULT NULL COMMENT '最高法院执行信息',
  `release_time` datetime DEFAULT NULL,
  `perform_court` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `obligation` varchar(200) DEFAULT NULL,
  `perform_situation` varchar(200) DEFAULT NULL,
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间·',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `dateTime` varchar(255) DEFAULT NULL,
  `logType` int(11) DEFAULT NULL,
  `logUser` varchar(255) DEFAULT NULL,
  `logcotent` varchar(255) DEFAULT NULL,
  `logkey` varchar(255) DEFAULT NULL,
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL COMMENT '用户信息表',
  `username` varchar(45) DEFAULT NULL,
  `id_card` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `work_company` varchar(45) DEFAULT NULL COMMENT '工作单位',
  `job` varchar(45) DEFAULT NULL COMMENT '职位',
  `account_amount` double DEFAULT NULL COMMENT '账户余额',
  `bank_number` varchar(45) DEFAULT NULL COMMENT '银行卡号',
  `bank_name` varchar(45) DEFAULT NULL,
  `open_bank` varchar(45) DEFAULT NULL COMMENT '开户银行',
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for find_people
-- ----------------------------
CREATE TABLE `find_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借贷信息表',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(45) DEFAULT NULL COMMENT '身份证',
  `age` varchar(45) DEFAULT NULL COMMENT '年龄',
  `origin` varchar(45) DEFAULT NULL COMMENT '籍贯',
  `residence` varchar(200) DEFAULT NULL COMMENT '居住地',
  `rightsplace` varchar(200) DEFAULT NULL COMMENT '债券发生地',
  `phonenumber` varchar(20) DEFAULT NULL COMMENT '原联系方式1',
  `phonenumber1` varchar(20) DEFAULT NULL COMMENT '原联系方式2',
  `phonenumber2` varchar(20) DEFAULT NULL COMMENT '原联系方式3',
  `missingday` varchar(20) DEFAULT NULL COMMENT '失踪天数',
  `loanagreement` varchar(200) DEFAULT NULL COMMENT '借款协议',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `idcardcopy` varchar(200) DEFAULT NULL COMMENT '被催收人ID复印件',
  `loancontract` varchar(200) DEFAULT NULL COMMENT '借贷合同',
  `publishtype` varchar(20) DEFAULT NULL COMMENT '发布方类别',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for righ_debt
-- ----------------------------

CREATE TABLE `right_debt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL COMMENT '1定价标；2竞价标',
  `rightname` varchar(45) DEFAULT NULL COMMENT '债权人姓名',
  `rightaddress` varchar(45) DEFAULT NULL COMMENT '债权人地址',
  `rightphone` varchar(45) DEFAULT NULL COMMENT '债权人电话',
  `rightidcard` varchar(45) DEFAULT NULL COMMENT '债权人身份证号或营业执照注册号',
  `rightcontact` varchar(200) DEFAULT NULL COMMENT '债权人联系人',
  `rightcontactphone` varchar(200) DEFAULT NULL COMMENT '债权方联系人电话',
  `rightamount` varchar(20) DEFAULT NULL COMMENT '债权金额',
  `disposalmethod` varchar(200) DEFAULT NULL COMMENT '期望处置方式及回报',
  `latedays` varchar(20) DEFAULT NULL COMMENT '逾期时间',
  `guaranteemethod` varchar(20) DEFAULT NULL COMMENT '担保方式',
  `collectionmeasures` varchar(200) DEFAULT NULL COMMENT '催收措施',
  `voucher` varchar(200) DEFAULT NULL COMMENT '上传相关凭证',
  `rightdesc` varchar(200) DEFAULT NULL COMMENT '债权描述',
  `debtname` varchar(200) DEFAULT NULL COMMENT '债务方姓名',
  `debtaddress` varchar(20) DEFAULT NULL COMMENT '债务方地址',
  `debtphone1` varchar(255) DEFAULT NULL COMMENT '债务方电话1',
  `debtphone2` varchar(255) DEFAULT NULL COMMENT '债务方电话2',
  `debtphone3` varchar(255) DEFAULT NULL COMMENT '债务方电话3',
  `debtidcard` varchar(45) DEFAULT NULL COMMENT '债务方证件',
  `debtiscontact` varchar(255) DEFAULT NULL COMMENT '1可联系；2已失联',
  `debtispay` varchar(255) DEFAULT NULL COMMENT '1可以；2不可以；3不确定',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) COMMENT='定价标和竞价标' ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qualification_confirm
-- ----------------------------


CREATE TABLE `quality_confirm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL COMMENT '1个人用户认证；2企业用户认证',
  `userid` varchar(45) DEFAULT NULL COMMENT '个人用户姓名',
  `username` varchar(45) DEFAULT NULL COMMENT '个人用户姓名',
  `idcard` varchar(45) DEFAULT NULL COMMENT '个人用户身份证号',
  `profession` varchar(45) DEFAULT NULL COMMENT '个人用户职业',
  `province` varchar(45) DEFAULT NULL COMMENT '个人用户所在地省份',
  `prefecturecity;` varchar(200) DEFAULT NULL COMMENT '个人用户所在地地级市',
  `area` varchar(200) DEFAULT NULL COMMENT '个人用户所在地市区',
  `uploadidcard` varchar(20) DEFAULT NULL COMMENT '个人用户上传身份证',
  `email` varchar(200) DEFAULT NULL COMMENT '个人用户邮箱',
  `companyname` varchar(20) DEFAULT NULL COMMENT '企业名称',
  `companyidcard` varchar(20) DEFAULT NULL COMMENT '企业证件号',
  `companyprovince` varchar(45) DEFAULT NULL COMMENT '企业所在地省份',
  `companyprefecturecity` varchar(200) DEFAULT NULL COMMENT '企业用户所在地地级市',
  `companyarea` varchar(200) DEFAULT NULL COMMENT '企业所在地市区',
  `uploadcompanyareaidcard` varchar(20) DEFAULT NULL COMMENT '企业上传证件',
  `legalname` varchar(200) DEFAULT NULL COMMENT '企业法定代表人',
  `companysize` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `companyemail` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) COMMENT='资格认证包含个人和企业信息' ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

