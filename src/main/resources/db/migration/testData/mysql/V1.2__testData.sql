INSERT INTO `student` VALUES (10001,'Ranga', 'E1234567');
INSERT INTO `student` VALUES (10002,'Ravi', 'A1234568');

INSERT INTO `role` VALUES (1,'ADMIN'), (2, 'USER');

INSERT INTO `user` VALUES(1, 1, 'jane.doe@bb.com', 'Doe', 'Jane', '$2a$10$qqd3x2wpXFugyns2EHNRhOfmngQs1zC0.pFFjYWvBpMMjFalHgnbe'),
(2, 1, 'john.doe@bb.com', 'Doe', 'John', '$2a$10$qqd3x2wpXFugyns2EHNRhOfmngQs1zC0.pFFjYWvBpMMjFalHgnbe');

INSERT INTO `user_role` VALUES (1, 1), (2, 2);