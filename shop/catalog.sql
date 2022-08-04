CREATE DATABASE `mydb`;
USE `mydb` ;
CREATE TABLE `categories` (
  `id_categories` INT NOT NULL,
  `title` VARCHAR(225) NOT NULL,
  `description` VARCHAR(255),
  PRIMARY KEY (`id_categories`));
  
CREATE TABLE `image` (
  `id_image` INT NOT NULL,
  `name` VARCHAR(225) NOT NULL,
  `alt` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_image`));
  
CREATE TABLE `product` (
  `id_product` INT NOT NULL,
  `title` VARCHAR(225) NOT NULL,
  `price` INT NOT NULL,
  `old_price` INT NOT NULL,
  `discount_price` INT NOT NULL,
  `description` VARCHAR(255),
  `activity` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id_product`));

CREATE TABLE `product_by_categories` (
  `id_categories` INT NOT NULL,
  `id_product` INT NOT NULL,
  `main_id_categories` INT NOT NULL,
  CONSTRAINT product_cat
    FOREIGN KEY (`id_product`)
    REFERENCES `product` (`id_product`)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT main_id__categories
    FOREIGN KEY (`main_id_categories`)
    REFERENCES `categories` (`id_categories`) 
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT categories_prod
    FOREIGN KEY (`id_categories`)
    REFERENCES `categories` (`id_categories`)
    ON UPDATE CASCADE
    ON DELETE CASCADE);

CREATE TABLE `product_image` (
  `id_image` INT NOT NULL,
  `id_product` INT NOT NULL,
  `main_id_image` INT NOT NULL,
  CONSTRAINT image_prod
    FOREIGN KEY (`id_image`)
    REFERENCES `image` (`id_image`)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT main_id__image
    FOREIGN KEY (`main_id_image`)
    REFERENCES `image` (`id_image`)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT product_im
    FOREIGN KEY (`id_product`)
    REFERENCES `product` (`id_product`)
    ON UPDATE CASCADE
    ON DELETE CASCADE);

INSERT INTO `categories` (`id_categories`,`title`,`description`) VALUES
(1, 'Рубашки','Раздел с рубашками'),
(2, 'Футболки','Раздел с футболками'),
(3, 'Брюки','Раздел с брюками');

INSERT INTO `image` (`id_image`,`name`, `alt`) VALUES
(1, '1.png','Однотонная рубашка с коротким рукавом'),
(2, '1a.png','Однотонная рубашка с коротким рукавом'),
(3, '2.png','Базовая рубашка'),
(4, '2a.png','Базовая рубашка'),
(5, '3.png','Рубашка изо льна'),
(6, '3a.png','Рубашка изо льна'),
(7, '4.png','Рубашка из хлопка и льна'),
(8, '4a.png','Рубашка из хлопка и льна'),
(9, '5.png','Рубашка из поплина с точечным принтом'),
(10, '5a.png','Рубашка из поплина с точечным принтом'),
(11, '6.png','Рубашка в клетку'),
(12, '6a.png','Рубашка в клетку'),
(13, '7.png','Рубашка из хлопка'),
(14, '7a.png','Рубашка из хлопка'),
(15, '8.png','Рубашка из поплина с принтом'),
(16, '8a.png','Рубашка из поплина с принтом'),
(17, '9.png','Базовая рубашка'),
(18, '9a.png','Базовая рубашка'),
(19, '10.png','Рубашка с воротником стойкой'),
(20, '10a.png','Рубашка с воротником стойкой'),
(21, '11.png','Куртка-рубашка'),
(22, '11a.png','Куртка-рубашка'),
(23, '12.png','Рубашка в горошек'),
(24, '12a.png','Рубашка в горошек'),
(25, '13.png','Рубашка из твила в клетку'),
(26, '13a.png','Рубашка из твила в клетку'),
(27, '14.png','Рубашка из твила'),
(28, '14a.png','Рубашка из твила'),
(29, '15.png','Рубашка из принтованного сатина'),
(30, '15a.png','Рубашка из принтованного сатина'),
(31, '16.png','Рубашка-футболка из трикотажного полотна'),
(32, '16a.png','Рубашка-футболка из трикотажного полотна'),
(33, '17.png','Футболка с принтом'),
(34, '17a.png','Футболка с принтом'),
(35, '18.png','Базовая футболка'),
(36, '18a.png','Базовая футболка'),
(37, '19.png','Базовая футболка с двухслойной отделкой'),
(38, '19a.png','Базовая футболка с двухслойной отделкой'),
(39, '20.png','Футболка с V-вырезом'),
(40, '20a.png','Футболка с V-вырезом'),
(41, '21.png','Футболка с морским принтом'),
(42, '21a.png','Футболка с морским принтом'),
(43, '22.png','Футболка с камуфляжным принтом'),
(44, '22a.png','Футболка с камуфляжным принтом'),
(45, '23.png','Полосатая футболка'),
(46, '23a.png','Полосатая футболка'),
(47, '24.png','Базовая футболка поло'),
(48, '24a.png','Базовая футболка поло'),
(49, '25.png','Футболка с длинным рукавом'),
(50, '25a.png','Футболка с длинным рукавом'),
(51, '26.png','Футболка с контрастными деталями'),
(52, '26a.png','Футболка с контрастными деталями'),
(53, '27.png','Футболка с V-вырезом'),
(54, '27a.png','Футболка с V-вырезом'),
(55, '28.png','Футболка из джерси'),
(56, '28a.png','Футболка из джерси'),
(57, '29.png','Футболка с принтом тай-дай'),
(58, '29a.png','Футболка с принтом тай-дай'),
(59, '30.png','Футболка с фотопринтом'),
(60, '30a.png','Футболка с фотопринтом'),
(61, '31.png','Базовые брюки-чиносы из микротвила'),
(62, '31a.png','Базовые брюки-чиносы из микротвила'),
(63, '32.png','Брюки из техноткани'),
(64, '32a.png','Брюки из техноткани'),
(65, '33.png','Джогеры'),
(66, '33a.png','Джогеры'),
(67, '34.png','Брюки-джогеры с принтом'),
(68, '34a.png','Брюки-джогеры с принтом'),
(69, '35.png','Брюки-карго'),
(70, '35a.png','Брюки-карго'),
(71, '36.png','Брюки с микропринтом'),
(72, '36a.png','Брюки с микропринтом'),
(73, '37.png','Формальные брюки Chino'),
(74, '37a.png','Формальные брюки Chino'),
(75, '38.png','Брюки из поливискозы'),
(76, '38a.png','Брюки из поливискозы'),
(77, '39.png','Джогеры из трикотажа пике'),
(78, '39a.png','Джогеры из трикотажа пике'),
(79, '40.png','Зауженные брюки'),
(80, '40a.png','Зауженные брюки'),
(81, '41.png','Базовые джогеры'),
(82, '41a.png','Базовые джогеры'),
(83, '42.png','Базовые брюки'),
(84, '42a.png','Базовые брюки'),
(85, '43.png','Спортивные брюки'),
(86, '43a.png','Спортивные брюки'),
(87, '44.png','Брюки на кулиске'),
(88, '44a.png','Брюки на кулиске'),
(89, '45.png','Карго-джогерры'),
(90, '45a.png','Карго-джогерры'),
(91, '46.png','Карго-джогерры с эластаном'),
(92, '46a.png','Карго-джогерры с эластаном');

