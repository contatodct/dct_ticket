-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: zapdataty
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ContactCustomFields`
--

DROP TABLE IF EXISTS `ContactCustomFields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ContactCustomFields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `contactId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contactId` (`contactId`),
  CONSTRAINT `ContactCustomFields_ibfk_1` FOREIGN KEY (`contactId`) REFERENCES `Contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContactCustomFields`
--

LOCK TABLES `ContactCustomFields` WRITE;
/*!40000 ALTER TABLE `ContactCustomFields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContactCustomFields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contacts`
--

DROP TABLE IF EXISTS `Contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `profilePicUrl` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `isGroup` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contacts`
--

LOCK TABLES `Contacts` WRITE;
/*!40000 ALTER TABLE `Contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Messages` (
  `id` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `ack` int NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `mediaType` varchar(255) DEFAULT NULL,
  `mediaUrl` varchar(255) DEFAULT NULL,
  `ticketId` int NOT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updatedAt` datetime(6) NOT NULL,
  `fromMe` tinyint(1) NOT NULL DEFAULT '0',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `contactId` int DEFAULT NULL,
  `quotedMsgId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticketId` (`ticketId`),
  KEY `Messages_contactId_foreign_idx` (`contactId`),
  KEY `Messages_quotedMsgId_foreign_idx` (`quotedMsgId`),
  CONSTRAINT `Messages_contactId_foreign_idx` FOREIGN KEY (`contactId`) REFERENCES `Contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Messages_ibfk_2` FOREIGN KEY (`ticketId`) REFERENCES `Tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Messages_quotedMsgId_foreign_idx` FOREIGN KEY (`quotedMsgId`) REFERENCES `Messages` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Queues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `greetingMessage` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `color` (`color`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Queues`
--

LOCK TABLES `Queues` WRITE;
/*!40000 ALTER TABLE `Queues` DISABLE KEYS */;
INSERT INTO `Queues` VALUES (1,'Comercial','#fccb00','','2023-04-03 16:35:24','2023-04-03 16:35:24'),(2,'Financeiro','#008b02','','2023-04-03 16:35:36','2023-04-03 16:35:36'),(3,'Suporte','#004dcf','','2023-04-03 16:35:47','2023-04-03 16:35:47');
/*!40000 ALTER TABLE `Queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QuickAnswers`
--

DROP TABLE IF EXISTS `QuickAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QuickAnswers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shortcut` text NOT NULL,
  `message` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QuickAnswers`
--

LOCK TABLES `QuickAnswers` WRITE;
/*!40000 ALTER TABLE `QuickAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `QuickAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20200717133438-create-users.js'),('20200717144403-create-contacts.js'),('20200717145643-create-tickets.js'),('20200717151645-create-messages.js'),('20200717170223-create-whatsapps.js'),('20200723200315-create-contacts-custom-fields.js'),('20200723202116-add-email-field-to-contacts.js'),('20200730153237-remove-user-association-from-messages.js'),('20200730153545-add-fromMe-to-messages.js'),('20200813114236-change-ticket-lastMessage-column-type.js'),('20200901235509-add-profile-column-to-users.js'),('20200903215941-create-settings.js'),('20200904220257-add-name-to-whatsapp.js'),('20200906122228-add-name-default-field-to-whatsapp.js'),('20200906155658-add-whatsapp-field-to-tickets.js'),('20200919124112-update-default-column-name-on-whatsappp.js'),('20200927220708-add-isDeleted-column-to-messages.js'),('20200929145451-add-user-tokenVersion-column.js'),('20200930162323-add-isGroup-column-to-tickets.js'),('20200930194808-add-isGroup-column-to-contacts.js'),('20201004150008-add-contactId-column-to-messages.js'),('20201004155719-add-vcardContactId-column-to-messages.js'),('20201004955719-remove-vcardContactId-column-to-messages.js'),('20201026215410-add-retries-to-whatsapps.js'),('20201028124427-add-quoted-msg-to-messages.js'),('20210108001431-add-unreadMessages-to-tickets.js'),('20210108164404-create-queues.js'),('20210108164504-add-queueId-to-tickets.js'),('20210108174594-associate-whatsapp-queue.js'),('20210108204708-associate-users-queue.js'),('20210109192513-add-greetingMessage-to-whatsapp.js'),('20210818102605-create-quickAnswers.js'),('20211016014719-add-farewellMessage-to-whatsapp.js'),('20220223095932-add-whatsapp-to-user.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Settings`
--

DROP TABLE IF EXISTS `Settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Settings` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Settings`
--

LOCK TABLES `Settings` WRITE;
/*!40000 ALTER TABLE `Settings` DISABLE KEYS */;
INSERT INTO `Settings` VALUES ('userApiToken','3e81b141-a73b-4284-a014-d5ea9fce55c0','2023-04-02 15:22:08','2023-04-02 15:22:08'),('userCreation','enabled','2023-04-02 15:22:08','2023-04-02 15:22:08');
/*!40000 ALTER TABLE `Settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tickets`
--

DROP TABLE IF EXISTS `Tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL DEFAULT 'solved',
  `lastMessage` text,
  `contactId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updatedAt` datetime(6) NOT NULL,
  `whatsappId` int DEFAULT NULL,
  `isGroup` tinyint(1) NOT NULL DEFAULT '0',
  `unreadMessages` int DEFAULT NULL,
  `queueId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contactId` (`contactId`),
  KEY `userId` (`userId`),
  KEY `Tickets_whatsappId_foreign_idx` (`whatsappId`),
  KEY `Tickets_queueId_foreign_idx` (`queueId`),
  CONSTRAINT `Tickets_ibfk_1` FOREIGN KEY (`contactId`) REFERENCES `Contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Tickets_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Tickets_whatsappId_foreign_idx` FOREIGN KEY (`whatsappId`) REFERENCES `Whatsapps` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=960 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserQueues`
--

DROP TABLE IF EXISTS `UserQueues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserQueues` (
  `userId` int NOT NULL,
  `queueId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`userId`,`queueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserQueues`
--

LOCK TABLES `UserQueues` WRITE;
/*!40000 ALTER TABLE `UserQueues` DISABLE KEYS */;
INSERT INTO `UserQueues` VALUES (2,1,'2023-04-05 10:35:05','2023-04-05 10:35:05'),(2,2,'2023-04-05 10:35:05','2023-04-05 10:35:05'),(2,3,'2023-04-05 10:35:05','2023-04-05 10:35:05'),(3,1,'2023-04-03 16:36:10','2023-04-03 16:36:10'),(4,1,'2023-04-03 17:41:02','2023-04-03 17:41:02'),(5,1,'2023-04-03 18:13:58','2023-04-03 18:13:58'),(5,2,'2023-04-03 18:13:58','2023-04-03 18:13:58'),(5,3,'2023-04-03 18:13:58','2023-04-03 18:13:58'),(6,3,'2023-04-05 10:13:25','2023-04-05 10:13:25'),(7,1,'2023-04-05 10:15:16','2023-04-05 10:15:16'),(7,2,'2023-04-05 10:15:16','2023-04-05 10:15:16'),(8,1,'2023-04-05 10:16:16','2023-04-05 10:16:16'),(8,2,'2023-04-05 10:16:16','2023-04-05 10:16:16'),(9,3,'2023-04-05 10:16:51','2023-04-05 10:16:51');
/*!40000 ALTER TABLE `UserQueues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `profile` varchar(255) NOT NULL DEFAULT 'admin',
  `tokenVersion` int NOT NULL DEFAULT '0',
  `whatsappId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `Users_whatsappId_foreign_idx` (`whatsappId`),
  CONSTRAINT `Users_whatsappId_foreign_idx` FOREIGN KEY (`whatsappId`) REFERENCES `Whatsapps` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Administrador','admin@whaticket.com','$2a$08$WaEmpmFDD/XkDqorkpQ42eUZozOqRCPkPcTkmHHMyuTGUOkI8dHsq','2023-04-02 15:22:08','2023-04-02 15:22:08','admin',0,NULL),(2,'Daniel','daniel@dctsistemas.com','$2a$08$viJrdYa5tQbVr9zVng7EPuol8ymHIzXVSqJe.PcrwUcqJRaYjhUtO','2023-04-02 15:23:10','2023-04-05 10:35:05','admin',0,NULL),(3,'Antonio','antonio@dctsistemas.com','$2a$08$qWZeH5EIjxtOMlq2L5KmR.OLv2rkDWCXiO13WYTHjpSFTQavBuo46','2023-04-03 16:36:10','2023-04-03 16:36:10','user',0,NULL),(4,'Alex','alex@dctsistemas.com','$2a$08$cTeeC8M.hlR.9WG5YVZl6u8iNd.kNywKer5C8K9SmmTYT5rDMzJpy','2023-04-03 17:41:02','2023-04-03 17:41:02','user',0,NULL),(5,'Fernando','fernando@dctsistemas.com','$2a$08$tKSlgFClGHM17IKC7/3YGuC.5ZMI3fUZJJBfoGg8QckuTCjNLT3LW','2023-04-03 18:13:58','2023-04-05 10:11:15','admin',0,NULL),(6,'suelma','suelma@turbonetguaratiba.com.br','$2a$08$HXYdsd3.kdgFYb7OSDh31evrL4SpzzrcJwPCNV2P/WKc/XYJrm9je','2023-04-05 10:13:25','2023-04-05 10:13:25','user',0,NULL),(7,'marcele','marcele@turbonetguaratiba.com.br','$2a$08$AWNrAaO0yMRbiseU9afpUeFossdW.2pjeKKdbWHk2q.n8/byhe.PO','2023-04-05 10:15:16','2023-04-05 10:15:16','user',0,NULL),(8,'patricia','patricia@turbonetguaratiba.com.br','$2a$08$2t3xZq28/CuEK0yYHuzNT.7renuLCtf5U.JFvrgcTFbTD0OTd1RtC','2023-04-05 10:16:16','2023-04-05 10:16:16','user',0,NULL),(9,'samara','samara@turbonetguaratiba.com.br','$2a$08$.wD/65iJllDIYb5tOZXeV.ap2iah99WesZd6/rnNNeIpSPi0CJYGO','2023-04-05 10:16:51','2023-04-05 10:16:51','user',0,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WhatsappQueues`
--

DROP TABLE IF EXISTS `WhatsappQueues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WhatsappQueues` (
  `whatsappId` int NOT NULL,
  `queueId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`whatsappId`,`queueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WhatsappQueues`
--

LOCK TABLES `WhatsappQueues` WRITE;
/*!40000 ALTER TABLE `WhatsappQueues` DISABLE KEYS */;
/*!40000 ALTER TABLE `WhatsappQueues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Whatsapps`
--

DROP TABLE IF EXISTS `Whatsapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Whatsapps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session` text,
  `qrcode` text,
  `status` varchar(255) DEFAULT NULL,
  `battery` varchar(255) DEFAULT NULL,
  `plugged` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `retries` int NOT NULL DEFAULT '0',
  `greetingMessage` text,
  `farewellMessage` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Whatsapps`
--

LOCK TABLES `Whatsapps` WRITE;
/*!40000 ALTER TABLE `Whatsapps` DISABLE KEYS */;
/*!40000 ALTER TABLE `Whatsapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nome` varchar(255) DEFAULT NULL,
  `cpfcnpj` varchar(20) DEFAULT NULL,
  `contratoId` varchar(20) DEFAULT NULL,
  `contratoStatusDisplay` varchar(50) DEFAULT NULL,
  `ultimaFat` varchar(255) DEFAULT NULL,
  `categoria` varchar(3) DEFAULT '1',
  `tentativas` varchar(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respostas`
--

DROP TABLE IF EXISTS `respostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respostas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `img` varchar(300) DEFAULT NULL,
  `msg` varchar(2000) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostas`
--

LOCK TABLES `respostas` WRITE;
/*!40000 ALTER TABLE `respostas` DISABLE KEYS */;
INSERT INTO `respostas` VALUES (1,'INICIO','https://dctsistemas.com/TURBONETPNG.png','Meu nome é *Beatriz*, agente virtual da *TurboNet Guaratiba*.\n\nPara iniciar-mos, precisamos de algumas informações, ok? ☺️\n\nDigite o número da opção que corresponde ao seu perfil:\n\n1️⃣  *Sou Cliente*\n2️⃣  *Desejo ser Cliente*\n3️⃣  *Sou Técnico*','2020-07-09 01:01:28'),(2,'INICIO-S-IMG','','Opção inválida\n\nDigite o número da opção que corresponde ao seu perfil:\n\n1️⃣  *Sou Cliente*\n2️⃣  *Desejo ser Cliente*\n3️⃣  *Sou Técnico*','2020-07-09 01:01:28'),(3,'SEM-ATENDIMENTO','','_No momento não consigo te transferir_. \n\n*Nosso horário de atendimento é de Segunda à Sábado das 09:00h às 18:00Hs.*\n\nSe desejar fazer um cadastro clique no Link Abaixo...\n\nhttps://turbonet.rbfull.com.br/central/assinar\n\nAtenciosamente,\n*TURBONET GUARATIBA*','2020-07-09 01:01:28'),(4,'INFORMA-CPF','','Agora, Digite todos os números do seu CPF ou CNPJ','2020-07-09 01:01:28'),(5,'INFORMA-CPF-INVALIDO-1','','Poxa! O documento  que você me informou está incorreto. ☹️ \n\nDigite novamente todos os números do seu CPF ou CNPJ','2020-07-09 01:01:28'),(6,'INFORMA-CPF-INVALIDO-2','','Olha... ainda não entendi o documento informado ☹️ \n\nPor favor, me envia todos os números do seu CPF ou CNPJ','2020-07-09 01:01:28'),(7,'INFORMA-CPF-INVALIDO-FIM','','Poxa! O nosso atendimento está sendo encerrado, pois você não me informou um documento válido ☹️\r\n\r\nMas não se preocupe, você pode entrar em contato novamente por este canal\r\n\r\nSempre que precisar é só me chamar. Tchau tchau!','2020-07-09 01:01:28'),(8,'FINALIZAR','','A equipe *TURBONET GUARATIBA* agradece pelo seu contato!\nSempre que precisar estaremos aqui. Tchau tchau! ???? ????','2020-07-09 01:01:28'),(9,'TRANSFERINDO','','Só um instante que estou te direcionando para o Setor Responsável','2020-07-09 01:01:28'),(10,'COM-FATURA','','Segue abaixo a Segunda Via da sua Fatura....\n\nCaso seu *boleto* esteja em branco, favor pedir para falar com a *atendente.*','2020-07-09 01:01:28'),(11,'SEM-FATURA','','Voce nao possue faturas em aberto!!!','2020-07-09 01:01:28'),(12,'INFO-DESBLOQUEIO-NEGADO','','Não é possível realizar essa *Operação*...','2020-07-09 01:01:28'),(13,'SEM-ATENDIMENTO-COM','','_Será um prazer ter você como nosso cliente_. De momento estamos fora do horário de atendimento.\n\n*Nosso horário de atendimento é de Segunda à Sábado das 09:00h às 18:00Hs.*\n\nPara se tornar nosso cliente a qualquer momento, acessando:\nhttps://turbonet.rbfull.com.br/central/assinar\n\nAtenciosamente,\n*TURBONET GUARATIBA*','2020-07-09 01:01:28');
/*!40000 ALTER TABLE `respostas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-06 15:41:48
