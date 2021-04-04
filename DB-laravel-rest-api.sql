-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: laravel-rest-api
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_04_03_105741_rest_api_migration',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_api_table`
--

DROP TABLE IF EXISTS `rest_api_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rest_api_table` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_api_table`
--

LOCK TABLES `rest_api_table` WRITE;
/*!40000 ALTER TABLE `rest_api_table` DISABLE KEYS */;
INSERT INTO `rest_api_table` VALUES (22,'pippo','pippo and jerry','07383360960','ciccio@ciccio.it','2021-04-03 21:55:30','2021-04-04 12:16:17'),(23,'Mrs. Margarett Murazik','Nam necessitatibus et quia atque et non earum quidem veritatis error quia distinctio animi molestiae hic sit dolor at ab accusantium quas tenetur praesentium et inventore laudantium facilis itaque suscipit incidunt dicta et voluptate repellat nisi earum modi voluptatibus laborum voluptatem odio nam dolore ut sed fugit tempore et expedita occaecati explicabo eos unde aut quae ipsam magnam quia ipsam officia eligendi ratione qui sequi.','512.952.6585','xspinka@gmail.com','2021-04-03 21:55:30','2021-04-03 21:55:30'),(24,'Rebecca Jakubowski','Reprehenderit consectetur consequatur blanditiis enim temporibus qui et nobis rerum vel provident aut sed illo quibusdam at quia dolores placeat vero voluptatum voluptates eligendi consequatur architecto corporis labore itaque culpa dignissimos culpa corrupti libero quo consequuntur totam magni vel aperiam dolorem dolorem temporibus eum distinctio voluptatem ut voluptatibus quasi est et dignissimos sit nulla consequatur adipisci aut animi velit nihil non blanditiis in quis vel est ducimus porro occaecati aut aliquam voluptas quia atque consequatur molestiae.','+1-820-484-1922','kessler.lilyan@gmail.com','2021-04-03 21:55:30','2021-04-03 21:55:30'),(25,'Keven Hoeger IV','Vitae enim sunt minima nihil adipisci quis aspernatur tempora unde repellat nobis voluptatem architecto autem ipsum adipisci ex amet et minima atque consequatur expedita cum ea nihil sint magnam hic vero qui molestias cumque commodi blanditiis totam vel minima qui molestiae amet beatae nesciunt ipsum sed voluptatibus accusamus atque et ab qui voluptas perferendis at inventore optio incidunt ducimus voluptatem dolores harum.','1-743-873-3952','arlene.damore@gmail.com','2021-04-03 21:55:30','2021-04-03 21:55:30'),(26,'Terrell Weissnat','Non sed veniam provident vel excepturi aut optio sunt aut magnam aut ducimus nesciunt numquam vitae saepe eligendi et deleniti ex quis nisi nulla expedita consequatur quisquam esse sed laborum modi repudiandae et in quos neque cum ut qui itaque quia neque fuga enim velit aut adipisci enim odio consequatur mollitia illo consequatur laudantium et eaque qui amet voluptas quos expedita ex voluptas earum eligendi quis provident atque ut ut tenetur maxime id.','+1-385-472-5940','sheila.wiza@pfannerstill.net','2021-04-03 21:55:30','2021-04-03 21:55:30'),(27,'Andy Klocko','In voluptas nihil dolorem cumque minima est nulla occaecati voluptas possimus labore quaerat quidem ipsa sed voluptas voluptatibus quam consequatur modi commodi unde quisquam ratione sint unde nemo non blanditiis sequi minima est temporibus expedita corrupti et magni nemo laudantium iste occaecati iusto enim qui optio omnis molestiae quas sed quod dolor eligendi perferendis numquam voluptas ab commodi et culpa ad qui quia sint voluptas atque atque veniam et aut fugiat harum ducimus neque.','+1-804-720-1903','doyle.chelsie@yahoo.com','2021-04-03 21:55:30','2021-04-03 21:55:30'),(28,'Amparo Wilkinson','Doloribus autem tempora est ipsam fugiat nihil aliquam et quibusdam atque consequatur numquam autem nostrum enim perspiciatis occaecati et enim odio dicta iste quis atque et quos ut dolorem assumenda sit et laborum id quas ea soluta aut error magni autem necessitatibus voluptas illo non itaque est eos labore illum vel quo dolores.','1-540-869-7014','plangworth@barton.com','2021-04-03 21:55:30','2021-04-03 21:55:30'),(29,'Murray Jacobi','Inventore vel architecto in omnis doloribus odio hic voluptatum animi ut placeat voluptas velit omnis animi vel voluptas consequuntur sed nulla explicabo dolorum ullam dolore sed a possimus quasi delectus eum ea rerum quas architecto consequatur nobis minus saepe praesentium consectetur illo itaque praesentium.','1-640-212-5133','okey.blick@wilkinson.biz','2021-04-03 21:55:30','2021-04-03 21:55:30'),(30,'Cheyenne Huel II','Temporibus quo reiciendis nisi aut sed et qui est non aut iusto qui laudantium optio aut quia magnam id reprehenderit autem voluptatem ipsa quia et quo assumenda cupiditate quia magni occaecati qui modi minus aut ullam maxime neque reprehenderit ut vel placeat et aut laborum sint rem voluptatem labore harum quia reprehenderit ut neque laudantium eos incidunt animi dolor quia qui inventore aspernatur modi architecto aut cupiditate voluptatem maxime non.','+1 (931) 873-2799','dturner@yahoo.com','2021-04-03 21:55:30','2021-04-03 21:55:30'),(31,'Allison Reichert DVM','Non aut sint cumque ut eos non quae consequatur explicabo consequuntur sunt necessitatibus rerum qui aut mollitia eaque exercitationem mollitia sunt esse autem consequuntur perspiciatis impedit harum est quae quia sequi magni ullam voluptatem porro laudantium nulla nobis et aperiam et nihil aut neque et placeat temporibus sunt ea ratione vero blanditiis tempora rem quo quia veniam animi unde sed numquam et et eligendi aut aut quidem et aut ea aliquid incidunt aliquid non qui et voluptas velit.','+1-602-217-8756','lurline.schuster@gmail.com','2021-04-03 21:55:30','2021-04-03 21:55:30'),(32,'Mariam Hane','Dolor repellendus culpa a ab voluptas ea alias expedita ut alias ea harum in dolorum necessitatibus animi voluptates non reiciendis nesciunt ea sed aspernatur voluptas perspiciatis architecto labore modi quo assumenda inventore dolores veniam ex omnis odit provident libero exercitationem voluptatum possimus iste error ex consequatur sed fugiat minus voluptatem magnam tenetur nemo dolores repellat provident blanditiis sed voluptas architecto ut quasi velit a qui.','+1-704-535-2718','krystina66@gibson.net','2021-04-03 21:55:30','2021-04-03 21:55:30'),(33,'Halie Ondricka','Animi suscipit possimus et repellat atque modi quidem pariatur repudiandae praesentium culpa debitis sunt eligendi omnis veniam voluptatem aut deleniti commodi ut animi beatae nostrum aperiam neque cum maiores sed blanditiis fuga earum minima ullam aspernatur eos perspiciatis ipsum consequatur nihil enim tempora sint vitae similique quo nihil in sunt vero fugit natus hic reprehenderit architecto qui.','763.548.6559','nova.walsh@klein.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(34,'Ms. Amely Hansen','Quae sunt maxime quasi asperiores rerum quidem nesciunt nostrum dicta eum maxime facilis eum quidem quia et voluptatibus labore sint culpa sapiente necessitatibus amet porro maiores vero repellat sunt quis labore rerum nobis eaque voluptatum eos cum corporis eaque ipsum officiis recusandae omnis ratione odio et dolores tempora omnis possimus rem voluptatum molestiae.','+1-480-461-2353','qrath@yahoo.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(35,'Oliver Rogahn Jr.','Voluptate quam qui quisquam minus quo et dolores exercitationem rem consequatur ducimus hic totam facilis quasi quia saepe molestias repellat magni animi aut qui incidunt ut rerum necessitatibus et adipisci fuga cum a est saepe ut occaecati praesentium temporibus beatae tenetur ducimus sit cupiditate officia.','+1.707.757.7924','rey.nolan@prosacco.org','2021-04-03 21:55:31','2021-04-03 21:55:31'),(36,'Krystal Lind','Ab autem molestiae omnis cupiditate velit nam aperiam dolor quia illo ullam labore recusandae laboriosam consectetur commodi voluptatem omnis corrupti necessitatibus exercitationem autem ratione et quia dolor hic corrupti aspernatur aperiam ut voluptatum nulla aut et aliquid magni praesentium asperiores sit qui ea quos id qui sunt ad cupiditate ipsa ipsum expedita exercitationem nihil blanditiis quod est distinctio voluptatem autem debitis consequatur dignissimos sequi ut aut asperiores repellat.','605.584.5963','elody77@gmail.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(37,'Maudie Sauer','Distinctio voluptas maiores assumenda praesentium rerum nihil voluptas est nihil perspiciatis ipsum molestiae at quas et accusantium dicta et omnis nisi quod facere asperiores corrupti omnis rerum eaque voluptatem odio eligendi expedita aliquam qui suscipit delectus qui qui dolorem illo rerum est labore mollitia porro temporibus dolorum adipisci dolores in repellendus doloremque non est mollitia est cupiditate ex tempore voluptatem illum molestiae est at error occaecati beatae dolorem aut occaecati est repellendus soluta reiciendis non.','1-762-540-9557','liana.swift@zboncak.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(38,'Megane O\'Connell IV','Id quam dolor consequatur error molestias quisquam nihil qui et dolores eveniet voluptas iure aut minima at molestiae amet libero et saepe blanditiis dolorum deserunt rerum rem at totam ratione ducimus ut necessitatibus omnis impedit qui quia amet non voluptas corrupti necessitatibus modi quo magni facere esse omnis molestiae voluptate sed enim enim quod aut laudantium placeat ut repellendus mollitia sed accusamus ad in similique dolores voluptas reprehenderit quia.','+1 (445) 704-0798','bgreen@gmail.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(39,'Chanelle Feeney IV','Perspiciatis aspernatur quia dolorem ratione nisi dolore ut voluptatem at aut deserunt pariatur qui similique accusantium et quis debitis quia dolores ratione cupiditate sequi voluptas consequatur laborum officia recusandae et consequuntur modi quidem quod veritatis est maxime esse nemo sint quam distinctio et fugit quod.','+16367589552','rpadberg@kling.net','2021-04-03 21:55:31','2021-04-03 21:55:31'),(40,'Miss Myrtle Roberts','Autem tempora illum repellat debitis eum aperiam maiores impedit quis officia maiores est praesentium sequi culpa optio ut iste animi porro et error et ea est velit soluta quas quod unde beatae necessitatibus sapiente quae a dolor est voluptatum provident officia.','1-678-468-7276','effertz.heath@sauer.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(41,'Bernita Hand','Corporis minima qui qui sed earum quasi magnam provident sit quo eum tenetur in facilis aut necessitatibus eaque vero quo aut ea sint est libero dolorem repellat molestiae suscipit sunt eveniet non atque aliquid ea quaerat rerum enim quisquam incidunt reiciendis id quo velit dolorum iusto et ipsum neque cupiditate distinctio harum repellendus incidunt eaque impedit deleniti totam doloribus quas ad assumenda velit quia magni et.','(878) 843-3309','xrippin@hansen.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(42,'Ms. Betsy Erdman V','Aliquid laborum veritatis iste architecto aut ex voluptas corrupti autem ipsum placeat sed dolor sapiente rerum sunt nihil nihil vitae dolorum neque ea repellat optio aut quo sint illum ex perferendis reiciendis delectus est qui nisi molestiae consequatur blanditiis id qui fugit nihil ea accusamus nulla omnis culpa quis ipsam illum rerum hic ut adipisci velit possimus distinctio saepe.','+1-803-504-6436','eliseo.kreiger@armstrong.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(43,'Mr. Felipe Daugherty','Culpa nostrum in cupiditate itaque consequatur ut error consequatur accusamus enim ut vel et non expedita et non deleniti quaerat nulla omnis et officia sed explicabo numquam et velit voluptatibus porro voluptatem itaque ipsum maiores fugiat consequatur doloremque rerum debitis fugit veritatis quo totam cumque qui qui enim consectetur est rerum dolores eos voluptatem dolor qui ratione cupiditate eius aperiam facere saepe fugiat quos quibusdam facilis et.','1-318-293-0938','goodwin.queenie@gmail.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(44,'Lola Ward II','Tenetur accusamus nobis tempore aut soluta neque vel labore illo est quas qui quia voluptatibus deleniti quod non saepe ea consectetur ut blanditiis dolores commodi maiores dolores quibusdam sed vero et sed hic illo architecto aspernatur quaerat enim quasi quasi exercitationem rerum occaecati quasi et nesciunt veritatis asperiores veniam suscipit veritatis laborum.','281-484-5387','lbrakus@gmail.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(45,'Orin Orn','Aut repellat dolore id et quia saepe repudiandae eos ea perspiciatis porro voluptatibus ut rerum molestiae iste delectus cumque rerum quo eum magnam corrupti reprehenderit tempora quas cupiditate nam in earum dolorem excepturi quis officiis optio rerum et hic aut nesciunt provident totam totam et eveniet aut voluptate esse omnis eum error voluptatibus voluptas pariatur qui eius sunt placeat hic dolores at dolores quis nisi corporis quis at et quis perspiciatis ut.','757-246-9765','wyman.demetrius@breitenberg.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(46,'Camille Kuhlman','Eligendi est ut et iste in soluta cupiditate dolor ut ipsa eligendi quas aperiam et quia assumenda consequatur sed tempora et ut magnam eum incidunt placeat dolorem sapiente voluptas dignissimos dolores id exercitationem delectus cum quod fugiat nulla dolore aut consequatur non voluptatem quia necessitatibus est exercitationem id reiciendis.','+1-435-290-6144','qbaumbach@gmail.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(47,'Porter Macejkovic','Quo distinctio molestiae facilis eos eius officiis sit deleniti quaerat aut voluptates ut sapiente voluptas fuga deserunt repudiandae ea ea quos quae earum rerum et sunt quia non qui et rerum sed ut neque rerum repellendus aut nam ratione.','934-421-1008','jparker@schumm.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(48,'Dr. Cecilia O\'Hara V','Dolor facilis temporibus nisi corporis quo omnis hic accusamus tempora ut consequuntur dolore aut autem neque placeat ut quos et et et natus est qui aut nostrum quidem odit odit labore explicabo ea saepe ullam laborum aut est illum non nemo qui iste consequatur qui occaecati velit tempora officiis asperiores fugiat dolores quisquam.','386-490-6318','zaria.grant@klein.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(49,'Prof. Maymie Boehm','Odit nemo quo eos numquam nesciunt exercitationem dolor praesentium accusantium et reiciendis ducimus illo voluptatem vel eum sunt aut ea repellat quibusdam enim hic vel unde aut voluptas dolores sunt laboriosam nemo iusto et ratione dignissimos culpa nam non repudiandae ad laborum praesentium non nam aut tempore molestiae repellendus consequuntur dolore iste rerum itaque molestiae unde natus voluptatem magnam iste est officiis.','1-747-363-0822','wrussel@effertz.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(50,'Zander Medhurst','Inventore provident eligendi unde hic ab omnis quis reprehenderit sunt ea quis aut beatae a et iste consequatur dolorem saepe fuga eos ipsum doloribus quam id ipsa ipsam et ut explicabo voluptatibus quia aliquam blanditiis provident ut ipsa sit unde non et quibusdam tenetur similique illum est sit quis veritatis quis vitae in sit esse quos officiis eligendi neque consequatur non aperiam at soluta doloremque sunt vel cumque sed.','1-802-816-7231','mae38@fay.com','2021-04-03 21:55:31','2021-04-03 21:55:31'),(51,'zzzzz','zzzzzzzzzzzzzzzzzzzz','07383360960','cicciaciccia@ciccia.it','2021-04-03 22:20:22','2021-04-03 22:20:22'),(52,'hhhhhhhhhhhhhh','hhhhhhhhhhhhhhhhhhhhhhhhh','07383360960','cicciaciccia@ciccia.it','2021-04-04 09:53:50','2021-04-04 09:53:50'),(53,'item value gggggg','gggggggg','jjklljklkj@kklo.oi','ciccio@ciccio.it','2021-04-04 12:06:14','2021-04-04 12:06:14');
/*!40000 ALTER TABLE `rest_api_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-04 18:18:24
