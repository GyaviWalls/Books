-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema books
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema books
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `books` DEFAULT CHARACTER SET utf8mb3 ;
USE `books` ;

-- -----------------------------------------------------
-- Table `books`.`authors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `books`.`authors` (
  `id` INT NOT NULL,
  `author_name` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `books`.`books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `books`.`books` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NULL DEFAULT NULL,
  `author_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_book_author1_idx` (`author_id` ASC) VISIBLE,
  CONSTRAINT `fk_book_author1`
    FOREIGN KEY (`author_id`)
    REFERENCES `books`.`authors` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `books`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `books`.`users` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(30) NULL DEFAULT NULL,
  `last_name` VARCHAR(30) NULL DEFAULT NULL,
  `email` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `books`.`favorites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `books`.`favorites` (
  `user_id` INT NOT NULL,
  `book_id` INT NOT NULL,
  INDEX `fk_favorite_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_favorite_book1_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_favorite_book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `books`.`books` (`id`),
  CONSTRAINT `fk_favorite_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `books`.`users` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `books`.`authors`
(`id`,
`author_name`)
VALUES
(<{id: }>,
<{author_name: }>);

INSERT INTO `books`.`users`
(`id`,
`first_name`,
`last_name`,
`email`)
VALUES
(<{id: }>,
<{first_name: }>,
<{last_name: }>,
<{email: }>);

INSERT INTO `books`.`books`
(`id`,
`title`,
`author_id`)
VALUES
(<{id: }>,
<{title: }>,
<{author_id: }>);


INSERT INTO `books`.`books`
(`id`,
`title`,
`author_id`)
VALUES
(<{id: }>,
<{title: }>,
<{author_id: }>);


