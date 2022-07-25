CREATE DATABASE `mydb`;
USE `mydb` ;
CREATE TABLE `categories` (
  `id_categories` INT NOT NULL,
  `title` CHAR(225) NOT NULL,
  `description` CHAR(255),
  PRIMARY KEY (`id_categories`));
  
CREATE TABLE `image` (
  `id_image` INT NOT NULL,
  `name` CHAR(225) NOT NULL,
  `alt` CHAR(225) NOT NULL,
  PRIMARY KEY (`id_image`));
  
CREATE TABLE `product` (
  `id_product` INT NOT NULL,
  `title` CHAR(225) NOT NULL,
  `price` INT NOT NULL,
  `old_price` INT NOT NULL,
  `discount_price` INT NOT NULL,
  `description` CHAR(255),
  `activity` TINYINT(1) NOT NULL,
  `main_id_categories` INT NOT NULL,
  `main_id_image` INT NOT NULL,
  PRIMARY KEY (`id_product`),
  CONSTRAINT main_id__categories
    FOREIGN KEY (`main_id_categories`)
    REFERENCES `categories` (`id_categories`) 
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT main_id__image
    FOREIGN KEY (`main_id_image`)
    REFERENCES `image` (`id_image`)
    ON UPDATE CASCADE
    ON DELETE CASCADE
  );

CREATE TABLE `product_by_categories` (
  `id_categories` INT NOT NULL,
  `id_product` INT NOT NULL,
  CONSTRAINT product_cat
    FOREIGN KEY (`id_product`)
    REFERENCES `product` (`id_product`)
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
  CONSTRAINT image_prod
    FOREIGN KEY (`id_image`)
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
(2, 'Футболки','Раздел с футболками');

INSERT INTO `image` (`id_image`,`name`, `alt`) VALUES
(1, '1.png','Однотонная рубашка с коротким рукавом'),
(2, '2.png','Базовая рубашка'),
(3, '3.png','Рубашка изо льна'),
(4, '4.png','Рубашка из хлопка и льна'),
(5, '5.png','Рубашка-футболка из трикотажного полотна'),
(6, '6.png','Футболка с принтом'),
(7, '7.png','Базовая футболка'),
(8, '8.png','Базовая футболка с двухслойной отделкой'),
(9, '9.png','Футболка с V-вырезом'),
(10, '10.png','Футболка с морским принтом'),
(11, '11.png','Футболка с морским принтом');

INSERT INTO `product` (`id_product`,`title`,`price`,`old_price`, `discount_price`,`description`,`activity`,`id_categories`,`id_image`) VALUES
(1, 'Однотонная рубашка с коротким рукавом','1223','2555','1000','Однотонная рубашка',1,1,1),
(2, 'Базовая рубашка','1299','2999','988','Базовая рубашка',1,1,2),
(3, 'Рубашка изо льна','799','1299','599','Рубашка изо льна',0,1,3),
(4, 'Рубашка из хлопка и льна','1299','2500','1199','Рубашка из хлопка и льна',1,1,4),
(5, 'Рубашка-футболка из трикотажного полотна','1299','3499','999','Рубашка-жакет из трикотажного полотна',1,1,5),
(6, 'Футболка с принтом','599','1299','499','Футболка с принтом рыбы',0,2,6),
(7, 'Базовая футболка','1299','1599','999','Базовая футболка с двухслойной отделкой',1,2,7),
(8, 'Базовая футболка с двухслойной отделкой','499','1499','555','Базовая футболка с двухслойной отделкой',1,2,8),
(9, 'Футболка с V-вырезом','1699','1999','1299','Футболка с V-вырезом',1,2,9),
(10, 'Футболка с морским принтом ','399','699','299','Футболка с морским принтом',1,2,10);


INSERT INTO  `product_by_categories` (`id_categories`,`id_product`) VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(2,1),
(2,5),
(2,6),
(2,7),
(2,8),
(2,9),
(2,10);

INSERT INTO `product_image` (`id_image`,`id_product`) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,10);