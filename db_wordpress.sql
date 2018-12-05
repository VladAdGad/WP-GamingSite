-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 05 2018 г., 15:04
-- Версия сервера: 10.1.32-MariaDB
-- Версия PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wordpress`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ykki', '$P$BGWIdBWsaM87HWKh6KFWfa2SL4MTYt/', 'ykki', 'vetnester@sdffd.com', '', '2018-11-20 15:44:50', '1543919471:$P$BtLik2ecAWMLQNJ8/4Ew/O345DT1Qy0', 0, 'ykki'),
(2, 'Vlad', '$P$BfSZyfSDfGA1aE/rxurrD429DXUBrW1', 'vlad', 'sobaka@gmail.com', '', '2018-11-22 13:14:30', '', 0, 'Vlad'),
(3, 'Editor', '$P$Bf1JzEfkebdQ1j9GxjRqLMypsjPOau0', 'editor', 'editor@gmail.com', '', '2018-11-25 13:00:18', '', 0, 'Editor'),
(4, 'Author', '$P$BG7zMAYOOO1ZfZpCodDzQHnS0MMw1E1', 'author', 'author@gmail.com', '', '2018-11-25 13:00:50', '', 0, 'Author'),
(6, 'Subscriber', '$P$BZoKVgOo7XpkMw5KHT2uCKCNL2ZC7M0', 'subscriber', 'subscriber@gmail.com', '', '2018-11-25 13:02:34', '', 0, 'Subscriber'),
(9, 'Admin', '$P$BIWyWCxpBvWvgGx1j112O6MVs8TaV6/', 'admin', 'admin@gmail.com', '', '2018-12-05 13:22:39', '1544016160:$P$BpEQizJgwUoWnkaDLHo0Dnv7RxuQYc1', 0, 'Admin'),
(10, 'Moderator', '$P$BFbP5GX71jOSoLMjrJMzMnvUwhbcMf0', 'moderator', 'moder@gmail.com', '', '2018-12-05 13:23:28', '1544016208:$P$B1A9sAkdu75VIIOaB8xteThLM6scpy1', 0, 'Moderator');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
