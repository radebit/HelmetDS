/*
 Navicat Premium Data Transfer

 Source Server         : 本地MySQL5.7
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : helmetds

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 16/03/2020 22:07:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` VALUES (1, 'h_user_info', '员工信息表', 'HUserInfo', 'crud', 'com.radebit.project.helmetds', 'helmetds', 'userInfo', '员工信息', 'Rade', '{}', 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14', NULL);
INSERT INTO `gen_table` VALUES (2, 'h_camera_group', '摄像头分组', 'HCameraGroup', 'crud', 'com.radebit.project.helmetds', 'helmetds', 'group', '摄像头分组', 'Rade', '{}', 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:42:38', NULL);
INSERT INTO `gen_table` VALUES (3, 'h_camera_list', '摄像头信息', 'HCameraList', 'crud', 'com.radebit.project.helmetds', 'helmetds', 'cameraList', '摄像头信息', 'Rade', '{}', 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46', NULL);
INSERT INTO `gen_table` VALUES (4, 'h_violation_record', '安全违规记录', 'HViolationRecord', 'crud', 'com.radebit.project.helmetds', 'helmetds', 'violationRecord', '安全违规记录', 'Rade', '{}', 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39', NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` VALUES (1, '1', 'user_id', '用户ID', 'bigint(50)', 'Long', 'userId', '1', '0', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', 1, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (2, '1', 'real_name', '真实姓名', 'varchar(64)', 'String', 'realName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (3, '1', 'id_number', '身份证号', 'varchar(64)', 'String', 'idNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (4, '1', 'pic_face', '人脸照片', 'varchar(2048)', 'String', 'picFace', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (5, '1', 'pic_helmet', '安全帽照片', 'varchar(2048)', 'String', 'picHelmet', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (6, '1', 'pic_zj', '证件照', 'varchar(2048)', 'String', 'picZj', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (7, '1', 'birthday', '生日', 'datetime', 'Date', 'birthday', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 7, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (8, '1', 'home_address', '家庭住址', 'varchar(1024)', 'String', 'homeAddress', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 8, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (9, '1', 'entry_time', '入职时间', 'datetime', 'Date', 'entryTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 9, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (10, '1', 'founder', '所属用户', 'bigint(50)', 'Long', 'founder', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (11, '1', 'remarks', '备注说明', 'varchar(1024)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 11, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (12, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, '1', '1', 'BETWEEN', 'datetime', '', 12, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (13, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-03-15 12:13:11', '', '2020-03-15 12:14:14');
INSERT INTO `gen_table_column` VALUES (14, '2', 'group_id', '摄像头分组ID', 'bigint(50)', 'Long', 'groupId', '1', '1', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', 1, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:42:38');
INSERT INTO `gen_table_column` VALUES (15, '2', 'group_name', '摄像头分组名称', 'varchar(1024)', 'String', 'groupName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 2, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:42:38');
INSERT INTO `gen_table_column` VALUES (16, '3', 'camera_id', '摄像头编号', 'bigint(50)', 'Long', 'cameraId', '1', '1', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', 1, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (17, '3', 'group_id', '摄像头分组ID', 'bigint(50)', 'Long', 'groupId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (18, '3', 'camera_name', '摄像头名称', 'varchar(1024)', 'String', 'cameraName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 3, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (19, '3', 'rtsp_stream', 'rtsp流地址', 'varchar(2048)', 'String', 'rtspStream', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (20, '3', 'rtmp_stream', 'rtmp流地址', 'varchar(2048)', 'String', 'rtmpStream', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (21, '3', 'main_stream', '主流地址', 'varchar(2048)', 'String', 'mainStream', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (22, '3', 'frequency_band', '频段', 'varchar(2048)', 'String', 'frequencyBand', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 7, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (23, '3', 'secret_key', '密钥', 'varchar(2048)', 'String', 'secretKey', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (24, '3', 'screenshots', '抓图', 'varchar(2048)', 'String', 'screenshots', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 9, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (25, '3', 'founder', '归属人', 'bigint(50)', 'Long', 'founder', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (26, '3', 'state', '摄像头状态(0-离线,1-在线)', 'char(11)', 'String', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (27, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, '1', '1', 'BETWEEN', 'datetime', '', 12, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (28, '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:43:46');
INSERT INTO `gen_table_column` VALUES (29, '4', 'violation_id', '违规id', 'bigint(50)', 'Long', 'violationId', '1', '1', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', 1, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
INSERT INTO `gen_table_column` VALUES (30, '4', 'user_id', '违规人员id', 'bigint(50)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
INSERT INTO `gen_table_column` VALUES (31, '4', 'violation_type', '违规类型(0-未带安全帽,1-安全帽佩戴不规范,2-其他)', 'char(11)', 'String', 'violationType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
INSERT INTO `gen_table_column` VALUES (32, '4', 'violation_content', '违规内容', 'varchar(2048)', 'String', 'violationContent', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 4, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
INSERT INTO `gen_table_column` VALUES (33, '4', 'violation_place', '违规地点', 'varchar(2048)', 'String', 'violationPlace', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
INSERT INTO `gen_table_column` VALUES (34, '4', 'screenshots', '违规截图', 'varchar(2048)', 'String', 'screenshots', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
INSERT INTO `gen_table_column` VALUES (35, '4', 'deal_state', '是否处理(0-待处理,1-确认违规,2-误报违规)', 'char(11)', 'String', 'dealState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
INSERT INTO `gen_table_column` VALUES (36, '4', 'camera_id', '抓拍设备', 'bigint(50)', 'Long', 'cameraId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
INSERT INTO `gen_table_column` VALUES (37, '4', 'remarks', '备注', 'varchar(2048)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 9, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
INSERT INTO `gen_table_column` VALUES (38, '4', 'create_time', '违规时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, '1', '1', 'BETWEEN', 'datetime', '', 10, 'admin', '2020-03-16 12:42:11', '', '2020-03-16 12:44:39');
COMMIT;

-- ----------------------------
-- Table structure for h_camera_group
-- ----------------------------
DROP TABLE IF EXISTS `h_camera_group`;
CREATE TABLE `h_camera_group` (
  `group_id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '摄像头分组ID',
  `group_name` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '摄像头分组名称',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='摄像头分组';

-- ----------------------------
-- Records of h_camera_group
-- ----------------------------
BEGIN;
INSERT INTO `h_camera_group` VALUES (1, '未分类');
INSERT INTO `h_camera_group` VALUES (2, '打卡组');
INSERT INTO `h_camera_group` VALUES (3, '实时监控组');
INSERT INTO `h_camera_group` VALUES (4, '主入口测试');
COMMIT;

-- ----------------------------
-- Table structure for h_camera_list
-- ----------------------------
DROP TABLE IF EXISTS `h_camera_list`;
CREATE TABLE `h_camera_list` (
  `camera_id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '摄像头编号',
  `group_id` bigint(50) DEFAULT '1' COMMENT '摄像头分组ID',
  `camera_name` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '摄像头名称',
  `rtsp_stream` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rtsp流地址',
  `rtmp_stream` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rtmp流地址',
  `main_stream` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主流地址',
  `frequency_band` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '频段',
  `secret_key` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密钥',
  `screenshots` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '抓图',
  `founder` bigint(50) DEFAULT NULL COMMENT '归属人',
  `state` char(11) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '摄像头状态(0-离线,1-在线)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`camera_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='摄像头信息';

-- ----------------------------
-- Records of h_camera_list
-- ----------------------------
BEGIN;
INSERT INTO `h_camera_list` VALUES (2, 2, '测试设备', 'rtsp://192.168.100.1/test', 'rtmp://192.168.100.1/test', 'http://192.168.100.1/test', 'test', '123456', NULL, 3, '0', '2020-03-16 21:28:41', NULL);
INSERT INTO `h_camera_list` VALUES (3, 2, '测试设备02编辑测试', 'rtsp://192.168.100.1/test', 'rtmp://192.168.100.1/test', 'http://192.168.100.1/test', 'test', '123456', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3988559450,2695786254&fm=26&gp=0.jpg', 3, '0', '2020-03-16 21:29:41', '2020-03-16 21:32:24');
COMMIT;

-- ----------------------------
-- Table structure for h_user_info
-- ----------------------------
DROP TABLE IF EXISTS `h_user_info`;
CREATE TABLE `h_user_info` (
  `user_id` bigint(50) NOT NULL COMMENT '用户ID',
  `real_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `id_number` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `pic_face` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人脸照片',
  `pic_helmet` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '安全帽照片',
  `pic_zj` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件照',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `home_address` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭住址',
  `entry_time` datetime DEFAULT NULL COMMENT '入职时间',
  `founder` bigint(50) DEFAULT NULL COMMENT '所属用户',
  `remarks` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注说明',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工信息表';

-- ----------------------------
-- Records of h_user_info
-- ----------------------------
BEGIN;
INSERT INTO `h_user_info` VALUES (3, '系统管理员', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-15 21:49:10', 3, NULL, '2020-03-16 21:49:04', NULL);
INSERT INTO `h_user_info` VALUES (4, '张三', '333323233232332', 'xxxx', 'xxx', 'xxxx', '2020-03-05 20:30:43', '浙江省杭州市', '2020-03-15 20:30:51', 3, NULL, '2020-03-15 20:30:47', '2020-03-16 21:36:12');
COMMIT;

-- ----------------------------
-- Table structure for h_violation_record
-- ----------------------------
DROP TABLE IF EXISTS `h_violation_record`;
CREATE TABLE `h_violation_record` (
  `violation_id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '违规id',
  `user_id` bigint(50) NOT NULL COMMENT '违规人员id',
  `violation_type` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '违规类型(0-未带安全帽,1-安全帽佩戴不规范,2-其他)',
  `violation_content` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '违规内容',
  `violation_place` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '违规地点',
  `screenshots` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '违规截图',
  `deal_state` char(11) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '是否处理(0-待处理,1-确认违规,2-误报违规)',
  `camera_id` bigint(50) DEFAULT NULL COMMENT '抓拍设备',
  `remarks` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '违规时间',
  PRIMARY KEY (`violation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='安全违规记录';

-- ----------------------------
-- Records of h_violation_record
-- ----------------------------
BEGIN;
INSERT INTO `h_violation_record` VALUES (1, 4, '0', '没有佩戴安全帽', '园区入口', 'xxxxx', '1', 3, NULL, '2020-03-16 22:03:54');
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'HelmetDS', 0, 'HelmetDS', '15888888888', 'xxx@xxx.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-09 09:23:37');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '系统管理员', 1, NULL, NULL, NULL, '0', '0', 'admin', '2020-03-15 12:23:16', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '经理', 2, NULL, NULL, NULL, '0', '0', 'admin', '2020-03-15 12:23:26', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 100, '0,100', '员工', 3, NULL, NULL, NULL, '0', '0', 'admin', '2020-03-15 12:23:33', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='定时任务调度表';

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='定时任务调度日志表';

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-03-09 08:02:25');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '1', '验证码错误', '2020-03-12 05:01:55');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-03-12 05:01:58');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-03-12 05:27:40');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2020-03-12 05:30:11');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2020-03-12 05:30:20');
INSERT INTO `sys_logininfor` VALUES (106, 'sysAdmin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2020-03-12 05:39:10');
INSERT INTO `sys_logininfor` VALUES (107, 'sysAdmin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2020-03-15 10:04:48');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-03-15 11:24:03');
INSERT INTO `sys_logininfor` VALUES (109, 'sysAdmin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2020-03-15 12:29:30');
INSERT INTO `sys_logininfor` VALUES (110, 'sysAdmin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2020-03-16 08:30:08');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-03-16 12:41:56');
INSERT INTO `sys_logininfor` VALUES (112, 'sysAdmin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2020-03-16 12:46:54');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1085 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 'M', '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 'M', '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 'M', '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 'C', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 'C', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 'C', '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 'C', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 'C', '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 'C', '0', 'system:dict:list', 'dict', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 'C', '0', 'system:config:list', 'edit', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 'C', '0', 'system:notice:list', 'message', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', 'system/log/index', 1, 'M', '0', '', 'log', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 'C', '0', 'monitor:online:list', 'online', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 'C', '0', 'monitor:job:list', 'job', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 'C', '0', 'monitor:druid:list', 'druid', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 'C', '0', 'monitor:server:list', 'server', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 'C', '0', 'tool:build:list', 'build', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 'C', '0', 'tool:gen:list', 'code', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 'C', '0', 'tool:swagger:list', 'swagger', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 'C', '0', 'monitor:operlog:list', 'form', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 'C', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 'F', '0', 'system:user:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 'F', '0', 'system:role:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 'F', '0', 'system:menu:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 'F', '0', 'system:dept:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 'F', '0', 'system:post:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 'F', '0', 'system:dict:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 'F', '0', 'system:config:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', 1, 'F', '0', 'system:notice:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', 1, 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', 1, 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', 1, 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 'F', '0', 'monitor:operlog:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 'F', '0', 'monitor:logininfor:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 'F', '0', 'monitor:online:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 'F', '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 'F', '0', 'monitor:job:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 114, 1, '#', '', 1, 'F', '0', 'tool:gen:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 114, 2, '#', '', 1, 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 114, 3, '#', '', 1, 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 114, 2, '#', '', 1, 'F', '0', 'tool:gen:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 114, 4, '#', '', 1, 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 114, 5, '#', '', 1, 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '员工信息', 3, 1, 'userInfo', 'helmetds/userInfo/index', 1, 'C', '0', 'helmetds:userInfo:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '员工信息菜单');
INSERT INTO `sys_menu` VALUES (1062, '员工信息查询', 1061, 1, '#', '', 1, 'F', '0', 'helmetds:userInfo:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1063, '员工信息新增', 1061, 2, '#', '', 1, 'F', '0', 'helmetds:userInfo:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1064, '员工信息修改', 1061, 3, '#', '', 1, 'F', '0', 'helmetds:userInfo:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1065, '员工信息删除', 1061, 4, '#', '', 1, 'F', '0', 'helmetds:userInfo:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1066, '员工信息导出', 1061, 5, '#', '', 1, 'F', '0', 'helmetds:userInfo:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1067, '安全违规记录', 3, 1, 'violationRecord', 'helmetds/violationRecord/index', 1, 'C', '0', 'helmetds:violationRecord:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '安全违规记录菜单');
INSERT INTO `sys_menu` VALUES (1068, '安全违规记录查询', 1067, 1, '#', '', 1, 'F', '0', 'helmetds:violationRecord:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1069, '安全违规记录新增', 1067, 2, '#', '', 1, 'F', '0', 'helmetds:violationRecord:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1070, '安全违规记录修改', 1067, 3, '#', '', 1, 'F', '0', 'helmetds:violationRecord:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1071, '安全违规记录删除', 1067, 4, '#', '', 1, 'F', '0', 'helmetds:violationRecord:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1072, '安全违规记录导出', 1067, 5, '#', '', 1, 'F', '0', 'helmetds:violationRecord:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1073, '摄像头信息', 3, 1, 'cameraList', 'helmetds/cameraList/index', 1, 'C', '0', 'helmetds:cameraList:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '摄像头信息菜单');
INSERT INTO `sys_menu` VALUES (1074, '摄像头信息查询', 1073, 1, '#', '', 1, 'F', '0', 'helmetds:cameraList:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1075, '摄像头信息新增', 1073, 2, '#', '', 1, 'F', '0', 'helmetds:cameraList:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1076, '摄像头信息修改', 1073, 3, '#', '', 1, 'F', '0', 'helmetds:cameraList:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1077, '摄像头信息删除', 1073, 4, '#', '', 1, 'F', '0', 'helmetds:cameraList:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1078, '摄像头信息导出', 1073, 5, '#', '', 1, 'F', '0', 'helmetds:cameraList:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1079, '摄像头分组', 3, 1, 'group', 'helmetds/group/index', 1, 'C', '0', 'helmetds:group:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '摄像头分组菜单');
INSERT INTO `sys_menu` VALUES (1080, '摄像头分组查询', 1079, 1, '#', '', 1, 'F', '0', 'helmetds:group:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1081, '摄像头分组新增', 1079, 2, '#', '', 1, 'F', '0', 'helmetds:group:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1082, '摄像头分组修改', 1079, 3, '#', '', 1, 'F', '0', 'helmetds:group:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1083, '摄像头分组删除', 1079, 4, '#', '', 1, 'F', '0', 'helmetds:group:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1084, '摄像头分组导出', 1079, 5, '#', '', 1, 'F', '0', 'helmetds:group:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告内容',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='通知公告表';

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_oper_log` VALUES (100, '个人信息', 2, 'com.radebit.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:21:18');
INSERT INTO `sys_oper_log` VALUES (101, '个人信息', 2, 'com.radebit.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"xxxx@xxx.com\",\"nickName\":\"系统管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:21:35');
INSERT INTO `sys_oper_log` VALUES (102, '用户头像', 2, 'com.radebit.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/03/09/ad1363401048805538b1cc9cf4e80120.jpeg\",\"code\":200}', 0, NULL, '2020-03-09 09:22:12');
INSERT INTO `sys_oper_log` VALUES (103, '部门管理', 2, 'com.radebit.project.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"HelmetDS\",\"leader\":\"HelmetDS\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1521171180000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"xxx@xxx.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:23:37');
INSERT INTO `sys_oper_log` VALUES (104, '通知公告', 3, 'com.radebit.project.system.controller.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/2', '127.0.0.1', '内网IP', '{noticeId=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:26:41');
INSERT INTO `sys_oper_log` VALUES (105, '通知公告', 3, 'com.radebit.project.system.controller.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/1', '127.0.0.1', '内网IP', '{noticeId=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:26:43');
INSERT INTO `sys_oper_log` VALUES (106, '角色管理', 2, 'com.radebit.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,3,113,114,1055,1056,1058,1057,1059,1060,115],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:27:36');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 3, 'com.radebit.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:27:41');
INSERT INTO `sys_oper_log` VALUES (108, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', 0, NULL, '2020-03-09 09:27:53');
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/109', '127.0.0.1', '内网IP', '{deptId=109}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:27:56');
INSERT INTO `sys_oper_log` VALUES (110, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/108', '127.0.0.1', '内网IP', '{deptId=108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:27:57');
INSERT INTO `sys_oper_log` VALUES (111, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 09:28:00');
INSERT INTO `sys_oper_log` VALUES (112, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/107', '127.0.0.1', '内网IP', '{deptId=107}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:12:33');
INSERT INTO `sys_oper_log` VALUES (113, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/106', '127.0.0.1', '内网IP', '{deptId=106}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:12:34');
INSERT INTO `sys_oper_log` VALUES (114, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2020-03-12 05:12:36');
INSERT INTO `sys_oper_log` VALUES (115, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/104', '127.0.0.1', '内网IP', '{deptId=104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:12:39');
INSERT INTO `sys_oper_log` VALUES (116, '岗位管理', 3, 'com.radebit.project.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/4', '127.0.0.1', '内网IP', '{postIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:13:54');
INSERT INTO `sys_oper_log` VALUES (117, '岗位管理', 3, 'com.radebit.project.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/3', '127.0.0.1', '内网IP', '{postIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:13:58');
INSERT INTO `sys_oper_log` VALUES (118, '岗位管理', 3, 'com.radebit.project.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/2', '127.0.0.1', '内网IP', '{postIds=2}', 'null', 1, '项目经理已分配,不能删除', '2020-03-12 05:14:00');
INSERT INTO `sys_oper_log` VALUES (119, '用户管理', 3, 'com.radebit.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/2', '127.0.0.1', '内网IP', '{userIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:14:30');
INSERT INTO `sys_oper_log` VALUES (120, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:14:40');
INSERT INTO `sys_oper_log` VALUES (121, '岗位管理', 2, 'com.radebit.project.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"postName\":\"超级管理员\",\"postCode\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:15:20');
INSERT INTO `sys_oper_log` VALUES (122, '岗位管理', 2, 'com.radebit.project.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":2,\"params\":{},\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"postName\":\"系统管理员\",\"postCode\":\"sysAdmin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:15:32');
INSERT INTO `sys_oper_log` VALUES (123, '岗位管理', 1, 'com.radebit.project.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"3\",\"flag\":false,\"postId\":5,\"params\":{},\"createBy\":\"admin\",\"postName\":\"工人\",\"postCode\":\"worker\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:15:49');
INSERT INTO `sys_oper_log` VALUES (124, '用户管理', 2, 'com.radebit.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"xxxx@xxx.com\",\"nickName\":\"系统管理员\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"/profile/avatar/2020/03/09/ad1363401048805538b1cc9cf4e80120.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2020-03-12 05:16:36');
INSERT INTO `sys_oper_log` VALUES (125, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:17:15');
INSERT INTO `sys_oper_log` VALUES (126, '部门管理', 3, 'com.radebit.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/101', '127.0.0.1', '内网IP', '{deptId=101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:17:17');
INSERT INTO `sys_oper_log` VALUES (127, '角色管理', 2, 'com.radebit.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"系统管理员\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"roleKey\":\"sysAdmin\",\"roleName\":\"系统管理员\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,3,113,114,1055,1056,1058,1057,1059,1060,115],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:18:29');
INSERT INTO `sys_oper_log` VALUES (128, '角色管理', 2, 'com.radebit.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"createTime\":1521171180000,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[],\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员角色', '2020-03-12 05:18:36');
INSERT INTO `sys_oper_log` VALUES (129, '角色管理', 1, 'com.radebit.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"params\":{},\"roleSort\":\"3\",\"createBy\":\"admin\",\"roleKey\":\"manager\",\"roleName\":\"经理\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:19:20');
INSERT INTO `sys_oper_log` VALUES (130, '角色管理', 1, 'com.radebit.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"params\":{},\"roleSort\":\"4\",\"createBy\":\"admin\",\"roleKey\":\"worker\",\"roleName\":\"工人\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:19:36');
INSERT INTO `sys_oper_log` VALUES (131, '用户管理', 1, 'com.radebit.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"19858185300\",\"admin\":false,\"password\":\"$2a$10$HyykQ4TcOMCq0qFM/2Zq0.uEh8YWQdBf6dxWwvn2vRnT1gN9.BMOm\",\"postIds\":[2],\"email\":\"sysAdmin@163.com\",\"nickName\":\"系统管理员\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"sysAdmin\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:34:55');
INSERT INTO `sys_oper_log` VALUES (132, '角色管理', 2, 'com.radebit.project.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"系统管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"roleKey\":\"sysAdmin\",\"roleName\":\"系统管理员\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-12 05:38:28');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 6, 'com.radebit.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'h_user_info', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:13:11');
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 2, 'com.radebit.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"Rade\",\"columns\":[{\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"用户ID\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1584245591000,\"tableId\":1,\"pk\":true,\"columnName\":\"user_id\"},{\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"realName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"真实姓名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1584245591000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"real_name\"},{\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"idNumber\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"身份证号\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1584245591000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"id_number\"},{\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"picFace\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"人脸照片\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(2048)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1584245591000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:14:14');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 8, 'com.radebit.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-03-15 12:14:16');
INSERT INTO `sys_oper_log` VALUES (136, '角色管理', 2, 'com.radebit.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"系统管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"roleKey\":\"sysAdmin\",\"roleName\":\"系统管理员\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,3,1061,1062,1063,1064,1065,1066,113,114,1055,1056,1058,1057,1059,1060,115],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:16:52');
INSERT INTO `sys_oper_log` VALUES (137, '部门管理', 1, 'com.radebit.project.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"系统管理员\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:23:16');
INSERT INTO `sys_oper_log` VALUES (138, '部门管理', 1, 'com.radebit.project.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"经理\",\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:23:26');
INSERT INTO `sys_oper_log` VALUES (139, '部门管理', 1, 'com.radebit.project.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"员工\",\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:23:33');
INSERT INTO `sys_oper_log` VALUES (140, '岗位管理', 3, 'com.radebit.project.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/5', '127.0.0.1', '内网IP', '{postIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:23:59');
INSERT INTO `sys_oper_log` VALUES (141, '岗位管理', 3, 'com.radebit.project.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/2', '127.0.0.1', '内网IP', '{postIds=2}', 'null', 1, '系统管理员已分配,不能删除', '2020-03-15 12:24:01');
INSERT INTO `sys_oper_log` VALUES (142, '用户管理', 2, 'com.radebit.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"sysAdmin\",\"roleName\":\"系统管理员\",\"status\":\"0\"}],\"phonenumber\":\"19858185300\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"\",\"email\":\"sysAdmin@163.com\",\"nickName\":\"系统管理员\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"HelmetDS\",\"leader\":\"HelmetDS\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"sysAdmin\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1583962495000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:24:11');
INSERT INTO `sys_oper_log` VALUES (143, '用户管理', 2, 'com.radebit.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"sysAdmin\",\"roleName\":\"系统管理员\",\"status\":\"0\"}],\"phonenumber\":\"19858185300\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"\",\"email\":\"sysAdmin@163.com\",\"nickName\":\"系统管理员\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"HelmetDS\",\"leader\":\"HelmetDS\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"sysAdmin\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1583962495000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:24:17');
INSERT INTO `sys_oper_log` VALUES (144, '用户管理', 2, 'com.radebit.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"xxxx@xxx.com\",\"nickName\":\"系统管理员\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"/profile/avatar/2020/03/09/ad1363401048805538b1cc9cf4e80120.jpeg\",\"dept\":{\"deptName\":\"HelmetDS\",\"leader\":\"HelmetDS\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2020-03-15 12:24:22');
INSERT INTO `sys_oper_log` VALUES (145, '岗位管理', 3, 'com.radebit.project.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/2', '127.0.0.1', '内网IP', '{postIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:24:42');
INSERT INTO `sys_oper_log` VALUES (146, '岗位管理', 3, 'com.radebit.project.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/1', '127.0.0.1', '内网IP', '{postIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:25:10');
INSERT INTO `sys_oper_log` VALUES (147, '用户管理', 1, 'com.radebit.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13509097656\",\"admin\":false,\"password\":\"$2a$10$Lpxmy90d9.ngvQEZN1EdgeayKe4NZnIqflxBKaxz6DczM5AY1N5QC\",\"postIds\":[],\"email\":\"zs@qq.com\",\"nickName\":\"张三\",\"sex\":\"0\",\"deptId\":103,\"params\":{},\"userName\":\"zhangsan\",\"userId\":4,\"createBy\":\"admin\",\"roleIds\":[4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-15 12:26:10');
INSERT INTO `sys_oper_log` VALUES (148, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"1\",\"phonenumber\":\"13509097878\",\"idNumber\":\"388473849384938493\",\"userName\":\"test\",\"realName\":\"张三\",\"entryTime\":1583769600000,\"password\":\"\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'nick_name\' doesn\'t have a default value\n### The error may involve com.radebit.project.system.mapper.SysUserMapper.insertUser-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_user(            dept_id,       user_name,             email,             phonenumber,       sex,       password,                        create_time    )values(            ?,       ?,             ?,             ?,       ?,       ?,                        sysdate()    )\n### Cause: java.sql.SQLException: Field \'nick_name\' doesn\'t have a default value\n; Field \'nick_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'nick_name\' doesn\'t have a default value', '2020-03-16 09:26:10');
INSERT INTO `sys_oper_log` VALUES (149, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"1\",\"phonenumber\":\"13509097878\",\"idNumber\":\"388473849384938493\",\"userName\":\"test\",\"realName\":\"张三\",\"entryTime\":1583769600000,\"password\":\"\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"新增员工成功！\",\"code\":200}', 0, NULL, '2020-03-16 09:54:28');
INSERT INTO `sys_oper_log` VALUES (150, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097878\",\"idNumber\":\"388473849384938493\",\"userName\":\"test\",\"realName\":\"张三\",\"entryTime\":1583769600000,\"password\":\"\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"用户名重复！\",\"code\":500}', 0, NULL, '2020-03-16 09:54:51');
INSERT INTO `sys_oper_log` VALUES (151, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097878\",\"idNumber\":\"388473849384938493\",\"userName\":\"test2\",\"realName\":\"张三\",\"entryTime\":1583769600000,\"password\":\"\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"手机号重复！\",\"code\":500}', 0, NULL, '2020-03-16 09:54:57');
INSERT INTO `sys_oper_log` VALUES (152, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097875\",\"idNumber\":\"388473849384938493\",\"userName\":\"test2\",\"realName\":\"张三\",\"entryTime\":1583769600000,\"password\":\"123123\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"新增员工成功！\",\"code\":200}', 0, NULL, '2020-03-16 09:55:09');
INSERT INTO `sys_oper_log` VALUES (153, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097875\",\"idNumber\":\"388473849384938493\",\"userName\":\"test2\",\"realName\":\"张三\",\"entryTime\":1583769600000,\"password\":\"123123\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"用户名重复！\",\"code\":500}', 0, NULL, '2020-03-16 09:59:56');
INSERT INTO `sys_oper_log` VALUES (154, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097871\",\"idNumber\":\"388473849384938493\",\"userName\":\"test3\",\"realName\":\"张三\",\"entryTime\":1583769600000,\"password\":\"123456\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', 'null', 1, '新增员工数据异常', '2020-03-16 10:00:08');
INSERT INTO `sys_oper_log` VALUES (155, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097871\",\"idNumber\":\"388473849384938493\",\"userName\":\"test3\",\"realName\":\"张三\",\"entryTime\":1583769600000,\"password\":\"123456\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', 'null', 1, '新增员工数据异常', '2020-03-16 10:00:37');
INSERT INTO `sys_oper_log` VALUES (156, '员工信息', 2, 'com.radebit.project.helmetds.controller.HUserInfoController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"birthday\":907171200000,\"sex\":\"\",\"phonenumber\":\"13509097871\",\"idNumber\":\"388473849384938493\",\"userId\":6,\"realName\":\"张三\",\"entryTime\":1583769600000,\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', 'null', 1, '更新系统用户信息异常', '2020-03-16 10:27:56');
INSERT INTO `sys_oper_log` VALUES (157, '员工信息', 2, 'com.radebit.project.helmetds.controller.HUserInfoController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"birthday\":907171200000,\"sex\":\"1\",\"phonenumber\":\"13509097871\",\"idNumber\":\"388473849384938493\",\"userId\":6,\"realName\":\"张三\",\"entryTime\":1583769600000,\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"0\"}', 'null', 1, '更新系统用户信息异常', '2020-03-16 10:28:35');
INSERT INTO `sys_oper_log` VALUES (158, '员工信息', 2, 'com.radebit.project.helmetds.controller.HUserInfoController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"birthday\":907171200000,\"sex\":\"\",\"phonenumber\":\"13509097871\",\"idNumber\":\"388473849384938493\",\"userId\":6,\"realName\":\"李四\",\"entryTime\":1583769600000,\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"更新员工信息成功！\",\"code\":200}', 0, NULL, '2020-03-16 10:29:51');
INSERT INTO `sys_oper_log` VALUES (159, '员工信息', 3, 'com.radebit.project.helmetds.controller.HUserInfoController.remove()', 'DELETE', 1, 'sysAdmin', NULL, '/helmetds/userInfo/5,6', '127.0.0.1', '内网IP', '{userIds=5,6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 10:31:20');
INSERT INTO `sys_oper_log` VALUES (160, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097871\",\"idNumber\":\"388473849384938493\",\"userName\":\"lisi\",\"realName\":\"李四\",\"entryTime\":1583769600000,\"password\":\"123456\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"新增员工成功！\",\"code\":200}', 0, NULL, '2020-03-16 10:37:18');
INSERT INTO `sys_oper_log` VALUES (161, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097871\",\"idNumber\":\"388473849384938493\",\"userName\":\"lisi\",\"realName\":\"李四\",\"entryTime\":1583769600000,\"password\":\"123456\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"用户名重复！\",\"code\":500}', 0, NULL, '2020-03-16 10:37:21');
INSERT INTO `sys_oper_log` VALUES (162, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097871\",\"idNumber\":\"388473849384938493\",\"userName\":\"wangwu\",\"realName\":\"王五\",\"entryTime\":1583769600000,\"password\":\"123456\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"手机号重复！\",\"code\":500}', 0, NULL, '2020-03-16 10:37:43');
INSERT INTO `sys_oper_log` VALUES (163, '员工信息', 1, 'com.radebit.project.helmetds.controller.HUserInfoController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"sex\":\"\",\"phonenumber\":\"13509097811\",\"idNumber\":\"388473849384938493\",\"userName\":\"wangwu\",\"realName\":\"王五\",\"entryTime\":1583769600000,\"password\":\"123456\",\"email\":\"test@qq.com\",\"homeAddress\":\"北京市海淀区\",\"status\":\"\"}', '{\"msg\":\"新增员工成功！\",\"code\":200}', 0, NULL, '2020-03-16 10:37:46');
INSERT INTO `sys_oper_log` VALUES (164, '员工信息', 3, 'com.radebit.project.helmetds.controller.HUserInfoController.remove()', 'DELETE', 1, 'sysAdmin', NULL, '/helmetds/userInfo/9,10', '127.0.0.1', '内网IP', '{userIds=9,10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 10:38:23');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 6, 'com.radebit.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'h_camera_group,h_camera_list,h_violation_record', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 12:42:11');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 2, 'com.radebit.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"Rade\",\"columns\":[{\"usableColumn\":false,\"columnId\":14,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"groupId\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"摄像头分组ID\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1584333731000,\"tableId\":2,\"pk\":true,\"columnName\":\"group_id\"},{\"usableColumn\":false,\"columnId\":15,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"groupName\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"摄像头分组名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(1024)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1584333731000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"group_name\"}],\"businessName\":\"group\",\"moduleName\":\"helmetds\",\"className\":\"HCameraGroup\",\"tableName\":\"h_camera_group\",\"crud\":true,\"options\":\"{}\",\"packageName\":\"com.radebit.project.helmetds\",\"functionName\":\"摄像头分组\",\"tree\":false,\"tableComment\":\"摄像头分组\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 12:42:38');
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 2, 'com.radebit.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"Rade\",\"columns\":[{\"usableColumn\":false,\"columnId\":16,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"cameraId\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"摄像头编号\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1584333731000,\"tableId\":3,\"pk\":true,\"columnName\":\"camera_id\"},{\"usableColumn\":false,\"columnId\":17,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"groupId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"摄像头分组ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1584333731000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"group_id\"},{\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"cameraName\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"摄像头名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(1024)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1584333731000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"camera_name\"},{\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"rtspStream\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"rtsp流地址\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(2048)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1584333731000,\"isEdit\":\"1\",\"tableId\":3,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 12:43:46');
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 2, 'com.radebit.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"Rade\",\"columns\":[{\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"violationId\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"违规id\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1584333731000,\"tableId\":4,\"pk\":true,\"columnName\":\"violation_id\"},{\"usableColumn\":false,\"columnId\":30,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"违规人员id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1584333731000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"user_id\"},{\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"violationType\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"违规类型(0-未带安全帽,1-安全帽佩戴不规范,2-其他)\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"char(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1584333731000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"violation_type\"},{\"usableColumn\":false,\"columnId\":32,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"violationContent\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"违规内容\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(2048)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 12:44:40');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 8, 'com.radebit.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-03-16 12:44:59');
INSERT INTO `sys_oper_log` VALUES (170, '角色管理', 2, 'com.radebit.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"系统管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"roleKey\":\"sysAdmin\",\"roleName\":\"系统管理员\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,3,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,113,114,1055,1056,1058,1057,1059,1060,115],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 12:46:16');
INSERT INTO `sys_oper_log` VALUES (171, '摄像头信息', 1, 'com.radebit.project.helmetds.controller.HCameraListController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/cameraList', '127.0.0.1', '内网IP', '{\"params\":{},\"cameraId\":1,\"createTime\":1584363518136}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 12:58:38');
INSERT INTO `sys_oper_log` VALUES (172, '摄像头分组', 1, 'com.radebit.project.helmetds.controller.HCameraGroupController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/group', '127.0.0.1', '内网IP', '{\"groupName\":\"主入口\",\"groupId\":4,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 12:59:49');
INSERT INTO `sys_oper_log` VALUES (173, '摄像头分组', 2, 'com.radebit.project.helmetds.controller.HCameraGroupController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/group', '127.0.0.1', '内网IP', '{\"groupName\":\"主入口测试\",\"groupId\":4,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 13:00:34');
INSERT INTO `sys_oper_log` VALUES (174, '摄像头信息', 1, 'com.radebit.project.helmetds.controller.HCameraListController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/cameraList', '127.0.0.1', '内网IP', '{\"secretKey\":\"123456\",\"founder\":3,\"groupId\":2,\"frequencyBand\":\"test\",\"params\":{},\"rtspStream\":\"rtsp://192.168.100.1/test\",\"mainStream\":\"http://192.168.100.1/test\",\"rtmpStream\":\"rtmp://192.168.100.1/test\",\"cameraId\":2,\"createTime\":1584365320604,\"cameraName\":\"测试设备\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 13:28:40');
INSERT INTO `sys_oper_log` VALUES (175, '摄像头信息', 1, 'com.radebit.project.helmetds.controller.HCameraListController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/cameraList', '127.0.0.1', '内网IP', '{\"secretKey\":\"123456\",\"groupId\":7,\"frequencyBand\":\"test\",\"params\":{},\"rtspStream\":\"rtsp://192.168.100.1/test\",\"mainStream\":\"http://192.168.100.1/test\",\"rtmpStream\":\"rtmp://192.168.100.1/test\",\"cameraName\":\"测试设备02\"}', '{\"msg\":\"摄像头分类不存在！\",\"code\":500}', 0, NULL, '2020-03-16 13:29:37');
INSERT INTO `sys_oper_log` VALUES (176, '摄像头信息', 1, 'com.radebit.project.helmetds.controller.HCameraListController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/cameraList', '127.0.0.1', '内网IP', '{\"secretKey\":\"123456\",\"founder\":3,\"groupId\":3,\"frequencyBand\":\"test\",\"params\":{},\"rtspStream\":\"rtsp://192.168.100.1/test\",\"mainStream\":\"http://192.168.100.1/test\",\"rtmpStream\":\"rtmp://192.168.100.1/test\",\"cameraId\":3,\"createTime\":1584365381197,\"cameraName\":\"测试设备02\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 13:29:41');
INSERT INTO `sys_oper_log` VALUES (177, '摄像头信息', 2, 'com.radebit.project.helmetds.controller.HCameraListController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/cameraList', '127.0.0.1', '内网IP', '{\"secretKey\":\"123456\",\"groupId\":2,\"frequencyBand\":\"test\",\"updateTime\":1584365397860,\"params\":{},\"rtspStream\":\"rtsp://192.168.100.1/test\",\"mainStream\":\"http://192.168.100.1/test\",\"rtmpStream\":\"rtmp://192.168.100.1/test\",\"cameraId\":3,\"cameraName\":\"测试设备02编辑测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 13:29:57');
INSERT INTO `sys_oper_log` VALUES (178, '摄像头信息', 2, 'com.radebit.project.helmetds.controller.HCameraListController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/cameraList', '127.0.0.1', '内网IP', '{\"updateTime\":1584365544059,\"params\":{},\"screenshots\":\"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3988559450,2695786254&fm=26&gp=0.jpg\",\"cameraId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 13:32:24');
INSERT INTO `sys_oper_log` VALUES (179, '员工信息', 2, 'com.radebit.project.helmetds.controller.HUserInfoController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"picZj\":\"xxxx\",\"picHelmet\":\"xxx\",\"userId\":6,\"picFace\":\"xxxx\"}', 'null', 1, '更新系统用户信息异常', '2020-03-16 13:35:58');
INSERT INTO `sys_oper_log` VALUES (180, '员工信息', 2, 'com.radebit.project.helmetds.controller.HUserInfoController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/userInfo', '127.0.0.1', '内网IP', '{\"picZj\":\"xxxx\",\"picHelmet\":\"xxx\",\"userId\":4,\"picFace\":\"xxxx\"}', '{\"msg\":\"更新员工信息成功！\",\"code\":200}', 0, NULL, '2020-03-16 13:36:12');
INSERT INTO `sys_oper_log` VALUES (181, '安全违规记录', 1, 'com.radebit.project.helmetds.controller.HViolationRecordController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/violationRecord', '127.0.0.1', '内网IP', '{\"dealState\":\"0\",\"params\":{},\"violationPlace\":\"园区入口\",\"userId\":5,\"violationContent\":\"没有佩戴安全帽\",\"screenshots\":\"xxxxx\",\"violationType\":\"0\",\"cameraId\":3,\"remarks\":\"\"}', '{\"msg\":\"用户不存在！\",\"code\":500}', 0, NULL, '2020-03-16 14:03:49');
INSERT INTO `sys_oper_log` VALUES (182, '安全违规记录', 1, 'com.radebit.project.helmetds.controller.HViolationRecordController.add()', 'POST', 1, 'sysAdmin', NULL, '/helmetds/violationRecord', '127.0.0.1', '内网IP', '{\"dealState\":\"0\",\"params\":{},\"violationPlace\":\"园区入口\",\"userId\":4,\"violationContent\":\"没有佩戴安全帽\",\"screenshots\":\"xxxxx\",\"violationType\":\"0\",\"cameraId\":3,\"createTime\":1584367434082,\"remarks\":\"\",\"violationId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 14:03:54');
INSERT INTO `sys_oper_log` VALUES (183, '安全违规记录', 2, 'com.radebit.project.helmetds.controller.HViolationRecordController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/violationRecord', '127.0.0.1', '内网IP', '{\"dealState\":\"0\",\"params\":{},\"remarks\":\"\",\"violationId\":4}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2020-03-16 14:05:10');
INSERT INTO `sys_oper_log` VALUES (184, '安全违规记录', 2, 'com.radebit.project.helmetds.controller.HViolationRecordController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/violationRecord', '127.0.0.1', '内网IP', '{\"dealState\":\"0\",\"params\":{},\"remarks\":\"\",\"violationId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 14:05:17');
INSERT INTO `sys_oper_log` VALUES (185, '安全违规记录', 2, 'com.radebit.project.helmetds.controller.HViolationRecordController.edit()', 'PUT', 1, 'sysAdmin', NULL, '/helmetds/violationRecord', '127.0.0.1', '内网IP', '{\"dealState\":\"1\",\"params\":{},\"remarks\":\"\",\"violationId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-16 14:05:22');
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗位信息表';

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '超级管理员');
INSERT INTO `sys_role` VALUES (2, '系统管理员', 'sysAdmin', 2, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-16 12:46:16', '系统管理员');
INSERT INTO `sys_role` VALUES (3, '经理', 'manager', 3, '1', '0', '0', 'admin', '2020-03-12 05:19:20', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (4, '工人', 'worker', 4, '1', '0', '0', 'admin', '2020-03-12 05:19:36', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (2, 1062);
INSERT INTO `sys_role_menu` VALUES (2, 1063);
INSERT INTO `sys_role_menu` VALUES (2, 1064);
INSERT INTO `sys_role_menu` VALUES (2, 1065);
INSERT INTO `sys_role_menu` VALUES (2, 1066);
INSERT INTO `sys_role_menu` VALUES (2, 1067);
INSERT INTO `sys_role_menu` VALUES (2, 1068);
INSERT INTO `sys_role_menu` VALUES (2, 1069);
INSERT INTO `sys_role_menu` VALUES (2, 1070);
INSERT INTO `sys_role_menu` VALUES (2, 1071);
INSERT INTO `sys_role_menu` VALUES (2, 1072);
INSERT INTO `sys_role_menu` VALUES (2, 1073);
INSERT INTO `sys_role_menu` VALUES (2, 1074);
INSERT INTO `sys_role_menu` VALUES (2, 1075);
INSERT INTO `sys_role_menu` VALUES (2, 1076);
INSERT INTO `sys_role_menu` VALUES (2, 1077);
INSERT INTO `sys_role_menu` VALUES (2, 1078);
INSERT INTO `sys_role_menu` VALUES (2, 1079);
INSERT INTO `sys_role_menu` VALUES (2, 1080);
INSERT INTO `sys_role_menu` VALUES (2, 1081);
INSERT INTO `sys_role_menu` VALUES (2, 1082);
INSERT INTO `sys_role_menu` VALUES (2, 1083);
INSERT INTO `sys_role_menu` VALUES (2, 1084);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '系统管理员', '00', 'xxxx@xxx.com', '15888888888', '0', '/profile/avatar/2020/03/09/ad1363401048805538b1cc9cf4e80120.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-09 09:21:35', '管理员');
INSERT INTO `sys_user` VALUES (3, 100, 'sysAdmin', '系统管理员', '00', 'sysAdmin@163.com', '19858185300', '0', '', '$2a$10$HyykQ4TcOMCq0qFM/2Zq0.uEh8YWQdBf6dxWwvn2vRnT1gN9.BMOm', '0', '0', '', NULL, 'admin', '2020-03-12 05:34:55', 'admin', '2020-03-15 12:24:17', NULL);
INSERT INTO `sys_user` VALUES (4, 103, 'zhangsan', '张三', '00', 'zs@qq.com', '13509097656', '0', '', '$2a$10$Lpxmy90d9.ngvQEZN1EdgeayKe4NZnIqflxBKaxz6DczM5AY1N5QC', '0', '0', '', NULL, 'admin', '2020-03-15 12:26:10', '', '2020-03-16 13:36:12', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 2);
INSERT INTO `sys_user_role` VALUES (9, 4);
INSERT INTO `sys_user_role` VALUES (10, 4);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
