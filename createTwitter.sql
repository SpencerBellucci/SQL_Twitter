-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema twitter
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS twitter ;

-- -----------------------------------------------------
-- Schema twitter
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS twitter DEFAULT CHARACTER SET utf8 ;
USE twitter ;

-- -----------------------------------------------------
-- Table User
-- -----------------------------------------------------
DROP TABLE IF EXISTS User ;

CREATE TABLE IF NOT EXISTS User (
  userId INT NOT NULL,
  userName VARCHAR(45) NOT NULL,
  userEmail VARCHAR(45) NOT NULL,
  PRIMARY KEY (userId))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Tweet
-- -----------------------------------------------------
DROP TABLE IF EXISTS Tweet ;

CREATE TABLE IF NOT EXISTS Tweet (
  tweetId INT NOT NULL,
  userID INT NOT NULL,
  content VARCHAR(255) NOT NULL,
  favorites INT NOT NULL,
  IsRetweet INT NOT NULL,
  retweet INT NOT NULL,
  PRIMARY KEY (tweetId))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Favorited
-- -----------------------------------------------------
DROP TABLE IF EXISTS Favorited ;

CREATE TABLE IF NOT EXISTS Favorited (
  tweetID INT NOT NULL,
  userId INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table followers
-- -----------------------------------------------------
DROP TABLE IF EXISTS followers ;

CREATE TABLE IF NOT EXISTS followers (
  followerUserId INT NOT NULL,
  userid INT NOT NULL,
  PRIMARY KEY (followerUserId))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table following
-- -----------------------------------------------------
DROP TABLE IF EXISTS following ;

CREATE TABLE IF NOT EXISTS following (
  followingUserId INT NOT NULL,
  userid INT NOT NULL,
  PRIMARY KEY (followingUserId))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
