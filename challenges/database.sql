-- -- MySQL Workbench Forward Engineering

-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
-- SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -- -----------------------------------------------------
-- -- Schema SpotifyClone
-- -- -----------------------------------------------------

-- -- -----------------------------------------------------
-- -- Schema SpotifyClone
-- -- -----------------------------------------------------
-- CREATE SCHEMA IF NOT EXISTS `SpotifyClone` DEFAULT CHARACTER SET utf8 ;
-- USE `SpotifyClone` ;

-- -- -----------------------------------------------------
-- -- Table `SpotifyClone`.`subscription`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `SpotifyClone`.`subscription` (
--   `subscription_id` INT NOT NULL AUTO_INCREMENT,
--   `subscription_name` VARCHAR(45) NOT NULL,
--   `subscription_value` DECIMAL NOT NULL,
--   PRIMARY KEY (`subscription_id`))
-- ENGINE = InnoDB;


-- -- -----------------------------------------------------
-- -- Table `SpotifyClone`.`user`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `SpotifyClone`.`user` (
--   `user_id` INT NOT NULL AUTO_INCREMENT,
--   `user_name` VARCHAR(45) NOT NULL,
--   `user_age` INT NOT NULL,
--   `subscription_id` INT NOT NULL,
--   `subscription_date` DATE NOT NULL,
--   PRIMARY KEY (`user_id`),
--   INDEX `fk_sub_idx` (`subscription_id` ASC) VISIBLE,
--   CONSTRAINT `fk_sub`
--     FOREIGN KEY (`subscription_id`)
--     REFERENCES `SpotifyClone`.`subscription` (`subscription_id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB;


-- -- -----------------------------------------------------
-- -- Table `SpotifyClone`.`artist`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artist` (
--   `artist_id` INT NOT NULL AUTO_INCREMENT,
--   `artist_name` VARCHAR(45) NOT NULL,
--   PRIMARY KEY (`artist_id`))
-- ENGINE = InnoDB;


-- -- -----------------------------------------------------
-- -- Table `SpotifyClone`.`album`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `SpotifyClone`.`album` (
--   `album_id` INT NOT NULL AUTO_INCREMENT,
--   `album_name` VARCHAR(45) NOT NULL,
--   `album_release_date` YEAR(4) NOT NULL,
--   `artist_id` INT NOT NULL,
--   PRIMARY KEY (`album_id`),
--   INDEX `fk_artist_id_idx` (`artist_id` ASC) VISIBLE,
--   CONSTRAINT `fk_artist_id`
--     FOREIGN KEY (`artist_id`)
--     REFERENCES `SpotifyClone`.`artist` (`artist_id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB;


-- -- -----------------------------------------------------
-- -- Table `SpotifyClone`.`songs`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `SpotifyClone`.`songs` (
--   `song_id` INT NOT NULL AUTO_INCREMENT,
--   `song_name` VARCHAR(45) NOT NULL,
--   `album_id` INT NOT NULL,
--   `song_duration` INT NOT NULL,
--   PRIMARY KEY (`song_id`),
--   INDEX `fk_album_id_idx` (`album_id` ASC) VISIBLE,
--   CONSTRAINT `fk_album_id`
--     FOREIGN KEY (`album_id`)
--     REFERENCES `SpotifyClone`.`album` (`album_id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB;


-- -- -----------------------------------------------------
-- -- Table `SpotifyClone`.`history`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `SpotifyClone`.`history` (
--   `user_id` INT NOT NULL,
--   `song_id` INT NOT NULL,
--   `date` DATETIME NOT NULL,
--   INDEX `fk_user_id_idx` (`user_id` ASC) VISIBLE,
--   INDEX `fk_song_id_idx` (`song_id` ASC) VISIBLE,
--   CONSTRAINT `fk_user_id`
--     FOREIGN KEY (`user_id`)
--     REFERENCES `SpotifyClone`.`user` (`user_id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_song_id`
--     FOREIGN KEY (`song_id`)
--     REFERENCES `SpotifyClone`.`songs` (`song_id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB;


-- -- -----------------------------------------------------
-- -- Table `SpotifyClone`.`followed`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `SpotifyClone`.`followed` (
--   `user_id` INT NOT NULL,
--   `artist_id` INT NOT NULL,
--   INDEX `fk_user_id_idx` (`user_id` ASC) VISIBLE,
--   INDEX `fk_artist_id_idx` (`artist_id` ASC) VISIBLE,
--   CONSTRAINT `fk_user_id`
--     FOREIGN KEY (`user_id`)
--     REFERENCES `SpotifyClone`.`user` (`user_id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_artist_id`
--     FOREIGN KEY (`artist_id`)
--     REFERENCES `SpotifyClone`.`artist` (`artist_id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB;


-- SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
