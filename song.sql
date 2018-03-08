-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.0.45
-- Время создания: Мар 06 2018 г., 19:08
-- Версия сервера: 5.7.20-19
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `a0181256_mymusic`
--

-- --------------------------------------------------------

--
-- Структура таблицы `song`
--

CREATE TABLE `song` (
  `song_id` smallint(6) NOT NULL,
  `title_rus` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'название композиции по русски',
  `title_eng` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'название композиции по английски',
  `description` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'описание композиции',
  `song_url` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buy_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `difficulty` tinyint(4) NOT NULL,
  `original_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tuning` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='справочник песен, композиций ноты и табы к которым доступны ';

--
-- Дамп данных таблицы `song`
--

INSERT INTO `song` (`song_id`, `title_rus`, `title_eng`, `description`, `song_url`, `buy_url`, `difficulty`, `original_key`, `tuning`) VALUES
(1, 'Раскинулось море широко', 'Wide open sea', '', 'https://youtu.be/DUQoRx6FW3g', 'https://www.plati.market/asp/pay.asp?idd=2431128', 3, 'E minor', 'Standard'),
(2, 'О друге (из к.ф. Путь к причалу)', 'About a friend', '', 'https://youtu.be/0_eukGS64cM', '', 3, 'A minor', 'Standard'),
(3, 'Прощайте скалистые горы', 'Farewell rocky mountains', '', 'https://youtu.be/Jkok444vB8I', '', 3, 'A minor', 'Standard'),
(4, 'Way back into love (Music and Lyrics)', 'Way back into love (Music and Lyrics)', '', 'https://youtu.be/hNWn5WcMRYs', '', 3, 'A major', 'Standard'),
(5, 'Belle (Нотр Дам де Пари)', 'Belle (Notre Dame de Paris)', '', 'https://youtu.be/y2TmNVwcuxU', '', 4, 'D minor', 'Standard'),
(6, 'А зори здесь тихие', 'The Dawns are quiet here', NULL, 'https://youtu.be/i_kpLxhwnp8', '', 3, 'A minor', 'Drop-D');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
