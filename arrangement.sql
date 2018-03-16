-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.0.45
-- Время создания: Мар 17 2018 г., 01:51
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
-- Структура таблицы `arrangement`
--

CREATE TABLE `arrangement` (
  `song_id` smallint(6) NOT NULL,
  `arrangement_title` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'название композиции',
  `description` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'описание композиции',
  `song_url` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buy_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `difficulty` tinyint(4) NOT NULL,
  `original_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tuning` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'language translation',
  `embed_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'встроенный код для интеграции видео с youtube'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='справочник песен, композиций ноты и табы к которым доступны ';

--
-- Дамп данных таблицы `arrangement`
--

INSERT INTO `arrangement` (`song_id`, `arrangement_title`, `description`, `song_url`, `buy_url`, `difficulty`, `original_key`, `tuning`, `lang_id`, `embed_code`) VALUES
(1, 'Wide open sea', '', 'https://youtu.be/DUQoRx6FW3g', 'https://www.plati.market/asp/pay.asp?idd=2431128', 3, 'E minor', 'Standard', 'en', 'https://www.youtube.com/embed/DUQoRx6FW3g'),
(1, 'Раскинулось море широко', '', 'https://youtu.be/DUQoRx6FW3g', 'https://www.plati.market/asp/pay.asp?idd=2431128', 3, 'Ми минор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/DUQoRx6FW3g'),
(2, 'Song about a friend', '', 'https://youtu.be/0_eukGS64cM', '', 3, 'A minor', 'Standard', 'en', 'https://www.youtube.com/embed/0_eukGS64cM'),
(2, 'О друге (из к.ф. Путь к причалу)', '', 'https://youtu.be/0_eukGS64cM', '', 3, 'Ля минор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/0_eukGS64cM'),
(3, 'Farewell rocky mountains', '', 'https://youtu.be/Jkok444vB8I', '', 3, 'A minor', 'Standard', 'en', 'https://www.youtube.com/embed/Jkok444vB8I'),
(3, 'Прощайте скалистые горы', '', 'https://youtu.be/Jkok444vB8I', '', 3, 'Ля минор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/Jkok444vB8I'),
(4, 'Way back into love (Music and Lyrics)', '', 'https://youtu.be/hNWn5WcMRYs', '', 3, 'A major', 'Standard', 'en', 'https://www.youtube.com/embed/hNWn5WcMRYs'),
(4, 'Way back into love (Music and Lyrics)', '', 'https://youtu.be/hNWn5WcMRYs', '', 3, 'Ля мажор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/hNWn5WcMRYs'),
(5, 'Belle (Notre Dame de Paris)', '', 'https://youtu.be/y2TmNVwcuxU', '', 4, 'D minor', 'Standard', 'en', 'https://www.youtube.com/embed/y2TmNVwcuxU'),
(5, 'Belle (Notre Dame de Paris)', '', 'https://youtu.be/y2TmNVwcuxU', '', 4, 'Ре минор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/y2TmNVwcuxU'),
(6, 'The Dawns are quiet here', '', 'https://youtu.be/i_kpLxhwnp8', '', 3, 'A minor', 'Drop-D', 'en', 'https://www.youtube.com/embed/i_kpLxhwnp8'),
(6, 'А зори здесь тихие', 'Песня из новой экранизации повести Бориса Васильева \"А зори здесь тихие\". Хорошая душевная песня исполненная вместе группами Любэ и Альфа\r\nМузыка: Игорь Матвиенко', 'https://youtu.be/i_kpLxhwnp8', '', 3, 'Ля минор', 'Дроп-D', 'ru', 'https://www.youtube.com/embed/i_kpLxhwnp8');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `arrangement`
--
ALTER TABLE `arrangement`
  ADD PRIMARY KEY (`song_id`,`lang_id`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
