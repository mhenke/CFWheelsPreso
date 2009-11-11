CREATE DATABASE `mdcfug` /*!40100 DEFAULT CHARACTER SET latin1 */;

DROP TABLE IF EXISTS `mdcfug`.`evals`;
CREATE TABLE  `mdcfug`.`evals` (
  `formid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventid` int(10) unsigned DEFAULT NULL,
  `direction` bit(1) DEFAULT NULL,
  `hear` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `speakerid` int(10) unsigned DEFAULT NULL,
  `next` bit(1) DEFAULT NULL,
  `present` bit(1) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `interest1` int(10) unsigned DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `company` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `interest3` int(10) unsigned DEFAULT NULL,
  `interest4` varchar(45) DEFAULT NULL,
  `interest2` int(10) unsigned DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `deleatedat` datetime DEFAULT NULL,
  PRIMARY KEY (`formid`),
  KEY `FK_evals_1` (`eventid`) USING BTREE,
  KEY `FK_evals_2` (`speakerid`) USING BTREE,
  CONSTRAINT `FK_evals_1` FOREIGN KEY (`eventid`) REFERENCES `qualities` (`id`),
  CONSTRAINT `FK_evals_2` FOREIGN KEY (`speakerid`) REFERENCES `qualities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `mdcfug`.`qualities`;
CREATE TABLE  `mdcfug`.`qualities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO qualities level VALUES('High');
INSERT INTO qualities level VALUES('Medium');
INSERT INTO qualities level VALUES('Low');


