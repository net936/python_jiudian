/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_jiudian

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 22/06/2024 15:52:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1719042251474.jpeg', 'http://www.baidu.com/', '2024-06-22 15:44:14.418703');
INSERT INTO `b_ad` VALUES (2, 'ad/1719042258771.jpeg', 'https://m3u8player.org', '2024-06-22 15:44:28.171758');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '商务房', '2024-06-22 11:16:18.240904');
INSERT INTO `b_classification` VALUES (2, '情侣房', '2024-06-22 11:16:25.333688');
INSERT INTO `b_classification` VALUES (3, '大床房', '2024-06-22 11:16:32.728345');
INSERT INTO `b_classification` VALUES (4, '豪华房', '2024-06-22 11:17:02.034499');
INSERT INTO `b_classification` VALUES (5, '普通房', '2024-06-22 11:17:09.006503');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '1111111111111111111111111', '2024-06-22 15:42:48.887200', 0, 4, 2);
INSERT INTO `b_comment` VALUES (2, '222222222222222222', '2024-06-22 15:42:50.793153', 0, 4, 2);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '111111111111', '刘三', '9098877@qq.com', '19088887777', '2024-06-22 15:45:52.481591');
INSERT INTO `b_feedback` VALUES (2, '测试反馈333', 'hhhhhhhkkkkkk88888888', '晓琴', '8776655@qq.com', '18099997777', '2024-06-22 15:46:20.467186');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-22 11:15:53.640959');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-22 12:34:46.726837');
INSERT INTO `b_login_log` VALUES (3, 'test004', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-22 15:51:24.822904');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, 'hello', 'hello123 hello', '2024-06-22 15:44:41.532419');
INSERT INTO `b_notice` VALUES (2, '测试通知', '123123hello', '2024-06-22 15:44:54.015801');
INSERT INTO `b_notice` VALUES (3, '哈哈哈', '哈哈哈哈哈', '2024-06-22 15:45:14.383716');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 949 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-22 11:14:48.124643', '/myapp/index/notice/list_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-22 11:14:48.149641', '/myapp/index/notice/list_api', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-22 11:14:48.163704', '/myapp/index/notice/list_api', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-22 11:14:52.554742', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-22 11:14:52.624865', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-22 11:14:54.435202', '/myapp/admin/thing/list', 'GET', NULL, '1826');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-22 11:15:16.426977', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-22 11:15:53.652021', '/myapp/admin/adminLogin', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-22 11:15:53.955898', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-22 11:15:53.958913', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-22 11:16:00.001479', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-22 11:16:05.632515', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-22 11:16:18.249835', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-22 11:16:18.298848', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-22 11:16:25.341787', '/myapp/admin/classification/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-22 11:16:25.417422', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-22 11:16:32.734441', '/myapp/admin/classification/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-22 11:16:32.813219', '/myapp/admin/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-22 11:17:02.050872', '/myapp/admin/classification/create', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-22 11:17:02.109056', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-22 11:17:09.013715', '/myapp/admin/classification/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-22 11:17:09.071777', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-22 11:17:13.251105', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-22 11:17:13.277162', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-22 11:22:21.853109', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-22 11:22:21.902752', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-22 11:23:37.311583', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-22 11:23:37.316623', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-22 11:24:00.671749', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-22 11:24:00.688112', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-22 11:24:58.027584', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-22 11:24:58.894779', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-22 11:24:58.899792', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-22 11:25:41.057049', '/myapp/admin/thing/create', 'POST', NULL, '81');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-22 11:25:41.172138', '/myapp/admin/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-22 11:26:52.811250', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-22 11:26:52.917103', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-22 11:28:34.388103', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-22 11:28:34.407146', '/myapp/admin/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-22 11:28:34.773889', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-22 11:28:34.779324', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-22 11:28:34.800194', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-22 11:28:35.070034', '/myapp/index/thing/list', 'GET', NULL, '309');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-22 11:28:55.472722', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-22 11:28:55.551057', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-22 11:29:10.841900', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-22 11:29:10.937100', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-22 12:14:19.713520', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-22 12:14:19.724526', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-22 12:14:19.835199', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-22 12:14:19.841200', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-22 12:14:19.875203', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-22 12:14:19.877202', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-22 12:17:22.030305', '/myapp/admin/thing/create', 'POST', NULL, '396');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-22 12:17:22.136571', '/myapp/admin/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-22 12:18:06.533395', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-22 12:18:06.956263', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-22 12:18:07.143608', '/myapp/admin/classification/list', 'GET', NULL, '212');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-22 12:18:11.983701', '/myapp/admin/thing/delete', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-22 12:18:12.161828', '/myapp/admin/thing/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-22 12:18:25.664519', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-22 12:18:37.087836', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-22 12:18:37.299760', '/myapp/admin/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-22 12:18:55.618284', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-22 12:18:55.871092', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-22 12:19:33.928527', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-22 12:19:34.142263', '/myapp/admin/thing/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-22 12:19:48.153588', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-22 12:19:48.403696', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-22 12:19:58.315535', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-22 12:19:58.611403', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-22 12:20:07.515461', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-22 12:20:07.783519', '/myapp/admin/thing/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-22 12:20:18.846070', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-22 12:20:19.084817', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-22 12:20:26.872104', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-22 12:20:27.099062', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-22 12:20:45.775173', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-22 12:20:45.988269', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-22 12:21:04.836692', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-22 12:21:05.049603', '/myapp/admin/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-22 12:21:12.147849', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-22 12:21:12.390098', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-22 12:21:16.679573', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-22 12:21:16.880048', '/myapp/admin/thing/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-22 12:21:20.847726', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-22 12:21:21.110207', '/myapp/admin/thing/list', 'GET', NULL, '180');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-22 12:21:25.488043', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-22 12:21:25.738319', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-22 12:21:29.865224', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-22 12:21:30.098203', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-22 12:21:34.772394', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-22 12:21:35.005954', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-22 12:21:39.374838', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-22 12:21:39.576077', '/myapp/admin/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-22 12:21:44.647081', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-22 12:21:44.884333', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-22 12:21:49.451107', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-22 12:21:49.707615', '/myapp/admin/thing/list', 'GET', NULL, '178');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-22 12:21:56.402901', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-22 12:21:56.599611', '/myapp/admin/thing/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-22 12:22:00.957894', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-22 12:22:01.145030', '/myapp/admin/thing/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-22 12:22:15.622028', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-22 12:22:15.839833', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-22 12:22:19.261594', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-22 12:22:19.476756', '/myapp/admin/thing/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-22 12:22:23.058928', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-22 12:22:23.260934', '/myapp/admin/thing/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-22 12:22:28.384043', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-22 12:22:28.603021', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-22 12:22:33.484581', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-22 12:22:33.683086', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-22 12:22:39.694177', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-22 12:22:39.937269', '/myapp/admin/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-22 12:22:44.363897', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-22 12:22:44.580100', '/myapp/admin/thing/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-22 12:22:48.683670', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-22 12:22:48.885530', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-22 12:22:52.364172', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-22 12:22:52.574278', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-22 12:22:57.680291', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-22 12:22:59.365868', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-22 12:23:01.280178', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-22 12:23:35.870106', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-22 12:23:37.152745', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-22 12:23:37.262795', '/myapp/admin/classification/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-22 12:23:47.227999', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-22 12:23:47.224963', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-22 12:23:47.335053', '/myapp/index/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-22 12:23:47.340100', '/myapp/index/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-22 12:23:47.393052', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-22 12:25:53.351690', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-22 12:25:59.136673', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-22 12:25:59.380904', '/myapp/admin/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-22 12:26:05.824815', '/myapp/admin/thing/update', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-22 12:26:06.115055', '/myapp/admin/thing/list', 'GET', NULL, '217');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-22 12:26:13.377314', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-22 12:26:13.592637', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-22 12:26:20.032497', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-22 12:26:20.281242', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-22 12:26:26.187585', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-22 12:26:26.427467', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-22 12:26:32.432795', '/myapp/admin/thing/update', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-22 12:26:32.664854', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-22 12:26:39.298694', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-22 12:26:39.554994', '/myapp/admin/thing/list', 'GET', NULL, '181');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-22 12:26:46.032192', '/myapp/admin/thing/update', 'POST', NULL, '75');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-22 12:26:46.314450', '/myapp/admin/thing/list', 'GET', NULL, '214');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-22 12:26:53.065216', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-22 12:26:53.293808', '/myapp/admin/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-22 12:27:00.256263', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-22 12:27:00.504254', '/myapp/admin/thing/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-22 12:27:05.698870', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-22 12:27:05.925687', '/myapp/admin/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-22 12:27:09.216669', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-22 12:27:09.727180', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-22 12:27:09.846658', '/myapp/admin/classification/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-22 12:27:18.585741', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-22 12:27:18.713126', '/myapp/index/thing/getRecommend', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-22 12:27:18.721519', '/myapp/index/thing/getRecommend', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-22 12:27:18.784271', '/upload/cover/1719030378694.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-22 12:27:18.820513', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-22 12:27:18.827528', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-22 12:27:18.831529', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-22 12:27:18.832641', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-22 12:27:18.848984', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-22 12:27:18.870386', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-22 12:27:18.900170', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-22 12:27:18.903165', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-22 12:27:18.903165', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-22 12:27:18.924717', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-22 12:27:18.925715', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-22 12:27:19.086586', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-22 12:27:19.091132', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-22 12:27:19.177075', '/myapp/index/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-22 12:27:19.252321', '/myapp/index/thing/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-22 12:28:07.953684', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-22 12:28:08.535047', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-22 12:28:09.066492', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-22 12:28:09.486273', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-22 12:28:09.942385', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-22 12:28:10.811474', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-22 12:28:14.920953', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-22 12:28:17.992280', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-22 12:28:18.233231', '/myapp/admin/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-22 12:28:19.205460', '/upload/cover/1719030364125.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-22 12:28:24.343289', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-22 12:28:24.569709', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-22 12:28:25.677011', '/upload/cover/1719030372042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-22 12:28:28.478066', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-22 12:28:28.707133', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-22 12:28:29.998466', '/upload/cover/1719030378694.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-22 12:28:34.553846', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-22 12:28:34.820497', '/myapp/admin/thing/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-22 12:28:35.978454', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-22 12:28:38.793867', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-22 12:28:39.074872', '/myapp/admin/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-22 12:28:40.078829', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-22 12:28:43.124680', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-22 12:28:43.348923', '/myapp/admin/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-22 12:28:45.480133', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-22 12:28:48.378900', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-22 12:28:48.581412', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-22 12:28:49.732587', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-22 12:28:52.610067', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-22 12:28:52.831876', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-22 12:28:54.920891', '/upload/cover/1719030418890.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-22 12:28:57.991357', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-22 12:28:58.242579', '/myapp/admin/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-22 12:28:59.218605', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-22 12:29:02.241378', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-22 12:29:02.454091', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-22 12:29:07.911549', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-22 12:29:07.949964', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-22 12:29:07.993009', '/myapp/index/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-22 12:29:08.112499', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-22 12:29:08.113501', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-22 12:29:08.117107', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-22 12:29:08.117107', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-22 12:29:08.118175', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-22 12:29:08.119139', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-22 12:29:08.120382', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-22 12:29:08.170131', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-22 12:29:08.173130', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-22 12:29:08.178133', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-22 12:29:08.201011', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-22 12:29:08.202018', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-22 12:30:45.525629', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-22 12:30:45.533151', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-22 12:30:45.600780', '/myapp/index/classification/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-22 12:30:45.657262', '/myapp/index/classification/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-22 12:30:47.128689', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-22 12:30:47.687507', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-22 12:31:46.766718', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-22 12:31:46.827259', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-22 12:31:46.890191', '/myapp/admin/ad/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-22 12:31:46.894997', '/myapp/admin/ad/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-22 12:31:46.912036', '/myapp/admin/ad/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-22 12:31:46.958047', '/myapp/admin/ad/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-22 12:31:48.698150', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-22 12:31:48.711285', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-22 12:31:48.763296', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-22 12:31:48.855216', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-22 12:31:48.856211', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-22 12:31:48.858212', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-22 12:31:48.864221', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-22 12:31:48.865235', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-22 12:31:48.865235', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-22 12:31:48.890473', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-22 12:31:48.891489', '/upload/cover/1719030418890.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-22 12:31:48.892496', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-22 12:31:49.669182', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-22 12:31:49.675203', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-22 12:31:49.726299', '/myapp/index/comment/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-22 12:31:49.787814', '/myapp/index/comment/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-22 12:31:49.842090', '/myapp/index/comment/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-22 12:31:49.942007', '/myapp/index/comment/list', 'GET', NULL, '287');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-22 12:31:50.674664', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-22 12:31:50.712436', '/myapp/index/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-22 12:31:50.759085', '/myapp/index/thing/list', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-22 12:31:50.828197', '/myapp/index/thing/list', 'GET', NULL, '242');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-22 12:31:54.503712', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-22 12:31:54.509008', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-22 12:31:54.524988', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-22 12:31:54.594588', '/myapp/index/thing/detail', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-22 12:31:54.603748', '/myapp/index/thing/detail', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-22 12:31:54.708740', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-22 12:31:54.711744', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-22 12:31:54.712748', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-22 12:31:54.719289', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-22 12:31:54.720290', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-22 12:31:55.536798', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-22 12:31:55.563290', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-22 12:31:55.622088', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-22 12:31:55.674160', '/myapp/index/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-22 12:31:56.313671', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-22 12:31:56.323205', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-22 12:31:56.364629', '/myapp/index/user/info', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-22 12:31:56.422227', '/myapp/index/user/info', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-22 12:31:56.476225', '/myapp/index/user/info', 'GET', NULL, '185');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-22 12:31:56.579820', '/myapp/index/user/info', 'GET', NULL, '289');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-22 12:31:58.314703', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-22 12:31:58.333379', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-22 12:31:58.403940', '/myapp/index/thing/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-22 12:31:58.499590', '/myapp/index/thing/list', 'GET', NULL, '208');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-22 12:31:59.214331', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-22 12:31:59.233435', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-22 12:31:59.249999', '/myapp/index/user/info', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-22 12:31:59.309280', '/myapp/index/user/info', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-22 12:31:59.368375', '/myapp/index/user/info', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-22 12:31:59.429202', '/myapp/index/user/info', 'GET', NULL, '232');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-22 12:32:00.173950', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-22 12:32:00.179342', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-22 12:32:00.266325', '/myapp/index/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-22 12:32:00.349838', '/myapp/index/thing/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-22 12:32:01.071157', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-22 12:32:01.076599', '/myapp/admin/ad/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-22 12:32:01.091901', '/myapp/admin/ad/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-22 12:32:01.158455', '/myapp/admin/ad/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-22 12:32:01.184702', '/myapp/admin/ad/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-22 12:32:01.273463', '/myapp/admin/ad/list', 'GET', NULL, '268');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-22 12:32:01.745405', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-22 12:32:01.756421', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-22 12:32:01.839052', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-22 12:32:01.919348', '/myapp/index/thing/list', 'GET', NULL, '191');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-22 12:32:02.999486', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-22 12:32:03.005486', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-22 12:32:03.054295', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-22 12:32:03.099621', '/myapp/index/comment/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-22 12:32:03.123022', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-22 12:32:03.194241', '/myapp/index/comment/list', 'GET', NULL, '174');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-22 12:32:32.822956', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-22 12:32:32.833954', '/myapp/index/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-22 12:32:32.914446', '/myapp/index/classification/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-22 12:32:33.028116', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-22 12:32:33.029117', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-22 12:32:33.029117', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-22 12:32:33.030130', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-22 12:32:33.031151', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-22 12:32:33.047886', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-22 12:32:33.068404', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-22 12:32:33.083843', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-22 12:32:34.199917', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-22 12:32:34.207009', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-22 12:32:34.235725', '/myapp/index/thing/getRecommend', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-22 12:32:34.305974', '/myapp/index/thing/getRecommend', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-22 12:32:34.360698', '/myapp/index/thing/getRecommend', 'GET', NULL, '181');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-22 12:32:34.434741', '/myapp/index/thing/getRecommend', 'GET', NULL, '256');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-22 12:32:35.177322', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-22 12:32:35.186327', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-22 12:32:35.277478', '/myapp/index/thing/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-22 12:32:35.338721', '/myapp/index/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-22 12:32:36.195494', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-22 12:32:36.207919', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-22 12:32:36.226271', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-22 12:32:36.305441', '/myapp/index/comment/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-22 12:32:36.345053', '/myapp/index/comment/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-22 12:32:36.424992', '/myapp/index/comment/list', 'GET', NULL, '252');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-22 12:32:37.071526', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-22 12:32:37.092704', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-22 12:32:37.164779', '/myapp/index/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-22 12:32:37.239154', '/myapp/index/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-22 12:32:37.884628', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-22 12:32:37.889622', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-22 12:32:37.947734', '/myapp/index/comment/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-22 12:32:37.992710', '/myapp/index/comment/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-22 12:32:38.049193', '/myapp/index/comment/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-22 12:32:38.115988', '/myapp/index/comment/list', 'GET', NULL, '254');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-22 12:32:38.753372', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-22 12:32:38.764316', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-22 12:32:38.860474', '/myapp/index/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-22 12:32:38.968277', '/myapp/index/thing/list', 'GET', NULL, '236');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-22 12:32:39.724595', '/myapp/index/thing/detail', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-22 12:32:39.731608', '/myapp/index/thing/detail', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-22 12:32:39.746043', '/myapp/index/thing/detail', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-22 12:32:39.804380', '/myapp/index/thing/detail', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-22 12:32:39.856778', '/myapp/index/thing/detail', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-22 12:32:39.948288', '/myapp/index/thing/detail', 'GET', NULL, '289');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-22 12:32:40.472502', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-22 12:32:40.490754', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-22 12:32:40.560879', '/myapp/index/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-22 12:32:40.626014', '/myapp/index/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-22 12:32:41.292981', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-22 12:32:41.305024', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-22 12:32:41.325922', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-22 12:32:41.434474', '/myapp/index/comment/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-22 12:32:41.468211', '/myapp/index/comment/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-22 12:32:41.572942', '/myapp/index/comment/list', 'GET', NULL, '297');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-22 12:32:42.138151', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-22 12:32:42.165379', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-22 12:32:42.224140', '/myapp/index/thing/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-22 12:32:42.313532', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-22 12:32:42.319909', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-22 12:32:42.324392', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-22 12:32:42.326386', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-22 12:32:42.330394', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-22 12:32:43.132029', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-22 12:32:43.139079', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-22 12:32:43.180328', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-22 12:32:43.251654', '/myapp/index/thing/detail', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-22 12:32:43.288754', '/myapp/index/thing/detail', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-22 12:32:43.367201', '/myapp/index/thing/detail', 'GET', NULL, '239');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-22 12:32:44.422772', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-22 12:32:44.432765', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-22 12:32:44.511761', '/myapp/index/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-22 12:32:44.581483', '/myapp/index/thing/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-22 12:32:45.704645', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-22 12:32:45.713656', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-22 12:32:45.754635', '/myapp/index/comment/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-22 12:32:45.836988', '/myapp/index/comment/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-22 12:32:45.864033', '/myapp/index/comment/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-22 12:32:45.943610', '/myapp/index/comment/list', 'GET', NULL, '250');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-22 12:32:46.994331', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-22 12:32:46.998684', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-22 12:32:47.079455', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-22 12:32:47.150577', '/myapp/index/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-22 12:32:51.710794', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-22 12:32:51.718936', '/myapp/admin/ad/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-22 12:32:51.726289', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-22 12:32:51.828756', '/myapp/admin/ad/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-22 12:32:51.854289', '/myapp/admin/ad/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-22 12:32:51.929610', '/myapp/admin/ad/list', 'GET', NULL, '248');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-22 12:34:36.367784', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-22 12:34:36.393318', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-22 12:34:36.441453', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-22 12:34:43.874465', '/myapp/index/user/register', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-22 12:34:46.732836', '/myapp/index/user/login', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-22 12:34:46.837729', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-22 12:34:46.840748', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-22 12:34:46.862370', '/myapp/index/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-22 12:34:46.900382', '/myapp/index/classification/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-22 12:34:46.961774', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-22 12:34:46.963778', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-22 12:34:46.964773', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-22 12:34:46.964773', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-22 12:34:46.973814', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-22 12:34:46.976807', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-22 12:34:47.014952', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-22 12:34:47.034711', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-22 12:34:47.036714', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-22 12:34:47.043222', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-22 12:34:47.045389', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-22 12:34:47.050225', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-22 12:34:48.352421', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-22 12:34:48.362519', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-22 12:34:48.379356', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-22 12:34:48.393360', '/myapp/admin/ad/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-22 12:34:48.457504', '/myapp/admin/ad/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-22 12:34:48.487890', '/myapp/admin/ad/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-22 12:34:50.312461', '/myapp/index/thing/addWishUser', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-22 12:34:50.371621', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-22 12:34:51.112553', '/myapp/index/thing/addCollectUser', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-22 12:34:51.181317', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-22 12:35:42.125248', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-22 12:35:42.122247', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-22 12:35:42.138327', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-22 12:35:42.172874', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-22 12:35:42.224870', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-22 12:35:42.224870', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-22 12:35:42.225872', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-22 12:35:42.227871', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-22 12:35:42.229375', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-22 12:35:42.230853', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-22 12:35:42.252834', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-22 12:35:42.253849', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-22 12:35:43.501840', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-22 12:35:43.512196', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-22 12:35:43.548138', '/myapp/index/user/info', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-22 12:36:01.352081', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-22 12:36:01.357390', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-22 12:36:01.364443', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-22 12:36:01.400017', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-22 12:36:04.807077', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-22 12:36:04.814239', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-22 12:36:04.829998', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-22 12:36:04.847067', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-22 12:36:26.545803', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-22 12:36:26.553361', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-22 12:36:26.566812', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-22 12:36:26.573811', '/myapp/index/thing/getRecommend', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-22 12:36:26.605704', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-22 12:36:26.630485', '/myapp/index/thing/getRecommend', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-22 12:36:27.946587', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-22 12:36:27.953581', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-22 12:36:27.969629', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-22 12:36:27.995640', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-22 12:36:28.017429', '/upload/cover/1719030364125.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-22 12:36:28.026427', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-22 12:36:29.073546', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-22 12:36:29.097780', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-22 12:36:29.116209', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-22 12:36:29.141497', '/myapp/admin/ad/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-22 12:36:29.168758', '/myapp/admin/ad/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-22 12:36:29.202770', '/myapp/admin/ad/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-22 12:36:33.928109', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-22 12:36:33.937319', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-22 12:36:33.942237', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-22 12:36:33.985776', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-22 12:36:35.191520', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-22 12:36:35.206783', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-22 12:36:35.223801', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-22 12:36:35.238401', '/myapp/index/comment/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-22 12:36:35.285412', '/myapp/index/comment/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-22 12:36:35.316519', '/myapp/index/comment/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-22 12:36:36.863044', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-22 12:36:36.869051', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-22 12:36:36.874135', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-22 12:36:36.927769', '/myapp/index/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-22 12:36:47.934420', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-22 12:36:47.931416', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-22 12:36:47.970947', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-22 12:36:47.974932', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-22 12:36:47.985252', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-22 12:36:48.007587', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-22 12:36:49.650353', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-22 12:36:49.660608', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-22 12:36:49.666610', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-22 12:36:49.696040', '/myapp/admin/ad/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-22 12:36:49.723209', '/myapp/admin/ad/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-22 12:36:49.765853', '/myapp/admin/ad/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-22 12:36:50.717114', '/myapp/index/thing/addWishUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-22 12:36:50.811174', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-22 12:36:51.224348', '/myapp/index/thing/addCollectUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-22 12:36:51.403910', '/myapp/index/thing/detail', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-22 12:36:55.317281', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-22 12:36:57.342901', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-22 12:36:57.360925', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-22 12:36:57.379910', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-22 12:36:57.398399', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-22 12:36:57.421044', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-22 12:36:57.442218', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-22 12:36:59.105574', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-22 12:36:59.109297', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-22 12:36:59.156326', '/myapp/admin/ad/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-22 12:36:59.194512', '/myapp/admin/ad/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-22 12:37:00.459653', '/myapp/index/thing/addWishUser', 'POST', NULL, '86');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-22 12:37:00.546699', '/myapp/index/thing/detail', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-22 12:37:00.948878', '/myapp/index/thing/addCollectUser', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-22 12:37:01.014620', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-22 12:37:03.487013', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-22 12:37:03.493491', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-22 12:37:03.945975', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-22 12:37:03.973478', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-22 12:37:04.773742', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-22 12:37:07.353345', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-22 12:37:07.361481', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-22 12:37:07.396383', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-22 12:37:07.423610', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-22 12:37:07.427619', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-22 12:37:07.457760', '/myapp/index/thing/getWishThingList', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-22 12:37:41.934567', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-22 12:37:42.864364', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-22 12:37:43.439482', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-22 12:37:44.507864', '/myapp/index/thing/removeWishUser', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-22 12:37:44.587304', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-22 12:37:46.335267', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-22 12:37:46.342535', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-22 12:37:46.367401', '/myapp/admin/ad/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-22 12:37:46.388866', '/myapp/admin/ad/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-22 12:37:46.416093', '/myapp/admin/ad/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-22 12:37:46.439295', '/myapp/admin/ad/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-22 12:37:52.039781', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-22 12:37:52.056279', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-22 12:37:52.065409', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-22 12:37:52.095897', '/myapp/index/user/info', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-22 12:37:52.148109', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-22 12:37:52.149111', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-22 12:37:52.150542', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-22 12:37:52.152556', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-22 12:37:52.156909', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-22 12:37:52.158991', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-22 12:37:52.179539', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-22 12:37:52.208420', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-22 12:37:52.210418', '/upload/cover/1719030418890.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-22 12:37:52.217432', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-22 12:37:54.134640', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-22 12:37:54.168570', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-22 12:37:54.185573', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-22 12:37:54.198570', '/myapp/admin/ad/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-22 12:37:54.227615', '/myapp/admin/ad/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-22 12:37:54.268231', '/myapp/admin/ad/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-22 12:38:32.925592', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-22 12:38:32.932677', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-22 12:38:32.950870', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-22 12:38:32.957239', '/myapp/admin/ad/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-22 12:38:32.992130', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-22 12:38:33.020449', '/myapp/admin/ad/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-22 12:38:33.062949', '/upload/cover/1719030364125.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-22 12:38:33.648859', '/myapp/index/thing/addWishUser', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-22 12:38:33.730084', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-22 12:38:34.131782', '/myapp/index/thing/addCollectUser', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-22 12:38:34.185416', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-22 12:38:36.823226', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-22 12:38:36.832246', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-22 12:38:36.839227', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-22 12:38:36.856103', '/myapp/index/user/info', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-22 12:38:36.884547', '/myapp/index/user/info', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-22 12:38:36.920922', '/myapp/index/user/info', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-22 12:43:56.253531', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-22 12:43:56.260690', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-22 12:43:56.261700', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-22 12:46:40.451343', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-22 12:46:40.467983', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-22 12:46:40.473104', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-22 12:46:42.852386', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-22 12:46:42.856935', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-22 12:47:15.086883', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-22 12:47:15.092323', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-22 12:47:50.037569', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-22 12:47:50.044405', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-22 12:48:19.910950', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-22 12:48:19.935391', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-22 12:48:19.961427', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-22 12:49:44.960153', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-22 12:49:44.965866', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-22 12:49:44.969046', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-22 12:49:52.031024', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-22 12:49:52.036692', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-22 12:49:52.047615', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-22 12:50:11.206203', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-22 12:50:11.228145', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-22 12:50:11.245548', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-22 12:51:45.140234', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-22 12:51:45.171545', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-22 12:51:45.179740', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-22 12:51:47.125020', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-22 12:51:47.135744', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-22 12:51:47.151753', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-22 12:51:56.727522', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-22 12:51:56.734135', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-22 12:51:56.741460', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-22 12:53:23.940390', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-22 12:53:23.941389', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-22 12:53:23.947396', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-22 12:53:42.552840', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-22 12:53:42.562862', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-22 12:53:42.571032', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-22 12:53:59.400438', '/myapp/index/order/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-22 12:53:59.894348', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-22 12:53:59.900874', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-22 12:54:47.975838', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-22 12:54:48.023275', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-22 12:54:48.040621', '/myapp/index/thing/getWishThingList', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-22 12:54:48.057800', '/myapp/index/thing/getWishThingList', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-22 12:54:48.062155', '/myapp/index/thing/getWishThingList', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-22 12:54:48.083767', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-22 12:54:48.093359', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-22 12:55:51.446572', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-22 12:55:51.447572', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-22 12:55:51.456572', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-22 12:55:51.480576', '/myapp/index/comment/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-22 12:55:51.515572', '/myapp/index/comment/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-22 12:55:51.539749', '/myapp/index/comment/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-22 12:55:51.583737', '/upload/cover/1719030364125.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-22 12:55:51.593038', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-22 12:55:51.599038', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-22 12:56:01.699568', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-22 12:56:01.811814', '/myapp/admin/classification/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-22 12:56:03.232477', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-22 12:56:15.704496', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-22 12:56:15.842685', '/myapp/admin/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-22 12:56:32.920645', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-22 12:56:54.318474', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-22 12:56:54.861860', '/myapp/admin/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-22 12:57:06.366620', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-22 12:57:07.095045', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-22 12:57:19.980394', '/myapp/admin/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-22 12:57:39.077595', '/myapp/admin/order/delete', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-22 12:57:39.118329', '/myapp/admin/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-22 12:57:54.504913', '/myapp/admin/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-22 12:57:58.652955', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-22 12:57:58.706309', '/upload/cover/1719030364125.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-22 12:57:58.707620', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-22 12:57:58.710994', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-22 12:58:00.041726', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-22 12:58:00.745604', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-22 12:58:00.797598', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-22 12:58:00.799610', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-22 12:58:00.799610', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-22 12:58:01.991077', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-22 12:58:01.994659', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-22 12:58:02.001129', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-22 12:58:02.044977', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-22 12:58:02.098997', '/upload/cover/1719030372042.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-22 12:58:02.101001', '/upload/cover/1719030364125.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-22 12:58:02.102324', '/upload/cover/1719030372042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-22 12:58:02.113558', '/upload/cover/1719030372042.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-22 12:58:02.126549', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-22 12:58:02.142683', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-22 12:58:02.156316', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-22 12:58:02.165480', '/upload/cover/1719030418890.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-22 12:58:02.171512', '/upload/cover/1719030418890.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-22 12:58:02.183774', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-22 12:58:02.198765', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-22 12:58:02.199762', '/upload/cover/1719030404752.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-22 12:58:07.308176', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-22 12:58:07.318922', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-22 12:58:07.325881', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-22 12:58:07.340763', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-22 12:58:07.401881', '/myapp/index/comment/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-22 12:58:07.410206', '/myapp/index/comment/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-22 12:58:09.144025', '/myapp/index/thing/addWishUser', 'POST', NULL, '82');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-22 12:58:09.211008', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-22 12:58:09.568083', '/myapp/index/thing/addCollectUser', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-22 12:58:09.634108', '/myapp/index/thing/detail', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-22 12:58:10.244745', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-22 12:58:10.250305', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-22 12:58:10.271340', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-22 12:58:10.277357', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-22 12:58:10.336893', '/myapp/admin/ad/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-22 12:58:10.354683', '/myapp/admin/ad/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-22 13:01:58.280427', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-22 13:01:58.290699', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-22 13:01:58.302882', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-22 13:02:08.375324', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-22 13:02:08.380831', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-22 13:02:39.705315', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-22 13:02:39.708311', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-22 13:02:44.429509', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-22 13:02:44.435418', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-22 13:03:11.984431', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-22 13:03:11.991486', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-22 13:04:29.602467', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-22 13:04:29.607769', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-22 13:04:29.615513', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-22 13:04:35.570729', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-22 13:04:35.577109', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-22 13:04:35.596728', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-22 13:05:56.131274', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-22 13:05:56.152067', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-22 13:05:56.162925', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-22 13:05:58.929394', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-22 13:05:58.940405', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-22 13:05:58.962626', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-22 13:06:22.337398', '/myapp/index/order/create', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-22 13:06:22.790159', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-22 13:06:22.797323', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-22 13:06:24.108364', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-22 13:06:24.134083', '/myapp/index/order/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-22 13:06:24.150091', '/myapp/index/order/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-22 13:06:24.176831', '/myapp/index/order/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-22 13:06:24.170286', '/myapp/index/order/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-22 13:06:24.199245', '/myapp/index/order/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-22 13:06:24.229237', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-22 13:06:29.192635', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-22 13:06:29.308586', '/myapp/admin/classification/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-22 13:06:30.594563', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-22 15:40:55.798257', '/myapp/admin/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-22 15:40:55.876958', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-22 15:40:55.897208', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-22 15:40:55.895686', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-22 15:40:55.911833', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-22 15:40:55.915105', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-22 15:40:55.917041', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-22 15:40:55.945733', '/upload/cover/1719030391190.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-22 15:41:07.663828', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-22 15:41:07.697353', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-22 15:41:08.401692', '/myapp/admin/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-22 15:41:09.251285', '/myapp/admin/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-22 15:41:11.460054', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-22 15:41:11.497805', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-22 15:41:25.240200', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-22 15:41:59.122350', '/myapp/index/order/cancel_order', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-22 15:41:59.145963', '/myapp/index/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-22 15:42:01.911578', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-22 15:42:02.378478', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-06-22 15:42:08.588715', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-06-22 15:42:08.626239', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-06-22 15:42:09.919053', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-06-22 15:42:31.882721', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-06-22 15:42:31.994243', '/myapp/admin/classification/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-22 15:42:32.519138', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-22 15:42:36.416996', '/myapp/admin/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-22 15:42:41.729035', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-22 15:42:41.774826', '/upload/cover/1719029837990.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-22 15:42:41.780031', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-22 15:42:41.794604', '/upload/cover/1719030356585.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-22 15:42:43.830718', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-22 15:42:43.872829', '/myapp/index/thing/getRecommend', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-22 15:42:43.948982', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-22 15:42:43.955982', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-22 15:42:43.975428', '/myapp/admin/ad/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-22 15:42:43.978626', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-22 15:42:48.895196', '/myapp/index/comment/create', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-22 15:42:48.930368', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-22 15:42:50.804692', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-06-22 15:42:50.850990', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-06-22 15:42:53.328035', '/myapp/index/comment/create', 'POST', NULL, '6');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-06-22 15:42:55.370622', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-06-22 15:42:55.930427', '/myapp/admin/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-06-22 15:42:59.137682', '/myapp/admin/user/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-06-22 15:43:08.105323', '/myapp/admin/user/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-06-22 15:43:08.175176', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-06-22 15:43:17.862112', '/myapp/admin/user/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-06-22 15:43:17.922680', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-06-22 15:43:25.740335', '/myapp/admin/user/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-06-22 15:43:25.809664', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-06-22 15:43:27.390073', '/myapp/admin/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-06-22 15:43:35.152435', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-06-22 15:43:35.185559', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-06-22 15:43:35.204850', '/myapp/admin/ad/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-06-22 15:43:35.213823', '/myapp/admin/ad/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-06-22 15:43:35.221824', '/myapp/admin/ad/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-06-22 15:43:35.274802', '/myapp/admin/ad/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-06-22 15:43:37.263024', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-06-22 15:43:37.270371', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-06-22 15:43:37.275685', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-06-22 15:43:37.283191', '/myapp/index/notice/list_api', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-06-22 15:43:37.333553', '/myapp/index/notice/list_api', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-06-22 15:43:37.342998', '/myapp/index/notice/list_api', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-06-22 15:43:53.267342', '/myapp/index/order/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-06-22 15:43:53.348266', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-06-22 15:43:53.356264', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-06-22 15:43:56.785593', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-06-22 15:43:57.396552', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-06-22 15:44:06.839819', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-06-22 15:44:14.429705', '/myapp/admin/ad/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-06-22 15:44:14.474845', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-06-22 15:44:14.532915', '/upload/ad/1719042251474.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-06-22 15:44:28.184750', '/myapp/admin/ad/create', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-06-22 15:44:28.241363', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-06-22 15:44:28.304322', '/upload/ad/1719042258771.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-06-22 15:44:30.419638', '/myapp/admin/notice/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-06-22 15:44:41.547599', '/myapp/admin/notice/create', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-06-22 15:44:41.610468', '/myapp/admin/notice/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-06-22 15:44:54.022842', '/myapp/admin/notice/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-06-22 15:44:54.070996', '/myapp/admin/notice/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-06-22 15:45:14.387779', '/myapp/admin/notice/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-06-22 15:45:14.439960', '/myapp/admin/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-06-22 15:45:18.390627', '/myapp/admin/loginLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-06-22 15:45:19.188002', '/myapp/admin/opLog/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-06-22 15:45:20.000718', '/myapp/admin/errorLog/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-06-22 15:45:22.811193', '/myapp/admin/overview/count', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-06-22 15:45:24.068503', '/myapp/admin/feedback/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-06-22 15:45:29.090138', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-06-22 15:45:29.095929', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-06-22 15:45:52.491604', '/myapp/index/feedback/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-06-22 15:45:54.585729', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-06-22 15:45:54.579164', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-06-22 15:46:20.476940', '/myapp/index/feedback/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-06-22 15:46:23.044391', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-06-22 15:46:23.053002', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-06-22 15:46:25.188932', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1104');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-06-22 15:46:25.796399', '/myapp/admin/feedback/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-06-22 15:46:28.374666', '/myapp/admin/overview/count', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-06-22 15:46:30.061801', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-06-22 15:46:31.612129', '/myapp/admin/user/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-06-22 15:46:33.020872', '/myapp/admin/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-06-22 15:46:34.437890', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-06-22 15:46:35.530394', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-06-22 15:46:35.640446', '/myapp/admin/classification/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-06-22 15:46:38.386602', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-06-22 15:46:39.375183', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-06-22 15:46:40.121501', '/myapp/admin/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-06-22 15:46:43.115869', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-06-22 15:46:43.126599', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-06-22 15:46:43.160109', '/myapp/index/order/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-06-22 15:46:43.172379', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-06-22 15:46:43.177659', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-06-22 15:46:43.187661', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-06-22 15:49:06.025340', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-06-22 15:49:06.047694', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-06-22 15:49:06.087017', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-06-22 15:49:06.118180', '/myapp/admin/ad/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-06-22 15:49:06.138995', '/myapp/admin/ad/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-06-22 15:49:06.166920', '/upload/ad/1719042251474.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-06-22 15:49:06.177075', '/upload/ad/1719042251474.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-06-22 15:49:06.187703', '/upload/ad/1719042251474.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-06-22 15:50:05.885339', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-06-22 15:50:05.906596', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-06-22 15:50:05.936253', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-06-22 15:50:05.953197', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-06-22 15:50:05.957194', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-06-22 15:50:05.996525', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-06-22 15:50:06.788925', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-06-22 15:50:08.574634', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-06-22 15:50:08.585023', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-06-22 15:50:08.589028', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-06-22 15:50:08.631369', '/myapp/index/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-06-22 15:50:08.739880', '/upload/cover/1719030378694.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-06-22 15:50:08.739880', '/upload/cover/1719030384970.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-06-22 15:50:08.751109', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-06-22 15:50:08.755110', '/upload/cover/1719030397604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-06-22 15:50:08.763114', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-06-22 15:50:08.770473', '/upload/cover/1719030412062.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-06-22 15:50:08.770473', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-06-22 15:50:08.774417', '/upload/cover/1719030424482.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-06-22 15:50:12.234788', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-06-22 15:50:12.803740', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-06-22 15:50:13.188748', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-06-22 15:50:13.559586', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-06-22 15:50:13.873023', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-06-22 15:50:14.319085', '/myapp/index/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-06-22 15:50:45.302216', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-06-22 15:50:45.307287', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-06-22 15:50:45.319362', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-06-22 15:50:45.373081', '/myapp/index/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-06-22 15:50:45.875966', '/myapp/admin/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-06-22 15:50:46.271719', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-06-22 15:50:46.279641', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-06-22 15:50:46.320641', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-06-22 15:50:46.323684', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-06-22 15:50:46.331641', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-06-22 15:50:46.350719', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-06-22 15:50:47.225900', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-06-22 15:50:47.920110', '/myapp/index/comment/listMyComments', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-06-22 15:50:48.687837', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-06-22 15:50:49.666585', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-06-22 15:50:50.059555', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-06-22 15:50:54.064203', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-06-22 15:50:54.185045', '/myapp/admin/classification/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-06-22 15:50:54.829479', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-06-22 15:51:02.429060', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-06-22 15:51:17.124624', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-06-22 15:51:17.135514', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-06-22 15:51:17.175774', '/myapp/index/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-06-22 15:51:19.329201', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-06-22 15:51:19.336009', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-06-22 15:51:19.406088', '/upload/ad/1719042251474.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-06-22 15:51:19.409553', '/upload/ad/1719042251474.jpeg', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-06-22 15:51:19.413551', '/upload/ad/1719042251474.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-06-22 15:51:19.421547', '/upload/ad/1719042251474.jpeg', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-06-22 15:51:19.436840', '/upload/ad/1719042251474.jpeg', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-06-22 15:51:24.832093', '/myapp/index/user/login', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-06-22 15:51:24.916434', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-06-22 15:51:24.923444', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-06-22 15:51:24.946860', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-06-22 15:51:24.988898', '/myapp/index/user/info', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-06-22 15:51:27.466274', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-06-22 15:51:28.832503', '/myapp/index/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-06-22 15:51:29.605750', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-06-22 15:51:29.624861', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-06-22 15:51:29.632180', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-06-22 15:51:29.636567', '/myapp/admin/ad/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-06-22 15:51:29.668907', '/myapp/admin/ad/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-06-22 15:51:29.690984', '/myapp/admin/ad/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-06-22 15:51:31.398808', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-06-22 15:51:31.410428', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-06-22 15:51:31.453557', '/myapp/index/user/info', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-06-22 15:51:34.310611', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-06-22 15:51:34.318508', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-06-22 15:51:34.323524', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-06-22 15:51:34.362959', '/myapp/index/comment/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-06-22 15:51:34.396670', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-06-22 15:51:34.426131', '/myapp/index/comment/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-06-22 15:51:55.928073', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-06-22 15:51:55.943845', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-06-22 15:51:55.938856', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-06-22 15:51:56.012200', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-06-22 15:51:56.721961', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-06-22 15:51:56.726972', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-06-22 15:51:56.763795', '/myapp/index/thing/getRecommend', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-06-22 15:51:58.332166', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-06-22 15:51:58.344491', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-06-22 15:51:58.346492', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-06-22 15:51:58.398241', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-06-22 15:52:14.054547', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-06-22 15:52:14.064119', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-06-22 15:52:14.078109', '/myapp/admin/ad/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-06-22 15:52:14.104389', '/myapp/admin/ad/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-06-22 15:52:14.155594', '/upload/ad/1719042258771.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-06-22 15:52:14.157087', '/upload/ad/1719042258771.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-06-22 15:52:14.161642', '/upload/ad/1719042258771.jpeg', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-06-22 15:52:14.175188', '/upload/ad/1719042258771.jpeg', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-06-22 15:52:26.026643', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-06-22 15:52:26.034654', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-06-22 15:52:26.081872', '/myapp/index/thing/list', 'GET', NULL, '79');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `receiver_date` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (2, '1719032782308', 3, '2', '2024-06-22 13:06:22.319253', '王宝强', NULL, '13211112222', '', 8, 2, '2024-07-01至2024-07-04');
INSERT INTO `b_order` VALUES (3, '1719042233240', 7, '1', '2024-06-22 15:43:53.251539', '刘德华', NULL, '13288887777', '', 3, 2, '2024-06-01至2024-06-08');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 3, 15, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 2, 7, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 4, 12, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 11, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 8, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 6, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 7, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (8, 9, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (9, 5, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (10, 10, 1, '127.0.0.2');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sheshi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sfyc` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `zaocan` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (2, '豪华大床房', 'cover/1719029837990.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '555', '空调、热水、wifi', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 7, 0, 0, 1, 3, NULL, 3, '有');
INSERT INTO `b_thing` VALUES (3, '海景房22', 'cover/1719030356585.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '111', '空调、热水、电脑', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 15, 0, 1, 1, 5, NULL, 3, '无');
INSERT INTO `b_thing` VALUES (4, '经典商务房', 'cover/1719030364125.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '129', '空调、热水、wifi', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 12, 0, 1, 1, 4, NULL, 3, '有');
INSERT INTO `b_thing` VALUES (5, '行政人员标准房', 'cover/1719030372042.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '99', '空调、热水、电脑', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 1, 0, 0, 0, 2, NULL, 3, '无');
INSERT INTO `b_thing` VALUES (6, '经典双人房', 'cover/1719030378694.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '88', '空调、热水、wifi', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 1, 0, 0, 0, 2, NULL, 3, '有');
INSERT INTO `b_thing` VALUES (7, '标准房333', 'cover/1719030384970.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '66', '空调、热水、wifi', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 1, 0, 0, 0, 1, NULL, 3, '有');
INSERT INTO `b_thing` VALUES (8, '豪华大床房', 'cover/1719030391190.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '69', '空调、热水、wifi', '否', '南京路99号', '0', '2024-06-22 12:17:22.010649', 5, 0, 1, 1, 5, NULL, 3, '有');
INSERT INTO `b_thing` VALUES (9, '普通单人间', 'cover/1719030397604.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '65', '空调、热水、电脑', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 1, 0, 0, 0, 4, NULL, 3, '有');
INSERT INTO `b_thing` VALUES (10, '城市经典房', 'cover/1719030404752.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '59', '空调、热水、wifi', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 1, 0, 0, 0, 1, NULL, 3, '有');
INSERT INTO `b_thing` VALUES (11, '测试房间311', 'cover/1719030412062.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '239', '空调、热水、电脑', '否', '南京路99号', '0', '2024-06-22 12:17:22.010649', 2, 0, 0, 0, 3, NULL, 3, '有');
INSERT INTO `b_thing` VALUES (12, '豪华迷你房', 'cover/1719030418890.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '211', '空调、热水、电脑', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 0, 0, 0, 0, 5, NULL, 3, '有');
INSERT INTO `b_thing` VALUES (13, '花景房', 'cover/1719030424482.jpeg', '远离喧嚣，体验休闲与奢华的完美结合。欢迎来到我们的酒店——一个充满魅力和温馨的居所，为您提供舒适宁静的的休息空间。\r\n\r\n我们的豪华客房设计时尚典雅，每一处细节都展现着品味与质感。宽敞明亮的房间配有舒适的大床和柔软的床上用品，让您在细腻的触感中尽享极致舒适。高端设施和现代科技的完美融合，为您带来便利与愉悦的入住体验。\r\n\r\n从房间的窗外眺望，您可以欣赏到壮丽的风景和迷人的城市夜景。在宁静的环境中，让自己完全放松，尽情享受云淡风轻的惬意时光。\r\n\r\n我们的酒店还提供24小时贴心服务，让您的每一个需求都能得到及时的满足。无论是商务出行还是休闲度假，我们都致力于为您营造舒适温馨的居住环境，让您流连忘返，留下美好的回忆。\r\n\r\n我们期待着您的光临，与您分享这片独特而温暖的空间，为您营造一场与众不同的入住体验。让我们一起创造美好时光，让回忆在这里绽放。', '120', '空调、热水、wifi', '是', '南京路99号', '0', '2024-06-22 12:17:22.010649', 0, 0, 0, 0, 1, NULL, 3, '有');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 2, 2);
INSERT INTO `b_thing_collect` VALUES (3, 3, 2);
INSERT INTO `b_thing_collect` VALUES (1, 4, 2);
INSERT INTO `b_thing_collect` VALUES (4, 8, 2);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (3, 3, 2);
INSERT INTO `b_thing_wish` VALUES (1, 4, 2);
INSERT INTO `b_thing_wish` VALUES (4, 8, 2);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-22 12:34:43.867464', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-22 15:43:08.091407', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (4, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-22 15:43:17.845254', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-22 15:43:25.723086', 0, NULL, 0, NULL, 'b990a1577e88882a43f26b232d85632b');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-22 11:10:18.859564');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-22 11:10:19.353967');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-22 11:10:19.475524');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-22 11:10:19.491079');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-22 11:10:19.508858');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-22 11:10:19.656025');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-22 11:10:19.766190');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-22 11:10:19.857951');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-22 11:10:19.876095');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-22 11:10:19.950444');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-22 11:10:19.969626');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-22 11:10:19.996084');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-22 11:10:20.064325');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-22 11:10:20.134005');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-22 11:10:20.218553');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-22 11:10:20.238233');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-22 11:10:20.307735');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-22 11:10:21.502641');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-22 11:10:21.600271');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-22 11:10:21.881461');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-22 11:10:22.019827');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240622_1110', '2024-06-22 11:10:22.740651');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-06-22 11:10:22.806726');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
