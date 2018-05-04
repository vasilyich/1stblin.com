-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.0.45
-- Время создания: Май 04 2018 г., 16:15
-- Версия сервера: 5.7.20-19
-- Версия PHP: 7.1.9

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
(1, 'Wide open sea', 'Famous Russian folk song about the stoker, popular in the Navy. The song was pre-revolutionary, the end of 19 early 20th century. \r\nThe author of the lyrics is unknown, Music: A. Gurilev. \r\nPerformed earlier by Chaliapin, Utesov, and relatively recently by Shevchuk and the group DDT. \r\nThe interpretation by Shevchuk was taken as a basis for the creation of this guitar arrangement', 'https://youtu.be/DUQoRx6FW3g', 'https://www.plati.market/asp/pay.asp?idd=2431128&lang=en-US', 3, 'E minor', 'Standard', 'en', 'https://www.youtube.com/embed/DUQoRx6FW3g'),
(1, 'Раскинулось море широко', 'Известная русская народная песня о кочегаре. Песня дореволюционная, конца 19 начала 20 го века. \r\nАвтор слов доподлинно неизвестен, Музыка: А. Гурилев. \r\nИсполнялась ранне Шаляпиным, Утесовым, а относительно недавно Шевчуком и группой ДДТ. \r\nОбработка Шевчука была взята за основу при создании этой аранжировки ', 'https://youtu.be/DUQoRx6FW3g', 'https://www.plati.market/asp/pay.asp?idd=2431128', 3, 'Ми минор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/DUQoRx6FW3g'),
(2, 'Song about a friend', '', 'https://youtu.be/0_eukGS64cM', 'https://www.plati.market/asp/pay.asp?idd=2454398&lang=en-US', 3, 'A minor', 'Standard', 'en', 'https://www.youtube.com/embed/0_eukGS64cM'),
(2, 'О друге (из к.ф. Путь к причалу)', 'Песня о Друге - не Высоцкого а из фильма Путь к Причалу. Исполнял ее Олег Анофриев, позже Любэ и многие другие. \r\n\r\nМузыка: А.Петров', 'https://youtu.be/0_eukGS64cM', 'https://www.plati.market/asp/pay.asp?idd=2454398&lang=ru-RU', 3, 'Ля минор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/0_eukGS64cM'),
(3, 'Farewell rocky mountains', 'Song about heroic Russian salors', 'https://youtu.be/Jkok444vB8I', 'https://www.plati.market/asp/pay.asp?idd=2470455&lang=en-US', 3, 'A minor', 'Standard', 'en', 'https://www.youtube.com/embed/Jkok444vB8I'),
(3, 'Прощайте скалистые горы', 'Песня про войну, про море и про полуостров Рыбачий\r\nА еще ее пели братья Кроликовы в фильме Шырли Мырли\r\nМузыка: Eвгений Жарковский', 'https://youtu.be/Jkok444vB8I', 'https://www.plati.market/asp/pay.asp?idd=2470455&lang=ru-RU', 3, 'Ля минор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/Jkok444vB8I'),
(4, 'Way back into love (Music and Lyrics)', '', 'https://youtu.be/hNWn5WcMRYs', '', 3, 'A major', 'Standard', 'en', 'https://www.youtube.com/embed/hNWn5WcMRYs'),
(4, 'Way back into love (Music and Lyrics)', '', 'https://youtu.be/hNWn5WcMRYs', '', 3, 'Ля мажор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/hNWn5WcMRYs'),
(5, 'Belle (Notre Dame de Paris)', 'Arrangement for solo guitar of popular song Belle from the musical Notre Dame de Paris. This musical originally came from Quebec - French speaking part of Canada.\r\nMusic by: Richard Cocciante\r\nIn this arrangement i attempted to play all 3 verses in their respective original keys. The melody starts in D minor and changes keys quite often as it goes. 2nd verse happens in the key which isn\'t very suitable for guitar and 3rd is in the completely non-guitar friendly key. As a result arrangement is full of barred chords and difficult position changes. It might be difficult to play, at least i struggled a lot while learning and perfecting it:)', 'https://youtu.be/y2TmNVwcuxU', 'https://www.plati.market/asp/pay.asp?idd=2448983&lang=en-US', 4, 'D minor', 'Standard', 'en', 'https://www.youtube.com/embed/y2TmNVwcuxU'),
(5, 'Belle (Красавица - Нотр Дам не Пари)', 'Аранжировка песни Belle (Красавица) из мюзикла Нотр Дам не Пари для гитары соло. Известный французско-канадский мюзикл. \r\nАвтор Музыки: Richard Cocciante \r\nТут я попытался сыграть все 3 куплета в оригинальных тональностях. Мелодия начинается в оригинальной тональности ре-минор, и по ходу пьессы очень часто эти тональности меняет. По мере повышения 2й куплет идет в тональности не-очень удобной а последний 3й заканчиваются в тональности совсем уж неудобной для исполнения на гитаре. Изза этого в мелодии присутствуют много позиций с барре и могут возникнуть сложности со сменой позиций.По крайней мере они возникали у меня при разучивании и отработке :)', 'https://youtu.be/y2TmNVwcuxU', 'https://www.plati.market/asp/pay.asp?idd=2448983&lang=ru-RU', 4, 'Ре минор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/y2TmNVwcuxU'),
(6, 'The Dawns are quiet here', 'Song from new version of the movie The dawns are quiet here based on novel written by Boris Vasilyev. \r\nMusic by: Igor Matvienko', 'https://youtu.be/i_kpLxhwnp8', 'https://www.plati.market/asp/pay.asp?idd=2454419&lang=en-US', 3, 'A minor', 'Drop-D', 'en', 'https://www.youtube.com/embed/i_kpLxhwnp8'),
(6, 'А зори здесь тихие', 'Песня из новой экранизации повести Бориса Васильева \"А зори здесь тихие\". Хорошая душевная песня исполненная вместе группами Любэ и Альфа\r\nМузыка: Игорь Матвиенко', 'https://youtu.be/i_kpLxhwnp8', 'https://www.plati.market/asp/pay.asp?idd=2454419&lang=ru-RU', 3, 'Ля минор', 'Дроп-D (6 = ре)', 'ru', 'https://www.youtube.com/embed/i_kpLxhwnp8'),
(7, 'Lune (Notre Dame de Paris)', 'Song from Notre Dame de Paris, famous French musical performed by Bruno Pelletier\r\n\r\nMusic by: Richard Cocciante\r\nLyrics: Luc Plamondon', 'https://youtu.be/CH7K1E0cO1A', 'https://www.plati.market/asp/pay.asp?idd=2454421&lang=en-US', 3, 'C minor', 'Standard', 'en', 'https://www.youtube.com/embed/CH7K1E0cO1A'),
(7, 'Луна (Нотр Дам де Пари)', 'Песня из знаменитого фланцузского мюзикла, в исполнении Бруно Пелетьера\r\n\r\nМузыка: Richard Cocciante\r\nСлова: Luc Plamondon', 'https://youtu.be/CH7K1E0cO1A', 'https://www.plati.market/asp/pay.asp?idd=2454421&lang=ru-RU', 3, 'До минор', 'Стандартный', 'ru', 'https://www.youtube.com/embed/CH7K1E0cO1A');

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
