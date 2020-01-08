/*
 Navicat Premium Data Transfer

 Source Server         : homestead
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 127.0.0.1:33060
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 08/01/2020 17:29:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2019-12-24 09:46:31');
INSERT INTO `admin_menu` VALUES (2, 0, 6, 'Admin', 'fa-tasks', '', NULL, NULL, '2020-01-08 17:20:51');
INSERT INTO `admin_menu` VALUES (3, 2, 7, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2020-01-08 17:20:51');
INSERT INTO `admin_menu` VALUES (4, 2, 8, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2020-01-08 17:20:51');
INSERT INTO `admin_menu` VALUES (5, 2, 9, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-01-08 17:20:51');
INSERT INTO `admin_menu` VALUES (6, 2, 10, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2020-01-08 17:20:51');
INSERT INTO `admin_menu` VALUES (7, 2, 11, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2020-01-08 17:20:51');
INSERT INTO `admin_menu` VALUES (8, 0, 2, '用户管理', 'fa-users', '/users', NULL, '2019-12-24 09:46:14', '2019-12-24 09:46:31');
INSERT INTO `admin_menu` VALUES (9, 0, 3, '商品管理', 'fa-cubes', '/products', NULL, '2019-12-24 10:04:14', '2019-12-24 10:04:19');
INSERT INTO `admin_menu` VALUES (10, 0, 4, '订单管理', 'fa-rmb', '/orders', NULL, '2020-01-03 17:02:19', '2020-01-03 17:02:23');
INSERT INTO `admin_menu` VALUES (11, 0, 5, '优惠券管理', 'fa-tags', '/coupon_codes', NULL, '2020-01-08 17:20:46', '2020-01-08 17:20:51');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 172 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-12-24 09:39:25', '2019-12-24 09:39:25');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:39:30', '2019-12-24 09:39:30');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:39:32', '2019-12-24 09:39:32');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/setting', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:39:34', '2019-12-24 09:39:34');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:39:36', '2019-12-24 09:39:36');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-12-24 09:44:53', '2019-12-24 09:44:53');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:45:42', '2019-12-24 09:45:42');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"XJEcvBb9fOA9k8GbmY0gyomkIxbyQsph2gTlMdZa\"}', '2019-12-24 09:46:14', '2019-12-24 09:46:14');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-12-24 09:46:14', '2019-12-24 09:46:14');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"XJEcvBb9fOA9k8GbmY0gyomkIxbyQsph2gTlMdZa\",\"_order\":\"[{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-12-24 09:46:20', '2019-12-24 09:46:20');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:46:20', '2019-12-24 09:46:20');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"XJEcvBb9fOA9k8GbmY0gyomkIxbyQsph2gTlMdZa\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-12-24 09:46:30', '2019-12-24 09:46:30');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:46:31', '2019-12-24 09:46:31');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-12-24 09:46:32', '2019-12-24 09:46:32');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:46:35', '2019-12-24 09:46:35');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2019-12-24 09:49:36', '2019-12-24 09:49:36');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/permissions', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:50:27', '2019-12-24 09:50:27');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/permissions/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:50:29', '2019-12-24 09:50:29');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/permissions', 'POST', '192.168.10.1', '{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"NijkTRcNwLH6Ce12MIPZo0PPXHNgs6c0N0FTFtCv\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/permissions\"}', '2019-12-24 09:51:01', '2019-12-24 09:51:01');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/permissions', 'GET', '192.168.10.1', '[]', '2019-12-24 09:51:01', '2019-12-24 09:51:01');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:51:23', '2019-12-24 09:51:23');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/roles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:51:24', '2019-12-24 09:51:24');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/roles', 'POST', '192.168.10.1', '{\"slug\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"NijkTRcNwLH6Ce12MIPZo0PPXHNgs6c0N0FTFtCv\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/roles\"}', '2019-12-24 09:52:20', '2019-12-24 09:52:20');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/roles', 'GET', '192.168.10.1', '[]', '2019-12-24 09:52:20', '2019-12-24 09:52:20');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:52:31', '2019-12-24 09:52:31');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/users/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:52:31', '2019-12-24 09:52:31');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/users', 'POST', '192.168.10.1', '{\"username\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"00000000\",\"password_confirmation\":\"00000000\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"NijkTRcNwLH6Ce12MIPZo0PPXHNgs6c0N0FTFtCv\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}', '2019-12-24 09:53:06', '2019-12-24 09:53:06');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2019-12-24 09:53:07', '2019-12-24 09:53:07');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:53:10', '2019-12-24 09:53:10');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:53:15', '2019-12-24 09:53:15');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:53:41', '2019-12-24 09:53:41');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:53:43', '2019-12-24 09:53:43');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:53:44', '2019-12-24 09:53:44');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/logout', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:53:56', '2019-12-24 09:53:56');
INSERT INTO `admin_operation_log` VALUES (35, 2, 'admin', 'GET', '192.168.10.1', '[]', '2019-12-24 09:54:00', '2019-12-24 09:54:00');
INSERT INTO `admin_operation_log` VALUES (36, 2, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 09:54:03', '2019-12-24 09:54:03');
INSERT INTO `admin_operation_log` VALUES (37, 2, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:03:37', '2019-12-24 10:03:37');
INSERT INTO `admin_operation_log` VALUES (38, 2, 'admin/auth/logout', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:03:40', '2019-12-24 10:03:40');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-12-24 10:03:44', '2019-12-24 10:03:44');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:03:48', '2019-12-24 10:03:48');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"K0MP4yB6swzdLwf7loE30nYxim8DmEvqE4eNSKMQ\"}', '2019-12-24 10:04:14', '2019-12-24 10:04:14');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-12-24 10:04:14', '2019-12-24 10:04:14');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"K0MP4yB6swzdLwf7loE30nYxim8DmEvqE4eNSKMQ\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-12-24 10:04:19', '2019-12-24 10:04:19');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:04:19', '2019-12-24 10:04:19');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-12-24 10:04:22', '2019-12-24 10:04:22');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-24 10:04:49', '2019-12-24 10:04:49');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-24 10:05:00', '2019-12-24 10:05:00');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-24 10:09:20', '2019-12-24 10:09:20');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/products/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:09:23', '2019-12-24 10:09:23');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/products/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:09:23', '2019-12-24 10:09:23');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2019-12-24 10:10:39', '2019-12-24 10:10:39');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2019-12-24 10:10:40', '2019-12-24 10:10:40');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2019-12-24 10:10:54', '2019-12-24 10:10:54');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2019-12-24 10:15:32', '2019-12-24 10:15:32');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/products/create', 'GET', '192.168.10.1', '[]', '2019-12-24 10:15:39', '2019-12-24 10:15:39');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/products', 'POST', '192.168.10.1', '{\"title\":\"iphone x\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"new_1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iphonex \\u94f6\\u8272 64G\",\"price\":\"8848\",\"stock\":\"100\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"\\u7070\\u8272 128G\",\"description\":\"iphonex \\u7070\\u8272 128G\",\"price\":\"9000\",\"stock\":\"50\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"K0MP4yB6swzdLwf7loE30nYxim8DmEvqE4eNSKMQ\"}', '2019-12-24 10:18:11', '2019-12-24 10:18:11');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-24 10:18:11', '2019-12-24 10:18:11');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:19:09', '2019-12-24 10:19:09');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '[]', '2019-12-24 10:20:25', '2019-12-24 10:20:25');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '[]', '2019-12-24 10:20:27', '2019-12-24 10:20:27');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '[]', '2019-12-24 10:26:14', '2019-12-24 10:26:14');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/products/1', 'PUT', '192.168.10.1', '{\"title\":\"iphone x\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iphonex \\u94f6\\u8272 64G\",\"price\":\"8848.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u7070\\u8272 128G\",\"description\":\"iphonex \\u7070\\u8272 128G\",\"price\":\"9000.00\",\"stock\":\"50\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"K0MP4yB6swzdLwf7loE30nYxim8DmEvqE4eNSKMQ\",\"_method\":\"PUT\"}', '2019-12-24 10:26:21', '2019-12-24 10:26:21');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-24 10:26:21', '2019-12-24 10:26:21');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:26:24', '2019-12-24 10:26:24');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '[]', '2019-12-24 10:27:00', '2019-12-24 10:27:00');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/products/1', 'PUT', '192.168.10.1', '{\"title\":\"iphone x\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iphonex \\u94f6\\u8272 64G\",\"price\":\"8848.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u7070\\u8272 128G\",\"description\":\"iphonex \\u7070\\u8272 128G\",\"price\":\"9000.00\",\"stock\":\"50\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"K0MP4yB6swzdLwf7loE30nYxim8DmEvqE4eNSKMQ\",\"_method\":\"PUT\"}', '2019-12-24 10:27:32', '2019-12-24 10:27:32');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-24 10:27:32', '2019-12-24 10:27:32');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:27:36', '2019-12-24 10:27:36');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '[]', '2019-12-24 10:28:18', '2019-12-24 10:28:18');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/products/1', 'PUT', '192.168.10.1', '{\"title\":\"iphone x1\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iphonex \\u94f6\\u8272 64G\",\"price\":\"8848.01\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u7070\\u8272 128G\",\"description\":\"iphonex \\u7070\\u8272 128G\",\"price\":\"9000.00\",\"stock\":\"50\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"K0MP4yB6swzdLwf7loE30nYxim8DmEvqE4eNSKMQ\",\"_method\":\"PUT\"}', '2019-12-24 10:28:27', '2019-12-24 10:28:27');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-24 10:28:28', '2019-12-24 10:28:28');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 10:28:31', '2019-12-24 10:28:31');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/products/1', 'PUT', '192.168.10.1', '{\"title\":\"iphone x\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iphonex \\u94f6\\u8272 64G\",\"price\":\"8848.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u7070\\u8272 128G\",\"description\":\"iphonex \\u7070\\u8272 128G\",\"price\":\"9000.00\",\"stock\":\"50\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"K0MP4yB6swzdLwf7loE30nYxim8DmEvqE4eNSKMQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2019-12-24 10:28:39', '2019-12-24 10:28:39');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-24 10:28:39', '2019-12-24 10:28:39');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-24 10:28:45', '2019-12-24 10:28:45');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-12-25 07:13:49', '2019-12-25 07:13:49');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-25 07:13:54', '2019-12-25 07:13:54');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-25 07:13:55', '2019-12-25 07:13:55');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-25 07:13:56', '2019-12-25 07:13:56');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-25 07:14:00', '2019-12-25 07:14:00');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '[]', '2019-12-25 08:25:38', '2019-12-25 08:25:38');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-12-26 07:42:49', '2019-12-26 07:42:49');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-26 07:42:53', '2019-12-26 07:42:53');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-26 07:43:04', '2019-12-26 07:43:04');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/products/1', 'PUT', '192.168.10.1', '{\"title\":\"iphone x\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iphonex \\u94f6\\u8272 64G\",\"price\":\"8848.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u7070\\u8272 128G\",\"description\":\"iphonex \\u7070\\u8272 128G\",\"price\":\"9000.00\",\"stock\":\"50\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"EzS5UbOsH8HxzTHGHGB3S1d3CJZBRTfg9YJoLOxy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2019-12-26 07:43:07', '2019-12-26 07:43:07');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-26 07:43:07', '2019-12-26 07:43:07');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/products/3/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-12-26 09:25:41', '2019-12-26 09:25:41');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/products/3', 'PUT', '192.168.10.1', '{\"title\":\"itaque\",\"description\":\"<p>Ea vel nesciunt inventore aut.<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"6\":{\"title\":\"dolorum\",\"description\":\"At non in perspiciatis.\",\"price\":\"9547.00\",\"stock\":\"58473\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"title\":\"perspiciatis\",\"description\":\"Dolores assumenda nobis sed voluptatem voluptas.\",\"price\":\"506.00\",\"stock\":\"19390\",\"id\":\"7\",\"_remove_\":\"0\"},\"8\":{\"title\":\"adipisci\",\"description\":\"Eum id consequatur voluptas.\",\"price\":\"4185.00\",\"stock\":\"8160\",\"id\":\"8\",\"_remove_\":\"0\"}},\"_token\":\"1cV4XhhzG148MT2bjcWiJmDEOyV8VqrVelyJgvIs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2019-12-26 09:25:48', '2019-12-26 09:25:48');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-12-26 09:25:48', '2019-12-26 09:25:48');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-01-03 17:01:42', '2020-01-03 17:01:42');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 17:01:47', '2020-01-03 17:01:47');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/orders\",\"roles\":[null],\"permission\":null,\"_token\":\"0dHyTdXLzIG3w6B3gDi80qEHEzI7j3dJvQFK4qo7\"}', '2020-01-03 17:02:19', '2020-01-03 17:02:19');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-01-03 17:02:19', '2020-01-03 17:02:19');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"0dHyTdXLzIG3w6B3gDi80qEHEzI7j3dJvQFK4qo7\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-01-03 17:02:23', '2020-01-03 17:02:23');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 17:02:23', '2020-01-03 17:02:23');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-01-03 17:02:25', '2020-01-03 17:02:25');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 17:02:27', '2020-01-03 17:02:27');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/orders', 'GET', '192.168.10.1', '[]', '2020-01-03 17:56:13', '2020-01-03 17:56:13');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/orders', 'GET', '192.168.10.1', '[]', '2020-01-03 17:56:13', '2020-01-03 17:56:13');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/orders', 'GET', '192.168.10.1', '[]', '2020-01-06 09:44:53', '2020-01-06 09:44:53');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/orders', 'GET', '192.168.10.1', '[]', '2020-01-06 10:24:36', '2020-01-06 10:24:36');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 10:49:17', '2020-01-06 10:49:17');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 10:49:20', '2020-01-06 10:49:20');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/orders', 'GET', '192.168.10.1', '[]', '2020-01-06 10:55:54', '2020-01-06 10:55:54');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/orders', 'GET', '192.168.10.1', '[]', '2020-01-06 11:14:53', '2020-01-06 11:14:53');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/orders/8', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 11:14:55', '2020-01-06 11:14:55');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 11:15:08', '2020-01-06 11:15:08');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/orders/8', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 11:15:10', '2020-01-06 11:15:10');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 11:51:44', '2020-01-06 11:51:44');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 11:52:06', '2020-01-06 11:52:06');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 11:55:04', '2020-01-06 11:55:04');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"XA6MvHkf4Cjou0w8xbZCmpQhodj44yDMChbFE3XL\",\"express_company\":null,\"express_no\":null}', '2020-01-06 11:57:35', '2020-01-06 11:57:35');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:00:56', '2020-01-06 12:00:56');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"XA6MvHkf4Cjou0w8xbZCmpQhodj44yDMChbFE3XL\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:00:58', '2020-01-06 12:00:58');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"XA6MvHkf4Cjou0w8xbZCmpQhodj44yDMChbFE3XL\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:02:14', '2020-01-06 12:02:14');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"XA6MvHkf4Cjou0w8xbZCmpQhodj44yDMChbFE3XL\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:02:23', '2020-01-06 12:02:23');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"XA6MvHkf4Cjou0w8xbZCmpQhodj44yDMChbFE3XL\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:14:12', '2020-01-06 12:14:12');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:14:17', '2020-01-06 12:14:17');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"XA6MvHkf4Cjou0w8xbZCmpQhodj44yDMChbFE3XL\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:14:19', '2020-01-06 12:14:19');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:14:29', '2020-01-06 12:14:29');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"XA6MvHkf4Cjou0w8xbZCmpQhodj44yDMChbFE3XL\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:14:30', '2020-01-06 12:14:30');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:16:48', '2020-01-06 12:16:48');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"XA6MvHkf4Cjou0w8xbZCmpQhodj44yDMChbFE3XL\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:16:49', '2020-01-06 12:16:49');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:17:23', '2020-01-06 12:17:23');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"XA6MvHkf4Cjou0w8xbZCmpQhodj44yDMChbFE3XL\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:17:25', '2020-01-06 12:17:25');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-01-06 12:17:45', '2020-01-06 12:17:45');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/auth/setting', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 12:17:48', '2020-01-06 12:17:48');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 12:17:51', '2020-01-06 12:17:51');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/orders/8', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 12:17:55', '2020-01-06 12:17:55');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"wqt7uKCw9im2RBTedQ0akv6LjPiaE5Wc2ysxP0UX\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:19:19', '2020-01-06 12:19:19');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:19:26', '2020-01-06 12:19:26');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:19:46', '2020-01-06 12:19:46');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 12:20:18', '2020-01-06 12:20:18');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/orders/8', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-06 12:20:20', '2020-01-06 12:20:20');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:21:18', '2020-01-06 12:21:18');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"wqt7uKCw9im2RBTedQ0akv6LjPiaE5Wc2ysxP0UX\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:21:18', '2020-01-06 12:21:18');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"wqt7uKCw9im2RBTedQ0akv6LjPiaE5Wc2ysxP0UX\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:21:44', '2020-01-06 12:21:44');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:21:44', '2020-01-06 12:21:44');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"wqt7uKCw9im2RBTedQ0akv6LjPiaE5Wc2ysxP0UX\",\"express_company\":null,\"express_no\":null}', '2020-01-06 12:22:32', '2020-01-06 12:22:32');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:22:32', '2020-01-06 12:22:32');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/orders/8/ship', 'POST', '192.168.10.1', '{\"_token\":\"wqt7uKCw9im2RBTedQ0akv6LjPiaE5Wc2ysxP0UX\",\"express_company\":\"\\u4e2d\\u901a\",\"express_no\":\"22222222222\"}', '2020-01-06 12:24:11', '2020-01-06 12:24:11');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/orders/8', 'GET', '192.168.10.1', '[]', '2020-01-06 12:24:11', '2020-01-06 12:24:11');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-01-07 17:58:26', '2020-01-07 17:58:26');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 17:58:34', '2020-01-07 17:58:34');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/orders', 'GET', '192.168.10.1', '[]', '2020-01-07 18:21:36', '2020-01-07 18:21:36');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/orders/9', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 18:21:40', '2020-01-07 18:21:40');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/orders/9/refund', 'POST', '192.168.10.1', '{\"agree\":false,\"reason\":\"\\u5c31\\u4e0d\\u7ed9\\u4f60\\u9000\",\"_token\":\"rAvUUvF8vPeuPafZonf5CqtyGURCPBwN6k4W4nvW\"}', '2020-01-07 18:24:21', '2020-01-07 18:24:21');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/orders/9', 'GET', '192.168.10.1', '[]', '2020-01-07 18:24:22', '2020-01-07 18:24:22');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin', 'GET', '192.168.10.1', '[]', '2020-01-08 15:12:46', '2020-01-08 15:12:46');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 15:12:50', '2020-01-08 15:12:50');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/orders/9', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 15:12:54', '2020-01-08 15:12:54');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/orders/9', 'GET', '192.168.10.1', '[]', '2020-01-08 15:13:30', '2020-01-08 15:13:30');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/orders/9', 'GET', '192.168.10.1', '[]', '2020-01-08 15:13:42', '2020-01-08 15:13:42');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/orders/9', 'GET', '192.168.10.1', '[]', '2020-01-08 15:22:08', '2020-01-08 15:22:08');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/orders/9/refund', 'POST', '192.168.10.1', '{\"agree\":true,\"_token\":\"H46XPUajdnDSzokv8jAZ4kY5wrxKCY8DJt47yeHJ\"}', '2020-01-08 15:22:12', '2020-01-08 15:22:12');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/orders/9/refund', 'POST', '192.168.10.1', '{\"agree\":true,\"_token\":\"H46XPUajdnDSzokv8jAZ4kY5wrxKCY8DJt47yeHJ\"}', '2020-01-08 15:22:22', '2020-01-08 15:22:22');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/orders/9', 'GET', '192.168.10.1', '[]', '2020-01-08 15:22:27', '2020-01-08 15:22:27');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/orders/9', 'GET', '192.168.10.1', '[]', '2020-01-08 15:24:04', '2020-01-08 15:24:04');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/orders/9', 'GET', '192.168.10.1', '[]', '2020-01-08 15:25:30', '2020-01-08 15:25:30');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/orders/9', 'GET', '192.168.10.1', '[]', '2020-01-08 15:25:39', '2020-01-08 15:25:39');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 17:20:08', '2020-01-08 17:20:08');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5238\\u7ba1\\u7406\",\"icon\":\"fa-tags\",\"uri\":\"\\/coupon_codes\",\"roles\":[null],\"permission\":null,\"_token\":\"H46XPUajdnDSzokv8jAZ4kY5wrxKCY8DJt47yeHJ\"}', '2020-01-08 17:20:46', '2020-01-08 17:20:46');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-01-08 17:20:46', '2020-01-08 17:20:46');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"H46XPUajdnDSzokv8jAZ4kY5wrxKCY8DJt47yeHJ\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-01-08 17:20:51', '2020-01-08 17:20:51');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 17:20:52', '2020-01-08 17:20:52');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-01-08 17:20:54', '2020-01-08 17:20:54');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/coupon_codes', 'GET', '192.168.10.1', '[]', '2020-01-08 17:21:11', '2020-01-08 17:21:11');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/coupon_codes', 'GET', '192.168.10.1', '[]', '2020-01-08 17:26:15', '2020-01-08 17:26:15');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/coupon_codes', 'GET', '192.168.10.1', '[]', '2020-01-08 17:26:46', '2020-01-08 17:26:46');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/coupon_codes', 'GET', '192.168.10.1', '[]', '2020-01-08 17:27:33', '2020-01-08 17:27:33');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/coupon_codes', 'GET', '192.168.10.1', '[]', '2020-01-08 17:28:31', '2020-01-08 17:28:31');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, '用户管理', 'users', '', '/users*', '2019-12-24 09:51:01', '2019-12-24 09:51:01');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 6, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-12-24 09:34:26', '2019-12-24 09:34:26');
INSERT INTO `admin_roles` VALUES (2, '运营', 'operation', '2019-12-24 09:52:20', '2019-12-24 09:52:20');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$.JW03n2XWBWWnS6WSne1i.f16XW5VHXwWKp7.CLLB3.Rtdz2KbN6m', 'Administrator', NULL, 'Y0Hl4iKFvzMHLWp6I9OIAb0ZgZEKaFbdzaNi24P9cnr3qu36ftNW5ShnSVmy', '2019-12-24 09:34:26', '2019-12-24 09:34:26');
INSERT INTO `admin_users` VALUES (2, 'operator', '$2y$10$b18xG8den8Ch6b/L/Awxl.7RUZ8u93bvki7NX8A0JaO5cAYiqyE7a', '运营', NULL, 'RKM9LFRFFTx1N9Hkg36iYEh7Il9UmzarvU0CWje7f7hPMm8VmB7OKqVC3EWB', '2019-12-24 09:53:07', '2019-12-24 09:53:07');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cart_items_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `cart_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE,
  CONSTRAINT `cart_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coupon_codes
-- ----------------------------
DROP TABLE IF EXISTS `coupon_codes`;
CREATE TABLE `coupon_codes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8, 2) NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `min_amount` decimal(10, 2) NOT NULL,
  `not_before` datetime(0) NULL DEFAULT NULL,
  `not_after` datetime(0) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `coupon_codes_code_unique`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_codes
-- ----------------------------
INSERT INTO `coupon_codes` VALUES (1, 'odit nam rerum', '4TXALL5AQBFGQNMV', 'percent', 30.00, 1000, 0, 0.00, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');
INSERT INTO `coupon_codes` VALUES (2, 'rerum ex accusantium', 'UXNTJ9KMBCVRFQ7T', 'percent', 20.00, 1000, 0, 0.00, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');
INSERT INTO `coupon_codes` VALUES (3, 'sequi eveniet et', 'IRTXZWL1J2O53VDX', 'percent', 21.00, 1000, 0, 0.00, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');
INSERT INTO `coupon_codes` VALUES (4, 'corrupti accusamus id', '731QLBPUQEVP2XEN', 'fixed', 9.00, 1000, 0, 9.01, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');
INSERT INTO `coupon_codes` VALUES (5, 'dicta impedit velit', 'XI9C6HVPW2XMLTBK', 'percent', 15.00, 1000, 0, 0.00, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');
INSERT INTO `coupon_codes` VALUES (6, 'quia exercitationem similique', 'RFPYH230FD5YS8R2', 'percent', 35.00, 1000, 0, 0.00, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');
INSERT INTO `coupon_codes` VALUES (7, 'adipisci sed ex', 'K9GOSJD8FSSHSVPC', 'percent', 47.00, 1000, 0, 0.00, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');
INSERT INTO `coupon_codes` VALUES (8, 'dolores voluptate eos', '3AMQAQNTTIPWUUZK', 'percent', 11.00, 1000, 0, 512.00, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');
INSERT INTO `coupon_codes` VALUES (9, 'incidunt tempore harum', 'HYJYEMAOMYLAIZ8A', 'percent', 34.00, 1000, 0, 885.00, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');
INSERT INTO `coupon_codes` VALUES (10, 'voluptate delectus at', 'UNFAGLDED40O2B67', 'percent', 19.00, 1000, 0, 342.00, NULL, NULL, 1, '2020-01-08 17:24:48', '2020-01-08 17:24:48');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_23_154420_create_user_addresses_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_01_04_173148_create_admin_tables', 2);
INSERT INTO `migrations` VALUES (6, '2019_12_24_095549_create_products_table', 3);
INSERT INTO `migrations` VALUES (7, '2019_12_24_095644_create_product_skus_table', 3);
INSERT INTO `migrations` VALUES (8, '2019_12_26_082038_create_user_favorite_products_table', 4);
INSERT INTO `migrations` VALUES (9, '2019_12_26_090413_create_cart_items_table', 5);
INSERT INTO `migrations` VALUES (10, '2019_12_26_094444_create_orders_table', 6);
INSERT INTO `migrations` VALUES (11, '2019_12_26_094513_create_order_items_table', 6);
INSERT INTO `migrations` VALUES (12, '2020_01_08_153346_create_coupon_codes_table', 7);
INSERT INTO `migrations` VALUES (13, '2020_01_08_171256_orders_add_coupon_code_id', 7);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `rating` int(10) UNSIGNED NULL DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reviewed_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_items_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `order_items_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `order_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE,
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES (1, 1, 2, 3, 1, 8344.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (2, 1, 4, 9, 1, 2045.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (3, 2, 4, 10, 1, 7475.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (4, 3, 2, 5, 1, 6506.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (5, 4, 2, 3, 1, 8344.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (6, 5, 2, 3, 1, 8344.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (7, 6, 4, 9, 1, 2045.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (8, 7, 2, 3, 1, 8344.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (9, 8, 7, 18, 1, 377.00, 4, '很好用', '2020-01-07 12:11:51');
INSERT INTO `order_items` VALUES (10, 9, 6, 16, 1, 679.00, 5, '11', '2020-01-07 17:38:22');
INSERT INTO `order_items` VALUES (11, 9, 5, 12, 1, 1913.00, 5, '22', '2020-01-07 17:38:22');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `paid_at` datetime(0) NULL DEFAULT NULL,
  `coupon_code_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `refund_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `ship_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orders_no_unique`(`no`) USING BTREE,
  UNIQUE INDEX `orders_refund_no_unique`(`refund_no`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `orders_coupon_code_id_foreign`(`coupon_code_id`) USING BTREE,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `orders_coupon_code_id_foreign` FOREIGN KEY (`coupon_code_id`) REFERENCES `coupon_codes` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '20191227064054883409', 1, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u5357\\u5c71\\u533a\\u767d\\u77f3\\u6d32\",\"zip\":341411,\"contact_name\":\"\\u84dd\\u8d24\\u73cd\",\"contact_phone\":\"18170471335\"}', 10389.00, '这是备注', NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-12-27 06:40:54', '2019-12-27 06:40:54');
INSERT INTO `orders` VALUES (2, '20191227151130629377', 1, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u5357\\u5c71\\u533a\\u767d\\u77f3\\u6d32\",\"zip\":341411,\"contact_name\":\"\\u84dd\\u8d24\\u73cd\",\"contact_phone\":\"18170471335\"}', 7475.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-12-27 15:11:30', '2019-12-27 15:11:30');
INSERT INTO `orders` VALUES (3, '20191227154415310832', 1, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u5357\\u5c71\\u533a\\u767d\\u77f3\\u6d32\",\"zip\":341411,\"contact_name\":\"\\u84dd\\u8d24\\u73cd\",\"contact_phone\":\"18170471335\"}', 6506.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2019-12-27 15:44:15', '2019-12-27 16:02:39');
INSERT INTO `orders` VALUES (4, '20191227155211921815', 1, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u5357\\u5c71\\u533a\\u767d\\u77f3\\u6d32\",\"zip\":341411,\"contact_name\":\"\\u84dd\\u8d24\\u73cd\",\"contact_phone\":\"18170471335\"}', 8344.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2019-12-27 15:52:11', '2019-12-27 16:02:39');
INSERT INTO `orders` VALUES (5, '20191227155701790820', 1, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u5357\\u5c71\\u533a\\u767d\\u77f3\\u6d32\",\"zip\":341411,\"contact_name\":\"\\u84dd\\u8d24\\u73cd\",\"contact_phone\":\"18170471335\"}', 8344.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2019-12-27 15:57:01', '2019-12-27 16:02:40');
INSERT INTO `orders` VALUES (6, '20191227161155913740', 1, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u5357\\u5c71\\u533a\\u767d\\u77f3\\u6d32\",\"zip\":341411,\"contact_name\":\"\\u84dd\\u8d24\\u73cd\",\"contact_phone\":\"18170471335\"}', 2045.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2019-12-27 16:11:55', '2019-12-31 18:07:27');
INSERT INTO `orders` VALUES (7, '20191231165714778638', 1, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u5357\\u5c71\\u533a\\u767d\\u77f3\\u6d32\",\"zip\":341411,\"contact_name\":\"\\u84dd\\u8d24\\u73cd\",\"contact_phone\":\"18170471335\"}', 8344.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2019-12-31 16:57:14', '2019-12-31 18:07:27');
INSERT INTO `orders` VALUES (8, '20191231170001168484', 1, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u5357\\u5c71\\u533a\\u767d\\u77f3\\u6d32\",\"zip\":341411,\"contact_name\":\"\\u84dd\\u8d24\\u73cd\",\"contact_phone\":\"18170471335\"}', 377.00, NULL, '2019-12-31 17:01:43', NULL, 'alipay', '2019123122001453411000077300', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4e2d\\u901a\",\"express_no\":\"22222222222\"}', NULL, '2019-12-31 17:00:01', '2020-01-07 12:11:51');
INSERT INTO `orders` VALUES (9, '20200107142700095338', 1, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u5357\\u5c71\\u533a\\u767d\\u77f3\\u6d32\",\"zip\":341411,\"contact_name\":\"\\u84dd\\u8d24\\u73cd\",\"contact_phone\":\"18170471335\"}', 2592.00, NULL, '2020-01-06 18:01:43', NULL, 'alipay', '2019123122001453411000077301', 'success', 'b6afa4ef7f9e43cc81cd0756e45ebaf3', 0, 1, 'pending', NULL, '{\"refund_reason\":\"\\u5feb\\u9000\"}', '2020-01-07 14:27:00', '2020-01-08 15:22:25');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_skus
-- ----------------------------
DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_skus_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_skus
-- ----------------------------
INSERT INTO `product_skus` VALUES (1, '银色 64G', 'iphonex 银色 64G', 8848.00, 100, 1, '2019-12-24 10:18:11', '2019-12-24 10:28:39');
INSERT INTO `product_skus` VALUES (2, '灰色 128G', 'iphonex 灰色 128G', 9000.00, 50, 1, '2019-12-24 10:18:11', '2019-12-24 10:18:11');
INSERT INTO `product_skus` VALUES (3, 'autem', 'Voluptas sit quia facilis nam magnam distinctio.', 8344.00, 42764, 2, '2019-12-25 07:21:15', '2019-12-31 18:07:27');
INSERT INTO `product_skus` VALUES (4, 'possimus', 'Quia magnam optio consectetur laudantium rerum exercitationem.', 9601.00, 79637, 2, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (5, 'incidunt', 'Placeat quis aut fugit animi.', 6506.00, 22128, 2, '2019-12-25 07:21:15', '2019-12-27 16:02:39');
INSERT INTO `product_skus` VALUES (6, 'dolorum', 'At non in perspiciatis.', 9547.00, 58473, 3, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (7, 'perspiciatis', 'Dolores assumenda nobis sed voluptatem voluptas.', 506.00, 19390, 3, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (8, 'adipisci', 'Eum id consequatur voluptas.', 4185.00, 8160, 3, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (9, 'aspernatur', 'Et commodi mollitia est consectetur at ab rerum.', 2045.00, 45178, 4, '2019-12-25 07:21:15', '2019-12-31 18:07:27');
INSERT INTO `product_skus` VALUES (10, 'magni', 'Et expedita quia libero sed.', 7475.00, 34382, 4, '2019-12-25 07:21:15', '2019-12-27 15:11:30');
INSERT INTO `product_skus` VALUES (11, 'quisquam', 'Ad qui quo culpa ullam.', 1730.00, 28605, 4, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (12, 'harum', 'Modi neque alias quia nemo tempora voluptates.', 1913.00, 31299, 5, '2019-12-25 07:21:15', '2020-01-07 14:27:00');
INSERT INTO `product_skus` VALUES (13, 'ut', 'Maxime incidunt voluptatibus quia sit eligendi voluptates quia.', 8892.00, 92737, 5, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (14, 'accusamus', 'Cumque consequatur sunt porro molestiae.', 6213.00, 14800, 5, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (15, 'rerum', 'Itaque et cupiditate praesentium iure expedita earum.', 2065.00, 86127, 6, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (16, 'quidem', 'Omnis quia eaque rerum at cupiditate.', 679.00, 82973, 6, '2019-12-25 07:21:15', '2020-01-07 14:27:00');
INSERT INTO `product_skus` VALUES (17, 'quisquam', 'Voluptas tempore qui voluptatem.', 6429.00, 78391, 6, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (18, 'rerum', 'Facilis assumenda iste assumenda quia sit pariatur cupiditate et.', 377.00, 73254, 7, '2019-12-25 07:21:15', '2019-12-31 17:00:01');
INSERT INTO `product_skus` VALUES (19, 'repellendus', 'Dolor aliquam quia ut qui sed cumque exercitationem soluta.', 5557.00, 43938, 7, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (20, 'earum', 'Magni perspiciatis modi molestias reiciendis et iure.', 4098.00, 79643, 7, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (21, 'voluptatem', 'Ad dolores et odio.', 5022.00, 46885, 8, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (22, 'quia', 'Eius quasi aperiam voluptatum rem dolorem occaecati.', 1129.00, 11407, 8, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (23, 'aperiam', 'Qui possimus consequuntur sit tenetur sint.', 7433.00, 95356, 8, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (24, 'explicabo', 'Adipisci quo distinctio consequatur qui enim natus.', 2800.00, 31639, 9, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (25, 'sit', 'Ex et nam tempora.', 9876.00, 3685, 9, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (26, 'sit', 'Doloremque earum et facilis nemo quisquam consectetur architecto.', 7850.00, 72344, 9, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (27, 'inventore', 'Inventore deserunt aut et ut magnam sed voluptatem delectus.', 6080.00, 25567, 10, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (28, 'quibusdam', 'Recusandae est voluptas vero nihil dolorem perferendis.', 4760.00, 61564, 10, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (29, 'quaerat', 'Sed sed reiciendis id incidunt quia sit culpa.', 117.00, 32356, 10, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (30, 'mollitia', 'Dolorum odit ipsum et pariatur.', 4979.00, 36127, 11, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (31, 'iste', 'Facere eveniet cupiditate consequatur quam impedit molestiae.', 3021.00, 70709, 11, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (32, 'qui', 'Architecto ut est quae nostrum qui.', 1659.00, 88038, 11, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (33, 'harum', 'Recusandae deleniti quia vero et rerum atque ipsa quidem.', 1669.00, 21899, 12, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (34, 'aliquam', 'Deserunt iste optio in facere.', 4166.00, 20917, 12, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (35, 'aperiam', 'Ullam quisquam harum nemo veritatis modi rerum.', 930.00, 53461, 12, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (36, 'illum', 'Aut in dolores unde quod qui dolor et.', 2123.00, 69273, 13, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (37, 'et', 'Voluptas sit quo vitae doloremque.', 8841.00, 93131, 13, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (38, 'adipisci', 'Dolorum harum voluptas fugiat et.', 8107.00, 15651, 13, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (39, 'qui', 'Maiores tempora dignissimos laborum.', 9612.00, 29469, 14, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (40, 'asperiores', 'Quia voluptas animi officia eius facilis cum et.', 2827.00, 55493, 14, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (41, 'et', 'Molestiae ipsum magni mollitia saepe ut ut.', 2155.00, 38276, 14, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (42, 'est', 'Ad est expedita sed dolores unde fugiat provident.', 3804.00, 97861, 15, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (43, 'asperiores', 'Nihil commodi modi eos aliquid laboriosam aut rerum.', 9418.00, 99660, 15, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (44, 'qui', 'Optio qui quia cupiditate doloremque.', 4894.00, 14423, 15, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (45, 'minima', 'Reiciendis voluptas quia magni sapiente quis suscipit.', 3840.00, 61417, 16, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (46, 'asperiores', 'Sed corrupti aut ipsum.', 4162.00, 19968, 16, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (47, 'dolores', 'Deserunt cupiditate quisquam repellat blanditiis incidunt omnis laboriosam.', 949.00, 71153, 16, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (48, 'cum', 'Earum iste beatae quia autem.', 3222.00, 24112, 17, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (49, 'autem', 'In optio culpa consequuntur ullam eaque.', 2191.00, 69639, 17, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (50, 'voluptas', 'Libero iusto velit labore commodi.', 9636.00, 58857, 17, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (51, 'perspiciatis', 'Atque omnis inventore omnis.', 7017.00, 60309, 18, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (52, 'fugit', 'Dolore veniam earum veniam officia.', 8178.00, 68871, 18, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (53, 'vel', 'Rem ut sed illo earum.', 9803.00, 45812, 18, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (54, 'quia', 'Error veniam voluptas sit voluptatem.', 5935.00, 63155, 19, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (55, 'aut', 'Minus commodi occaecati ut amet id iusto harum.', 606.00, 54118, 19, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (56, 'error', 'Molestiae aspernatur non expedita est sint.', 5973.00, 95820, 19, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (57, 'et', 'Quasi sapiente laborum et hic veniam ut ad.', 2540.00, 36028, 20, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (58, 'est', 'Perferendis adipisci vero porro amet sint distinctio ut hic.', 1276.00, 57372, 20, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (59, 'est', 'Et quia iste ex corrupti accusamus quia fugit.', 6198.00, 62479, 20, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (60, 'quidem', 'Saepe fugit quaerat possimus amet occaecati dolores aspernatur.', 2211.00, 8576, 21, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (61, 'est', 'Quia fugit voluptatibus iure non illum sint maxime.', 3116.00, 77476, 21, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (62, 'necessitatibus', 'Molestias esse quasi qui culpa vel architecto incidunt.', 1012.00, 8017, 21, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (63, 'voluptatem', 'Consectetur magnam quis eius enim quos aut dolores.', 3670.00, 97261, 22, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (64, 'magnam', 'Voluptatem dolor quibusdam atque laborum.', 4054.00, 69979, 22, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (65, 'cumque', 'Fugiat qui aut delectus itaque reiciendis hic quidem.', 1664.00, 91014, 22, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (66, 'eum', 'Ipsa hic laboriosam omnis eos voluptas.', 4857.00, 17949, 23, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (67, 'debitis', 'Non repudiandae vel non tempora cupiditate qui sequi quis.', 5256.00, 92183, 23, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (68, 'ut', 'Enim autem blanditiis incidunt et totam eum.', 5108.00, 85520, 23, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (69, 'deserunt', 'Blanditiis voluptatum et tempora eum sed accusamus.', 4661.00, 32796, 24, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (70, 'vel', 'Consequuntur et qui et autem aut optio.', 6704.00, 69565, 24, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (71, 'ut', 'Consequatur sapiente et accusamus aliquam ducimus harum est.', 4640.00, 22212, 24, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (72, 'laborum', 'Debitis eos et et ut eos.', 3954.00, 89120, 25, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (73, 'laudantium', 'Odit consequuntur totam quidem error libero voluptatem.', 1794.00, 89342, 25, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (74, 'a', 'Qui aut id saepe non odit molestiae tenetur et.', 5265.00, 38295, 25, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (75, 'saepe', 'Quis consequatur aut fugiat sit molestiae.', 9891.00, 15096, 26, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (76, 'iste', 'Quia in dolor sit consectetur.', 1292.00, 20315, 26, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (77, 'nostrum', 'Officia et non veniam saepe sunt qui.', 8212.00, 7946, 26, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (78, 'et', 'Porro qui eius at ratione debitis qui.', 175.00, 58204, 27, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (79, 'aut', 'Et itaque consequatur et quia qui.', 3682.00, 73659, 27, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (80, 'nam', 'Maxime deleniti est ea quia accusantium modi.', 2122.00, 71645, 27, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (81, 'reiciendis', 'Architecto omnis voluptatem impedit sed.', 4646.00, 20355, 28, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (82, 'dolorem', 'Id nostrum enim quia unde doloremque perferendis ut quia.', 3121.00, 43706, 28, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (83, 'at', 'Minus culpa ut mollitia facilis corporis velit.', 950.00, 55538, 28, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `product_skus` VALUES (84, 'similique', 'Dignissimos recusandae adipisci cum numquam.', 9725.00, 18543, 29, '2019-12-25 07:21:16', '2019-12-25 07:21:16');
INSERT INTO `product_skus` VALUES (85, 'voluptate', 'Autem eius et eos iusto magni quo eveniet.', 9510.00, 91811, 29, '2019-12-25 07:21:16', '2019-12-25 07:21:16');
INSERT INTO `product_skus` VALUES (86, 'et', 'Et possimus et magnam eaque consequatur.', 514.00, 60113, 29, '2019-12-25 07:21:16', '2019-12-25 07:21:16');
INSERT INTO `product_skus` VALUES (87, 'eos', 'Illo ut veniam enim eos provident voluptatem.', 8871.00, 23220, 30, '2019-12-25 07:21:16', '2019-12-25 07:21:16');
INSERT INTO `product_skus` VALUES (88, 'rerum', 'Unde corrupti omnis iste inventore omnis iste modi.', 9101.00, 56632, 30, '2019-12-25 07:21:16', '2019-12-25 07:21:16');
INSERT INTO `product_skus` VALUES (89, 'et', 'Quam unde quis pariatur occaecati.', 4709.00, 44281, 30, '2019-12-25 07:21:16', '2019-12-25 07:21:16');
INSERT INTO `product_skus` VALUES (90, 'cumque', 'Veritatis ea dolorem pariatur eum facilis iure itaque.', 1809.00, 41847, 31, '2019-12-25 07:21:16', '2019-12-25 07:21:16');
INSERT INTO `product_skus` VALUES (91, 'qui', 'Non sint repudiandae est aut vel error.', 1171.00, 1183, 31, '2019-12-25 07:21:16', '2019-12-25 07:21:16');
INSERT INTO `product_skus` VALUES (92, 'quidem', 'Quia dolores excepturi sed.', 4985.00, 23297, 31, '2019-12-25 07:21:16', '2019-12-25 07:21:16');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT 1,
  `rating` double(8, 2) NOT NULL DEFAULT 5.00,
  `sold_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `review_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'iphone x', '<p>全网首发</p>', 'images/resizeApi.png', 0, 5.00, 0, 0, 8848.00, '2019-12-24 10:18:11', '2019-12-26 07:43:07');
INSERT INTO `products` VALUES (2, 'ipsum', 'Accusamus ab sit consequatur fugiat ut expedita non.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 5.00, 0, 0, 6506.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (3, 'itaque', '<p>Ea vel nesciunt inventore aut.</p>', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 0, 2.00, 0, 0, 506.00, '2019-12-25 07:21:14', '2019-12-26 09:25:48');
INSERT INTO `products` VALUES (4, 'expedita', 'Blanditiis vel ipsa eius quod sed sit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 2.00, 0, 0, 1730.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (5, 'et', 'Omnis ut ipsam corporis enim nobis minima deleniti.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 5.00, 0, 1, 1913.00, '2019-12-25 07:21:14', '2020-01-07 17:38:23');
INSERT INTO `products` VALUES (6, 'praesentium', 'Enim accusantium sit et eos fuga in voluptatem.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 5.00, 0, 1, 679.00, '2019-12-25 07:21:14', '2020-01-07 17:38:23');
INSERT INTO `products` VALUES (7, 'quas', 'Deserunt dolorem omnis qui a.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 5.00, 1, 0, 377.00, '2019-12-25 07:21:14', '2019-12-31 18:10:24');
INSERT INTO `products` VALUES (8, 'ut', 'Repellendus nulla aut maxime id dolorem quod iure.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 0.00, 0, 0, 1129.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (9, 'ea', 'Quam optio temporibus aut iste quos ipsa quae.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 0.00, 0, 0, 2800.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (10, 'omnis', 'Neque minima deserunt sit vel.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 0.00, 0, 0, 117.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (11, 'optio', 'Vero doloremque non vel odio mollitia.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 1.00, 0, 0, 1659.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (12, 'est', 'Id ut reprehenderit sequi.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 1.00, 0, 0, 930.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (13, 'in', 'Quos quia rerum ea nam.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 0.00, 0, 0, 2123.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (14, 'fugiat', 'Deserunt nihil itaque excepturi similique molestiae.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 5.00, 0, 0, 2155.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (15, 'ab', 'In nisi voluptatem deleniti et incidunt rerum consectetur.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 0.00, 0, 0, 3804.00, '2019-12-25 07:21:14', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (16, 'beatae', 'Harum consectetur sit id qui eum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 1.00, 0, 0, 949.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (17, 'quasi', 'Officiis et quaerat eum culpa impedit aut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 0.00, 0, 0, 2191.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (18, 'quisquam', 'Aut provident quod tenetur eaque.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 2.00, 0, 0, 7017.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (19, 'consequatur', 'Dolorem maxime voluptate aut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 4.00, 0, 0, 606.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (20, 'natus', 'Ipsum officiis modi voluptatibus error nisi et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 3.00, 0, 0, 1276.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (21, 'amet', 'Enim rerum provident quibusdam quisquam delectus.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 1.00, 0, 0, 1012.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (22, 'sit', 'Nobis molestias dolor eligendi ut qui id doloremque delectus.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 4.00, 0, 0, 1664.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (23, 'laborum', 'Ut dolore voluptatem sunt illum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 5.00, 0, 0, 4857.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (24, 'aut', 'Ut voluptas quam explicabo tenetur et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.00, 0, 0, 4640.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (25, 'omnis', 'Laborum magnam quas consequatur voluptates.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 2.00, 0, 0, 1794.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (26, 'neque', 'Totam veniam nihil perspiciatis voluptatem et inventore.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 3.00, 0, 0, 1292.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (27, 'recusandae', 'Et natus exercitationem numquam officia.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 4.00, 0, 0, 175.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (28, 'sunt', 'Repellendus dolor eaque et praesentium.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 2.00, 0, 0, 950.00, '2019-12-25 07:21:15', '2019-12-25 07:21:15');
INSERT INTO `products` VALUES (29, 'dolores', 'Provident veritatis libero mollitia officiis quibusdam culpa.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 4.00, 0, 0, 514.00, '2019-12-25 07:21:15', '2019-12-25 07:21:16');
INSERT INTO `products` VALUES (30, 'quia', 'Quam perspiciatis ea occaecati similique enim cupiditate voluptatem.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 0.00, 0, 0, 4709.00, '2019-12-25 07:21:15', '2019-12-25 07:21:16');
INSERT INTO `products` VALUES (31, 'doloribus', 'Magni similique et aut id inventore excepturi.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 0.00, 0, 0, 1171.00, '2019-12-25 07:21:15', '2019-12-25 07:21:16');

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_addresses_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES (1, 1, '广东省', '深圳市', '南山区', '白石洲', 341411, '蓝贤珍', '18170471335', '2020-01-07 14:27:00', '2019-12-26 10:03:38', '2020-01-07 14:27:00');

-- ----------------------------
-- Table structure for user_favorite_products
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_products`;
CREATE TABLE `user_favorite_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_favorite_products_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `user_favorite_products_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_favorite_products
-- ----------------------------
INSERT INTO `user_favorite_products` VALUES (2, 1, 2, '2019-12-26 08:44:02', '2019-12-26 08:44:02');
INSERT INTO `user_favorite_products` VALUES (3, 1, 3, '2019-12-26 08:44:07', '2019-12-26 08:44:07');
INSERT INTO `user_favorite_products` VALUES (4, 1, 4, '2019-12-26 09:39:06', '2019-12-26 09:39:06');
INSERT INTO `user_favorite_products` VALUES (5, 1, 7, '2019-12-31 16:59:51', '2019-12-31 16:59:51');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'lance', '754539910@qq.com', '2019-12-24 09:49:20', '$2y$10$iiIB4afJbRP4qi/3CvebbeCUtlcgKKq.GXu4LJivMpqKrpjhOs2iS', 'DryzQTFgounoHJs0oGAl2eh3U9tu6yYth37GynISHpGysAS7PFcW8J4KpZHl', '2019-12-24 09:47:24', '2019-12-24 09:49:20');
INSERT INTO `users` VALUES (2, 'lance1', '110@qq.com', NULL, '$2y$10$iiIB4afJbRP4qi/3CvebbeCUtlcgKKq.GXu4LJivMpqKrpjhOs2iS', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
