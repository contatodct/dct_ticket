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

-- Dump completed on 2023-04-06 15:41:48
