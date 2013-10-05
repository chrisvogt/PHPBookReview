-- -----------------------------------------------------
-- Table `books`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `books` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(255) NOT NULL ,
  `subtitle` VARCHAR(255) NULL ,
  `extid` VARCHAR(100) NULL ,
  `cover` VARCHAR(1000) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `extid_UNIQUE` (`extid` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `users`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `users` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `email` VARCHAR(150) NOT NULL ,
  `password` VARCHAR(45) NOT NULL ,
  `gravatar` VARCHAR(1000) NULL DEFAULT NULL ,
  `is_admin` TINYINT(1) NULL DEFAULT NULL ,
  `is_active` TINYINT(1) NULL DEFAULT 1 ,
  `last_seen` DATETIME NULL DEFAULT NULL ,
  `activation_key` CHAR(36) NULL DEFAULT NULL ,
  `created` DATETIME NULL DEFAULT NULL ,
  `modified` DATETIME NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reviews`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `reviews` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `user_id` INT(11) UNSIGNED NOT NULL ,
  `book_id` INT(11) UNSIGNED NOT NULL ,
  `title` VARCHAR(100) NOT NULL ,
  `content` TEXT NOT NULL ,
  `created` DATETIME NULL DEFAULT NULL ,
  `modified` DATETIME NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `genres`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `genres` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(200) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `collections`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `collections` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(150) NOT NULL ,
  `description` VARCHAR(500) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `books_collections`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `books_collections` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `book_id` INT(11) UNSIGNED NOT NULL ,
  `collection_id` INT(11) UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `books_reviews`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `books_reviews` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `book_id` INT(11) UNSIGNED NOT NULL ,
  `review_id` INT(11) UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `books_genres`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `books_genres` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `book_id` INT(11) UNSIGNED NOT NULL ,
  `genre_id` INT(11) UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `categories`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `categories` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `title` INT(11) UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `categories_collections`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `categories_collections` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `category_id` INT(11) UNSIGNED NOT NULL ,
  `collection_id` INT(11) UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `authors`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `authors` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(150) NULL ,
  `extid` VARCHAR(200) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `authors_books`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `authors_books` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `author_id` INT(11) UNSIGNED NOT NULL ,
  `book_id` INT(11) UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
