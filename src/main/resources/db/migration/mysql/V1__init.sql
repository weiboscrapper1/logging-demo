CREATE DATABASE IF NOT EXISTS `logging-demo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `logging-demo`.`student`
(
   `id` BIGINT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(255) NOT NULL,
   `passport_number` VARCHAR(255) NOT NULL,
   PRIMARY KEY(id)
)ENGINE = InnoDB, CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `logging-demo`.`role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
)ENGINE = InnoDB, CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `logging-demo`.`user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
)ENGINE = InnoDB, CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;;

CREATE TABLE IF NOT EXISTS `logging-demo`.`user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  CONSTRAINT `fk_user_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
)ENGINE = InnoDB, CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;