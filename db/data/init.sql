CREATE DATABASE /*!32312 IF NOT EXISTS*/ `projectdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `projectdb`;

DROP TABLE IF EXISTS `Users`;

CREATE TABLE `projectdb`.`Users` (
  `userid` VARCHAR(30) NOT NULL,
  `name` VARCHAR(100) NULL,
  `gender` VARCHAR(10) NULL,
  `city` VARCHAR(30) NULL,
  PRIMARY KEY (`userid`));

insert into Users values ('gildong','gildong hong','man','seoul');  

