-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: zkp
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authinfo`
--

DROP TABLE IF EXISTS `authinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authinfo` (
  `did` varchar(250) DEFAULT NULL,
  `sid` varchar(50) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authinfo`
--

LOCK TABLES `authinfo` WRITE;
/*!40000 ALTER TABLE `authinfo` DISABLE KEYS */;
INSERT INTO `authinfo` VALUES ('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','630a8810-234c-40bd-b658-bf1e5f06d72f',1),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','ed7a87c3-9293-47da-aea8-5dc012092e8e',2),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','267ee5ce-e85e-4034-88f7-e8402a12dfba',3),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','54506a2f-bc0b-47f8-852c-a4118b90164c',4),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','187766bf-cdc9-4927-88be-98fc9521fd73',5),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','cbed2c51-7682-41df-8151-14bdd2886382',6),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','17eff872-ec21-4806-8056-73ea6db3026f',7),('did:polygonid:polygon:mumbai:2qDZdjSE3wMAMS8f8Hcxnj3FuhUV1RhehrJf15pEjU','05a93fa9-b69a-4897-8786-7960132b2275',8),('did:polygonid:polygon:mumbai:2qDZdjSE3wMAMS8f8Hcxnj3FuhUV1RhehrJf15pEjU','a501ebbc-38cb-46be-95d6-5531dfb5cb9d',9),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','ebf1db1e-d87e-43f1-974b-2e40df49c43e',10),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','0d5a3a53-1af5-4012-bf6c-3a477023f139',11),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','0fabbbaa-d9aa-4650-a438-f40d91f20014',12),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','44d2bc3f-0de8-4fc1-b89f-8df00e6ed27d',13),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','bca2da15-d0bb-4f3d-ac13-c60bdcfe2e9b',14),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','fe00d925-db65-4856-95bc-10d4f4a2adb7',15),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','b9406b2f-c761-43fa-bda1-7328ffc8fe61',16),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','512f3835-9b79-41d4-bd9a-d95f11f80e06',17),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','fa00a39e-8449-4162-be41-957984476e44',18),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','85b8203e-761d-4647-9876-3cc6b30bfbb7',19),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','876e19e0-65fa-4533-97f5-ed1d627a0a69',20),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','175125f4-ebe4-4209-a487-ad47a2fc839e',21),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','bf25a6c2-e98f-4cee-b6dc-9dac4833ccf8',22),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','31d67cf4-2b7c-4040-b899-cbd4bd78903b',23),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','84249d5d-5911-4242-bac9-e60bf8a95c93',24),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','c961061b-40dc-4329-adca-11cf2b80fa3d',25),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','e15ba698-e707-4bc1-ab76-340507214696',26),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','7e7052a2-51ee-4fcc-bba9-e658d2b3d18d',27),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','ff0c595b-ac13-4230-b3d7-418b327d60d3',28),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','3ac32adf-e0b1-4155-b46c-061f2c7e35b2',29),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','f5098bba-aa46-4b51-b9be-828da58ccfe7',30),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','926392c8-89a1-4f03-a6a0-8fc1c457fcb8',31),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','4f69b04f-b559-4755-b945-06f5777efce9',32),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','54077c13-6ee7-4b87-94f7-4e647d420c3e',33),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','659d1188-c6ec-4691-8815-36c43c267c6a',34),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','5ea70e2b-e295-40a7-a6a2-366e7a9552ef',35),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','d69c8e0f-d4f0-4e40-b505-2df8c7ed2331',36),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','9e441264-172f-4205-97de-f94b05440f59',37),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','09f8131f-4fc8-494a-959c-d04194aacf65',38),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','bbdf263b-481f-4828-bd63-fba71c770b02',39),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','d5f6e5b3-3573-4503-8dd1-d4ac256a4046',40),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','5e4dcff8-fcdd-4aa7-955f-bf6ff49b3ea1',41),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','144d37ff-e0a4-40f3-9490-0c74a4385abb',42),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','0fe7bb93-c6e5-4c85-8a00-96497c064707',43),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','cb9ddecc-f636-4f53-94b0-90003690b7ac',44),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','03df89f6-d827-4a4d-b89e-007a51f64b42',45),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','5e9d6986-195a-4a7a-b5dd-433e1a641b3c',46),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','8775798e-3471-44e2-bc55-059117f705ae',47),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','4b1ef289-1066-44bc-9c42-8f572524c543',48),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','e3b024d0-c9c8-4125-87ac-ab493447cc40',49),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','589d6e1f-055c-45cb-99f3-8df1f27b9d04',50),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','66b53423-a26e-4aa0-8d04-a252fece2a29',51),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','8a496984-32d7-4260-bec1-11a3148a5bde',52),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','9b1681f4-ae26-402c-b341-1d65cc41b435',53),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','f4903874-f812-4469-bbef-15889633a278',54),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','766fb90b-aa19-4c38-9e14-1b89c7e19408',55),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','bfd19e64-6119-4c4d-a2d3-ce88af6e9d66',56),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','c2fcc2ed-a086-4a5f-b9a0-39f4be1a86ca',57),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','605c3f3c-88b5-427b-a500-076ec8852bdd',58),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','0714d300-9d5b-477e-970e-357ce3324af7',59),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','22551ae4-4149-40bc-90d5-2e546c567331',60),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','fc71c5aa-98c0-49d6-829e-a134adcfbde9',61),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','8c754838-59f0-4547-854c-44e91691d035',62),('did:polygonid:polygon:mumbai:2qLS5yPNe7BXzUWgwPPVJCrZFigxU2uxKFsp6t393Q','30113fd8-bb8d-4917-a3c0-a916cfaa9e18',63);
/*!40000 ALTER TABLE `authinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 11:27:45
