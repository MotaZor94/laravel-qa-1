-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `rating` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `answers` (`id`, `user_id`, `question_id`, `text`, `rating`, `created_at`, `updated_at`) VALUES
(1,	2,	1,	'That\'s a tough one. Hopefully someone will be able to help you (not me).',	-3,	'2018-02-23 22:30:07',	'2019-02-22 08:02:30'),
(2,	3,	1,	'You\'re kidding, right?\r\n\r\nhttps://laravel.com/docs/5.6',	0,	'2018-02-24 14:30:07',	'2018-02-24 14:30:07'),
(3,	1,	1,	'Thanks a lot! That is what I was looking for.',	0,	'2018-02-24 15:30:07',	'2018-02-24 15:30:07'),
(4,	1,	2,	'Well, it\'s nothing very special. Uh, try to be nice to people, avoid eating fat, read a good book every now and then, get some walking in, and try to live together in peace and harmony with people of all creeds and nations.',	0,	'2018-02-25 18:32:17',	'2018-02-25 18:32:17'),
(5,	3,	2,	'41',	0,	'2018-02-25 19:32:17',	'2018-02-25 19:32:17'),
(6,	4,	2,	'42',	0,	'2018-02-25 20:16:21',	'2018-02-25 20:16:21'),
(7,	2,	2,	'Yeah, 42 sounds about right... but what is the question?',	0,	'2018-02-25 20:25:21',	'2018-02-25 20:25:21');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'PHP',	'2019-02-21 08:12:17',	'2019-02-21 08:12:17'),
(2,	'JavaScript',	'2019-02-21 08:12:17',	'2019-02-21 08:12:17'),
(3,	'MySQL',	'2019-02-21 08:12:17',	'2019-02-21 08:12:17'),
(4,	'Life, Universe & Everything',	'2019-02-21 08:12:17',	'2019-02-21 08:12:17');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_02_20_100530_create_questions_table',	1),
(4,	'2019_02_20_100627_create_answers_table',	1),
(5,	'2019_02_20_101303_change_questions_nullable_columns',	2),
(6,	'2019_02_20_101441_change_answers_nullable_columns',	3),
(7,	'2019_02_21_080645_create_categories_table',	4),
(8,	'2019_02_22_080652_create_votes_table',	5),
(9,	'2019_02_22_081942_answers_add_rating',	6);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `questions` (`id`, `user_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1,	1,	'Where can I find the Laravel documentation?',	'Hi, I am new to Laravel and as I don\'t know how to use Google I can\'t seem to find the documentation.\r\n\r\nCan anyone help me?',	'2018-02-23 21:28:01',	'2018-02-23 21:28:01'),
(2,	2,	'What is the real answer to life, universe and everything?',	'Hi!\r\n\r\nThis question is bugging me for many years now.\r\n\r\nWhy are we all here? Where do we come from and where are we going? What is the answer to it all? \r\n\r\nAny help would be much appreciated.',	'2018-02-25 17:28:01',	'2018-02-25 17:28:01');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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


DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `answer_id` int(10) unsigned NOT NULL,
  `vote` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `votes` (`id`, `answer_id`, `vote`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	'2019-02-22 08:01:59',	'2019-02-22 08:01:59'),
(2,	1,	1,	'2019-02-22 08:02:02',	'2019-02-22 08:02:02'),
(3,	1,	1,	'2019-02-22 08:02:04',	'2019-02-22 08:02:04'),
(4,	1,	-1,	'2019-02-22 08:02:06',	'2019-02-22 08:02:06'),
(5,	1,	-1,	'2019-02-22 08:02:08',	'2019-02-22 08:02:08'),
(6,	1,	-1,	'2019-02-22 08:02:09',	'2019-02-22 08:02:09'),
(7,	1,	-1,	'2019-02-22 08:02:11',	'2019-02-22 08:02:11'),
(8,	1,	-1,	'2019-02-22 08:02:12',	'2019-02-22 08:02:12'),
(9,	1,	-1,	'2019-02-22 08:02:30',	'2019-02-22 08:02:30');

-- 2019-02-22 09:30:37
