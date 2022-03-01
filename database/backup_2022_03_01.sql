-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `canvas_posts`
--

DROP TABLE IF EXISTS `canvas_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_posts_slug_user_id_unique` (`slug`,`user_id`),
  KEY `canvas_posts_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_posts`
--

LOCK TABLES `canvas_posts` WRITE;
/*!40000 ALTER TABLE `canvas_posts` DISABLE KEYS */;
INSERT INTO `canvas_posts` VALUES ('1f0bf0a6-31c1-422b-8305-932c09263088','nocode-evolution','#NoCode Хувьсгал','#NoCode хувьсгал ирээд байна. Энэ нь хөгжүүлэгч бид нарт ямар үр нөлөө авчирхыг ярилцы.','<p>Бид бол хөгжүүлэгч нар. Бид гараараа кодоо бичиж хүмүүсийн хүсэж буй програм, веб, апп гэх зэрэгийг хийдэг. Энэ бол уламжлалт арга зүй. Харин сүүлийн хэдэн жилүүдэд шинэ гаралгаа их дэлгэрээд байна. Энэ нь энгийн хүмүүсээр апп хийлгүүлэх буюу #NoCode платформууд дэлгэрээд байна.</p><p>Одоогоор NoCode болон LowCode гэсэн 2 төрөл байгаа. LowCode бол бага зэргийн кодны бичиглэл шаардах ба энэ нь хөгжүүлэгч нарт чиглэсэн. NoCode бол зөвхөн UI/UX интерфэйсээр удирдах зориулттай ба энгийн хэрэглэгчид зориулсан. Тиймээс энэ 2 төрлийн платформууд 2 уулаа код бичиглэлийг арилгах тэгээд үр бүтээлийг нэмэгдүүлэх зорилготой юм.</p><p>Зарим хөгжүүлэгч нар хиймэл оюун ухаан (AI) бидний ажлыг орлох болно гэж айж байсан чинь харин үгүй байж. Client-ууд маань апп хөгжүүлээд эхэлж бидний хэрэгцээ гархааргүй болжээ. Joke шүү :)</p><p>Энэ нийтлэлийн төгсгөлийн хэсэгт би жишээ платформууд оруулсан байгаа. Тэднүүсийг сонирхоод үзээрэй. Туршиж үзэхэд голдуу их үр бүтээлтэй мэдрэмж төрсөн. 2 3 хоног сууж хэрэглэгчийн нэвтрэлт, бүртгүүлэлт болон эрхийг гаргаж ирж байсан энэхүү платформууд Project үүсгэхэд тэр бүгдийг нь үүсгээд өглөө. REST API, GraphQL эд нар нь намайг table үүсгэхэд хамт үүсэж байна. Зөвхөн backend ч биш, frontend-ч адилхан. Wordpress шиг юм бодож байгаа бол үгүй. Тэрнээс илүүтэйгээр mobile app-г Wordpress дээр ажилж байгаа мэт хийж байна шүү дээ. Энэ нь тэгээд hybrid технологи эсвэл веб хуудасыг app дотороо embed хийгээгүй. Цэвэр native байдалаар хийгдэж байна.</p><p>Энэ бүх зүйл гоё байгаа ч асуудалтай харагдаж байна. Хамгийн эхэнд нь UX илүү ажиллах хэрэгтэй юм шиг. Community болон Third party integration бас сул байна. Feature их дутмаг байна. Энэ нь иймэрхүү платформуудыг түүхий байгааг илэрхийлж байгаа. Гэхдээ дүнгэж эхэлж байгаа зүйл аргагүй байх. Тиймээс ирээдүйд илүү их дэвшилтэд болохыг би одоо харж байнаа.</p><p>Ирээдүйд бүх апп, веб, систем, бот, тоглоом гэх зүйлсүүд NoCode платформоор дамжиж хийгддэг болно гэж төсөөлж байгаач уламжлалт хөгжүүлэлт үгүй болно гэж бодохгүй байна. Харин ч ховордож зөвхөн мөнгөтэй компани ажлуулдаг тогтолцоонд орно гэж бодож байна. Тэгэхлээр хөгжүүлэгч бид дунд өрсөлдөөн их ширүүсэх болвуда. </p><p>NoCode philosophy-g hugjuulegch nar uursdiin ajildaa shingeevel iluu ur duntei gedgiig tailbarlaj low-code ruu anhaarlaa tuvluruuleh</p><p>Sonirhuulah nocode project uud</p>',NULL,'/storage/canvas/images/y2PrLqGF3FTMiTzy7JWQlLgUPuRzt45OsgcYl1aF.png',NULL,'1dcabc3e-39cb-413c-8df1-3edd178790cd','{\"title\": null, \"description\": null, \"canonical_link\": null}','2022-01-28 19:23:25','2022-02-17 15:10:53',NULL),('53df9094-2a6c-44cf-9331-b000b3a645ba','post-53df9094-2a6c-44cf-9331-b000b3a645ba','test',NULL,'<p>test</p><div class=\"ql-embed-content\" contenteditable=\"false\">var hello = \"world\";\n</div><hr><div class=\"ql-embed-content\" contenteditable=\"false\">import \'package:flutter/material.dart\';\n\nimport \'package:get/get.dart\';\n\nimport \'../controllers/home_controller.dart\';\n\nclass HomeView extends GetView<homecontroller> {\n  @override\n  Widget build(BuildContext context) {\n    return Scaffold(\n      appBar: AppBar(\n        title: Text(\'HomeView\'),\n        centerTitle: true,\n      ),\n      body: Center(\n        child: Text(\n          \'HomeView is working\',\n          style: TextStyle(fontSize: 20),\n        ),\n      ),\n    );\n  }\n}\n</homecontroller></div><p><br></p>',NULL,NULL,NULL,'f299d757-83c8-473a-897a-bb0bf00dbe0c','{\"title\": null, \"description\": null, \"canonical_link\": null}','2021-12-27 18:20:30','2022-02-07 09:41:52','2022-02-07 09:41:52'),('dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','post-dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','Code-oo saihan engeed bicheed yuvchida te',NULL,'<p>Heduulee neg uur uursdiinhuuruu songoson sedev-r niitlel oruulj busaddaa taniulj baiye gj yarisanda te. Ternii platform-g odoo enged uusged bj bn. Za tged hun bolgon ruu ni burtgel uusgej email-r ni ilgeeh bolnoo.</p><p>Tged saihan zavtai uedee orj ireed yum humaa bicheed draft laad hadgalad yuvj bolno shuu. Nadad ene \'canvas\' gsen nertei publish hiideg platform ni code nii talaarh niitlel bichhed ih amar sanagdlaa. Ta nar ch gsen adilhan yum humiin uhaad uzeerei.</p>','2021-12-26 10:03:00','/storage/canvas/images/Tr7SaVHPTsZ4ITyu3vVHm4nB3lQrio0TfyzgBG8t.jpg',NULL,'1dcabc3e-39cb-413c-8df1-3edd178790cd','{\"title\": null, \"description\": null, \"canonical_link\": null}','2021-12-27 18:03:10','2021-12-27 18:16:57',NULL),('e3caabe8-172a-4007-850d-7463aa62e62b','post-e3caabe8-172a-4007-850d-7463aa62e62b','Title',NULL,'<p><br></p>',NULL,NULL,NULL,'189135cb-cc54-4c72-a766-ef8cb1cd5ecb','{\"title\": null, \"description\": null, \"canonical_link\": null}','2021-12-27 18:47:36','2022-02-07 09:41:44','2022-02-07 09:41:44');
/*!40000 ALTER TABLE `canvas_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_posts_tags`
--

DROP TABLE IF EXISTS `canvas_posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_posts_tags` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `canvas_posts_tags_post_id_tag_id_unique` (`post_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_posts_tags`
--

LOCK TABLES `canvas_posts_tags` WRITE;
/*!40000 ALTER TABLE `canvas_posts_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `canvas_posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_posts_topics`
--

DROP TABLE IF EXISTS `canvas_posts_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_posts_topics` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `canvas_posts_topics_post_id_topic_id_unique` (`post_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_posts_topics`
--

LOCK TABLES `canvas_posts_topics` WRITE;
/*!40000 ALTER TABLE `canvas_posts_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `canvas_posts_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_tags`
--

DROP TABLE IF EXISTS `canvas_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_tags` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_tags_slug_user_id_unique` (`slug`,`user_id`),
  KEY `canvas_tags_created_at_index` (`created_at`),
  KEY `canvas_tags_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_tags`
--

LOCK TABLES `canvas_tags` WRITE;
/*!40000 ALTER TABLE `canvas_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `canvas_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_topics`
--

DROP TABLE IF EXISTS `canvas_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_topics` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_topics_slug_user_id_unique` (`slug`,`user_id`),
  KEY `canvas_topics_created_at_index` (`created_at`),
  KEY `canvas_topics_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_topics`
--

LOCK TABLES `canvas_topics` WRITE;
/*!40000 ALTER TABLE `canvas_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `canvas_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_users`
--

DROP TABLE IF EXISTS `canvas_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_mode` tinyint DEFAULT NULL,
  `digest` tinyint DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_users_email_unique` (`email`),
  UNIQUE KEY `canvas_users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_users`
--

LOCK TABLES `canvas_users` WRITE;
/*!40000 ALTER TABLE `canvas_users` DISABLE KEYS */;
INSERT INTO `canvas_users` VALUES ('189135cb-cc54-4c72-a766-ef8cb1cd5ecb','Enhsuld','z.enhsuld@gmail.com',NULL,'$2y$10$u9zWtH0aov6dy7Z1wxRmUe69FYB3IarLWA36CcMdCuSK2iITrtb4u',NULL,NULL,0,NULL,'en',1,NULL,'2021-12-27 18:12:07','2021-12-27 18:30:03',NULL),('198f2a69-6240-41f0-a279-46f22c376e9b','Batkhuyag','batkhuyag.batjargal@gmail.com',NULL,'$2y$10$k1o48Qa5qy50G0tKqOf.K.KkTXnsq0T5rjaqbgaHKSd1qftyi2DJG',NULL,NULL,NULL,NULL,'en',1,NULL,'2021-12-27 18:23:27','2021-12-27 18:23:27',NULL),('1dcabc3e-39cb-413c-8df1-3edd178790cd','Tsogtbayar','dtsogtbayar123@gmail.com','acep','$2y$10$Xu8kd2c2CXJ3b1FBXt55duey/FAGWI8CNaCcaobZ7/UScz7u5s5JO',NULL,NULL,0,NULL,'en',3,NULL,'2021-12-27 18:00:15','2021-12-27 18:02:19',NULL),('ae90fab0-c496-4162-9979-48bf7cf470dc','Khatanbaatar','hatnaa.k@gmail.com',NULL,'$2y$10$MJDC.mP2To0G8YPIB7gWOuh4A9WsBykGq8rF5By6qWiuI8mfKFXqi',NULL,NULL,NULL,NULL,'en',1,NULL,'2021-12-27 18:20:15','2021-12-27 18:20:15',NULL),('b906f6de-2c90-4629-8ae1-c499cb4df213','Tamir','tamir.wrk@gmail.com',NULL,'$2y$10$S17zl8I57jo2pDzJTb..4euBvdZ2F6fJAGxH6gNGCjoddrPVnNuza',NULL,NULL,NULL,NULL,'en',1,NULL,'2021-12-27 18:18:39','2021-12-27 18:18:39',NULL),('f299d757-83c8-473a-897a-bb0bf00dbe0c','Tuvshinbayar','themonmail@gmail.com',NULL,'$2y$10$6RcDYR2Mjz/kM.uGaPs/d.rcFeCJqS0e3cdZiRuFGAuCoSijFXzLO',NULL,NULL,0,NULL,'en',1,NULL,'2021-12-27 18:11:23','2021-12-27 18:20:06',NULL);
/*!40000 ALTER TABLE `canvas_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_views`
--

DROP TABLE IF EXISTS `canvas_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_views` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` text COLLATE utf8mb4_unicode_ci,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `canvas_views_created_at_index` (`created_at`),
  KEY `canvas_views_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_views`
--

LOCK TABLES `canvas_views` WRITE;
/*!40000 ALTER TABLE `canvas_views` DISABLE KEYS */;
INSERT INTO `canvas_views` VALUES (1,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','codeblog.gcommunication.mn','2021-12-27 18:09:08','2021-12-27 18:09:08'),(2,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101 Firefox/96.0','codeblog.gcommunication.mn','2021-12-27 18:18:55','2021-12-27 18:18:55'),(3,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36','codeblog.gcommunication.mn','2021-12-27 18:20:56','2021-12-27 18:20:56'),(4,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','codeblog.gcommunication.mn','2021-12-27 18:45:06','2021-12-27 18:45:06'),(5,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','codeblog.gcommunication.mn','2021-12-28 11:21:36','2021-12-28 11:21:36'),(6,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36','codeblog.gcommunication.mn','2021-12-29 00:01:05','2021-12-29 00:01:05'),(7,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','codeblog.gcommunication.mn','2021-12-29 14:04:56','2021-12-29 14:04:56'),(8,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','codeblog.gcommunication.mn','2022-01-28 16:20:13','2022-01-28 16:20:13'),(9,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Safari/537.36','codeblog.gcommunication.mn','2022-02-16 10:46:06','2022-02-16 10:46:06');
/*!40000 ALTER TABLE `canvas_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_visits`
--

DROP TABLE IF EXISTS `canvas_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_visits` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` text COLLATE utf8mb4_unicode_ci,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_visits`
--

LOCK TABLES `canvas_visits` WRITE;
/*!40000 ALTER TABLE `canvas_visits` DISABLE KEYS */;
INSERT INTO `canvas_visits` VALUES (1,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','codeblog.gcommunication.mn','2021-12-27 18:09:08','2021-12-27 18:09:08'),(2,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101 Firefox/96.0','codeblog.gcommunication.mn','2021-12-27 18:18:55','2021-12-27 18:18:55'),(3,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36','codeblog.gcommunication.mn','2021-12-27 18:20:56','2021-12-27 18:20:56'),(4,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','codeblog.gcommunication.mn','2021-12-27 18:45:06','2021-12-27 18:45:06'),(5,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','codeblog.gcommunication.mn','2021-12-28 11:21:36','2021-12-28 11:21:36'),(6,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36','codeblog.gcommunication.mn','2021-12-29 00:01:06','2021-12-29 00:01:06'),(7,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','codeblog.gcommunication.mn','2021-12-29 14:04:56','2021-12-29 14:04:56'),(8,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','codeblog.gcommunication.mn','2022-01-28 16:20:13','2022-01-28 16:20:13'),(9,'dbff949d-dcfe-40a4-88c5-b7cdccb71ec7','66.181.167.115','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Safari/537.36','codeblog.gcommunication.mn','2022-02-16 10:46:06','2022-02-16 10:46:06');
/*!40000 ALTER TABLE `canvas_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_12_14_000001_create_personal_access_tokens_table',1),(2,'2020_09_21_000000_create_canvas_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-01 13:00:25
