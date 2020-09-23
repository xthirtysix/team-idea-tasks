-- ----------------------------
-- Table structure for `Brand`
-- ----------------------------
DROP TABLE IF EXISTS `Brand`;
CREATE TABLE `Brand` (
  `BrandId` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(255) DEFAULT NULL,
  `BrandCountry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BrandId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Brand
-- ----------------------------
INSERT INTO `Brand` VALUES ('1', 'BMW', 'Germany');
INSERT INTO `Brand` VALUES ('2', 'MERCEDES', 'Germany');
INSERT INTO `Brand` VALUES ('3', 'TOYOTA', 'Japan');
INSERT INTO `Brand` VALUES ('4', 'TESLA', 'USA');

-- ----------------------------
-- Table structure for `Auto`
-- ----------------------------
DROP TABLE IF EXISTS `Auto`;
CREATE TABLE `Auto` (
  `AutoId` int(11) NOT NULL AUTO_INCREMENT,
  `AutoModel` varchar(255) DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `Price` int(6) DEFAULT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Auto
-- ----------------------------
INSERT INTO `Auto` VALUES ('1', 'Series 3', '1', '40000');
INSERT INTO `Auto` VALUES ('2', 'C class', '2', '41000');
INSERT INTO `Auto` VALUES ('3', 'Camry', '3', '40000');
INSERT INTO `Auto` VALUES ('4', 'Model S', '4', '70000');
INSERT INTO `Auto` VALUES ('5', 'Model X', '4', '90000');
INSERT INTO `Auto` VALUES ('6', 'Series 5', '1', '50000');