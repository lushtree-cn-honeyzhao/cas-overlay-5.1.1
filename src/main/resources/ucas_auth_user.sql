/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql8-3338
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3338
 Source Schema         : casdb

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 07/05/2022 17:47:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ucas_auth_user
-- ----------------------------
DROP TABLE IF EXISTS `ucas_auth_user`;
CREATE TABLE `ucas_auth_user`  (
  `sid` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `user_pin` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登录名',
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `gender` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别（1:男,2:女）',
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '常用电话',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其他联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电子邮件',
  `disabled` tinyint(0) NULL DEFAULT 0 COMMENT '状态(0:正常,1:禁用)',
  `created_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `created_dt` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '版本号',
  `updated_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `updated_dt` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `zone_org_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域机构',
  `organiztion_sid` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '部门sid',
  `expired_time` datetime(0) NULL DEFAULT NULL COMMENT '过期时间',
  `value2` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备用字段2',
  `value3` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备用字段3',
  `delete_flag` int(0) NULL DEFAULT 1 COMMENT '删除标识(1:未删除，2：已删除)',
  `session_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '会话Id',
  `user_category` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户类别(系统管理员\\安全保密管理员\\安全审计员\\普通用户)',
  `unique_sid` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作日志记录uuid',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ucas_auth_user
-- ----------------------------
INSERT INTO `ucas_auth_user` VALUES ('1', 'admin', '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', NULL, '13726252116', '18511859606', '591270111@qq.com', 0, NULL, '2019-08-13 12:09:15', 38, NULL, '2020-04-07 15:57:33', NULL, '1', '2022-08-31 17:44:54', NULL, NULL, 1, 'TXJMgpVJc8Vtaox6Zg9qf2oSnnrh4pdV', 'SUPER_ADMIN,SYSTEM_ADMIN', NULL);

SET FOREIGN_KEY_CHECKS = 1;
