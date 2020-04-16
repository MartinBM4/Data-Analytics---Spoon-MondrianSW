-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: ingp
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airport` (
  `airportID` int(11) NOT NULL,
  `leg_key` bigint(20) DEFAULT NULL,
  `leg_name` varchar(15) DEFAULT NULL,
  `leg_city` varchar(14) DEFAULT NULL,
  `leg_type` varchar(13) DEFAULT NULL,
  `leg_radar_type` varchar(3) DEFAULT NULL,
  `city` varchar(14) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`airportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel` (
  `channelID` int(11) NOT NULL,
  `channel_key` bigint(20) DEFAULT NULL,
  `channel_name` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`channelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `customer_key` bigint(20) DEFAULT NULL,
  `customer_name` varchar(9) DEFAULT NULL,
  `customer_address` varchar(15) DEFAULT NULL,
  `customer_city` varchar(17) DEFAULT NULL,
  `customer_state` varchar(14) DEFAULT NULL,
  `customer_zip` bigint(20) DEFAULT NULL,
  `customer_type` varchar(13) DEFAULT NULL,
  `customer_income` varchar(8) DEFAULT NULL,
  `customer_birth_date` varchar(19) DEFAULT NULL,
  `customer_marital` varchar(10) DEFAULT NULL,
  `customer_sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fare`
--

DROP TABLE IF EXISTS `fare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fare` (
  `fareID` int(11) NOT NULL,
  `fare_class_key` bigint(20) DEFAULT NULL,
  `fare_class_code` char(1) DEFAULT NULL,
  `fare_class_description` varchar(8) DEFAULT NULL,
  `restriction_type` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `flown_key` bigint(20) DEFAULT NULL,
  `fare` bigint(20) DEFAULT NULL,
  `miles` bigint(20) DEFAULT NULL,
  `minutes_late` bigint(20) DEFAULT NULL,
  `ticket_number` bigint(20) DEFAULT NULL,
  `aeropuerto_origen_trayecto` int(11) DEFAULT NULL,
  `aeropuerto_origen_itinerario` int(11) DEFAULT NULL,
  `aeropuerto_destino_trayecto` int(11) DEFAULT NULL,
  `aeropuerto_destino_itinerario` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  `flight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight` (
  `flightID` int(11) NOT NULL,
  `flight_key` bigint(20) DEFAULT NULL,
  `sched_depart` varchar(5) DEFAULT NULL,
  `sched_arrival` varchar(5) DEFAULT NULL,
  `airplane_type` varchar(8) DEFAULT NULL,
  `seat_capacity` bigint(20) DEFAULT NULL,
  `first_class_capacity` bigint(20) DEFAULT NULL,
  `business_capacity` bigint(20) DEFAULT NULL,
  `coach_capacity` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`flightID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

