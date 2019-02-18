-- ----------------------------
-- Table structure for e_topic
-- ----------------------------
DROP TABLE IF EXISTS `e_topic`;
CREATE TABLE `e_topic`  (
  `tid` int(4) NOT NULL AUTO_INCREMENT,
  `topic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `option4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `topicType` enum('T01','T02','T03') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `topicKind` enum('C','Java','JS','DB2','Oracle') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `topicDifficult` enum('D01','D02','D03') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `result` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
)


-- ----------------------------
-- Table structure for e_user
-- ----------------------------
DROP TABLE IF EXISTS `e_user`;
CREATE TABLE `e_user`  (
  `uid` int(6) NOT NULL AUTO_INCREMENT,
  `uname` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upwd` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `uname`(`uname`) USING BTREE
)