INSERT INTO `product` (`id_product`,`title`,`price`,`old_price`, `discount_price`,`description`,`activity`) VALUES
(1, 'Однотонная рубашка с коротким рукавом','1223','2555','1000','Однотонная рубашка',1),
(2, 'Базовая рубашка','1223','2555','1000','Базовая рубашка',1),
(3, 'Рубашка изо льна','1223','2555','1000','Рубашка изо льна',1),
(4, 'Рубашка из хлопка и льна','1223','2555','1000','Рубашка из хлопка и льна',1),
(5, 'Рубашка из поплина с точечным принтом','1223','2555','1000','Рубашка из поплина с точечным принтом',1),
(6, 'Рубашка в клетку','1223','2555','1000','Рубашка в клетку',1),
(7, 'Рубашка из хлопка','1223','2555','1000','Рубашка из хлопка',1),
(8, 'Рубашка из поплина с принтом','1223','2555','1000','Рубашка из поплина с принтом',1),
(9, 'Базовая рубашка','1223','2555','1000','Базовая рубашка',1),
(10, 'Рубашка с воротником стойкой','1223','2555','1000','Рубашка с воротником стойкой',1),
(11, 'Куртка-рубашка','1223','2555','1000','Куртка-рубашка',1),
(12, 'Рубашка в горошек','1223','2555','1000','Рубашка в горошек',1),
(13, 'Рубашка из твила в клетку','1223','2555','1000','Рубашка из твила в клетку',1),
(14, 'Рубашка из твила','1223','2555','1000','Рубашка из твила',1),
(15, 'Рубашка из принтованного сатина','1223','2555','1000','Рубашка из принтованного сатина',1),
(16, 'Рубашка-футболка из трикотажного полотна','1223','2555','1000','Рубашка-футболка из трикотажного полотна',1),
(17, 'Футболка с принтом','1223','2555','1000','Футболка с принтом',1),
(18, 'Базовая футболка','1223','2555','1000','Базовая футболка',1),
(19, 'Базовая футболка с двухслойной отделкой','1223','2555','1000','Базовая футболка с двухслойной отделкой',1),
(20, 'Футболка с V-вырезом','1223','2555','1000','Футболка с V-вырезом',1),
(21, 'Футболка с морским принтом','1223','2555','1000','Футболка с морским принтом',0),
(22, 'Футболка с камуфляжным принтом','1223','2555','1000','Футболка с камуфляжным принтом',1),
(23, 'Полосатая футболка','1223','2555','1000','Полосатая футболка',1),
(24, 'Базовая футболка поло','1223','2555','1000','Базовая футболка поло',1),
(25, 'Футболка с длинным рукавом','1223','2555','1000','Футболка с длинным рукавом',1),
(26, 'Футболка с контрастными деталями','1223','2555','1000','Футболка с контрастными деталями',1),
(27, 'Футболка с V-вырезом','1223','2555','1000','Футболка с V-вырезом',1),
(28, 'Футболка из джерси','1223','2555','1000','Футболка из джерси',1),
(29, 'Футболка с принтом тай-дай','1223','2555','1000','Футболка с принтом тай-дай',1),
(30, 'Футболка с фотопринтом','1223','2555','1000','Футболка с фотопринтом',1),
(31, 'Базовые брюки-чиносы из микротвила','1223','2555','1000','Базовые брюки-чиносы из микротвила',1),
(32, 'Брюки из техноткани','1223','2555','1000','Брюки из техноткани',1),
(33, 'Джогеры','1223','2555','1000','Джогеры',1),
(34, 'Брюки-джогеры с принтом','1223','2555','1000','Брюки-джогеры с принтом',1),
(35, 'Брюки-карго','1223','2555','1000','Брюки-карго',1),
(36, 'Брюки с микропринтом','1223','2555','1000','Брюки с микропринтом',1),
(37, 'Формальные брюки Chino','1223','2555','1000','Формальные брюки Chino',1),
(38, 'Брюки из поливискозы','1223','2555','1000','Брюки из поливискозы',1),
(39, 'Джогеры из трикотажа пике','1223','2555','1000','Джогеры из трикотажа пике',1),
(40, 'Зауженные брюки','1223','2555','1000','Зауженные брюки',1),
(41, 'Базовые джогеры','1223','2555','1000','Базовые джогеры',1),
(42, 'Базовые брюки','1223','2555','1000','Базовые брюки',1),
(43, 'Спортивные брюки','1223','2555','1000','Спортивные брюки',1),
(44, 'Брюки на кулиске','1223','2555','1000','Брюки на кулиске',1),
(45, 'Карго-джогерры','1223','2555','1000','Карго-джогерры',1),
(46, 'Карго-джогерры с эластаном','1223','2555','1000','Карго-джогерры с эластаном',1);

