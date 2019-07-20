/*
 Navicat Premium Data Transfer

 Source Server         : ct
 Source Server Type    : MySQL
 Source Server Version : 50136
 Source Host           : localhost:3306
 Source Schema         : ct

 Target Server Type    : MySQL
 Target Server Version : 50136
 File Encoding         : 65001

 Date: 20/07/2019 18:30:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ct_call
-- ----------------------------
DROP TABLE IF EXISTS `ct_call`;
CREATE TABLE `ct_call`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `telid` int(11) NOT NULL,
  `dateid` int(20) NOT NULL,
  `sumcall` int(20) NOT NULL,
  `sumduration` int(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 474 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ct_call
-- ----------------------------
INSERT INTO `ct_call` VALUES (285, 18, 1, 6, 8866);
INSERT INTO `ct_call` VALUES (286, 18, 2, 1, 1609);
INSERT INTO `ct_call` VALUES (287, 18, 273, 1, 1609);
INSERT INTO `ct_call` VALUES (288, 18, 89, 1, 2946);
INSERT INTO `ct_call` VALUES (289, 18, 107, 1, 2946);
INSERT INTO `ct_call` VALUES (290, 18, 112, 1, 2219);
INSERT INTO `ct_call` VALUES (291, 18, 117, 1, 2219);
INSERT INTO `ct_call` VALUES (292, 18, 129, 1, 185);
INSERT INTO `ct_call` VALUES (293, 18, 331, 1, 185);
INSERT INTO `ct_call` VALUES (294, 18, 219, 1, 360);
INSERT INTO `ct_call` VALUES (295, 18, 374, 1, 360);
INSERT INTO `ct_call` VALUES (296, 18, 241, 1, 1547);
INSERT INTO `ct_call` VALUES (297, 18, 258, 1, 1547);
INSERT INTO `ct_call` VALUES (298, 21, 1, 3, 6535);
INSERT INTO `ct_call` VALUES (299, 21, 2, 1, 2113);
INSERT INTO `ct_call` VALUES (300, 21, 21, 1, 2113);
INSERT INTO `ct_call` VALUES (301, 21, 69, 1, 2715);
INSERT INTO `ct_call` VALUES (302, 21, 306, 1, 2715);
INSERT INTO `ct_call` VALUES (303, 21, 219, 1, 1707);
INSERT INTO `ct_call` VALUES (304, 21, 231, 1, 1707);
INSERT INTO `ct_call` VALUES (305, 5, 1, 2, 2123);
INSERT INTO `ct_call` VALUES (306, 5, 69, 1, 438);
INSERT INTO `ct_call` VALUES (307, 5, 306, 1, 438);
INSERT INTO `ct_call` VALUES (308, 5, 151, 1, 1685);
INSERT INTO `ct_call` VALUES (309, 5, 154, 1, 1685);
INSERT INTO `ct_call` VALUES (310, 2, 1, 7, 10861);
INSERT INTO `ct_call` VALUES (311, 2, 2, 2, 1974);
INSERT INTO `ct_call` VALUES (312, 2, 377, 1, 75);
INSERT INTO `ct_call` VALUES (313, 2, 18, 1, 1899);
INSERT INTO `ct_call` VALUES (314, 2, 89, 1, 1407);
INSERT INTO `ct_call` VALUES (315, 2, 101, 1, 1407);
INSERT INTO `ct_call` VALUES (316, 2, 129, 1, 2217);
INSERT INTO `ct_call` VALUES (317, 2, 140, 1, 2217);
INSERT INTO `ct_call` VALUES (318, 2, 151, 1, 1396);
INSERT INTO `ct_call` VALUES (319, 2, 169, 1, 1396);
INSERT INTO `ct_call` VALUES (320, 2, 174, 1, 1658);
INSERT INTO `ct_call` VALUES (321, 2, 176, 1, 1658);
INSERT INTO `ct_call` VALUES (322, 2, 198, 1, 2209);
INSERT INTO `ct_call` VALUES (323, 2, 357, 1, 2209);
INSERT INTO `ct_call` VALUES (324, 6, 1, 4, 6250);
INSERT INTO `ct_call` VALUES (325, 6, 2, 1, 1899);
INSERT INTO `ct_call` VALUES (326, 6, 18, 1, 1899);
INSERT INTO `ct_call` VALUES (327, 6, 89, 1, 1255);
INSERT INTO `ct_call` VALUES (328, 6, 104, 1, 1255);
INSERT INTO `ct_call` VALUES (329, 6, 129, 1, 252);
INSERT INTO `ct_call` VALUES (330, 6, 338, 1, 252);
INSERT INTO `ct_call` VALUES (331, 6, 174, 1, 2844);
INSERT INTO `ct_call` VALUES (332, 6, 187, 1, 2844);
INSERT INTO `ct_call` VALUES (333, 22, 1, 4, 4450);
INSERT INTO `ct_call` VALUES (334, 22, 69, 1, 1946);
INSERT INTO `ct_call` VALUES (335, 22, 73, 1, 1946);
INSERT INTO `ct_call` VALUES (336, 22, 112, 1, 1625);
INSERT INTO `ct_call` VALUES (337, 22, 115, 1, 1625);
INSERT INTO `ct_call` VALUES (338, 22, 129, 1, 360);
INSERT INTO `ct_call` VALUES (339, 22, 131, 1, 360);
INSERT INTO `ct_call` VALUES (340, 22, 241, 1, 519);
INSERT INTO `ct_call` VALUES (341, 22, 253, 1, 519);
INSERT INTO `ct_call` VALUES (342, 17, 1, 9, 12609);
INSERT INTO `ct_call` VALUES (343, 17, 2, 1, 75);
INSERT INTO `ct_call` VALUES (344, 17, 377, 1, 75);
INSERT INTO `ct_call` VALUES (345, 17, 24, 2, 5458);
INSERT INTO `ct_call` VALUES (346, 17, 27, 1, 2476);
INSERT INTO `ct_call` VALUES (347, 17, 34, 1, 2982);
INSERT INTO `ct_call` VALUES (348, 17, 46, 1, 2571);
INSERT INTO `ct_call` VALUES (349, 17, 61, 1, 2571);
INSERT INTO `ct_call` VALUES (350, 17, 129, 3, 2460);
INSERT INTO `ct_call` VALUES (351, 17, 331, 1, 185);
INSERT INTO `ct_call` VALUES (352, 17, 139, 1, 830);
INSERT INTO `ct_call` VALUES (353, 17, 338, 1, 1445);
INSERT INTO `ct_call` VALUES (354, 17, 151, 1, 1685);
INSERT INTO `ct_call` VALUES (355, 17, 154, 1, 1685);
INSERT INTO `ct_call` VALUES (356, 17, 219, 1, 360);
INSERT INTO `ct_call` VALUES (357, 17, 374, 1, 360);
INSERT INTO `ct_call` VALUES (358, 10, 1, 3, 6652);
INSERT INTO `ct_call` VALUES (359, 10, 24, 1, 2476);
INSERT INTO `ct_call` VALUES (360, 10, 27, 1, 2476);
INSERT INTO `ct_call` VALUES (361, 10, 112, 2, 4176);
INSERT INTO `ct_call` VALUES (362, 10, 114, 1, 2413);
INSERT INTO `ct_call` VALUES (363, 10, 320, 1, 1763);
INSERT INTO `ct_call` VALUES (364, 11, 1, 1, 1722);
INSERT INTO `ct_call` VALUES (365, 11, 46, 1, 1722);
INSERT INTO `ct_call` VALUES (366, 11, 59, 1, 1722);
INSERT INTO `ct_call` VALUES (367, 16, 1, 3, 5294);
INSERT INTO `ct_call` VALUES (368, 16, 69, 1, 1946);
INSERT INTO `ct_call` VALUES (369, 16, 73, 1, 1946);
INSERT INTO `ct_call` VALUES (370, 16, 89, 1, 2946);
INSERT INTO `ct_call` VALUES (371, 16, 107, 1, 2946);
INSERT INTO `ct_call` VALUES (372, 16, 112, 1, 402);
INSERT INTO `ct_call` VALUES (373, 16, 128, 1, 402);
INSERT INTO `ct_call` VALUES (374, 8, 1, 4, 2613);
INSERT INTO `ct_call` VALUES (375, 8, 112, 2, 2027);
INSERT INTO `ct_call` VALUES (376, 8, 115, 1, 1625);
INSERT INTO `ct_call` VALUES (377, 8, 128, 1, 402);
INSERT INTO `ct_call` VALUES (378, 8, 174, 1, 67);
INSERT INTO `ct_call` VALUES (379, 8, 184, 1, 67);
INSERT INTO `ct_call` VALUES (380, 8, 241, 1, 519);
INSERT INTO `ct_call` VALUES (381, 8, 253, 1, 519);
INSERT INTO `ct_call` VALUES (382, 14, 1, 3, 4472);
INSERT INTO `ct_call` VALUES (383, 14, 174, 1, 596);
INSERT INTO `ct_call` VALUES (384, 14, 354, 1, 596);
INSERT INTO `ct_call` VALUES (385, 14, 219, 1, 2849);
INSERT INTO `ct_call` VALUES (386, 14, 221, 1, 2849);
INSERT INTO `ct_call` VALUES (387, 14, 241, 1, 1027);
INSERT INTO `ct_call` VALUES (388, 14, 271, 1, 1027);
INSERT INTO `ct_call` VALUES (389, 12, 1, 4, 4159);
INSERT INTO `ct_call` VALUES (390, 12, 2, 1, 2113);
INSERT INTO `ct_call` VALUES (391, 12, 21, 1, 2113);
INSERT INTO `ct_call` VALUES (392, 12, 129, 1, 252);
INSERT INTO `ct_call` VALUES (393, 12, 338, 1, 252);
INSERT INTO `ct_call` VALUES (394, 12, 241, 2, 1794);
INSERT INTO `ct_call` VALUES (395, 12, 248, 1, 247);
INSERT INTO `ct_call` VALUES (396, 12, 258, 1, 1547);
INSERT INTO `ct_call` VALUES (397, 7, 1, 3, 4523);
INSERT INTO `ct_call` VALUES (398, 7, 46, 1, 1722);
INSERT INTO `ct_call` VALUES (399, 7, 59, 1, 1722);
INSERT INTO `ct_call` VALUES (400, 7, 112, 1, 2357);
INSERT INTO `ct_call` VALUES (401, 7, 319, 1, 2357);
INSERT INTO `ct_call` VALUES (402, 7, 151, 1, 444);
INSERT INTO `ct_call` VALUES (403, 7, 162, 1, 444);
INSERT INTO `ct_call` VALUES (404, 9, 1, 5, 8338);
INSERT INTO `ct_call` VALUES (405, 9, 69, 1, 2715);
INSERT INTO `ct_call` VALUES (406, 9, 306, 1, 2715);
INSERT INTO `ct_call` VALUES (407, 9, 112, 1, 1763);
INSERT INTO `ct_call` VALUES (408, 9, 320, 1, 1763);
INSERT INTO `ct_call` VALUES (409, 9, 129, 1, 2217);
INSERT INTO `ct_call` VALUES (410, 9, 140, 1, 2217);
INSERT INTO `ct_call` VALUES (411, 9, 151, 1, 1396);
INSERT INTO `ct_call` VALUES (412, 9, 169, 1, 1396);
INSERT INTO `ct_call` VALUES (413, 9, 241, 1, 247);
INSERT INTO `ct_call` VALUES (414, 9, 248, 1, 247);
INSERT INTO `ct_call` VALUES (415, 13, 1, 3, 5750);
INSERT INTO `ct_call` VALUES (416, 13, 112, 1, 2219);
INSERT INTO `ct_call` VALUES (417, 13, 117, 1, 2219);
INSERT INTO `ct_call` VALUES (418, 13, 151, 1, 2504);
INSERT INTO `ct_call` VALUES (419, 13, 341, 1, 2504);
INSERT INTO `ct_call` VALUES (420, 13, 241, 1, 1027);
INSERT INTO `ct_call` VALUES (421, 13, 271, 1, 1027);
INSERT INTO `ct_call` VALUES (422, 15, 1, 2, 2739);
INSERT INTO `ct_call` VALUES (423, 15, 89, 1, 1407);
INSERT INTO `ct_call` VALUES (424, 15, 101, 1, 1407);
INSERT INTO `ct_call` VALUES (425, 15, 129, 1, 1332);
INSERT INTO `ct_call` VALUES (426, 15, 148, 1, 1332);
INSERT INTO `ct_call` VALUES (427, 20, 1, 1, 2982);
INSERT INTO `ct_call` VALUES (428, 20, 24, 1, 2982);
INSERT INTO `ct_call` VALUES (429, 20, 34, 1, 2982);
INSERT INTO `ct_call` VALUES (430, 4, 1, 2, 2953);
INSERT INTO `ct_call` VALUES (431, 4, 112, 1, 2357);
INSERT INTO `ct_call` VALUES (432, 4, 319, 1, 2357);
INSERT INTO `ct_call` VALUES (433, 4, 174, 1, 596);
INSERT INTO `ct_call` VALUES (434, 4, 354, 1, 596);
INSERT INTO `ct_call` VALUES (435, 1, 1, 5, 7088);
INSERT INTO `ct_call` VALUES (436, 1, 2, 1, 1609);
INSERT INTO `ct_call` VALUES (437, 1, 273, 1, 1609);
INSERT INTO `ct_call` VALUES (438, 1, 129, 1, 360);
INSERT INTO `ct_call` VALUES (439, 1, 131, 1, 360);
INSERT INTO `ct_call` VALUES (440, 1, 198, 2, 2270);
INSERT INTO `ct_call` VALUES (441, 1, 357, 1, 2209);
INSERT INTO `ct_call` VALUES (442, 1, 200, 1, 61);
INSERT INTO `ct_call` VALUES (443, 1, 219, 1, 2849);
INSERT INTO `ct_call` VALUES (444, 1, 221, 1, 2849);
INSERT INTO `ct_call` VALUES (445, 19, 1, 2, 1768);
INSERT INTO `ct_call` VALUES (446, 19, 198, 1, 61);
INSERT INTO `ct_call` VALUES (447, 19, 200, 1, 61);
INSERT INTO `ct_call` VALUES (448, 19, 219, 1, 1707);
INSERT INTO `ct_call` VALUES (449, 19, 231, 1, 1707);
INSERT INTO `ct_call` VALUES (450, 3, 1, 2, 5257);
INSERT INTO `ct_call` VALUES (451, 3, 112, 1, 2413);
INSERT INTO `ct_call` VALUES (452, 3, 114, 1, 2413);
INSERT INTO `ct_call` VALUES (453, 3, 174, 1, 2844);
INSERT INTO `ct_call` VALUES (454, 3, 187, 1, 2844);
INSERT INTO `ct_call` VALUES (455, 23, 1, 4, 2607);
INSERT INTO `ct_call` VALUES (456, 23, 69, 1, 438);
INSERT INTO `ct_call` VALUES (457, 23, 306, 1, 438);
INSERT INTO `ct_call` VALUES (458, 23, 151, 1, 444);
INSERT INTO `ct_call` VALUES (459, 23, 162, 1, 444);
INSERT INTO `ct_call` VALUES (460, 23, 174, 2, 1725);
INSERT INTO `ct_call` VALUES (461, 23, 176, 1, 1658);
INSERT INTO `ct_call` VALUES (462, 23, 184, 1, 67);
INSERT INTO `ct_call` VALUES (463, 24, 1, 6, 9937);
INSERT INTO `ct_call` VALUES (464, 24, 46, 1, 2571);
INSERT INTO `ct_call` VALUES (465, 24, 61, 1, 2571);
INSERT INTO `ct_call` VALUES (466, 24, 89, 1, 1255);
INSERT INTO `ct_call` VALUES (467, 24, 104, 1, 1255);
INSERT INTO `ct_call` VALUES (468, 24, 129, 3, 3607);
INSERT INTO `ct_call` VALUES (469, 24, 139, 1, 830);
INSERT INTO `ct_call` VALUES (470, 24, 338, 1, 1445);
INSERT INTO `ct_call` VALUES (471, 24, 148, 1, 1332);
INSERT INTO `ct_call` VALUES (472, 24, 151, 1, 2504);
INSERT INTO `ct_call` VALUES (473, 24, 341, 1, 2504);

-- ----------------------------
-- Table structure for tb_contacts
-- ----------------------------
DROP TABLE IF EXISTS `tb_contacts`;
CREATE TABLE `tb_contacts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_contacts
-- ----------------------------
INSERT INTO `tb_contacts` VALUES (1, '19313925217', '华啟倩');
INSERT INTO `tb_contacts` VALUES (2, '14410679238', '陶欣悦');
INSERT INTO `tb_contacts` VALUES (3, '19565082510', '戚丽红');
INSERT INTO `tb_contacts` VALUES (4, '19154926260', '李雁');
INSERT INTO `tb_contacts` VALUES (5, '14397114174', '仲采绿');
INSERT INTO `tb_contacts` VALUES (6, '14930423697', '沈丹');
INSERT INTO `tb_contacts` VALUES (7, '17336673697', '缪静欣');
INSERT INTO `tb_contacts` VALUES (8, '16160892861', '卫丹');
INSERT INTO `tb_contacts` VALUES (9, '17405139883', '仰莉');
INSERT INTO `tb_contacts` VALUES (10, '15647679901', '华贞');
INSERT INTO `tb_contacts` VALUES (11, '15781588029', '褚美丽');
INSERT INTO `tb_contacts` VALUES (12, '16574556259', '钱溶艳');
INSERT INTO `tb_contacts` VALUES (13, '17885275338', '施梅梅');
INSERT INTO `tb_contacts` VALUES (14, '16569963779', '焦秋菊');
INSERT INTO `tb_contacts` VALUES (15, '18101213362', '钱琳');
INSERT INTO `tb_contacts` VALUES (16, '15884588694', '魏明艳');
INSERT INTO `tb_contacts` VALUES (17, '15280214634', '金虹霖');
INSERT INTO `tb_contacts` VALUES (18, '13319935953', '何翠柔');
INSERT INTO `tb_contacts` VALUES (19, '19342117869', '吕访琴');
INSERT INTO `tb_contacts` VALUES (20, '18840172592', '卫艺');
INSERT INTO `tb_contacts` VALUES (21, '14171709460', '张三');
INSERT INTO `tb_contacts` VALUES (22, '15244749863', '李四');
INSERT INTO `tb_contacts` VALUES (23, '19602240179', '王五');
INSERT INTO `tb_contacts` VALUES (24, '19683537146', '唐柳');
INSERT INTO `tb_contacts` VALUES (25, '15305526350', '宋琦');

-- ----------------------------
-- Table structure for tb_dimension_date
-- ----------------------------
DROP TABLE IF EXISTS `tb_dimension_date`;
CREATE TABLE `tb_dimension_date`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 379 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_dimension_date
-- ----------------------------
INSERT INTO `tb_dimension_date` VALUES (1, 2019, -1, -1);
INSERT INTO `tb_dimension_date` VALUES (2, 2019, 1, -1);
INSERT INTO `tb_dimension_date` VALUES (3, 2019, 1, 2);
INSERT INTO `tb_dimension_date` VALUES (4, 2019, 1, 3);
INSERT INTO `tb_dimension_date` VALUES (5, 2019, 1, 4);
INSERT INTO `tb_dimension_date` VALUES (6, 2019, 1, 5);
INSERT INTO `tb_dimension_date` VALUES (7, 2019, 1, 6);
INSERT INTO `tb_dimension_date` VALUES (8, 2019, 1, 7);
INSERT INTO `tb_dimension_date` VALUES (9, 2019, 1, 10);
INSERT INTO `tb_dimension_date` VALUES (10, 2019, 1, 11);
INSERT INTO `tb_dimension_date` VALUES (11, 2019, 1, 12);
INSERT INTO `tb_dimension_date` VALUES (12, 2019, 1, 13);
INSERT INTO `tb_dimension_date` VALUES (13, 2019, 1, 15);
INSERT INTO `tb_dimension_date` VALUES (14, 2019, 1, 16);
INSERT INTO `tb_dimension_date` VALUES (15, 2019, 1, 17);
INSERT INTO `tb_dimension_date` VALUES (16, 2019, 1, 18);
INSERT INTO `tb_dimension_date` VALUES (17, 2019, 1, 20);
INSERT INTO `tb_dimension_date` VALUES (18, 2019, 1, 21);
INSERT INTO `tb_dimension_date` VALUES (19, 2019, 1, 22);
INSERT INTO `tb_dimension_date` VALUES (20, 2019, 1, 26);
INSERT INTO `tb_dimension_date` VALUES (21, 2019, 1, 27);
INSERT INTO `tb_dimension_date` VALUES (22, 2019, 1, 28);
INSERT INTO `tb_dimension_date` VALUES (23, 2019, 1, 30);
INSERT INTO `tb_dimension_date` VALUES (24, 2019, 2, -1);
INSERT INTO `tb_dimension_date` VALUES (25, 2019, 2, 1);
INSERT INTO `tb_dimension_date` VALUES (26, 2019, 2, 4);
INSERT INTO `tb_dimension_date` VALUES (27, 2019, 2, 5);
INSERT INTO `tb_dimension_date` VALUES (28, 2019, 2, 6);
INSERT INTO `tb_dimension_date` VALUES (29, 2019, 2, 7);
INSERT INTO `tb_dimension_date` VALUES (30, 2019, 2, 8);
INSERT INTO `tb_dimension_date` VALUES (31, 2019, 2, 10);
INSERT INTO `tb_dimension_date` VALUES (32, 2019, 2, 11);
INSERT INTO `tb_dimension_date` VALUES (33, 2019, 2, 12);
INSERT INTO `tb_dimension_date` VALUES (34, 2019, 2, 13);
INSERT INTO `tb_dimension_date` VALUES (35, 2019, 2, 14);
INSERT INTO `tb_dimension_date` VALUES (36, 2019, 2, 16);
INSERT INTO `tb_dimension_date` VALUES (37, 2019, 2, 17);
INSERT INTO `tb_dimension_date` VALUES (38, 2019, 2, 18);
INSERT INTO `tb_dimension_date` VALUES (39, 2019, 2, 20);
INSERT INTO `tb_dimension_date` VALUES (40, 2019, 2, 21);
INSERT INTO `tb_dimension_date` VALUES (41, 2019, 2, 22);
INSERT INTO `tb_dimension_date` VALUES (42, 2019, 2, 24);
INSERT INTO `tb_dimension_date` VALUES (43, 2019, 2, 25);
INSERT INTO `tb_dimension_date` VALUES (44, 2019, 2, 27);
INSERT INTO `tb_dimension_date` VALUES (45, 2019, 2, 28);
INSERT INTO `tb_dimension_date` VALUES (46, 2019, 3, -1);
INSERT INTO `tb_dimension_date` VALUES (47, 2019, 3, 1);
INSERT INTO `tb_dimension_date` VALUES (48, 2019, 3, 4);
INSERT INTO `tb_dimension_date` VALUES (49, 2019, 3, 5);
INSERT INTO `tb_dimension_date` VALUES (50, 2019, 3, 6);
INSERT INTO `tb_dimension_date` VALUES (51, 2019, 3, 7);
INSERT INTO `tb_dimension_date` VALUES (52, 2019, 3, 8);
INSERT INTO `tb_dimension_date` VALUES (53, 2019, 3, 11);
INSERT INTO `tb_dimension_date` VALUES (54, 2019, 3, 12);
INSERT INTO `tb_dimension_date` VALUES (55, 2019, 3, 13);
INSERT INTO `tb_dimension_date` VALUES (56, 2019, 3, 14);
INSERT INTO `tb_dimension_date` VALUES (57, 2019, 3, 15);
INSERT INTO `tb_dimension_date` VALUES (58, 2019, 3, 18);
INSERT INTO `tb_dimension_date` VALUES (59, 2019, 3, 19);
INSERT INTO `tb_dimension_date` VALUES (60, 2019, 3, 20);
INSERT INTO `tb_dimension_date` VALUES (61, 2019, 3, 21);
INSERT INTO `tb_dimension_date` VALUES (62, 2019, 3, 22);
INSERT INTO `tb_dimension_date` VALUES (63, 2019, 3, 24);
INSERT INTO `tb_dimension_date` VALUES (64, 2019, 3, 25);
INSERT INTO `tb_dimension_date` VALUES (65, 2019, 3, 26);
INSERT INTO `tb_dimension_date` VALUES (66, 2019, 3, 27);
INSERT INTO `tb_dimension_date` VALUES (67, 2019, 3, 28);
INSERT INTO `tb_dimension_date` VALUES (68, 2019, 3, 31);
INSERT INTO `tb_dimension_date` VALUES (69, 2019, 4, -1);
INSERT INTO `tb_dimension_date` VALUES (70, 2019, 4, 1);
INSERT INTO `tb_dimension_date` VALUES (71, 2019, 4, 2);
INSERT INTO `tb_dimension_date` VALUES (72, 2019, 4, 3);
INSERT INTO `tb_dimension_date` VALUES (73, 2019, 4, 4);
INSERT INTO `tb_dimension_date` VALUES (74, 2019, 4, 5);
INSERT INTO `tb_dimension_date` VALUES (75, 2019, 4, 6);
INSERT INTO `tb_dimension_date` VALUES (76, 2019, 4, 7);
INSERT INTO `tb_dimension_date` VALUES (77, 2019, 4, 8);
INSERT INTO `tb_dimension_date` VALUES (78, 2019, 4, 11);
INSERT INTO `tb_dimension_date` VALUES (79, 2019, 4, 12);
INSERT INTO `tb_dimension_date` VALUES (80, 2019, 4, 14);
INSERT INTO `tb_dimension_date` VALUES (81, 2019, 4, 15);
INSERT INTO `tb_dimension_date` VALUES (82, 2019, 4, 19);
INSERT INTO `tb_dimension_date` VALUES (83, 2019, 4, 21);
INSERT INTO `tb_dimension_date` VALUES (84, 2019, 4, 22);
INSERT INTO `tb_dimension_date` VALUES (85, 2019, 4, 23);
INSERT INTO `tb_dimension_date` VALUES (86, 2019, 4, 26);
INSERT INTO `tb_dimension_date` VALUES (87, 2019, 4, 29);
INSERT INTO `tb_dimension_date` VALUES (88, 2019, 4, 30);
INSERT INTO `tb_dimension_date` VALUES (89, 2019, 5, -1);
INSERT INTO `tb_dimension_date` VALUES (90, 2019, 5, 3);
INSERT INTO `tb_dimension_date` VALUES (91, 2019, 5, 4);
INSERT INTO `tb_dimension_date` VALUES (92, 2019, 5, 5);
INSERT INTO `tb_dimension_date` VALUES (93, 2019, 5, 6);
INSERT INTO `tb_dimension_date` VALUES (94, 2019, 5, 7);
INSERT INTO `tb_dimension_date` VALUES (95, 2019, 5, 9);
INSERT INTO `tb_dimension_date` VALUES (96, 2019, 5, 10);
INSERT INTO `tb_dimension_date` VALUES (97, 2019, 5, 12);
INSERT INTO `tb_dimension_date` VALUES (98, 2019, 5, 13);
INSERT INTO `tb_dimension_date` VALUES (99, 2019, 5, 14);
INSERT INTO `tb_dimension_date` VALUES (100, 2019, 5, 15);
INSERT INTO `tb_dimension_date` VALUES (101, 2019, 5, 16);
INSERT INTO `tb_dimension_date` VALUES (102, 2019, 5, 20);
INSERT INTO `tb_dimension_date` VALUES (103, 2019, 5, 21);
INSERT INTO `tb_dimension_date` VALUES (104, 2019, 5, 23);
INSERT INTO `tb_dimension_date` VALUES (105, 2019, 5, 24);
INSERT INTO `tb_dimension_date` VALUES (106, 2019, 5, 25);
INSERT INTO `tb_dimension_date` VALUES (107, 2019, 5, 27);
INSERT INTO `tb_dimension_date` VALUES (108, 2019, 5, 28);
INSERT INTO `tb_dimension_date` VALUES (109, 2019, 5, 29);
INSERT INTO `tb_dimension_date` VALUES (110, 2019, 5, 30);
INSERT INTO `tb_dimension_date` VALUES (111, 2019, 5, 31);
INSERT INTO `tb_dimension_date` VALUES (112, 2019, 6, -1);
INSERT INTO `tb_dimension_date` VALUES (113, 2019, 6, 2);
INSERT INTO `tb_dimension_date` VALUES (114, 2019, 6, 3);
INSERT INTO `tb_dimension_date` VALUES (115, 2019, 6, 6);
INSERT INTO `tb_dimension_date` VALUES (116, 2019, 6, 7);
INSERT INTO `tb_dimension_date` VALUES (117, 2019, 6, 11);
INSERT INTO `tb_dimension_date` VALUES (118, 2019, 6, 14);
INSERT INTO `tb_dimension_date` VALUES (119, 2019, 6, 15);
INSERT INTO `tb_dimension_date` VALUES (120, 2019, 6, 18);
INSERT INTO `tb_dimension_date` VALUES (121, 2019, 6, 20);
INSERT INTO `tb_dimension_date` VALUES (122, 2019, 6, 21);
INSERT INTO `tb_dimension_date` VALUES (123, 2019, 6, 23);
INSERT INTO `tb_dimension_date` VALUES (124, 2019, 6, 24);
INSERT INTO `tb_dimension_date` VALUES (125, 2019, 6, 25);
INSERT INTO `tb_dimension_date` VALUES (126, 2019, 6, 27);
INSERT INTO `tb_dimension_date` VALUES (127, 2019, 6, 29);
INSERT INTO `tb_dimension_date` VALUES (128, 2019, 6, 30);
INSERT INTO `tb_dimension_date` VALUES (129, 2019, 7, -1);
INSERT INTO `tb_dimension_date` VALUES (130, 2019, 7, 1);
INSERT INTO `tb_dimension_date` VALUES (131, 2019, 7, 2);
INSERT INTO `tb_dimension_date` VALUES (132, 2019, 7, 3);
INSERT INTO `tb_dimension_date` VALUES (133, 2019, 7, 6);
INSERT INTO `tb_dimension_date` VALUES (134, 2019, 7, 8);
INSERT INTO `tb_dimension_date` VALUES (135, 2019, 7, 9);
INSERT INTO `tb_dimension_date` VALUES (136, 2019, 7, 11);
INSERT INTO `tb_dimension_date` VALUES (137, 2019, 7, 12);
INSERT INTO `tb_dimension_date` VALUES (138, 2019, 7, 14);
INSERT INTO `tb_dimension_date` VALUES (139, 2019, 7, 17);
INSERT INTO `tb_dimension_date` VALUES (140, 2019, 7, 19);
INSERT INTO `tb_dimension_date` VALUES (141, 2019, 7, 20);
INSERT INTO `tb_dimension_date` VALUES (142, 2019, 7, 21);
INSERT INTO `tb_dimension_date` VALUES (143, 2019, 7, 23);
INSERT INTO `tb_dimension_date` VALUES (144, 2019, 7, 24);
INSERT INTO `tb_dimension_date` VALUES (145, 2019, 7, 26);
INSERT INTO `tb_dimension_date` VALUES (146, 2019, 7, 27);
INSERT INTO `tb_dimension_date` VALUES (147, 2019, 7, 28);
INSERT INTO `tb_dimension_date` VALUES (148, 2019, 7, 29);
INSERT INTO `tb_dimension_date` VALUES (149, 2019, 7, 30);
INSERT INTO `tb_dimension_date` VALUES (150, 2019, 7, 31);
INSERT INTO `tb_dimension_date` VALUES (151, 2019, 8, -1);
INSERT INTO `tb_dimension_date` VALUES (152, 2019, 8, 3);
INSERT INTO `tb_dimension_date` VALUES (153, 2019, 8, 5);
INSERT INTO `tb_dimension_date` VALUES (154, 2019, 8, 6);
INSERT INTO `tb_dimension_date` VALUES (155, 2019, 8, 8);
INSERT INTO `tb_dimension_date` VALUES (156, 2019, 8, 9);
INSERT INTO `tb_dimension_date` VALUES (157, 2019, 8, 10);
INSERT INTO `tb_dimension_date` VALUES (158, 2019, 8, 11);
INSERT INTO `tb_dimension_date` VALUES (159, 2019, 8, 13);
INSERT INTO `tb_dimension_date` VALUES (160, 2019, 8, 14);
INSERT INTO `tb_dimension_date` VALUES (161, 2019, 8, 15);
INSERT INTO `tb_dimension_date` VALUES (162, 2019, 8, 16);
INSERT INTO `tb_dimension_date` VALUES (163, 2019, 8, 17);
INSERT INTO `tb_dimension_date` VALUES (164, 2019, 8, 20);
INSERT INTO `tb_dimension_date` VALUES (165, 2019, 8, 21);
INSERT INTO `tb_dimension_date` VALUES (166, 2019, 8, 23);
INSERT INTO `tb_dimension_date` VALUES (167, 2019, 8, 24);
INSERT INTO `tb_dimension_date` VALUES (168, 2019, 8, 26);
INSERT INTO `tb_dimension_date` VALUES (169, 2019, 8, 27);
INSERT INTO `tb_dimension_date` VALUES (170, 2019, 8, 28);
INSERT INTO `tb_dimension_date` VALUES (171, 2019, 8, 29);
INSERT INTO `tb_dimension_date` VALUES (172, 2019, 8, 30);
INSERT INTO `tb_dimension_date` VALUES (173, 2019, 8, 31);
INSERT INTO `tb_dimension_date` VALUES (174, 2019, 9, -1);
INSERT INTO `tb_dimension_date` VALUES (175, 2019, 9, 1);
INSERT INTO `tb_dimension_date` VALUES (176, 2019, 9, 2);
INSERT INTO `tb_dimension_date` VALUES (177, 2019, 9, 3);
INSERT INTO `tb_dimension_date` VALUES (178, 2019, 9, 4);
INSERT INTO `tb_dimension_date` VALUES (179, 2019, 9, 5);
INSERT INTO `tb_dimension_date` VALUES (180, 2019, 9, 6);
INSERT INTO `tb_dimension_date` VALUES (181, 2019, 9, 8);
INSERT INTO `tb_dimension_date` VALUES (182, 2019, 9, 9);
INSERT INTO `tb_dimension_date` VALUES (183, 2019, 9, 11);
INSERT INTO `tb_dimension_date` VALUES (184, 2019, 9, 13);
INSERT INTO `tb_dimension_date` VALUES (185, 2019, 9, 14);
INSERT INTO `tb_dimension_date` VALUES (186, 2019, 9, 15);
INSERT INTO `tb_dimension_date` VALUES (187, 2019, 9, 16);
INSERT INTO `tb_dimension_date` VALUES (188, 2019, 9, 17);
INSERT INTO `tb_dimension_date` VALUES (189, 2019, 9, 19);
INSERT INTO `tb_dimension_date` VALUES (190, 2019, 9, 20);
INSERT INTO `tb_dimension_date` VALUES (191, 2019, 9, 23);
INSERT INTO `tb_dimension_date` VALUES (192, 2019, 9, 24);
INSERT INTO `tb_dimension_date` VALUES (193, 2019, 9, 25);
INSERT INTO `tb_dimension_date` VALUES (194, 2019, 9, 26);
INSERT INTO `tb_dimension_date` VALUES (195, 2019, 9, 28);
INSERT INTO `tb_dimension_date` VALUES (196, 2019, 9, 29);
INSERT INTO `tb_dimension_date` VALUES (197, 2019, 9, 30);
INSERT INTO `tb_dimension_date` VALUES (198, 2019, 10, -1);
INSERT INTO `tb_dimension_date` VALUES (199, 2019, 10, 4);
INSERT INTO `tb_dimension_date` VALUES (200, 2019, 10, 6);
INSERT INTO `tb_dimension_date` VALUES (201, 2019, 10, 7);
INSERT INTO `tb_dimension_date` VALUES (202, 2019, 10, 9);
INSERT INTO `tb_dimension_date` VALUES (203, 2019, 10, 10);
INSERT INTO `tb_dimension_date` VALUES (204, 2019, 10, 12);
INSERT INTO `tb_dimension_date` VALUES (205, 2019, 10, 13);
INSERT INTO `tb_dimension_date` VALUES (206, 2019, 10, 14);
INSERT INTO `tb_dimension_date` VALUES (207, 2019, 10, 15);
INSERT INTO `tb_dimension_date` VALUES (208, 2019, 10, 16);
INSERT INTO `tb_dimension_date` VALUES (209, 2019, 10, 17);
INSERT INTO `tb_dimension_date` VALUES (210, 2019, 10, 21);
INSERT INTO `tb_dimension_date` VALUES (211, 2019, 10, 22);
INSERT INTO `tb_dimension_date` VALUES (212, 2019, 10, 23);
INSERT INTO `tb_dimension_date` VALUES (213, 2019, 10, 24);
INSERT INTO `tb_dimension_date` VALUES (214, 2019, 10, 27);
INSERT INTO `tb_dimension_date` VALUES (215, 2019, 10, 28);
INSERT INTO `tb_dimension_date` VALUES (216, 2019, 10, 29);
INSERT INTO `tb_dimension_date` VALUES (217, 2019, 10, 30);
INSERT INTO `tb_dimension_date` VALUES (218, 2019, 10, 31);
INSERT INTO `tb_dimension_date` VALUES (219, 2019, 11, -1);
INSERT INTO `tb_dimension_date` VALUES (220, 2019, 11, 2);
INSERT INTO `tb_dimension_date` VALUES (221, 2019, 11, 3);
INSERT INTO `tb_dimension_date` VALUES (222, 2019, 11, 5);
INSERT INTO `tb_dimension_date` VALUES (223, 2019, 11, 7);
INSERT INTO `tb_dimension_date` VALUES (224, 2019, 11, 8);
INSERT INTO `tb_dimension_date` VALUES (225, 2019, 11, 9);
INSERT INTO `tb_dimension_date` VALUES (226, 2019, 11, 10);
INSERT INTO `tb_dimension_date` VALUES (227, 2019, 11, 11);
INSERT INTO `tb_dimension_date` VALUES (228, 2019, 11, 13);
INSERT INTO `tb_dimension_date` VALUES (229, 2019, 11, 14);
INSERT INTO `tb_dimension_date` VALUES (230, 2019, 11, 15);
INSERT INTO `tb_dimension_date` VALUES (231, 2019, 11, 18);
INSERT INTO `tb_dimension_date` VALUES (232, 2019, 11, 19);
INSERT INTO `tb_dimension_date` VALUES (233, 2019, 11, 20);
INSERT INTO `tb_dimension_date` VALUES (234, 2019, 11, 22);
INSERT INTO `tb_dimension_date` VALUES (235, 2019, 11, 23);
INSERT INTO `tb_dimension_date` VALUES (236, 2019, 11, 24);
INSERT INTO `tb_dimension_date` VALUES (237, 2019, 11, 27);
INSERT INTO `tb_dimension_date` VALUES (238, 2019, 11, 28);
INSERT INTO `tb_dimension_date` VALUES (239, 2019, 11, 29);
INSERT INTO `tb_dimension_date` VALUES (240, 2019, 11, 30);
INSERT INTO `tb_dimension_date` VALUES (241, 2019, 12, -1);
INSERT INTO `tb_dimension_date` VALUES (242, 2019, 12, 1);
INSERT INTO `tb_dimension_date` VALUES (243, 2019, 12, 2);
INSERT INTO `tb_dimension_date` VALUES (244, 2019, 12, 3);
INSERT INTO `tb_dimension_date` VALUES (245, 2019, 12, 6);
INSERT INTO `tb_dimension_date` VALUES (246, 2019, 12, 8);
INSERT INTO `tb_dimension_date` VALUES (247, 2019, 12, 9);
INSERT INTO `tb_dimension_date` VALUES (248, 2019, 12, 10);
INSERT INTO `tb_dimension_date` VALUES (249, 2019, 12, 11);
INSERT INTO `tb_dimension_date` VALUES (250, 2019, 12, 12);
INSERT INTO `tb_dimension_date` VALUES (251, 2019, 12, 14);
INSERT INTO `tb_dimension_date` VALUES (252, 2019, 12, 15);
INSERT INTO `tb_dimension_date` VALUES (253, 2019, 12, 16);
INSERT INTO `tb_dimension_date` VALUES (254, 2019, 12, 17);
INSERT INTO `tb_dimension_date` VALUES (255, 2019, 12, 19);
INSERT INTO `tb_dimension_date` VALUES (256, 2019, 12, 21);
INSERT INTO `tb_dimension_date` VALUES (257, 2019, 12, 23);
INSERT INTO `tb_dimension_date` VALUES (258, 2019, 12, 26);
INSERT INTO `tb_dimension_date` VALUES (259, 2019, 12, 27);
INSERT INTO `tb_dimension_date` VALUES (260, 2019, 12, 28);
INSERT INTO `tb_dimension_date` VALUES (261, 2019, 12, 29);
INSERT INTO `tb_dimension_date` VALUES (262, 2019, 12, 30);
INSERT INTO `tb_dimension_date` VALUES (263, 2019, 12, 22);
INSERT INTO `tb_dimension_date` VALUES (264, 2019, 12, 4);
INSERT INTO `tb_dimension_date` VALUES (265, 2019, 12, 5);
INSERT INTO `tb_dimension_date` VALUES (266, 2019, 12, 7);
INSERT INTO `tb_dimension_date` VALUES (267, 2019, 12, 13);
INSERT INTO `tb_dimension_date` VALUES (268, 2019, 12, 18);
INSERT INTO `tb_dimension_date` VALUES (269, 2019, 12, 20);
INSERT INTO `tb_dimension_date` VALUES (270, 2019, 12, 24);
INSERT INTO `tb_dimension_date` VALUES (271, 2019, 12, 25);
INSERT INTO `tb_dimension_date` VALUES (272, 2019, 12, 31);
INSERT INTO `tb_dimension_date` VALUES (273, 2019, 1, 8);
INSERT INTO `tb_dimension_date` VALUES (274, 2019, 1, 9);
INSERT INTO `tb_dimension_date` VALUES (275, 2019, 1, 14);
INSERT INTO `tb_dimension_date` VALUES (276, 2019, 1, 19);
INSERT INTO `tb_dimension_date` VALUES (277, 2019, 1, 23);
INSERT INTO `tb_dimension_date` VALUES (278, 2019, 1, 24);
INSERT INTO `tb_dimension_date` VALUES (279, 2019, 1, 25);
INSERT INTO `tb_dimension_date` VALUES (280, 2019, 1, 31);
INSERT INTO `tb_dimension_date` VALUES (281, 2019, 2, 2);
INSERT INTO `tb_dimension_date` VALUES (282, 2019, 2, 3);
INSERT INTO `tb_dimension_date` VALUES (283, 2019, 2, 9);
INSERT INTO `tb_dimension_date` VALUES (284, 2019, 2, 15);
INSERT INTO `tb_dimension_date` VALUES (285, 2019, 2, 19);
INSERT INTO `tb_dimension_date` VALUES (286, 2019, 2, 23);
INSERT INTO `tb_dimension_date` VALUES (287, 2019, 2, 29);
INSERT INTO `tb_dimension_date` VALUES (288, 2019, 3, 2);
INSERT INTO `tb_dimension_date` VALUES (289, 2019, 3, 3);
INSERT INTO `tb_dimension_date` VALUES (290, 2019, 3, 9);
INSERT INTO `tb_dimension_date` VALUES (291, 2019, 3, 10);
INSERT INTO `tb_dimension_date` VALUES (292, 2019, 3, 16);
INSERT INTO `tb_dimension_date` VALUES (293, 2019, 3, 17);
INSERT INTO `tb_dimension_date` VALUES (294, 2019, 3, 23);
INSERT INTO `tb_dimension_date` VALUES (295, 2019, 3, 29);
INSERT INTO `tb_dimension_date` VALUES (296, 2019, 3, 30);
INSERT INTO `tb_dimension_date` VALUES (297, 2019, 4, 9);
INSERT INTO `tb_dimension_date` VALUES (298, 2019, 4, 10);
INSERT INTO `tb_dimension_date` VALUES (299, 2019, 4, 13);
INSERT INTO `tb_dimension_date` VALUES (300, 2019, 4, 16);
INSERT INTO `tb_dimension_date` VALUES (301, 2019, 4, 17);
INSERT INTO `tb_dimension_date` VALUES (302, 2019, 4, 18);
INSERT INTO `tb_dimension_date` VALUES (303, 2019, 4, 20);
INSERT INTO `tb_dimension_date` VALUES (304, 2019, 4, 24);
INSERT INTO `tb_dimension_date` VALUES (305, 2019, 4, 25);
INSERT INTO `tb_dimension_date` VALUES (306, 2019, 4, 27);
INSERT INTO `tb_dimension_date` VALUES (307, 2019, 4, 28);
INSERT INTO `tb_dimension_date` VALUES (308, 2019, 5, 1);
INSERT INTO `tb_dimension_date` VALUES (309, 2019, 5, 2);
INSERT INTO `tb_dimension_date` VALUES (310, 2019, 5, 8);
INSERT INTO `tb_dimension_date` VALUES (311, 2019, 5, 11);
INSERT INTO `tb_dimension_date` VALUES (312, 2019, 5, 17);
INSERT INTO `tb_dimension_date` VALUES (313, 2019, 5, 18);
INSERT INTO `tb_dimension_date` VALUES (314, 2019, 5, 19);
INSERT INTO `tb_dimension_date` VALUES (315, 2019, 5, 22);
INSERT INTO `tb_dimension_date` VALUES (316, 2019, 5, 26);
INSERT INTO `tb_dimension_date` VALUES (317, 2019, 6, 1);
INSERT INTO `tb_dimension_date` VALUES (318, 2019, 6, 4);
INSERT INTO `tb_dimension_date` VALUES (319, 2019, 6, 5);
INSERT INTO `tb_dimension_date` VALUES (320, 2019, 6, 8);
INSERT INTO `tb_dimension_date` VALUES (321, 2019, 6, 9);
INSERT INTO `tb_dimension_date` VALUES (322, 2019, 6, 10);
INSERT INTO `tb_dimension_date` VALUES (323, 2019, 6, 12);
INSERT INTO `tb_dimension_date` VALUES (324, 2019, 6, 13);
INSERT INTO `tb_dimension_date` VALUES (325, 2019, 6, 16);
INSERT INTO `tb_dimension_date` VALUES (326, 2019, 6, 17);
INSERT INTO `tb_dimension_date` VALUES (327, 2019, 6, 19);
INSERT INTO `tb_dimension_date` VALUES (328, 2019, 6, 22);
INSERT INTO `tb_dimension_date` VALUES (329, 2019, 6, 26);
INSERT INTO `tb_dimension_date` VALUES (330, 2019, 6, 28);
INSERT INTO `tb_dimension_date` VALUES (331, 2019, 7, 4);
INSERT INTO `tb_dimension_date` VALUES (332, 2019, 7, 5);
INSERT INTO `tb_dimension_date` VALUES (333, 2019, 7, 7);
INSERT INTO `tb_dimension_date` VALUES (334, 2019, 7, 10);
INSERT INTO `tb_dimension_date` VALUES (335, 2019, 7, 13);
INSERT INTO `tb_dimension_date` VALUES (336, 2019, 7, 15);
INSERT INTO `tb_dimension_date` VALUES (337, 2019, 7, 16);
INSERT INTO `tb_dimension_date` VALUES (338, 2019, 7, 18);
INSERT INTO `tb_dimension_date` VALUES (339, 2019, 7, 22);
INSERT INTO `tb_dimension_date` VALUES (340, 2019, 7, 25);
INSERT INTO `tb_dimension_date` VALUES (341, 2019, 8, 1);
INSERT INTO `tb_dimension_date` VALUES (342, 2019, 8, 2);
INSERT INTO `tb_dimension_date` VALUES (343, 2019, 8, 4);
INSERT INTO `tb_dimension_date` VALUES (344, 2019, 8, 7);
INSERT INTO `tb_dimension_date` VALUES (345, 2019, 8, 12);
INSERT INTO `tb_dimension_date` VALUES (346, 2019, 8, 18);
INSERT INTO `tb_dimension_date` VALUES (347, 2019, 8, 19);
INSERT INTO `tb_dimension_date` VALUES (348, 2019, 8, 22);
INSERT INTO `tb_dimension_date` VALUES (349, 2019, 8, 25);
INSERT INTO `tb_dimension_date` VALUES (350, 2019, 9, 7);
INSERT INTO `tb_dimension_date` VALUES (351, 2019, 9, 10);
INSERT INTO `tb_dimension_date` VALUES (352, 2019, 9, 12);
INSERT INTO `tb_dimension_date` VALUES (353, 2019, 9, 18);
INSERT INTO `tb_dimension_date` VALUES (354, 2019, 9, 21);
INSERT INTO `tb_dimension_date` VALUES (355, 2019, 9, 22);
INSERT INTO `tb_dimension_date` VALUES (356, 2019, 9, 27);
INSERT INTO `tb_dimension_date` VALUES (357, 2019, 10, 1);
INSERT INTO `tb_dimension_date` VALUES (358, 2019, 10, 2);
INSERT INTO `tb_dimension_date` VALUES (359, 2019, 10, 3);
INSERT INTO `tb_dimension_date` VALUES (360, 2019, 10, 5);
INSERT INTO `tb_dimension_date` VALUES (361, 2019, 10, 8);
INSERT INTO `tb_dimension_date` VALUES (362, 2019, 10, 11);
INSERT INTO `tb_dimension_date` VALUES (363, 2019, 10, 18);
INSERT INTO `tb_dimension_date` VALUES (364, 2019, 10, 19);
INSERT INTO `tb_dimension_date` VALUES (365, 2019, 10, 20);
INSERT INTO `tb_dimension_date` VALUES (366, 2019, 10, 25);
INSERT INTO `tb_dimension_date` VALUES (367, 2019, 10, 26);
INSERT INTO `tb_dimension_date` VALUES (368, 2019, 11, 1);
INSERT INTO `tb_dimension_date` VALUES (369, 2019, 11, 4);
INSERT INTO `tb_dimension_date` VALUES (370, 2019, 11, 6);
INSERT INTO `tb_dimension_date` VALUES (371, 2019, 11, 12);
INSERT INTO `tb_dimension_date` VALUES (372, 2019, 11, 16);
INSERT INTO `tb_dimension_date` VALUES (373, 2019, 11, 17);
INSERT INTO `tb_dimension_date` VALUES (374, 2019, 11, 21);
INSERT INTO `tb_dimension_date` VALUES (375, 2019, 11, 25);
INSERT INTO `tb_dimension_date` VALUES (376, 2019, 11, 26);
INSERT INTO `tb_dimension_date` VALUES (377, 2019, 1, 1);
INSERT INTO `tb_dimension_date` VALUES (378, 2019, 1, 29);

-- ----------------------------
-- Table structure for tb_intimacy
-- ----------------------------
DROP TABLE IF EXISTS `tb_intimacy`;
CREATE TABLE `tb_intimacy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intimacy_rank` int(11) NOT NULL,
  `contact_id1` int(11) NOT NULL,
  `contact_id2` int(11) NOT NULL,
  `call_count` int(11) NOT NULL,
  `call_duration_count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
