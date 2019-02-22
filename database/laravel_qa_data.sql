-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

INSERT INTO `answers` (`id`, `user_id`, `question_id`, `text`, `rating`, `created_at`, `updated_at`) VALUES
(1,	2,	1,	'That\'s a tough one. Hopefully someone will be able to help you (not me).',	0,	'2018-02-23 22:30:07',	'2019-02-22 08:02:30'),
(2,	3,	1,	'You\'re kidding, right?\r\n\r\nhttps://laravel.com/docs/5.6',	0,	'2018-02-24 14:30:07',	'2018-02-24 14:30:07'),
(3,	1,	1,	'Thanks a lot! That is what I was looking for.',	0,	'2018-02-24 15:30:07',	'2018-02-24 15:30:07'),
(4,	1,	2,	'Well, it\'s nothing very special. Uh, try to be nice to people, avoid eating fat, read a good book every now and then, get some walking in, and try to live together in peace and harmony with people of all creeds and nations.',	0,	'2018-02-25 18:32:17',	'2018-02-25 18:32:17'),
(5,	3,	2,	'41',	0,	'2018-02-25 19:32:17',	'2018-02-25 19:32:17'),
(6,	4,	2,	'42',	0,	'2018-02-25 20:16:21',	'2018-02-25 20:16:21'),
(7,	2,	2,	'Yeah, 42 sounds about right... but what is the question?',	0,	'2018-02-25 20:25:21',	'2018-02-25 20:25:21');

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'PHP',	'2019-02-21 08:12:17',	'2019-02-21 08:12:17'),
(2,	'JavaScript',	'2019-02-21 08:12:17',	'2019-02-21 08:12:17'),
(3,	'MySQL',	'2019-02-21 08:12:17',	'2019-02-21 08:12:17'),
(4,	'Life, Universe & Everything',	'2019-02-21 08:12:17',	'2019-02-21 08:12:17');

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_02_20_100530_create_questions_table',	1),
(4,	'2019_02_20_100627_create_answers_table',	1),
(5,	'2019_02_20_101303_change_questions_nullable_columns',	2),
(6,	'2019_02_20_101441_change_answers_nullable_columns',	3),
(7,	'2019_02_21_080645_create_categories_table',	4),
(10,	'2019_02_22_080652_create_votes_table',	5),
(11,	'2019_02_22_081942_answers_add_rating',	5);


INSERT INTO `questions` (`id`, `user_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1,	1,	'Where can I find the Laravel documentation?',	'Hi, I am new to Laravel and as I don\'t know how to use Google I can\'t seem to find the documentation.\r\n\r\nCan anyone help me?',	'2018-02-23 21:28:01',	'2018-02-23 21:28:01'),
(2,	2,	'What is the real answer to life, universe and everything?',	'Hi!\r\n\r\nThis question is bugging me for many years now.\r\n\r\nWhy are we all here? Where do we come from and where are we going? What is the answer to it all? \r\n\r\nAny help would be much appreciated.',	'2018-02-25 17:28:01',	'2018-02-25 17:28:01');



-- 2019-02-22 09:50:57