INSERT INTO  `product_by_categories` (`id_categories`,`id_product`,`main_id_categories`) VALUES
(1,1,1),
(1,2,1),
(1,3,1),
(1,4,1),
(1,5,1),
(1,6,1),
(1,7,1),
(1,8,1),
(1,9,1),
(1,10,1),
(1,11,1),
(1,12,1),
(1,13,1),
(1,14,1),
(1,15,1),
(1,16,1),
(2,16,1),
(1,17,1),
(2,18,2),
(2,19,2),
(2,20,2),
(2,21,2),
(2,22,2),
(2,23,2),
(2,24,2),
(2,25,2),
(2,26,2),
(2,27,2),
(2,28,2),
(2,29,2),
(2,30,2),
(3,31,3),
(3,32,3),
(3,33,3),
(3,34,3),
(3,35,3),
(3,36,3),
(3,37,3),
(3,38,3),
(3,39,3),
(3,40,3),
(3,41,3),
(3,42,3),
(3,43,3),
(3,44,3),
(3,45,3),
(3,46,3);

INSERT INTO `product_image` (`id_image`,`id_product`,`main_id_image`) VALUES
(1,1,1),
(2,1,1),
(3,2,3),
(4,2,3),
(5,3,5),
(6,3,5),
(7,4,7),
(8,4,7),
(9,5,9),
(10,5,9),
(11,6,11),
(12,6,11),
(13,7,13),
(14,7,13),
(15,8,15),
(16,8,15),
(17,9,17),
(18,9,17),
(19,10,19),
(20,10,19),
(21,11,21),
(22,11,21),
(23,12,23),
(24,12,23),
(25,13,25),
(26,13,25),
(27,14,27),
(28,14,27),
(29,15,29),
(30,15,29),
(31,16,31),
(32,16,31),
(33,17,33),
(34,17,33),
(35,18,35),
(36,18,35),
(37,19,37),
(38,19,37),
(39,20,39),
(40,20,39),
(41,21,41),
(42,21,41),
(43,22,43),
(44,22,43),
(45,23,45),
(46,23,45),
(47,24,47),
(48,24,47),
(49,25,49),
(50,25,49),
(51,26,51),
(52,26,51),
(53,27,53),
(54,27,53),
(55,28,55),
(56,28,55),
(57,29,57),
(58,29,57),
(59,30,59),
(60,30,59),
(61,31,61),
(62,31,61),
(63,32,63),
(64,32,63),
(65,33,65),
(66,33,65),
(67,34,67),
(68,34,67),
(69,35,69),
(70,35,69),
(71,36,71),
(72,36,71),
(73,37,73),
(74,37,73),
(75,38,75),
(76,38,75),
(77,39,77),
(78,39,77),
(79,40,79),
(80,40,79),
(81,41,81),
(82,41,81),
(83,42,83),
(84,42,83),
(85,43,85),
(86,43,85),
(87,44,87),
(88,44,87),
(89,45,89),
(90,45,89),
(91,46,91),
(92,46,91);