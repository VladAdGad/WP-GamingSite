-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 10:35 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

DROP TABLE IF EXISTS `pma__bookmark`;
CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

DROP TABLE IF EXISTS `pma__central_columns`;
CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

DROP TABLE IF EXISTS `pma__column_info`;
CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

DROP TABLE IF EXISTS `pma__designer_settings`;
CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

DROP TABLE IF EXISTS `pma__export_templates`;
CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

DROP TABLE IF EXISTS `pma__favorite`;
CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

DROP TABLE IF EXISTS `pma__history`;
CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

DROP TABLE IF EXISTS `pma__navigationhiding`;
CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

DROP TABLE IF EXISTS `pma__pdf_pages`;
CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

DROP TABLE IF EXISTS `pma__recent`;
CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

DROP TABLE IF EXISTS `pma__relation`;
CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

DROP TABLE IF EXISTS `pma__savedsearches`;
CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

DROP TABLE IF EXISTS `pma__table_coords`;
CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

DROP TABLE IF EXISTS `pma__table_info`;
CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

DROP TABLE IF EXISTS `pma__table_uiprefs`;
CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

DROP TABLE IF EXISTS `pma__tracking`;
CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

DROP TABLE IF EXISTS `pma__userconfig`;
CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-12-03 21:34:27', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

DROP TABLE IF EXISTS `pma__usergroups`;
CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

DROP TABLE IF EXISTS `pma__users`;
CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-20 16:44:50', '2018-11-20 15:44:50', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran Komentarze w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com\">Gravatara</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_modula`
--

DROP TABLE IF EXISTS `wp_modula`;
CREATE TABLE `wp_modula` (
  `Id` int(11) NOT NULL,
  `configuration` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_modula`
--

INSERT INTO `wp_modula` (`Id`, `configuration`) VALUES
(1, '{\"width\":\"100%\",\"height\":\"800\",\"img_size\":500,\"margin\":10,\"filters\":\"\",\"filterClick\":\"F\",\"allFilterLabel\":\"All\",\"lightbox\":\"lightbox2\",\"shuffle\":\"F\",\"captionColor\":\"#ffffff\",\"wp_field_caption\":\"caption\",\"wp_field_title\":\"title\",\"captionFontSize\":14,\"titleFontSize\":16,\"enableTwitter\":\"T\",\"enableFacebook\":\"T\",\"enableGplus\":\"T\",\"enablePinterest\":\"T\",\"socialIconColor\":\"#ffffff\",\"loadedScale\":100,\"loadedRotate\":0,\"loadedHSlide\":0,\"loadedVSlide\":0,\"borderSize\":0,\"borderRadius\":0,\"borderColor\":\"#ffffff\",\"shadowSize\":0,\"shadowColor\":\"#ffffff\",\"style\":\"\",\"script\":\"\",\"randomFactor\":50,\"hoverColor\":\"#000000\",\"hoverOpacity\":\"50\",\"hoverEffect\":\"pufrobo\",\"hasResizedImages\":true,\"importedFrom\":\"\",\"hide_title\":false,\"hide_description\":false,\"name\":\"Test Gallery\",\"description\":\"PJATK CMS BEST\"}'),
(2, '{\"width\":\"100%\",\"height\":\"800\",\"img_size\":500,\"margin\":10,\"filters\":\"\",\"filterClick\":\"F\",\"allFilterLabel\":\"All\",\"lightbox\":\"lightbox2\",\"shuffle\":\"F\",\"captionColor\":\"#ffffff\",\"wp_field_caption\":\"caption\",\"wp_field_title\":\"title\",\"captionFontSize\":14,\"titleFontSize\":16,\"enableTwitter\":\"T\",\"enableFacebook\":\"T\",\"enableGplus\":\"T\",\"enablePinterest\":\"T\",\"socialIconColor\":\"#ffffff\",\"loadedScale\":100,\"loadedRotate\":0,\"loadedHSlide\":0,\"loadedVSlide\":0,\"borderSize\":0,\"borderRadius\":0,\"borderColor\":\"#ffffff\",\"shadowSize\":0,\"shadowColor\":\"#ffffff\",\"style\":\"\",\"script\":\"\",\"randomFactor\":50,\"hoverColor\":\"#000000\",\"hoverOpacity\":\"50\",\"hoverEffect\":\"pufrobo\",\"hasResizedImages\":true,\"importedFrom\":\"\",\"hide_title\":false,\"hide_description\":false,\"name\":\"Test Gallery(copy)\",\"description\":\"PJATK CMS BEST\",\"id\":1}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_modula_images`
--

DROP TABLE IF EXISTS `wp_modula_images`;
CREATE TABLE `wp_modula_images` (
  `Id` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `imageId` int(11) NOT NULL,
  `imagePath` longtext NOT NULL,
  `link` longtext,
  `target` varchar(50) DEFAULT NULL,
  `filters` varchar(1500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `title` longtext NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `valign` varchar(50) NOT NULL DEFAULT 'middle',
  `halign` varchar(50) NOT NULL DEFAULT 'center'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_modula_images`
--

INSERT INTO `wp_modula_images` (`Id`, `gid`, `imageId`, `imagePath`, `link`, `target`, `filters`, `description`, `title`, `sortOrder`, `valign`, `halign`) VALUES
(1, 1, 37, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/unnamed-file-500x500.jpeg', NULL, NULL, NULL, '', '...', 1, 'middle', 'center'),
(2, 1, 38, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/unnamed-file-500x500.jpg', NULL, NULL, NULL, '', '...', 2, 'middle', 'center'),
(3, 1, 39, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/1123-500x500.png', NULL, NULL, NULL, '', '1123', 3, 'middle', 'center'),
(4, 1, 40, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ALONE-500x500.png', NULL, NULL, NULL, '', 'ALONE', 4, 'middle', 'center'),
(5, 1, 41, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/DO_IT-500x500.jpg', NULL, NULL, NULL, '', 'DO_IT', 5, 'middle', 'center'),
(6, 1, 42, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/edinorog-500x500.png', NULL, NULL, NULL, '', 'edinorog', 6, 'middle', 'center'),
(7, 1, 43, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/АХТЫ-500x500.jpg', NULL, NULL, NULL, '', 'АХТЫ', 7, 'middle', 'center'),
(8, 1, 44, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/БЕГУ-500x500.jpg', NULL, NULL, NULL, '', 'БЕГУ', 8, 'middle', 'center'),
(9, 1, 45, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Белка-500x500.jpg', NULL, NULL, NULL, '', 'Белка', 9, 'middle', 'center'),
(10, 1, 46, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/бля...-500x500.jpg', NULL, NULL, NULL, '', 'бля...', 10, 'middle', 'center'),
(11, 1, 47, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/БОМЖ-500x500.jpg', NULL, NULL, NULL, '', 'БОМЖ', 11, 'middle', 'center'),
(12, 1, 48, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/БРОВЬ-500x500.jpg', NULL, NULL, NULL, '', 'БРОВЬ', 12, 'middle', 'center'),
(13, 1, 49, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ВАСЗАМЕТИЛИ-500x500.png', NULL, NULL, NULL, '', 'ВАСЗАМЕТИЛИ', 13, 'middle', 'center'),
(14, 1, 50, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ВО_СЛАВУ_САТАНЕ-500x500.jpg', NULL, NULL, NULL, '', 'ВО_СЛАВУ_САТАНЕ', 14, 'middle', 'center'),
(15, 1, 51, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Воображение-500x500.jpg', NULL, NULL, NULL, '', 'Воображение', 15, 'middle', 'center'),
(16, 1, 52, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ГАРООЛЬД-500x500.jpg', NULL, NULL, NULL, '', 'ГАРООЛЬД', 16, 'middle', 'center'),
(17, 1, 53, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Гендальф-500x500.jpg', NULL, NULL, NULL, '', 'Гендальф', 17, 'middle', 'center'),
(18, 1, 54, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ГОМЕР-500x500.jpg', NULL, NULL, NULL, '', 'ГОМЕР', 18, 'middle', 'center'),
(19, 1, 55, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ДА-ЗАТКНИСЬ-ТЫ-УЖЕ-500x500.jpg', NULL, NULL, NULL, '', 'ДА ЗАТКНИСЬ ТЫ УЖЕ', 19, 'middle', 'center'),
(20, 1, 56, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ДАИХУЙСНЕЙ-500x500.jpg', NULL, NULL, NULL, '', 'ДАИХУЙСНЕЙ', 20, 'middle', 'center'),
(21, 2, 37, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/unnamed-file-500x500.jpeg', NULL, NULL, NULL, '', '...', 21, 'middle', 'center'),
(22, 2, 38, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/unnamed-file-500x500.jpg', NULL, NULL, NULL, '', '...', 22, 'middle', 'center'),
(23, 2, 39, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/1123-500x500.png', NULL, NULL, NULL, '', '1123', 23, 'middle', 'center'),
(24, 2, 40, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ALONE-500x500.png', NULL, NULL, NULL, '', 'ALONE', 24, 'middle', 'center'),
(25, 2, 41, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/DO_IT-500x500.jpg', NULL, NULL, NULL, '', 'DO_IT', 25, 'middle', 'center'),
(26, 2, 42, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/edinorog-500x500.png', NULL, NULL, NULL, '', 'edinorog', 26, 'middle', 'center'),
(27, 2, 43, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/АХТЫ-500x500.jpg', NULL, NULL, NULL, '', 'АХТЫ', 27, 'middle', 'center'),
(28, 2, 44, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/БЕГУ-500x500.jpg', NULL, NULL, NULL, '', 'БЕГУ', 28, 'middle', 'center'),
(29, 2, 45, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Белка-500x500.jpg', NULL, NULL, NULL, '', 'Белка', 29, 'middle', 'center'),
(30, 2, 46, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/бля...-500x500.jpg', NULL, NULL, NULL, '', 'бля...', 30, 'middle', 'center'),
(31, 2, 47, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/БОМЖ-500x500.jpg', NULL, NULL, NULL, '', 'БОМЖ', 31, 'middle', 'center'),
(32, 2, 48, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/БРОВЬ-500x500.jpg', NULL, NULL, NULL, '', 'БРОВЬ', 32, 'middle', 'center'),
(33, 2, 49, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ВАСЗАМЕТИЛИ-500x500.png', NULL, NULL, NULL, '', 'ВАСЗАМЕТИЛИ', 33, 'middle', 'center'),
(34, 2, 50, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ВО_СЛАВУ_САТАНЕ-500x500.jpg', NULL, NULL, NULL, '', 'ВО_СЛАВУ_САТАНЕ', 34, 'middle', 'center'),
(35, 2, 51, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Воображение-500x500.jpg', NULL, NULL, NULL, '', 'Воображение', 35, 'middle', 'center'),
(36, 2, 52, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ГАРООЛЬД-500x500.jpg', NULL, NULL, NULL, '', 'ГАРООЛЬД', 36, 'middle', 'center'),
(37, 2, 53, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Гендальф-500x500.jpg', NULL, NULL, NULL, '', 'Гендальф', 37, 'middle', 'center'),
(38, 2, 54, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ГОМЕР-500x500.jpg', NULL, NULL, NULL, '', 'ГОМЕР', 38, 'middle', 'center'),
(39, 2, 55, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ДА-ЗАТКНИСЬ-ТЫ-УЖЕ-500x500.jpg', NULL, NULL, NULL, '', 'ДА ЗАТКНИСЬ ТЫ УЖЕ', 39, 'middle', 'center'),
(40, 2, 56, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ДАИХУЙСНЕЙ-500x500.jpg', NULL, NULL, NULL, '', 'ДАИХУЙСНЕЙ', 40, 'middle', 'center');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/WP-GamingSite', 'yes'),
(2, 'home', 'http://localhost/WP-GamingSite', 'yes'),
(3, 'blogname', 'CMS', 'yes'),
(4, 'blogdescription', 'Kolejna witryna oparta na WordPressie', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vetnester@sdffd.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:19:\"bbpress/bbpress.php\";i:1;s:35:\"modula-best-grid-gallery/Modula.php\";i:2;s:21:\"steamtop/steamtop.php\";i:3;s:37:\"user-role-editor/user-role-editor.php\";i:4;s:42:\"wordpress-social-login/wp-social-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gamecenter', 'yes'),
(41, 'stylesheet', 'gamecenter', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Warsaw', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:91:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:10:\"edit_roles\";b:1;s:12:\"delete_roles\";b:1;s:15:\"edit_role_menus\";b:1;s:27:\"edit_posts_role_permissions\";b:1;s:27:\"edit_pages_role_permissions\";b:1;s:25:\"edit_nav_menu_permissions\";b:1;s:23:\"edit_content_shortcodes\";b:1;s:25:\"delete_content_shortcodes\";b:1;s:20:\"edit_login_redirects\";b:1;s:22:\"delete_login_redirects\";b:1;s:15:\"bulk_edit_roles\";b:1;s:23:\"edit_widget_permissions\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:23:\"edit_users_higher_level\";b:1;s:25:\"delete_users_higher_level\";b:1;s:26:\"promote_users_higher_level\";b:1;s:29:\"promote_users_to_higher_level\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:12:{s:12:\"delete_posts\";b:1;s:10:\"edit_posts\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;s:7:\"level_2\";b:1;s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"bbp_keymaster\";a:2:{s:4:\"name\";s:9:\"Keymaster\";s:12:\"capabilities\";a:0:{}}s:13:\"bbp_spectator\";a:2:{s:4:\"name\";s:9:\"Spectator\";s:12:\"capabilities\";a:0:{}}s:11:\"bbp_blocked\";a:2:{s:4:\"name\";s:7:\"Blocked\";s:12:\"capabilities\";a:0:{}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', '', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right_sidebar\";a:7:{i:0;s:17:\"steamtop_widget-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}s:12:\"left_sidebar\";a:0:{}s:8:\"footer_1\";a:0:{}s:8:\"footer_2\";a:0:{}s:8:\"footer_3\";a:0:{}s:12:\"tabs_sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1543873490;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543895090;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543924720;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543938302;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542728806;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'GameCenter', 'yes'),
(140, 'theme_mods_gamecenter', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:2;s:8:\"sec-menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'widget_facebook', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(143, 'widget_banners', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(144, 'widget_comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_social_profiles', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'widget_videofeed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'widget_flickr', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'widget_tabs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'smt_hash', 'd61bacccf6fdc69cc2878b6b9f5d8bae', 'yes'),
(155, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'widget_steamtop_widget', 'a:2:{i:2;a:2:{s:5:\"title\";s:37:\"Best Steam games by number of players\";s:10:\"numOfGames\";s:2:\"10\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(184, 'new_admin_email', 'vetnester@sdffd.com', 'yes'),
(229, 'user_role_editor', 'a:1:{s:11:\"ure_version\";s:4:\"4.47\";}', 'yes'),
(230, 'wp_backup_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'no'),
(231, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(243, 'ure_role_additional_options_values', 'a:1:{s:6:\"author\";a:0:{}}', 'yes'),
(255, 'wpfront-user-role-editor-db-version', '2.14.1', 'yes'),
(263, '_site_transient_timeout_browser_7c536d82012ce7c421315e5571540a1e', '1544101703', 'no'),
(264, '_site_transient_browser_7c536d82012ce7c421315e5571540a1e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.110\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(284, '_site_transient_timeout_browser_3381b75d8676232b406b8c7df71558ee', '1544384673', 'no'),
(285, '_site_transient_browser_3381b75d8676232b406b8c7df71558ee', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:13:\"56.0.3051.116\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(299, '_transient_timeout_plugin_slugs', '1543958947', 'no'),
(300, '_transient_plugin_slugs', 'a:7:{i:0;s:19:\"akismet/akismet.php\";i:1;s:19:\"bbpress/bbpress.php\";i:2;s:9:\"hello.php\";i:3;s:35:\"modula-best-grid-gallery/Modula.php\";i:4;s:21:\"steamtop/steamtop.php\";i:5;s:37:\"user-role-editor/user-role-editor.php\";i:6;s:42:\"wordpress-social-login/wp-social-login.php\";}', 'no'),
(303, 'widget_bbp_login_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'widget_bbp_views_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_bbp_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'widget_bbp_forums_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(307, 'widget_bbp_topics_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, 'widget_bbp_replies_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(309, 'widget_bbp_stats_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(310, '_bbp_private_forums', 'a:0:{}', 'yes'),
(311, '_bbp_hidden_forums', 'a:0:{}', 'yes'),
(312, '_bbp_db_version', '250', 'yes'),
(313, 'wsl_settings_welcome_panel_enabled', '1', 'yes'),
(314, 'wsl_settings_redirect_url', 'http://localhost/WP-GamingSite', 'yes'),
(315, 'wsl_settings_force_redirect_url', '2', 'yes'),
(316, 'wsl_settings_connect_with_label', 'Connect with:', 'yes'),
(317, 'wsl_settings_users_avatars', '1', 'yes'),
(318, 'wsl_settings_use_popup', '2', 'yes'),
(319, 'wsl_settings_widget_display', '1', 'yes'),
(320, 'wsl_settings_authentication_widget_css', '.wp-social-login-connect-with {}\n.wp-social-login-provider-list {}\n.wp-social-login-provider-list a {}\n.wp-social-login-provider-list img {}\n.wsl_connect_with_provider {}', 'yes'),
(321, 'wsl_settings_bouncer_registration_enabled', '1', 'yes'),
(322, 'wsl_settings_bouncer_authentication_enabled', '1', 'yes'),
(323, 'wsl_settings_bouncer_accounts_linking_enabled', '1', 'yes'),
(324, 'wsl_settings_bouncer_profile_completion_require_email', '2', 'yes'),
(325, 'wsl_settings_bouncer_profile_completion_change_username', '2', 'yes'),
(326, 'wsl_settings_bouncer_profile_completion_hook_extra_fields', '2', 'yes'),
(327, 'wsl_settings_bouncer_new_users_moderation_level', '1', 'yes'),
(328, 'wsl_settings_bouncer_new_users_membership_default_role', 'default', 'yes'),
(329, 'wsl_settings_bouncer_new_users_restrict_domain_enabled', '2', 'yes'),
(330, 'wsl_settings_bouncer_new_users_restrict_domain_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn\'t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(331, 'wsl_settings_bouncer_new_users_restrict_email_enabled', '2', 'yes'),
(332, 'wsl_settings_bouncer_new_users_restrict_email_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn\'t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(333, 'wsl_settings_bouncer_new_users_restrict_profile_enabled', '2', 'yes'),
(334, 'wsl_settings_bouncer_new_users_restrict_profile_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn\'t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(335, 'wsl_settings_contacts_import_facebook', '2', 'yes'),
(336, 'wsl_settings_contacts_import_google', '2', 'yes'),
(337, 'wsl_settings_contacts_import_twitter', '2', 'yes'),
(338, 'wsl_settings_contacts_import_live', '2', 'yes'),
(339, 'wsl_settings_contacts_import_linkedin', '2', 'yes'),
(340, 'wsl_settings_buddypress_enable_mapping', '2', 'yes'),
(341, 'wsl_settings_buddypress_xprofile_map', '', 'yes'),
(342, 'wsl_settings_Facebook_enabled', '0', 'yes'),
(343, 'wsl_settings_Google_enabled', '1', 'yes'),
(344, 'wsl_settings_Twitter_enabled', '0', 'yes'),
(345, 'wsl_components_core_enabled', '1', 'yes'),
(346, 'wsl_components_networks_enabled', '1', 'yes'),
(347, 'wsl_components_login-widget_enabled', '1', 'yes'),
(348, 'wsl_components_bouncer_enabled', '1', 'yes'),
(349, 'wsl_settings_Facebook_app_scope', 'email, public_profile, user_friends', 'yes'),
(350, 'wsl_settings_Google_app_scope', 'profile https://www.googleapis.com/auth/plus.profile.emails.read', 'yes'),
(351, 'wsl_settings_GitHub_app_scope', 'user:email', 'yes'),
(354, 'Modula_skip_fix', '1', 'yes'),
(355, 'rewrite_rules', 'a:172:{s:9:\"forums/?$\";s:25:\"index.php?post_type=forum\";s:39:\"forums/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=forum&feed=$matches[1]\";s:34:\"forums/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=forum&feed=$matches[1]\";s:26:\"forums/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=forum&paged=$matches[1]\";s:9:\"topics/?$\";s:25:\"index.php?post_type=topic\";s:39:\"topics/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=topic&feed=$matches[1]\";s:34:\"topics/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=topic&feed=$matches[1]\";s:26:\"topics/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=topic&paged=$matches[1]\";s:28:\"forums/forum/([^/]+)/edit/?$\";s:34:\"index.php?forum=$matches[1]&edit=1\";s:28:\"forums/topic/([^/]+)/edit/?$\";s:34:\"index.php?topic=$matches[1]&edit=1\";s:28:\"forums/reply/([^/]+)/edit/?$\";s:34:\"index.php?reply=$matches[1]&edit=1\";s:32:\"forums/topic-tag/([^/]+)/edit/?$\";s:38:\"index.php?topic-tag=$matches[1]&edit=1\";s:47:\"forums/user/([^/]+)/topics/page/?([0-9]{1,})/?$\";s:59:\"index.php?bbp_user=$matches[1]&bbp_tops=1&paged=$matches[2]\";s:48:\"forums/user/([^/]+)/replies/page/?([0-9]{1,})/?$\";s:59:\"index.php?bbp_user=$matches[1]&bbp_reps=1&paged=$matches[2]\";s:50:\"forums/user/([^/]+)/favorites/page/?([0-9]{1,})/?$\";s:59:\"index.php?bbp_user=$matches[1]&bbp_favs=1&paged=$matches[2]\";s:54:\"forums/user/([^/]+)/subscriptions/page/?([0-9]{1,})/?$\";s:59:\"index.php?bbp_user=$matches[1]&bbp_subs=1&paged=$matches[2]\";s:29:\"forums/user/([^/]+)/topics/?$\";s:41:\"index.php?bbp_user=$matches[1]&bbp_tops=1\";s:30:\"forums/user/([^/]+)/replies/?$\";s:41:\"index.php?bbp_user=$matches[1]&bbp_reps=1\";s:32:\"forums/user/([^/]+)/favorites/?$\";s:41:\"index.php?bbp_user=$matches[1]&bbp_favs=1\";s:36:\"forums/user/([^/]+)/subscriptions/?$\";s:41:\"index.php?bbp_user=$matches[1]&bbp_subs=1\";s:27:\"forums/user/([^/]+)/edit/?$\";s:37:\"index.php?bbp_user=$matches[1]&edit=1\";s:22:\"forums/user/([^/]+)/?$\";s:30:\"index.php?bbp_user=$matches[1]\";s:40:\"forums/view/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?bbp_view=$matches[1]&paged=$matches[2]\";s:27:\"forums/view/([^/]+)/feed/?$\";s:47:\"index.php?bbp_view=$matches[1]&feed=$matches[2]\";s:22:\"forums/view/([^/]+)/?$\";s:30:\"index.php?bbp_view=$matches[1]\";s:34:\"forums/search/page/?([0-9]{1,})/?$\";s:27:\"index.php?paged=$matches[1]\";s:16:\"forums/search/?$\";s:20:\"index.php?bbp_search\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"forums/forum/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"forums/forum/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"forums/forum/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"forums/forum/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"forums/forum/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"forums/forum/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"forums/forum/(.+?)/embed/?$\";s:38:\"index.php?forum=$matches[1]&embed=true\";s:31:\"forums/forum/(.+?)/trackback/?$\";s:32:\"index.php?forum=$matches[1]&tb=1\";s:51:\"forums/forum/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?forum=$matches[1]&feed=$matches[2]\";s:46:\"forums/forum/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?forum=$matches[1]&feed=$matches[2]\";s:39:\"forums/forum/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?forum=$matches[1]&paged=$matches[2]\";s:46:\"forums/forum/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?forum=$matches[1]&cpage=$matches[2]\";s:35:\"forums/forum/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?forum=$matches[1]&page=$matches[2]\";s:40:\"forums/topic/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"forums/topic/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"forums/topic/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"forums/topic/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"forums/topic/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"forums/topic/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"forums/topic/([^/]+)/embed/?$\";s:38:\"index.php?topic=$matches[1]&embed=true\";s:33:\"forums/topic/([^/]+)/trackback/?$\";s:32:\"index.php?topic=$matches[1]&tb=1\";s:53:\"forums/topic/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?topic=$matches[1]&feed=$matches[2]\";s:48:\"forums/topic/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?topic=$matches[1]&feed=$matches[2]\";s:41:\"forums/topic/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?topic=$matches[1]&paged=$matches[2]\";s:48:\"forums/topic/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?topic=$matches[1]&cpage=$matches[2]\";s:37:\"forums/topic/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?topic=$matches[1]&page=$matches[2]\";s:29:\"forums/topic/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"forums/topic/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"forums/topic/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"forums/topic/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"forums/topic/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"forums/topic/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"forums/reply/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"forums/reply/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"forums/reply/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"forums/reply/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"forums/reply/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"forums/reply/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"forums/reply/([^/]+)/embed/?$\";s:38:\"index.php?reply=$matches[1]&embed=true\";s:33:\"forums/reply/([^/]+)/trackback/?$\";s:32:\"index.php?reply=$matches[1]&tb=1\";s:41:\"forums/reply/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?reply=$matches[1]&paged=$matches[2]\";s:48:\"forums/reply/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?reply=$matches[1]&cpage=$matches[2]\";s:37:\"forums/reply/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?reply=$matches[1]&page=$matches[2]\";s:29:\"forums/reply/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"forums/reply/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"forums/reply/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"forums/reply/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"forums/reply/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"forums/reply/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"forums/topic-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?topic-tag=$matches[1]&feed=$matches[2]\";s:52:\"forums/topic-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?topic-tag=$matches[1]&feed=$matches[2]\";s:33:\"forums/topic-tag/([^/]+)/embed/?$\";s:42:\"index.php?topic-tag=$matches[1]&embed=true\";s:45:\"forums/topic-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?topic-tag=$matches[1]&paged=$matches[2]\";s:27:\"forums/topic-tag/([^/]+)/?$\";s:31:\"index.php?topic-tag=$matches[1]\";s:42:\"forums/search/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?bbp_search=$matches[1]&paged=$matches[2]\";s:24:\"forums/search/([^/]+)/?$\";s:32:\"index.php?bbp_search=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(356, 'Modula_db_version', '1.0', 'yes'),
(359, 'wsl_settings_Facebook_app_id', 'http://localhost/WP-GamingSite/wp-content/plugins/wordpress-social-login/hybridauth/?hauth.done=Facebook', 'yes'),
(360, 'wsl_settings_Facebook_app_secret', 'http://localhost/WP-GamingSite/wp-content/plugins/wordpress-social-login/hybridauth/?hauth_done=Facebook', 'yes'),
(361, 'wsl_settings_Google_app_id', '681554358641-gp42rof3i6b6p5vsf8rjiv356n4taejm.apps.googleusercontent.com', 'yes'),
(362, 'wsl_settings_Google_app_secret', 'eeDS7TDz0IkDZgTM8j0J5_vF', 'yes'),
(363, 'wsl_settings_Twitter_app_key', '', 'yes'),
(364, 'wsl_settings_Twitter_app_secret', '', 'yes'),
(365, 'wsl_settings_WordPress_enabled', '', 'yes'),
(366, 'wsl_settings_WordPress_app_id', '', 'yes'),
(367, 'wsl_settings_WordPress_app_secret', '', 'yes'),
(368, 'wsl_settings_Yahoo_enabled', '', 'yes'),
(369, 'wsl_settings_LinkedIn_enabled', '', 'yes'),
(370, 'wsl_settings_LinkedIn_app_key', '', 'yes'),
(371, 'wsl_settings_LinkedIn_app_secret', '', 'yes'),
(372, 'wsl_settings_Disqus_enabled', '', 'yes'),
(373, 'wsl_settings_Disqus_app_id', '', 'yes'),
(374, 'wsl_settings_Disqus_app_secret', '', 'yes'),
(375, 'wsl_settings_Instagram_enabled', '', 'yes'),
(376, 'wsl_settings_Instagram_app_id', '', 'yes'),
(377, 'wsl_settings_Instagram_app_secret', '', 'yes'),
(378, 'wsl_settings_Reddit_enabled', '', 'yes'),
(379, 'wsl_settings_Reddit_app_id', '', 'yes'),
(380, 'wsl_settings_Reddit_app_secret', '', 'yes'),
(381, 'wsl_settings_Foursquare_enabled', '', 'yes'),
(382, 'wsl_settings_Foursquare_app_id', '', 'yes'),
(383, 'wsl_settings_Foursquare_app_secret', '', 'yes'),
(384, 'wsl_settings_LastFM_enabled', '', 'yes'),
(385, 'wsl_settings_LastFM_app_key', '', 'yes'),
(386, 'wsl_settings_LastFM_app_secret', '', 'yes'),
(387, 'wsl_settings_Tumblr_enabled', '', 'yes'),
(388, 'wsl_settings_Tumblr_app_key', '', 'yes'),
(389, 'wsl_settings_Tumblr_app_secret', '', 'yes'),
(390, 'wsl_settings_Goodreads_enabled', '', 'yes'),
(391, 'wsl_settings_Goodreads_app_key', '', 'yes'),
(392, 'wsl_settings_Goodreads_app_secret', '', 'yes'),
(393, 'wsl_settings_Stackoverflow_enabled', '', 'yes'),
(394, 'wsl_settings_GitHub_enabled', '', 'yes'),
(395, 'wsl_settings_GitHub_app_id', '', 'yes'),
(396, 'wsl_settings_GitHub_app_secret', '', 'yes'),
(397, 'wsl_settings_Dribbble_enabled', '', 'yes'),
(398, 'wsl_settings_Dribbble_app_id', '', 'yes'),
(399, 'wsl_settings_Dribbble_app_secret', '', 'yes'),
(400, 'wsl_settings_500px_enabled', '', 'yes'),
(401, 'wsl_settings_500px_app_key', '', 'yes'),
(402, 'wsl_settings_500px_app_secret', '', 'yes'),
(403, 'wsl_settings_Skyrock_enabled', '', 'yes'),
(404, 'wsl_settings_Skyrock_app_key', '', 'yes'),
(405, 'wsl_settings_Skyrock_app_secret', '', 'yes'),
(406, 'wsl_settings_Mixi_enabled', '', 'yes'),
(407, 'wsl_settings_Steam_enabled', '', 'yes'),
(408, 'wsl_settings_Steam_app_key', '', 'yes'),
(409, 'wsl_settings_Steam_app_secret', '', 'yes'),
(410, 'wsl_settings_TwitchTV_enabled', '', 'yes'),
(411, 'wsl_settings_TwitchTV_app_id', '', 'yes'),
(412, 'wsl_settings_TwitchTV_app_secret', '', 'yes'),
(413, 'wsl_settings_Vkontakte_enabled', '', 'yes'),
(414, 'wsl_settings_Vkontakte_app_id', '', 'yes'),
(415, 'wsl_settings_Vkontakte_app_secret', '', 'yes'),
(416, 'wsl_settings_Mailru_enabled', '', 'yes'),
(417, 'wsl_settings_Mailru_app_id', '', 'yes'),
(418, 'wsl_settings_Mailru_app_secret', '', 'yes'),
(419, 'wsl_settings_Yandex_enabled', '', 'yes'),
(420, 'wsl_settings_Yandex_app_id', '', 'yes'),
(421, 'wsl_settings_Yandex_app_secret', '', 'yes'),
(422, 'wsl_settings_Odnoklassniki_enabled', '', 'yes'),
(423, 'wsl_settings_Odnoklassniki_app_id', '', 'yes'),
(424, 'wsl_settings_Odnoklassniki_app_secret', '', 'yes'),
(425, 'wsl_settings_AOL_enabled', '', 'yes'),
(426, 'wsl_settings_Live_enabled', '', 'yes'),
(427, 'wsl_settings_Live_app_id', '', 'yes'),
(428, 'wsl_settings_Live_app_secret', '', 'yes'),
(429, 'wsl_settings_PixelPin_enabled', '', 'yes'),
(430, 'wsl_settings_PixelPin_app_id', '', 'yes'),
(431, 'wsl_settings_PixelPin_app_secret', '', 'yes'),
(436, '_transient_timeout_modula-galleries-review', '1543879531', 'no'),
(437, '_transient_modula-galleries-review', '2', 'no'),
(440, '_site_transient_timeout_theme_roots', '1543859740', 'no'),
(441, '_site_transient_theme_roots', 'a:4:{s:10:\"gamecenter\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(442, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1543857942;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-21 07:25:37\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(443, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543857943;s:7:\"checked\";a:4:{s:10:\"gamecenter\";s:5:\"2.4.4\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"2.0\";s:7:\"updated\";s:19:\"2018-03-13 15:33:00\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/2.0/pl_PL.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2018-03-28 06:00:45\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.7/pl_PL.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentysixteen\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2015-12-07 22:27:53\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentysixteen/1.5/pl_PL.zip\";s:10:\"autoupdate\";b:1;}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(444, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543872547;s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:6:\"3.1.11\";s:7:\"updated\";s:19:\"2016-05-12 18:05:47\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/pl_PL.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"bbpress/bbpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/bbpress\";s:4:\"slug\";s:7:\"bbpress\";s:6:\"plugin\";s:19:\"bbpress/bbpress.php\";s:11:\"new_version\";s:6:\"2.5.14\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/bbpress/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/bbpress.2.5.14.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/bbpress/assets/icon-256x256.png?rev=1534011\";s:2:\"1x\";s:51:\"https://ps.w.org/bbpress/assets/icon.svg?rev=978290\";s:3:\"svg\";s:51:\"https://ps.w.org/bbpress/assets/icon.svg?rev=978290\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/bbpress/assets/banner-1544x500.png?rev=567403\";s:2:\"1x\";s:61:\"https://ps.w.org/bbpress/assets/banner-772x250.png?rev=478663\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/bbpress/assets/banner-1544x500-rtl.png?rev=1534011\";s:2:\"1x\";s:66:\"https://ps.w.org/bbpress/assets/banner-772x250-rtl.png?rev=1534011\";}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"modula-best-grid-gallery/Modula.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/modula-best-grid-gallery\";s:4:\"slug\";s:24:\"modula-best-grid-gallery\";s:6:\"plugin\";s:35:\"modula-best-grid-gallery/Modula.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/modula-best-grid-gallery/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/modula-best-grid-gallery.1.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/modula-best-grid-gallery/assets/icon-256x256.jpg?rev=1634322\";s:2:\"1x\";s:77:\"https://ps.w.org/modula-best-grid-gallery/assets/icon-256x256.jpg?rev=1634322\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/modula-best-grid-gallery/assets/banner-772x250.jpg?rev=1634322\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:4:\"4.47\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/user-role-editor.4.47.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"wordpress-social-login/wp-social-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/wordpress-social-login\";s:4:\"slug\";s:22:\"wordpress-social-login\";s:6:\"plugin\";s:42:\"wordpress-social-login/wp-social-login.php\";s:11:\"new_version\";s:5:\"2.3.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/wordpress-social-login/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-social-login.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/wordpress-social-login/assets/icon-256x256.png?rev=1013188\";s:2:\"1x\";s:75:\"https://ps.w.org/wordpress-social-login/assets/icon-128x128.png?rev=1013190\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/wordpress-social-login/assets/banner-772x250.png?rev=503808\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 5, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(6, 6, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(7, 7, '_edit_lock', '1542728972:1'),
(9, 8, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(11, 9, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(13, 10, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(14, 16, '_menu_item_type', 'custom'),
(15, 16, '_menu_item_menu_item_parent', '0'),
(16, 16, '_menu_item_object_id', '16'),
(17, 16, '_menu_item_object', 'custom'),
(18, 16, '_menu_item_target', ''),
(19, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 16, '_menu_item_xfn', ''),
(21, 16, '_menu_item_url', 'http://localhost/WP-GamingSite'),
(22, 17, '_menu_item_type', 'post_type'),
(23, 17, '_menu_item_menu_item_parent', '0'),
(24, 17, '_menu_item_object_id', '5'),
(25, 17, '_menu_item_object', 'page'),
(26, 17, '_menu_item_target', ''),
(27, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 17, '_menu_item_xfn', ''),
(29, 17, '_menu_item_url', ''),
(30, 18, '_menu_item_type', 'post_type'),
(31, 18, '_menu_item_menu_item_parent', '0'),
(32, 18, '_menu_item_object_id', '6'),
(33, 18, '_menu_item_object', 'page'),
(34, 18, '_menu_item_target', ''),
(35, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 18, '_menu_item_xfn', ''),
(37, 18, '_menu_item_url', ''),
(38, 19, '_menu_item_type', 'post_type'),
(39, 19, '_menu_item_menu_item_parent', '0'),
(40, 19, '_menu_item_object_id', '8'),
(41, 19, '_menu_item_object', 'page'),
(42, 19, '_menu_item_target', ''),
(43, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 19, '_menu_item_xfn', ''),
(45, 19, '_menu_item_url', ''),
(46, 20, '_menu_item_type', 'post_type'),
(47, 20, '_menu_item_menu_item_parent', '0'),
(48, 20, '_menu_item_object_id', '9'),
(49, 20, '_menu_item_object', 'page'),
(50, 20, '_menu_item_target', ''),
(51, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 20, '_menu_item_xfn', ''),
(53, 20, '_menu_item_url', ''),
(54, 21, '_menu_item_type', 'post_type'),
(55, 21, '_menu_item_menu_item_parent', '0'),
(56, 21, '_menu_item_object_id', '10'),
(57, 21, '_menu_item_object', 'page'),
(58, 21, '_menu_item_target', ''),
(59, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 21, '_menu_item_xfn', ''),
(61, 21, '_menu_item_url', ''),
(62, 7, '_wp_trash_meta_status', 'publish'),
(63, 7, '_wp_trash_meta_time', '1542728990'),
(64, 22, '_wp_trash_meta_status', 'publish'),
(65, 22, '_wp_trash_meta_time', '1542729004'),
(68, 10, '_edit_lock', '1543496940:1'),
(69, 10, 'single_layout', '0'),
(70, 10, '_edit_last', '1'),
(71, 10, '_wp_page_template', 'default'),
(72, 5, '_edit_lock', '1543497120:1'),
(73, 5, '_edit_last', '1'),
(74, 5, '_wp_page_template', 'default'),
(75, 5, 'single_layout', '0'),
(76, 35, '_edit_lock', '1543780602:1'),
(77, 35, '_edit_last', '1'),
(78, 35, '_wp_page_template', 'default'),
(79, 35, 'single_layout', '0'),
(80, 37, '_wp_attached_file', '2018/12/unnamed-file.jpeg'),
(81, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:302;s:6:\"height\";i:258;s:4:\"file\";s:25:\"2018/12/unnamed-file.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"unnamed-file-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"unnamed-file-300x256.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(82, 38, '_wp_attached_file', '2018/12/unnamed-file.jpg'),
(83, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:192;s:4:\"file\";s:24:\"2018/12/unnamed-file.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"unnamed-file-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(84, 39, '_wp_attached_file', '2018/12/1123.png'),
(85, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:16:\"2018/12/1123.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"1123-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"1123-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"1123-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"1123-1024x682.png\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"1123-663x270.png\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(86, 40, '_wp_attached_file', '2018/12/ALONE.png'),
(87, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:898;s:6:\"height\";i:1042;s:4:\"file\";s:17:\"2018/12/ALONE.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ALONE-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ALONE-259x300.png\";s:5:\"width\";i:259;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"ALONE-768x891.png\";s:5:\"width\";i:768;s:6:\"height\";i:891;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"ALONE-882x1024.png\";s:5:\"width\";i:882;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"ALONE-663x270.png\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(88, 41, '_wp_attached_file', '2018/12/DO_IT.jpg'),
(89, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2018/12/DO_IT.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"DO_IT-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"DO_IT-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"DO_IT-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"DO_IT-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"DO_IT-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(90, 42, '_wp_attached_file', '2018/12/edinorog.png'),
(91, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:251;s:4:\"file\";s:20:\"2018/12/edinorog.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"edinorog-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(92, 43, '_wp_attached_file', '2018/12/АХТЫ.jpg'),
(93, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:340;s:4:\"file\";s:20:\"2018/12/АХТЫ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"АХТЫ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"АХТЫ-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"АХТЫ-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(94, 44, '_wp_attached_file', '2018/12/БЕГУ.jpg'),
(95, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:527;s:4:\"file\";s:20:\"2018/12/БЕГУ.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"БЕГУ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"БЕГУ-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"БЕГУ-768x506.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:506;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"БЕГУ-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(96, 45, '_wp_attached_file', '2018/12/Белка.jpg'),
(97, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:747;s:6:\"height\";i:550;s:4:\"file\";s:22:\"2018/12/Белка.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Белка-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Белка-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"Белка-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(98, 46, '_wp_attached_file', '2018/12/бля....jpg'),
(99, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:604;s:4:\"file\";s:21:\"2018/12/бля....jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"бля...-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"бля...-206x300.jpg\";s:5:\"width\";i:206;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"бля...-415x270.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(100, 47, '_wp_attached_file', '2018/12/БОМЖ.jpg'),
(101, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:511;s:6:\"height\";i:604;s:4:\"file\";s:20:\"2018/12/БОМЖ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"БОМЖ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"БОМЖ-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"БОМЖ-511x270.jpg\";s:5:\"width\";i:511;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(102, 48, '_wp_attached_file', '2018/12/БРОВЬ.jpg'),
(103, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:218;s:6:\"height\";i:235;s:4:\"file\";s:22:\"2018/12/БРОВЬ.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"БРОВЬ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(104, 49, '_wp_attached_file', '2018/12/ВАСЗАМЕТИЛИ.png'),
(105, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:561;s:4:\"file\";s:34:\"2018/12/ВАСЗАМЕТИЛИ.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"ВАСЗАМЕТИЛИ-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"ВАСЗАМЕТИЛИ-300x234.png\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"ВАСЗАМЕТИЛИ-663x270.png\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(106, 50, '_wp_attached_file', '2018/12/ВО_СЛАВУ_САТАНЕ.jpg'),
(107, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:243;s:4:\"file\";s:40:\"2018/12/ВО_СЛАВУ_САТАНЕ.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"ВО_СЛАВУ_САТАНЕ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"ВО_СЛАВУ_САТАНЕ-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(108, 51, '_wp_attached_file', '2018/12/Воображение.jpg'),
(109, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:360;s:4:\"file\";s:34:\"2018/12/Воображение.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Воображение-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Воображение-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"Воображение-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(110, 52, '_wp_attached_file', '2018/12/ГАРООЛЬД.jpg'),
(111, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:320;s:6:\"height\";i:180;s:4:\"file\";s:28:\"2018/12/ГАРООЛЬД.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"ГАРООЛЬД-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"ГАРООЛЬД-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(112, 53, '_wp_attached_file', '2018/12/Гендальф.jpg'),
(113, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:28:\"2018/12/Гендальф.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Гендальф-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Гендальф-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Гендальф-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Гендальф-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"Гендальф-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(114, 54, '_wp_attached_file', '2018/12/ГОМЕР.jpg'),
(115, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:666;s:4:\"file\";s:22:\"2018/12/ГОМЕР.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ГОМЕР-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ГОМЕР-293x300.jpg\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"ГОМЕР-650x270.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(116, 55, '_wp_attached_file', '2018/12/ДА-ЗАТКНИСЬ-ТЫ-УЖЕ.jpg'),
(117, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:628;s:4:\"file\";s:45:\"2018/12/ДА-ЗАТКНИСЬ-ТЫ-УЖЕ.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"ДА-ЗАТКНИСЬ-ТЫ-УЖЕ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"ДА-ЗАТКНИСЬ-ТЫ-УЖЕ-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"ДА-ЗАТКНИСЬ-ТЫ-УЖЕ-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"ДА-ЗАТКНИСЬ-ТЫ-УЖЕ-1024x536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:45:\"ДА-ЗАТКНИСЬ-ТЫ-УЖЕ-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(118, 56, '_wp_attached_file', '2018/12/ДАИХУЙСНЕЙ.jpg'),
(119, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:424;s:6:\"height\";i:425;s:4:\"file\";s:32:\"2018/12/ДАИХУЙСНЕЙ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"ДАИХУЙСНЕЙ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"ДАИХУЙСНЕЙ-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"ДАИХУЙСНЕЙ-424x270.jpg\";s:5:\"width\";i:424;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(120, 57, '_wp_attached_file', '2018/12/Дайте-кирпич.jpg'),
(121, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:379;s:4:\"file\";s:35:\"2018/12/Дайте-кирпич.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Дайте-кирпич-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Дайте-кирпич-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"Дайте-кирпич-500x270.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 58, '_wp_attached_file', '2018/12/ДействительноОригинал.jpg'),
(123, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:284;s:4:\"file\";s:54:\"2018/12/ДействительноОригинал.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"ДействительноОригинал-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"ДействительноОригинал-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:54:\"ДействительноОригинал-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 59, '_wp_attached_file', '2018/12/Действительно.jpg'),
(125, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:261;s:4:\"file\";s:38:\"2018/12/Действительно.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Действительно-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Действительно-300x196.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 60, '_wp_attached_file', '2018/12/Долбакхмкхмбы.jpg'),
(127, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:272;s:4:\"file\";s:38:\"2018/12/Долбакхмкхмбы.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Долбакхмкхмбы-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Долбакхмкхмбы-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:38:\"Долбакхмкхмбы-600x270.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 61, '_wp_attached_file', '2018/12/Дратути.jpg'),
(129, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:576;s:6:\"height\";i:339;s:4:\"file\";s:26:\"2018/12/Дратути.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Дратути-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Дратути-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"Дратути-576x270.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 62, '_wp_attached_file', '2018/12/Задумчивый_смайлик.jpg'),
(131, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:760;s:4:\"file\";s:47:\"2018/12/Задумчивый_смайлик.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"Задумчивый_смайлик-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"Задумчивый_смайлик-300x223.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"Задумчивый_смайлик-768x570.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"Задумчивый_смайлик-1024x760.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:760;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:47:\"Задумчивый_смайлик-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 63, '_wp_attached_file', '2018/12/Илюминаты.jpg'),
(133, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:91;s:6:\"height\";i:91;s:4:\"file\";s:30:\"2018/12/Илюминаты.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(134, 64, '_wp_attached_file', '2018/12/КАЕФ.jpg'),
(135, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:184;s:6:\"height\";i:184;s:4:\"file\";s:20:\"2018/12/КАЕФ.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"КАЕФ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 65, '_wp_attached_file', '2018/12/КОНЬ.jpg'),
(137, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:261;s:4:\"file\";s:20:\"2018/12/КОНЬ.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"КОНЬ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"КОНЬ-300x196.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 66, '_wp_attached_file', '2018/12/Костыли.jpg'),
(139, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:482;s:6:\"height\";i:360;s:4:\"file\";s:26:\"2018/12/Костыли.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Костыли-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Костыли-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"Костыли-482x270.jpg\";s:5:\"width\";i:482;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(140, 67, '_wp_attached_file', '2018/12/купер-плачет.jpg'),
(141, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:35:\"2018/12/купер-плачет.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"купер-плачет-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"купер-плачет-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"купер-плачет-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"купер-плачет-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 68, '_wp_attached_file', '2018/12/Ленивец.jpg'),
(143, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:604;s:4:\"file\";s:26:\"2018/12/Ленивец.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Ленивец-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Ленивец-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"Ленивец-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 69, '_wp_attached_file', '2018/12/мудизм.jpg'),
(145, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1024;s:4:\"file\";s:24:\"2018/12/мудизм.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"мудизм-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"мудизм-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"мудизм-768x614.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"мудизм-1024x819.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:819;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"мудизм-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 70, '_wp_attached_file', '2018/12/МЯСО.jpg'),
(147, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:436;s:4:\"file\";s:20:\"2018/12/МЯСО.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"МЯСО-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"МЯСО-300x222.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"МЯСО-590x270.jpg\";s:5:\"width\";i:590;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 71, '_wp_attached_file', '2018/12/МЯСО_ШАБЛОН.jpg'),
(149, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:438;s:4:\"file\";s:33:\"2018/12/МЯСО_ШАБЛОН.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"МЯСО_ШАБЛОН-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"МЯСО_ШАБЛОН-300x219.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"МЯСО_ШАБЛОН-600x270.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 72, '_wp_attached_file', '2018/12/НАХУЙ.jpg'),
(151, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:90;s:4:\"file\";s:22:\"2018/12/НАХУЙ.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 73, '_wp_attached_file', '2018/12/Негр.jpg'),
(153, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:558;s:6:\"height\";i:293;s:4:\"file\";s:20:\"2018/12/Негр.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Негр-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Негр-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"Негр-558x270.jpg\";s:5:\"width\";i:558;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(154, 74, '_wp_attached_file', '2018/12/НЕЛЕЗЬБЛ.jpg'),
(155, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:360;s:4:\"file\";s:28:\"2018/12/НЕЛЕЗЬБЛ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"НЕЛЕЗЬБЛ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"НЕЛЕЗЬБЛ-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"НЕЛЕЗЬБЛ-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 75, '_wp_attached_file', '2018/12/НИХУЯ.jpg'),
(157, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:297;s:4:\"file\";s:22:\"2018/12/НИХУЯ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"НИХУЯ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"НИХУЯ-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"НИХУЯ-550x270.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 76, '_wp_attached_file', '2018/12/НИХУЯСЕ.jpeg'),
(159, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:635;s:6:\"height\";i:359;s:4:\"file\";s:27:\"2018/12/НИХУЯСЕ.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"НИХУЯСЕ-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"НИХУЯСЕ-300x170.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"НИХУЯСЕ-635x270.jpeg\";s:5:\"width\";i:635;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 77, '_wp_attached_file', '2018/12/Но....jpg'),
(161, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:192;s:4:\"file\";s:19:\"2018/12/Но....jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Но...-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 78, '_wp_attached_file', '2018/12/О_Привет.jpg'),
(163, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:296;s:6:\"height\";i:394;s:4:\"file\";s:27:\"2018/12/О_Привет.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"О_Привет-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"О_Привет-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"О_Привет-296x270.jpg\";s:5:\"width\";i:296;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 79, '_wp_attached_file', '2018/12/Обезьянка1.jpg'),
(165, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:453;s:6:\"height\";i:604;s:4:\"file\";s:31:\"2018/12/Обезьянка1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Обезьянка1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Обезьянка1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"Обезьянка1-453x270.jpg\";s:5:\"width\";i:453;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 80, '_wp_attached_file', '2018/12/Обезьянка2.jpg'),
(167, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2018/12/Обезьянка2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Обезьянка2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Обезьянка2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"Обезьянка2-600x270.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 81, '_wp_attached_file', '2018/12/ОБОЖЕ.jpg'),
(169, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:383;s:4:\"file\";s:22:\"2018/12/ОБОЖЕ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ОБОЖЕ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ОБОЖЕ-203x300.jpg\";s:5:\"width\";i:203;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"ОБОЖЕ-259x270.jpg\";s:5:\"width\";i:259;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(170, 82, '_wp_attached_file', '2018/12/ОмскаяПтица.jpg'),
(171, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:457;s:4:\"file\";s:34:\"2018/12/ОмскаяПтица.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"ОмскаяПтица-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"ОмскаяПтица-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"ОмскаяПтица-457x270.jpg\";s:5:\"width\";i:457;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 83, '_wp_attached_file', '2018/12/ОСЁЛ.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(173, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2018/12/ОСЁЛ.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ОСЁЛ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 84, '_wp_attached_file', '2018/12/ОХОХОХ.jpg'),
(175, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2018/12/ОХОХОХ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ОХОХОХ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ОХОХОХ-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"ОХОХОХ-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 85, '_wp_attached_file', '2018/12/палка_в_колесо.jpg'),
(177, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:700;s:4:\"file\";s:38:\"2018/12/палка_в_колесо.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"палка_в_колесо-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"палка_в_колесо-192x300.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:38:\"палка_в_колесо-448x270.jpg\";s:5:\"width\";i:448;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 86, '_wp_attached_file', '2018/12/Пиздец....jpg'),
(179, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:164;s:6:\"height\";i:164;s:4:\"file\";s:27:\"2018/12/Пиздец....jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Пиздец...-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 87, '_wp_attached_file', '2018/12/ПЛАЧЕТЖАБА.jpg'),
(181, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:597;s:4:\"file\";s:32:\"2018/12/ПЛАЧЕТЖАБА.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"ПЛАЧЕТЖАБА-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"ПЛАЧЕТЖАБА-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"ПЛАЧЕТЖАБА-600x270.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 88, '_wp_attached_file', '2018/12/ПОВАР.jpg'),
(183, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:301;s:6:\"height\";i:301;s:4:\"file\";s:22:\"2018/12/ПОВАР.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ПОВАР-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ПОВАР-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"ПОВАР-301x270.jpg\";s:5:\"width\";i:301;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 89, '_wp_attached_file', '2018/12/ПОДМИГНУЛ.jpg'),
(185, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:453;s:6:\"height\";i:300;s:4:\"file\";s:30:\"2018/12/ПОДМИГНУЛ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"ПОДМИГНУЛ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"ПОДМИГНУЛ-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"ПОДМИГНУЛ-453x270.jpg\";s:5:\"width\";i:453;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 90, '_wp_attached_file', '2018/12/Позже.jpg'),
(187, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2018/12/Позже.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Позже-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 91, '_wp_attached_file', '2018/12/ПФФФ.jpg'),
(189, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:313;s:4:\"file\";s:20:\"2018/12/ПФФФ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ПФФФ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"ПФФФ-300x235.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"ПФФФ-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 92, '_wp_attached_file', '2018/12/рукалицо.jpg'),
(191, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:389;s:4:\"file\";s:28:\"2018/12/рукалицо.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"рукалицо-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"рукалицо-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"рукалицо-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 93, '_wp_attached_file', '2018/12/РУКИ.jpg'),
(193, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:72;s:6:\"height\";i:96;s:4:\"file\";s:20:\"2018/12/РУКИ.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 94, '_wp_attached_file', '2018/12/Рыба_из_СБ.jpg'),
(195, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:397;s:4:\"file\";s:30:\"2018/12/Рыба_из_СБ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Рыба_из_СБ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Рыба_из_СБ-300x238.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"Рыба_из_СБ-500x270.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(196, 95, '_wp_attached_file', '2018/12/РЫДАААЕТ.jpg'),
(197, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:444;s:6:\"height\";i:436;s:4:\"file\";s:28:\"2018/12/РЫДАААЕТ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"РЫДАААЕТ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"РЫДАААЕТ-300x295.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"РЫДАААЕТ-444x270.jpg\";s:5:\"width\";i:444;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 96, '_wp_attached_file', '2018/12/РЫДАЕТ.png'),
(199, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:24:\"2018/12/РЫДАЕТ.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"РЫДАЕТ-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 97, '_wp_attached_file', '2018/12/СДАЛ.jpg'),
(201, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2018/12/СДАЛ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"СДАЛ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"СДАЛ-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"СДАЛ-600x270.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 98, '_wp_attached_file', '2018/12/Смеются_они.jpg'),
(203, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:494;s:6:\"height\";i:241;s:4:\"file\";s:33:\"2018/12/Смеются_они.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Смеются_они-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Смеются_они-300x146.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 99, '_wp_attached_file', '2018/12/Стол.jpeg'),
(205, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:370;s:4:\"file\";s:21:\"2018/12/Стол.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Стол-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Стол-300x185.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"Стол-600x270.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 100, '_wp_attached_file', '2018/12/Тайлер.jpg'),
(207, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:24:\"2018/12/Тайлер.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Тайлер-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Тайлер-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Тайлер-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Тайлер-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"Тайлер-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 101, '_wp_attached_file', '2018/12/ТРИМЕДВЕДЯ.jpg'),
(209, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:101;s:4:\"file\";s:32:\"2018/12/ТРИМЕДВЕДЯ.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"ТРИМЕДВЕДЯ-150x101.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:101;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 102, '_wp_attached_file', '2018/12/Ты-был-мне-как-брат.jpeg'),
(211, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:346;s:4:\"file\";s:47:\"2018/12/Ты-был-мне-как-брат.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"Ты-был-мне-как-брат-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"Ты-был-мне-как-брат-300x173.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:47:\"Ты-был-мне-как-брат-600x270.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 103, '_wp_attached_file', '2018/12/Ты_серьезно.jpg'),
(213, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:33:\"2018/12/Ты_серьезно.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Ты_серьезно-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Ты_серьезно-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Ты_серьезно-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"Ты_серьезно-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 104, '_wp_attached_file', '2018/12/Фрай.jpg'),
(215, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2018/12/Фрай.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Фрай-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Фрай-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"Фрай-640x270.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 105, '_wp_attached_file', '2018/12/ХМ.jpg'),
(217, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:539;s:6:\"height\";i:447;s:4:\"file\";s:16:\"2018/12/ХМ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ХМ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ХМ-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"ХМ-539x270.jpg\";s:5:\"width\";i:539;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 106, '_wp_attached_file', '2018/12/ЧУТЬ_ЧУТЬ.jpg'),
(219, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:587;s:6:\"height\";i:604;s:4:\"file\";s:29:\"2018/12/ЧУТЬ_ЧУТЬ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"ЧУТЬ_ЧУТЬ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"ЧУТЬ_ЧУТЬ-292x300.jpg\";s:5:\"width\";i:292;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"ЧУТЬ_ЧУТЬ-587x270.jpg\";s:5:\"width\";i:587;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 107, '_wp_attached_file', '2018/12/ШАБЛОН.jpg'),
(221, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:386;s:4:\"file\";s:24:\"2018/12/ШАБЛОН.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ШАБЛОН-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ШАБЛОН-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"ШАБЛОН-600x270.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(222, 108, '_wp_attached_file', '2018/12/Шаблон_01.jpg'),
(223, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:825;s:4:\"file\";s:27:\"2018/12/Шаблон_01.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Шаблон_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Шаблон_01-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"Шаблон_01-550x270.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 109, '_wp_attached_file', '2018/12/ШАБЛОН2.jpg'),
(225, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:410;s:4:\"file\";s:25:\"2018/12/ШАБЛОН2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"ШАБЛОН2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"ШАБЛОН2-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"ШАБЛОН2-600x270.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(226, 110, '_wp_attached_file', '2018/12/ШТО.jpg'),
(227, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2018/12/ШТО.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"ШТО-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"ШТО-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"ШТО-600x270.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 111, '_wp_attached_file', '2018/12/Эксперт.jpg'),
(229, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:219;s:6:\"height\";i:360;s:4:\"file\";s:26:\"2018/12/Эксперт.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Эксперт-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Эксперт-183x300.jpg\";s:5:\"width\";i:183;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"Эксперт-219x270.jpg\";s:5:\"width\";i:219;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 112, '_wp_attached_file', '2018/12/ЭМ....jpg'),
(231, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:786;s:6:\"height\";i:438;s:4:\"file\";s:19:\"2018/12/ЭМ....jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"ЭМ...-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ЭМ...-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"ЭМ...-768x428.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:428;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"ЭМ...-663x270.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 113, '_wp_attached_file', '2018/12/ЭТО-ШЕДЕВР.jpeg'),
(233, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:284;s:6:\"height\";i:177;s:4:\"file\";s:32:\"2018/12/ЭТО-ШЕДЕВР.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"ЭТО-ШЕДЕВР-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 114, '_wp_attached_file', '2018/12/Я_Сделаль.jpg'),
(235, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:502;s:6:\"height\";i:604;s:4:\"file\";s:29:\"2018/12/Я_Сделаль.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Я_Сделаль-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Я_Сделаль-249x300.jpg\";s:5:\"width\";i:249;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"Я_Сделаль-502x270.jpg\";s:5:\"width\";i:502;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 115, '_wp_attached_file', '2018/12/Ярость.jpg'),
(237, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:381;s:4:\"file\";s:24:\"2018/12/Ярость.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Ярость-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Ярость-300x286.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:286;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"Ярость-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 8, '_edit_lock', '1543780703:1'),
(239, 8, '_edit_last', '1'),
(240, 8, '_wp_page_template', 'default'),
(241, 8, 'single_layout', '0'),
(242, 118, '_edit_lock', '1543781242:1'),
(243, 118, '_edit_last', '1'),
(244, 118, '_bbp_last_active_time', '2018-12-02 21:04:10'),
(245, 118, '_bbp_forum_subforum_count', '0'),
(246, 118, '_bbp_reply_count', '0'),
(247, 118, '_bbp_total_reply_count', '0'),
(248, 118, '_bbp_topic_count', '1'),
(249, 118, '_bbp_total_topic_count', '1'),
(250, 118, '_bbp_topic_count_hidden', '0'),
(251, 120, '_bbp_forum_id', '118'),
(252, 120, '_bbp_topic_id', '120'),
(253, 120, '_bbp_author_ip', '::1'),
(254, 120, '_bbp_last_reply_id', '0'),
(255, 120, '_bbp_last_active_id', '120'),
(256, 120, '_bbp_last_active_time', '2018-12-02 21:04:10'),
(257, 120, '_bbp_reply_count', '0'),
(258, 120, '_bbp_reply_count_hidden', '0'),
(259, 120, '_bbp_voice_count', '1'),
(260, 118, '_bbp_last_topic_id', '120'),
(261, 118, '_bbp_last_reply_id', '120'),
(262, 118, '_bbp_last_active_id', '120');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-20 16:44:50', '2018-11-20 15:44:50', 'Witaj w WordPressie. To jest twój pierwszy wpis. Zmodyfikuj go lub usuń, a następnie rozpocznij pisanie!', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2018-11-20 16:44:50', '2018-11-20 15:44:50', '', 0, 'http://localhost/WP-GamingSite/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-20 16:44:50', '2018-11-20 15:44:50', 'To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników umieszcza na swoich witrynach stronę z informacjami o sobie, dzięki którym przedstawiają się odwiedzającym ich witrynę. Taka strona może zawierać na przykład taki tekst:\n\n<blockquote>Cześć! Za dnia jestem gońcem, a nocą próbuję swoich sił w aktorstwie. To jest moja witryna. Mieszkam w Los Angeles, mam wspaniałego psa, który wabi się Jack i lubię pi&#241;a coladę (a także spacery, gdy pada deszcz).</blockquote>\n\n... lub taki:\n\n<blockquote>Firma Wihajstry XYZ została założona w 1971 roku i od początku swojego istnienia zajmuje się produkcją najlepszych wihajstrów. W naszej siedzibie w Gotham City pracuje ponad 2000 osób, które zajmują się robieniem całej masy fantastycznych rzeczy dla mieszkańców Gotham.</blockquote>\n\nJako nowy użytkownik WordPressa powinieneś przejść do <a href=\"http://localhost/WP-GamingSite/wp-admin/\">swojego kokpitu</a>, aby usunąć tę stronę i utworzyć nowe strony z własną treścią. Baw się dobrze!', 'Przykładowa strona', '', 'publish', 'closed', 'open', '', 'przykladowa-strona', '', '', '2018-11-20 16:44:50', '2018-11-20 15:44:50', '', 0, 'http://localhost/WP-GamingSite/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-20 16:44:50', '2018-11-20 15:44:50', '<h2>Kim jesteśmy</h2><p>Adres naszej strony internetowej to: http://localhost/WP-GamingSite.</p><h2>Jakie dane osobiste zbieramy i dlaczego je zbieramy</h2><h3>Komentarze</h3><p>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><p>Zanonimizowany ciąg znaków stworzony na podstawie twojego adresu email (tak zwany hash) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jej używasz. Polityka prywatności usługi Gravatar jest dostępna tutaj: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><h3>Media</h3><p>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><h3>Formularze kontaktowe</h3><h3>Ciasteczka</h3><p>Jeśli zostawisz na naszej witrynie komentarz, będziesz mógł wybrać opcję zapisu twojej nazwy, adresu email i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Te ciasteczka wygasają po roku.</p><p>Jeśli masz konto i zalogujesz się na tej witrynie, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. To ciasteczko nie zawiera żadnych danych osobistych i zostanie wyrzucone kiedy zamkniesz przeglądarkę.</p><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><h3>Osadzone treści z innych witryn</h3><p>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><h3>Analiza statystyk</h3><h2>Z kim dzielimy się danymi</h2><h2>Jak długo przechowujemy twoje dane</h2><p>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><h2>Jakie masz prawa do swoich danych</h2><p>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><h2>Gdzie przesyłamy dane</h2><p>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><h2>Twoje dane kontaktowe</h2><h2>Informacje dodatkowe</h2><h3>Jak chronimy twoje dane?</h3><h3>Jakie mamy obowiązujące procedury w przypadku naruszenia prywatności danych</h3><h3>Od jakich stron trzecich otrzymujemy dane</h3><h3>Jakie automatyczne podejmowanie decyzji i/lub tworzenie profili przeprowadzamy z użyciem danych użytkownika</h3><h3>Branżowe wymogi regulacyjne dotyczące ujawniania informacji</h3>', 'Polityka prywatności', '', 'draft', 'closed', 'open', '', 'polityka-prywatnosci', '', '', '2018-11-20 16:44:50', '2018-11-20 15:44:50', '', 0, 'http://localhost/WP-GamingSite/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '<img class=\"size-medium wp-image-31 alignleft\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/class_Highlight_Valkyrie-273x300.png\" alt=\"\" width=\"273\" height=\"300\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Vitalii Nesterchuk</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor</p>\r\n<p style=\"text-align: center;\">Favourite ganres: MMORPG, FPS, MOBA</p>\r\n<p style=\"text-align: center;\">Favourite games: Dota 2, TERA Online, CS:GO</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\"><img class=\"size-medium wp-image-36 alignright\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/witcher-300x288.png\" alt=\"\" width=\"300\" height=\"288\" /></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Mykchailo Tarasiuk</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor</p>\r\n<p style=\"text-align: center;\">Favourite ganres:  FPS, RPG</p>\r\n<p style=\"text-align: center;\">Favourite games: CS:GO, Witcher 3</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-medium wp-image-38 alignleft\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/Dovahkiin-281x300.png\" alt=\"\" width=\"281\" height=\"300\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Vlad Utkin</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor, teamlead</p>\r\n<p style=\"text-align: center;\">Favourite ganres: RPG</p>\r\n<p style=\"text-align: center;\">Favourite games: Witcher 3, TES V: Skyrim</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\"><img class=\"size-medium wp-image-39 alignright\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/wow-300x240.png\" alt=\"\" width=\"300\" height=\"240\" /></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Iaroslav Vasiletc</p>\r\n<p style=\"text-align: center;\">Editor, designer, tester</p>\r\n<p style=\"text-align: center;\">Favourite ganres: MMORPG</p>\r\n<p style=\"text-align: center;\">Favourite games: WOW, Lineage 2</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>', 'The Team', '', 'publish', 'closed', 'closed', '', 'the-team', '', '', '2018-11-29 14:11:37', '2018-11-29 13:11:37', '', 0, 'http://localhost/WP-GamingSite/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Reviews', '', 'publish', 'closed', 'closed', '', 'reviews', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 0, 'http://localhost/WP-GamingSite/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            5,\n            6,\n            8,\n            9,\n            10\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:49\"\n    },\n    \"nav_menu[-549754579]\": {\n        \"value\": {\n            \"name\": \"Main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:09\"\n    },\n    \"nav_menu_item[-714231903]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/WP-GamingSite\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Strona g\\u0142\\u00f3wna\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"W\\u0142asny odno\\u015bnik\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:09\"\n    },\n    \"nav_menu_item[-1583961893]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"The team\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=5\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"The team\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:09\"\n    },\n    \"nav_menu_item[-1197747097]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Reviews\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=6\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Reviews\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:09\"\n    },\n    \"nav_menu_item[-985910876]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Gallery\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=8\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Gallery\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:49\"\n    },\n    \"nav_menu_item[-251946931]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Forum\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=9\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:49\"\n    },\n    \"nav_menu_item[-1615238014]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=10\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '82ad4f04-2057-4641-b61b-17420b2578fd', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 0, 'http://localhost/WP-GamingSite/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '<code>[Modula id=\'1\']</code>', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-12-02 20:59:28', '2018-12-02 19:59:28', '', 0, 'http://localhost/WP-GamingSite/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 0, 'http://localhost/WP-GamingSite/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '<h1 style=\"text-align: center;\">If you have questions, you can write us to solve it</h1>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Vitalii Nesterchuk | Chief editor of reviews</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">vitalii@wp.gaming</span></h2>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Mykhailo Tarasiuk | Chief news editor</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">mykhailo@wp.gaming</span></h2>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Vlad Utkin | Chief database editor</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">vlad@wp.gaming</span></h2>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Iaroslav Vasilets | Technical support</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">iaroslav@wp.gaming</span></h2>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-11-29 14:11:10', '2018-11-29 13:11:10', '', 0, 'http://localhost/WP-GamingSite/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'The team', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 5, 'http://localhost/WP-GamingSite/2018/11/20/5-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Reviews', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 6, 'http://localhost/WP-GamingSite/2018/11/20/6-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 8, 'http://localhost/WP-GamingSite/2018/11/20/8-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 9, 'http://localhost/WP-GamingSite/2018/11/20/9-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 10, 'http://localhost/WP-GamingSite/2018/11/20/10-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/home/', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/17/', 2, 'nav_menu_item', '', 0),
(18, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/18/', 3, 'nav_menu_item', '', 0),
(19, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/19/', 4, 'nav_menu_item', '', 0),
(20, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Forum', '', 'publish', 'closed', 'closed', '', 'forum', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/forum/', 5, 'nav_menu_item', '', 0),
(21, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/21/', 6, 'nav_menu_item', '', 0),
(22, 1, '2018-11-20 16:50:04', '2018-11-20 15:50:04', '{\n    \"gamecenter::nav_menu_locations[main-menu]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:50:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7a4e71b9-342c-40bb-a8d0-8a6fcd086127', '', '', '2018-11-20 16:50:04', '2018-11-20 15:50:04', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/7a4e71b9-342c-40bb-a8d0-8a6fcd086127/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-11-29 14:08:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-29 14:08:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP-GamingSite/?p=29', 0, 'post', '', 0),
(30, 1, '2018-11-29 14:11:04', '2018-11-29 13:11:04', '<h1 style=\"text-align: center;\">If you have questions, you can write us to solve it</h1>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Vitalii Nesterchuk | Chief editor of reviews</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">vitalii@wp.gaming</span></h2>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Mykhailo Tarasiuk | Chief news editor</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">mykhailo@wp.gaming</span></h2>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Vlad Utkin | Chief database editor</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">vlad@wp.gaming</span></h2>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Iaroslav Vasilets | Technical support</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">iaroslav@wp.gaming</span></h2>', 'Contact', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2018-11-29 14:11:04', '2018-11-29 13:11:04', '', 10, 'http://localhost/WP-GamingSite/2018/11/29/10-autosave-v1/', 0, 'revision', '', 0),
(31, 1, '2018-11-29 14:11:10', '2018-11-29 13:11:10', '<h1 style=\"text-align: center;\">If you have questions, you can write us to solve it</h1>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Vitalii Nesterchuk | Chief editor of reviews</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">vitalii@wp.gaming</span></h2>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Mykhailo Tarasiuk | Chief news editor</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">mykhailo@wp.gaming</span></h2>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Vlad Utkin | Chief database editor</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">vlad@wp.gaming</span></h2>\r\n&nbsp;\r\n<h2 style=\"text-align: center;\">Iaroslav Vasilets | Technical support</h2>\r\n<h2 style=\"text-align: center;\"><span style=\"color: #999999;\">iaroslav@wp.gaming</span></h2>', 'Contact', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-11-29 14:11:10', '2018-11-29 13:11:10', '', 10, 'http://localhost/WP-GamingSite/2018/11/29/10-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-11-29 14:11:31', '2018-11-29 13:11:31', '<img class=\"size-medium wp-image-31 alignleft\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/class_Highlight_Valkyrie-273x300.png\" alt=\"\" width=\"273\" height=\"300\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Vitalii Nesterchuk</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor</p>\r\n<p style=\"text-align: center;\">Favourite ganres: MMORPG, FPS, MOBA</p>\r\n<p style=\"text-align: center;\">Favourite games: Dota 2, TERA Online, CS:GO</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\"><img class=\"size-medium wp-image-36 alignright\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/witcher-300x288.png\" alt=\"\" width=\"300\" height=\"288\" /></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Mykchailo Tarasiuk</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor</p>\r\n<p style=\"text-align: center;\">Favourite ganres:  FPS, RPG</p>\r\n<p style=\"text-align: center;\">Favourite games: CS:GO, Witcher 3</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-medium wp-image-38 alignleft\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/Dovahkiin-281x300.png\" alt=\"\" width=\"281\" height=\"300\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Vlad Utkin</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor, teamlead</p>\r\n<p style=\"text-align: center;\">Favourite ganres: RPG</p>\r\n<p style=\"text-align: center;\">Favourite games: Witcher 3, TES V: Skyrim</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\"><img class=\"size-medium wp-image-39 alignright\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/wow-300x240.png\" alt=\"\" width=\"300\" height=\"240\" /></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Iaroslav Vasiletc</p>\r\n<p style=\"text-align: center;\">Editor, designer, tester</p>\r\n<p style=\"text-align: center;\">Favourite ganres: MMORPG</p>\r\n<p style=\"text-align: center;\">Favourite games: WOW, Lineage 2</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>', 'The team', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-11-29 14:11:31', '2018-11-29 13:11:31', '', 5, 'http://localhost/WP-GamingSite/2018/11/29/5-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-11-29 14:11:37', '2018-11-29 13:11:37', '<img class=\"size-medium wp-image-31 alignleft\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/class_Highlight_Valkyrie-273x300.png\" alt=\"\" width=\"273\" height=\"300\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Vitalii Nesterchuk</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor</p>\r\n<p style=\"text-align: center;\">Favourite ganres: MMORPG, FPS, MOBA</p>\r\n<p style=\"text-align: center;\">Favourite games: Dota 2, TERA Online, CS:GO</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\"><img class=\"size-medium wp-image-36 alignright\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/witcher-300x288.png\" alt=\"\" width=\"300\" height=\"288\" /></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Mykchailo Tarasiuk</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor</p>\r\n<p style=\"text-align: center;\">Favourite ganres:  FPS, RPG</p>\r\n<p style=\"text-align: center;\">Favourite games: CS:GO, Witcher 3</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-medium wp-image-38 alignleft\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/Dovahkiin-281x300.png\" alt=\"\" width=\"281\" height=\"300\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Vlad Utkin</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor, teamlead</p>\r\n<p style=\"text-align: center;\">Favourite ganres: RPG</p>\r\n<p style=\"text-align: center;\">Favourite games: Witcher 3, TES V: Skyrim</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\"><img class=\"size-medium wp-image-39 alignright\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/wow-300x240.png\" alt=\"\" width=\"300\" height=\"240\" /></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Iaroslav Vasiletc</p>\r\n<p style=\"text-align: center;\">Editor, designer, tester</p>\r\n<p style=\"text-align: center;\">Favourite ganres: MMORPG</p>\r\n<p style=\"text-align: center;\">Favourite games: WOW, Lineage 2</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>', 'The Team', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-11-29 14:11:37', '2018-11-29 13:11:37', '', 5, 'http://localhost/WP-GamingSite/2018/11/29/5-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-11-29 14:11:43', '2018-11-29 13:11:43', '<img class=\"size-medium wp-image-31 alignleft\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/class_Highlight_Valkyrie-273x300.png\" alt=\"\" width=\"273\" height=\"300\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Vitalii Nesterchuk</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor</p>\r\n<p style=\"text-align: center;\">Favourite ganres: MMORPG, FPS, MOBA</p>\r\n<p style=\"text-align: center;\">Favourite games: Dota 2, TERA Online, CS:GO</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\"><img class=\"size-medium wp-image-36 alignright\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/witcher-300x288.png\" alt=\"\" width=\"300\" height=\"288\" /></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Mykchailo Tarasiuk</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor</p>\r\n<p style=\"text-align: center;\">Favourite ganres:  FPS, RPG</p>\r\n<p style=\"text-align: center;\">Favourite games: CS:GO, Witcher 3</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-medium wp-image-38 alignleft\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/Dovahkiin-281x300.png\" alt=\"\" width=\"281\" height=\"300\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Vlad Utkin</p>\r\n<p style=\"text-align: center;\">Developer, creator, editor, teamlead</p>\r\n<p style=\"text-align: center;\">Favourite ganres: RPG</p>\r\n<p style=\"text-align: center;\">Favourite games: Witcher 3, TES V: Skyrim</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\"><img class=\"size-medium wp-image-39 alignright\" src=\"http://localhost/WP-GamingSite/wp-content/uploads/2018/11/wow-300x240.png\" alt=\"\" width=\"300\" height=\"240\" /></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Iaroslav Vasiletc</p>\r\n<p style=\"text-align: center;\">Editor, designer, tester</p>\r\n<p style=\"text-align: center;\">Favourite ganres: MMORPG</p>\r\n<p style=\"text-align: center;\">Favourite games: WOW, Lineage 2</p>\r\n<p style=\"text-align: center;\">Bio: Now student at PJATK.</p>', 'The Team', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-11-29 14:11:43', '2018-11-29 13:11:43', '', 5, 'http://localhost/WP-GamingSite/2018/11/29/5-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2018-12-02 20:47:46', '2018-12-02 19:47:46', '[Modula id=\'1\']', 'Plugin Test', '', 'publish', 'closed', 'closed', '', 'plugin-test', '', '', '2018-12-02 20:58:45', '2018-12-02 19:58:45', '', 0, 'http://localhost/WP-GamingSite/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-12-02 20:47:46', '2018-12-02 19:47:46', '', 'Plugin Test', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-12-02 20:47:46', '2018-12-02 19:47:46', '', 35, 'http://localhost/WP-GamingSite/2018/12/02/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-12-02 20:55:06', '2018-12-02 19:55:06', '', '...', '', 'inherit', 'open', 'closed', '', '37', '', '', '2018-12-02 20:55:06', '2018-12-02 19:55:06', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/unnamed-file.jpeg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-12-02 20:55:06', '2018-12-02 19:55:06', '', '...', '', 'inherit', 'open', 'closed', '', '38', '', '', '2018-12-02 20:55:06', '2018-12-02 19:55:06', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/unnamed-file.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-12-02 20:55:07', '2018-12-02 19:55:07', '', '1123', '', 'inherit', 'open', 'closed', '', '1123', '', '', '2018-12-02 20:55:07', '2018-12-02 19:55:07', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/1123.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2018-12-02 20:55:08', '2018-12-02 19:55:08', '', 'ALONE', '', 'inherit', 'open', 'closed', '', 'alone', '', '', '2018-12-02 20:55:08', '2018-12-02 19:55:08', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ALONE.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2018-12-02 20:55:09', '2018-12-02 19:55:09', '', 'DO_IT', '', 'inherit', 'open', 'closed', '', 'do_it', '', '', '2018-12-02 20:55:09', '2018-12-02 19:55:09', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/DO_IT.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-12-02 20:55:11', '2018-12-02 19:55:11', '', 'edinorog', '', 'inherit', 'open', 'closed', '', 'edinorog', '', '', '2018-12-02 20:55:11', '2018-12-02 19:55:11', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/edinorog.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2018-12-02 20:55:12', '2018-12-02 19:55:12', '', 'АХТЫ', '', 'inherit', 'open', 'closed', '', '%d0%b0%d1%85%d1%82%d1%8b', '', '', '2018-12-02 20:55:12', '2018-12-02 19:55:12', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/АХТЫ.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-12-02 20:55:13', '2018-12-02 19:55:13', '', 'БЕГУ', '', 'inherit', 'open', 'closed', '', '%d0%b1%d0%b5%d0%b3%d1%83', '', '', '2018-12-02 20:55:13', '2018-12-02 19:55:13', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/БЕГУ.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-12-02 20:55:14', '2018-12-02 19:55:14', '', 'Белка', '', 'inherit', 'open', 'closed', '', '%d0%b1%d0%b5%d0%bb%d0%ba%d0%b0', '', '', '2018-12-02 20:55:14', '2018-12-02 19:55:14', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Белка.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-12-02 20:55:15', '2018-12-02 19:55:15', '', 'бля...', '', 'inherit', 'open', 'closed', '', '%d0%b1%d0%bb%d1%8f', '', '', '2018-12-02 20:55:15', '2018-12-02 19:55:15', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/бля....jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-12-02 20:55:16', '2018-12-02 19:55:16', '', 'БОМЖ', '', 'inherit', 'open', 'closed', '', '%d0%b1%d0%be%d0%bc%d0%b6', '', '', '2018-12-02 20:55:16', '2018-12-02 19:55:16', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/БОМЖ.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-12-02 20:55:17', '2018-12-02 19:55:17', '', 'БРОВЬ', '', 'inherit', 'open', 'closed', '', '%d0%b1%d1%80%d0%be%d0%b2%d1%8c', '', '', '2018-12-02 20:55:17', '2018-12-02 19:55:17', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/БРОВЬ.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-12-02 20:55:18', '2018-12-02 19:55:18', '', 'ВАСЗАМЕТИЛИ', '', 'inherit', 'open', 'closed', '', '%d0%b2%d0%b0%d1%81%d0%b7%d0%b0%d0%bc%d0%b5%d1%82%d0%b8%d0%bb%d0%b8', '', '', '2018-12-02 20:55:18', '2018-12-02 19:55:18', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ВАСЗАМЕТИЛИ.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-12-02 20:55:19', '2018-12-02 19:55:19', '', 'ВО_СЛАВУ_САТАНЕ', '', 'inherit', 'open', 'closed', '', '%d0%b2%d0%be_%d1%81%d0%bb%d0%b0%d0%b2%d1%83_%d1%81%d0%b0%d1%82%d0%b0%d0%bd%d0%b5', '', '', '2018-12-02 20:55:19', '2018-12-02 19:55:19', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ВО_СЛАВУ_САТАНЕ.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-12-02 20:55:20', '2018-12-02 19:55:20', '', 'Воображение', '', 'inherit', 'open', 'closed', '', '%d0%b2%d0%be%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5', '', '', '2018-12-02 20:55:20', '2018-12-02 19:55:20', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Воображение.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-12-02 20:55:21', '2018-12-02 19:55:21', '', 'ГАРООЛЬД', '', 'inherit', 'open', 'closed', '', '%d0%b3%d0%b0%d1%80%d0%be%d0%be%d0%bb%d1%8c%d0%b4', '', '', '2018-12-02 20:55:21', '2018-12-02 19:55:21', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ГАРООЛЬД.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-12-02 20:55:22', '2018-12-02 19:55:22', '', 'Гендальф', '', 'inherit', 'open', 'closed', '', '%d0%b3%d0%b5%d0%bd%d0%b4%d0%b0%d0%bb%d1%8c%d1%84', '', '', '2018-12-02 20:55:22', '2018-12-02 19:55:22', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Гендальф.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-12-02 20:55:23', '2018-12-02 19:55:23', '', 'ГОМЕР', '', 'inherit', 'open', 'closed', '', '%d0%b3%d0%be%d0%bc%d0%b5%d1%80', '', '', '2018-12-02 20:55:23', '2018-12-02 19:55:23', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ГОМЕР.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-12-02 20:55:24', '2018-12-02 19:55:24', '', 'ДА ЗАТКНИСЬ ТЫ УЖЕ', '', 'inherit', 'open', 'closed', '', '%d0%b4%d0%b0-%d0%b7%d0%b0%d1%82%d0%ba%d0%bd%d0%b8%d1%81%d1%8c-%d1%82%d1%8b-%d1%83%d0%b6%d0%b5', '', '', '2018-12-02 20:55:24', '2018-12-02 19:55:24', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ДА-ЗАТКНИСЬ-ТЫ-УЖЕ.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-12-02 20:55:25', '2018-12-02 19:55:25', '', 'ДАИХУЙСНЕЙ', '', 'inherit', 'open', 'closed', '', '%d0%b4%d0%b0%d0%b8%d1%85%d1%83%d0%b9%d1%81%d0%bd%d0%b5%d0%b9', '', '', '2018-12-02 20:55:25', '2018-12-02 19:55:25', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ДАИХУЙСНЕЙ.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-12-02 20:55:26', '2018-12-02 19:55:26', '', 'Дайте кирпич', '', 'inherit', 'open', 'closed', '', '%d0%b4%d0%b0%d0%b9%d1%82%d0%b5-%d0%ba%d0%b8%d1%80%d0%bf%d0%b8%d1%87', '', '', '2018-12-02 20:55:26', '2018-12-02 19:55:26', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Дайте-кирпич.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-12-02 20:55:27', '2018-12-02 19:55:27', '', 'Действительно(Оригинал)', '', 'inherit', 'open', 'closed', '', '%d0%b4%d0%b5%d0%b9%d1%81%d1%82%d0%b2%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d0%be%d1%80%d0%b8%d0%b3%d0%b8%d0%bd%d0%b0%d0%bb', '', '', '2018-12-02 20:55:27', '2018-12-02 19:55:27', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ДействительноОригинал.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-12-02 20:55:28', '2018-12-02 19:55:28', '', 'Действительно', '', 'inherit', 'open', 'closed', '', '%d0%b4%d0%b5%d0%b9%d1%81%d1%82%d0%b2%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be', '', '', '2018-12-02 20:55:28', '2018-12-02 19:55:28', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Действительно.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-12-02 20:55:29', '2018-12-02 19:55:29', '', 'Долбакхмкхмбы', '', 'inherit', 'open', 'closed', '', '%d0%b4%d0%be%d0%bb%d0%b1%d0%b0%d0%ba%d1%85%d0%bc%d0%ba%d1%85%d0%bc%d0%b1%d1%8b', '', '', '2018-12-02 20:55:29', '2018-12-02 19:55:29', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Долбакхмкхмбы.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-12-02 20:55:30', '2018-12-02 19:55:30', '', 'Дратути', '', 'inherit', 'open', 'closed', '', '%d0%b4%d1%80%d0%b0%d1%82%d1%83%d1%82%d0%b8', '', '', '2018-12-02 20:55:30', '2018-12-02 19:55:30', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Дратути.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2018-12-02 20:55:31', '2018-12-02 19:55:31', '', 'Задумчивый_смайлик', '', 'inherit', 'open', 'closed', '', '%d0%b7%d0%b0%d0%b4%d1%83%d0%bc%d1%87%d0%b8%d0%b2%d1%8b%d0%b9_%d1%81%d0%bc%d0%b0%d0%b9%d0%bb%d0%b8%d0%ba', '', '', '2018-12-02 20:55:31', '2018-12-02 19:55:31', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Задумчивый_смайлик.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-12-02 20:55:32', '2018-12-02 19:55:32', '', 'Илюминаты', '', 'inherit', 'open', 'closed', '', '%d0%b8%d0%bb%d1%8e%d0%bc%d0%b8%d0%bd%d0%b0%d1%82%d1%8b', '', '', '2018-12-02 20:55:32', '2018-12-02 19:55:32', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Илюминаты.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-12-02 20:55:33', '2018-12-02 19:55:33', '', 'КАЕФ', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%b0%d0%b5%d1%84', '', '', '2018-12-02 20:55:33', '2018-12-02 19:55:33', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/КАЕФ.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-12-02 20:55:34', '2018-12-02 19:55:34', '', 'КОНЬ', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%8c', '', '', '2018-12-02 20:55:34', '2018-12-02 19:55:34', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/КОНЬ.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-12-02 20:55:35', '2018-12-02 19:55:35', '', 'Костыли', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%be%d1%81%d1%82%d1%8b%d0%bb%d0%b8', '', '', '2018-12-02 20:55:35', '2018-12-02 19:55:35', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Костыли.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-12-02 20:55:36', '2018-12-02 19:55:36', '', 'купер-плачет', '', 'inherit', 'open', 'closed', '', '%d0%ba%d1%83%d0%bf%d0%b5%d1%80-%d0%bf%d0%bb%d0%b0%d1%87%d0%b5%d1%82', '', '', '2018-12-02 20:55:36', '2018-12-02 19:55:36', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/купер-плачет.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-12-02 20:55:37', '2018-12-02 19:55:37', '', 'Ленивец', '', 'inherit', 'open', 'closed', '', '%d0%bb%d0%b5%d0%bd%d0%b8%d0%b2%d0%b5%d1%86', '', '', '2018-12-02 20:55:37', '2018-12-02 19:55:37', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Ленивец.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-12-02 20:55:38', '2018-12-02 19:55:38', '', 'мудизм', '', 'inherit', 'open', 'closed', '', '%d0%bc%d1%83%d0%b4%d0%b8%d0%b7%d0%bc', '', '', '2018-12-02 20:55:38', '2018-12-02 19:55:38', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/мудизм.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-12-02 20:55:40', '2018-12-02 19:55:40', '', 'МЯСО', '', 'inherit', 'open', 'closed', '', '%d0%bc%d1%8f%d1%81%d0%be', '', '', '2018-12-02 20:55:40', '2018-12-02 19:55:40', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/МЯСО.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-12-02 20:55:41', '2018-12-02 19:55:41', '', 'МЯСО_ШАБЛОН', '', 'inherit', 'open', 'closed', '', '%d0%bc%d1%8f%d1%81%d0%be_%d1%88%d0%b0%d0%b1%d0%bb%d0%be%d0%bd', '', '', '2018-12-02 20:55:41', '2018-12-02 19:55:41', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/МЯСО_ШАБЛОН.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-12-02 20:55:42', '2018-12-02 19:55:42', '', 'НАХУЙ', '', 'inherit', 'open', 'closed', '', '%d0%bd%d0%b0%d1%85%d1%83%d0%b9', '', '', '2018-12-02 20:55:42', '2018-12-02 19:55:42', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/НАХУЙ.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-12-02 20:55:43', '2018-12-02 19:55:43', '', 'Негр', '', 'inherit', 'open', 'closed', '', '%d0%bd%d0%b5%d0%b3%d1%80', '', '', '2018-12-02 20:55:43', '2018-12-02 19:55:43', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Негр.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-12-02 20:55:44', '2018-12-02 19:55:44', '', 'НЕЛЕЗЬБЛ', '', 'inherit', 'open', 'closed', '', '%d0%bd%d0%b5%d0%bb%d0%b5%d0%b7%d1%8c%d0%b1%d0%bb', '', '', '2018-12-02 20:55:44', '2018-12-02 19:55:44', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/НЕЛЕЗЬБЛ.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-12-02 20:55:45', '2018-12-02 19:55:45', '', 'НИХУЯ', '', 'inherit', 'open', 'closed', '', '%d0%bd%d0%b8%d1%85%d1%83%d1%8f', '', '', '2018-12-02 20:55:45', '2018-12-02 19:55:45', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/НИХУЯ.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-12-02 20:55:45', '2018-12-02 19:55:45', '', 'НИХУЯСЕ', '', 'inherit', 'open', 'closed', '', '%d0%bd%d0%b8%d1%85%d1%83%d1%8f%d1%81%d0%b5', '', '', '2018-12-02 20:55:45', '2018-12-02 19:55:45', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/НИХУЯСЕ.jpeg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-12-02 20:55:46', '2018-12-02 19:55:46', '', 'Но...', '', 'inherit', 'open', 'closed', '', '%d0%bd%d0%be', '', '', '2018-12-02 20:55:46', '2018-12-02 19:55:46', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Но....jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-12-02 20:55:46', '2018-12-02 19:55:46', '', 'О_Привет!', '', 'inherit', 'open', 'closed', '', '%d0%be_%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82', '', '', '2018-12-02 20:55:46', '2018-12-02 19:55:46', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/О_Привет.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-12-02 20:55:47', '2018-12-02 19:55:47', '', 'Обезьянка(1)', '', 'inherit', 'open', 'closed', '', '%d0%be%d0%b1%d0%b5%d0%b7%d1%8c%d1%8f%d0%bd%d0%ba%d0%b01', '', '', '2018-12-02 20:55:47', '2018-12-02 19:55:47', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Обезьянка1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-12-02 20:55:47', '2018-12-02 19:55:47', '', 'Обезьянка(2)', '', 'inherit', 'open', 'closed', '', '%d0%be%d0%b1%d0%b5%d0%b7%d1%8c%d1%8f%d0%bd%d0%ba%d0%b02', '', '', '2018-12-02 20:55:47', '2018-12-02 19:55:47', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Обезьянка2.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-12-02 20:55:48', '2018-12-02 19:55:48', '', 'ОБОЖЕ', '', 'inherit', 'open', 'closed', '', '%d0%be%d0%b1%d0%be%d0%b6%d0%b5', '', '', '2018-12-02 20:55:48', '2018-12-02 19:55:48', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ОБОЖЕ.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-12-02 20:55:48', '2018-12-02 19:55:48', '', 'ОмскаяПтица', '', 'inherit', 'open', 'closed', '', '%d0%be%d0%bc%d1%81%d0%ba%d0%b0%d1%8f%d0%bf%d1%82%d0%b8%d1%86%d0%b0', '', '', '2018-12-02 20:55:48', '2018-12-02 19:55:48', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ОмскаяПтица.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-12-02 20:55:49', '2018-12-02 19:55:49', '', 'ОСЁЛ', '', 'inherit', 'open', 'closed', '', '%d0%be%d1%81%d1%91%d0%bb', '', '', '2018-12-02 20:55:49', '2018-12-02 19:55:49', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ОСЁЛ.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-12-02 20:55:49', '2018-12-02 19:55:49', '', 'ОХОХОХ', '', 'inherit', 'open', 'closed', '', '%d0%be%d1%85%d0%be%d1%85%d0%be%d1%85', '', '', '2018-12-02 20:55:49', '2018-12-02 19:55:49', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ОХОХОХ.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2018-12-02 20:55:50', '2018-12-02 19:55:50', '', 'палка_в_колесо', '', 'inherit', 'open', 'closed', '', '%d0%bf%d0%b0%d0%bb%d0%ba%d0%b0_%d0%b2_%d0%ba%d0%be%d0%bb%d0%b5%d1%81%d0%be', '', '', '2018-12-02 20:55:50', '2018-12-02 19:55:50', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/палка_в_колесо.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-12-02 20:55:50', '2018-12-02 19:55:50', '', 'Пиздец...', '', 'inherit', 'open', 'closed', '', '%d0%bf%d0%b8%d0%b7%d0%b4%d0%b5%d1%86', '', '', '2018-12-02 20:55:50', '2018-12-02 19:55:50', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Пиздец....jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2018-12-02 20:55:51', '2018-12-02 19:55:51', '', 'ПЛАЧЕТ(ЖАБА)', '', 'inherit', 'open', 'closed', '', '%d0%bf%d0%bb%d0%b0%d1%87%d0%b5%d1%82%d0%b6%d0%b0%d0%b1%d0%b0', '', '', '2018-12-02 20:55:51', '2018-12-02 19:55:51', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ПЛАЧЕТЖАБА.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-12-02 20:55:51', '2018-12-02 19:55:51', '', 'ПОВАР', '', 'inherit', 'open', 'closed', '', '%d0%bf%d0%be%d0%b2%d0%b0%d1%80', '', '', '2018-12-02 20:55:51', '2018-12-02 19:55:51', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ПОВАР.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-12-02 20:55:52', '2018-12-02 19:55:52', '', 'ПОДМИГНУЛ', '', 'inherit', 'open', 'closed', '', '%d0%bf%d0%be%d0%b4%d0%bc%d0%b8%d0%b3%d0%bd%d1%83%d0%bb', '', '', '2018-12-02 20:55:52', '2018-12-02 19:55:52', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ПОДМИГНУЛ.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-12-02 20:55:52', '2018-12-02 19:55:52', '', 'Позже', '', 'inherit', 'open', 'closed', '', '%d0%bf%d0%be%d0%b7%d0%b6%d0%b5', '', '', '2018-12-02 20:55:52', '2018-12-02 19:55:52', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Позже.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-12-02 20:55:52', '2018-12-02 19:55:52', '', 'ПФФФ', '', 'inherit', 'open', 'closed', '', '%d0%bf%d1%84%d1%84%d1%84', '', '', '2018-12-02 20:55:52', '2018-12-02 19:55:52', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ПФФФ.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-12-02 20:55:53', '2018-12-02 19:55:53', '', 'рукалицо', '', 'inherit', 'open', 'closed', '', '%d1%80%d1%83%d0%ba%d0%b0%d0%bb%d0%b8%d1%86%d0%be', '', '', '2018-12-02 20:55:53', '2018-12-02 19:55:53', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/рукалицо.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-12-02 20:55:53', '2018-12-02 19:55:53', '', 'РУКИ', '', 'inherit', 'open', 'closed', '', '%d1%80%d1%83%d0%ba%d0%b8', '', '', '2018-12-02 20:55:53', '2018-12-02 19:55:53', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/РУКИ.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(94, 1, '2018-12-02 20:55:54', '2018-12-02 19:55:54', '', 'Рыба_из_СБ', '', 'inherit', 'open', 'closed', '', '%d1%80%d1%8b%d0%b1%d0%b0_%d0%b8%d0%b7_%d1%81%d0%b1', '', '', '2018-12-02 20:55:54', '2018-12-02 19:55:54', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Рыба_из_СБ.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2018-12-02 20:55:54', '2018-12-02 19:55:54', '', 'РЫДАААЕТ', '', 'inherit', 'open', 'closed', '', '%d1%80%d1%8b%d0%b4%d0%b0%d0%b0%d0%b0%d0%b5%d1%82', '', '', '2018-12-02 20:55:54', '2018-12-02 19:55:54', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/РЫДАААЕТ.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-12-02 20:55:55', '2018-12-02 19:55:55', '', 'РЫДАЕТ', '', 'inherit', 'open', 'closed', '', '%d1%80%d1%8b%d0%b4%d0%b0%d0%b5%d1%82', '', '', '2018-12-02 20:55:55', '2018-12-02 19:55:55', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/РЫДАЕТ.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2018-12-02 20:55:55', '2018-12-02 19:55:55', '', 'СДАЛ', '', 'inherit', 'open', 'closed', '', '%d1%81%d0%b4%d0%b0%d0%bb', '', '', '2018-12-02 20:55:55', '2018-12-02 19:55:55', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/СДАЛ.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-12-02 20:55:56', '2018-12-02 19:55:56', '', 'Смеются_они', '', 'inherit', 'open', 'closed', '', '%d1%81%d0%bc%d0%b5%d1%8e%d1%82%d1%81%d1%8f_%d0%be%d0%bd%d0%b8', '', '', '2018-12-02 20:55:56', '2018-12-02 19:55:56', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Смеются_они.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-12-02 20:55:56', '2018-12-02 19:55:56', '', 'Стол', '', 'inherit', 'open', 'closed', '', '%d1%81%d1%82%d0%be%d0%bb', '', '', '2018-12-02 20:55:56', '2018-12-02 19:55:56', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Стол.jpeg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-12-02 20:55:57', '2018-12-02 19:55:57', '', 'Тайлер', '', 'inherit', 'open', 'closed', '', '%d1%82%d0%b0%d0%b9%d0%bb%d0%b5%d1%80', '', '', '2018-12-02 20:55:57', '2018-12-02 19:55:57', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Тайлер.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-12-02 20:55:57', '2018-12-02 19:55:57', '', 'ТРИМЕДВЕДЯ', '', 'inherit', 'open', 'closed', '', '%d1%82%d1%80%d0%b8%d0%bc%d0%b5%d0%b4%d0%b2%d0%b5%d0%b4%d1%8f', '', '', '2018-12-02 20:55:57', '2018-12-02 19:55:57', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ТРИМЕДВЕДЯ.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-12-02 20:55:58', '2018-12-02 19:55:58', '', 'Ты был мне как брат', '', 'inherit', 'open', 'closed', '', '%d1%82%d1%8b-%d0%b1%d1%8b%d0%bb-%d0%bc%d0%bd%d0%b5-%d0%ba%d0%b0%d0%ba-%d0%b1%d1%80%d0%b0%d1%82', '', '', '2018-12-02 20:55:58', '2018-12-02 19:55:58', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Ты-был-мне-как-брат.jpeg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-12-02 20:55:58', '2018-12-02 19:55:58', '', 'Ты_серьезно', '', 'inherit', 'open', 'closed', '', '%d1%82%d1%8b_%d1%81%d0%b5%d1%80%d1%8c%d0%b5%d0%b7%d0%bd%d0%be', '', '', '2018-12-02 20:55:58', '2018-12-02 19:55:58', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Ты_серьезно.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-12-02 20:55:59', '2018-12-02 19:55:59', '', 'Фрай', '', 'inherit', 'open', 'closed', '', '%d1%84%d1%80%d0%b0%d0%b9', '', '', '2018-12-02 20:55:59', '2018-12-02 19:55:59', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Фрай.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2018-12-02 20:55:59', '2018-12-02 19:55:59', '', 'ХМ', '', 'inherit', 'open', 'closed', '', '%d1%85%d0%bc', '', '', '2018-12-02 20:55:59', '2018-12-02 19:55:59', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ХМ.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2018-12-02 20:56:00', '2018-12-02 19:56:00', '', 'ЧУТЬ_ЧУТЬ', '', 'inherit', 'open', 'closed', '', '%d1%87%d1%83%d1%82%d1%8c_%d1%87%d1%83%d1%82%d1%8c', '', '', '2018-12-02 20:56:00', '2018-12-02 19:56:00', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ЧУТЬ_ЧУТЬ.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2018-12-02 20:56:00', '2018-12-02 19:56:00', '', 'ШАБЛОН', '', 'inherit', 'open', 'closed', '', '%d1%88%d0%b0%d0%b1%d0%bb%d0%be%d0%bd', '', '', '2018-12-02 20:56:00', '2018-12-02 19:56:00', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ШАБЛОН.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-12-02 20:56:01', '2018-12-02 19:56:01', '', 'Шаблон_01', '', 'inherit', 'open', 'closed', '', '%d1%88%d0%b0%d0%b1%d0%bb%d0%be%d0%bd_01', '', '', '2018-12-02 20:56:01', '2018-12-02 19:56:01', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Шаблон_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2018-12-02 20:56:01', '2018-12-02 19:56:01', '', 'ШАБЛОН2', '', 'inherit', 'open', 'closed', '', '%d1%88%d0%b0%d0%b1%d0%bb%d0%be%d0%bd2', '', '', '2018-12-02 20:56:01', '2018-12-02 19:56:01', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ШАБЛОН2.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-12-02 20:56:02', '2018-12-02 19:56:02', '', 'ШТО', '', 'inherit', 'open', 'closed', '', '%d1%88%d1%82%d0%be', '', '', '2018-12-02 20:56:02', '2018-12-02 19:56:02', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ШТО.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2018-12-02 20:56:02', '2018-12-02 19:56:02', '', 'Эксперт', '', 'inherit', 'open', 'closed', '', '%d1%8d%d0%ba%d1%81%d0%bf%d0%b5%d1%80%d1%82', '', '', '2018-12-02 20:56:02', '2018-12-02 19:56:02', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Эксперт.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-12-02 20:56:03', '2018-12-02 19:56:03', '', 'ЭМ...', '', 'inherit', 'open', 'closed', '', '%d1%8d%d0%bc', '', '', '2018-12-02 20:56:03', '2018-12-02 19:56:03', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ЭМ....jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2018-12-02 20:56:03', '2018-12-02 19:56:03', '', 'ЭТО ШЕДЕВР', '', 'inherit', 'open', 'closed', '', '%d1%8d%d1%82%d0%be-%d1%88%d0%b5%d0%b4%d0%b5%d0%b2%d1%80', '', '', '2018-12-02 20:56:03', '2018-12-02 19:56:03', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/ЭТО-ШЕДЕВР.jpeg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2018-12-02 20:56:04', '2018-12-02 19:56:04', '', 'Я_Сделаль', '', 'inherit', 'open', 'closed', '', '%d1%8f_%d1%81%d0%b4%d0%b5%d0%bb%d0%b0%d0%bb%d1%8c', '', '', '2018-12-02 20:56:04', '2018-12-02 19:56:04', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Я_Сделаль.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2018-12-02 20:56:04', '2018-12-02 19:56:04', '', 'Ярость', '', 'inherit', 'open', 'closed', '', '%d1%8f%d1%80%d0%be%d1%81%d1%82%d1%8c', '', '', '2018-12-02 20:56:04', '2018-12-02 19:56:04', '', 0, 'http://localhost/WP-GamingSite/wp-content/uploads/2018/12/Ярость.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2018-12-02 20:58:45', '2018-12-02 19:58:45', '[Modula id=\'1\']', 'Plugin Test', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-12-02 20:58:45', '2018-12-02 19:58:45', '', 35, 'http://localhost/WP-GamingSite/2018/12/02/35-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-12-02 20:59:28', '2018-12-02 19:59:28', '<code>[Modula id=\'1\']</code>', 'Gallery', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-02 20:59:28', '2018-12-02 19:59:28', '', 8, 'http://localhost/WP-GamingSite/2018/12/02/8-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-12-02 21:01:58', '2018-12-02 20:01:58', '', 'Forum test', '', 'publish', 'closed', 'open', '', 'forum-test', '', '', '2018-12-02 21:01:58', '2018-12-02 20:01:58', '', 0, 'http://localhost/WP-GamingSite/?post_type=forum&#038;p=118', 0, 'forum', '', 0),
(119, 1, '2018-12-02 21:01:58', '2018-12-02 20:01:58', '', 'Forum test', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2018-12-02 21:01:58', '2018-12-02 20:01:58', '', 118, 'http://localhost/WP-GamingSite/2018/12/02/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-12-02 21:04:10', '2018-12-02 20:04:10', 'Lorem ipsum kak-to tam dal\'she ne pomniu uzhe', 'Test title', '', 'publish', 'closed', 'closed', '', 'test-title', '', '', '2018-12-02 21:04:10', '2018-12-02 20:04:10', '', 118, 'http://localhost/WP-GamingSite/forums/topic/test-title/', 0, 'topic', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(2, 'Main', 'main', 0),
(4, 'None', 'none', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ykki'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:2:{s:13:\"administrator\";b:1;s:13:\"bbp_keymaster\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '29'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '4'),
(21, 2, 'nickname', 'Vlad'),
(22, 2, 'first_name', ''),
(23, 2, 'last_name', ''),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(33, 2, 'wp_user_level', '10'),
(34, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(35, 2, 'session_tokens', 'a:2:{s:64:\"3ecd398f315fdff3f36a4635b0ddc821735992fa28ee21e5964ab0d045f13952\";a:4:{s:10:\"expiration\";i:1544355617;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1543146017;}s:64:\"6fdeccb5e5caed64a6cc800e4bd9ef04db51ffe2500ff7b38155650b3319779b\";a:4:{s:10:\"expiration\";i:1544355689;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1543146089;}}'),
(36, 3, 'nickname', 'Editor'),
(37, 3, 'first_name', ''),
(38, 3, 'last_name', ''),
(39, 3, 'description', ''),
(40, 3, 'rich_editing', 'true'),
(41, 3, 'syntax_highlighting', 'true'),
(42, 3, 'comment_shortcuts', 'false'),
(43, 3, 'admin_color', 'fresh'),
(44, 3, 'use_ssl', '0'),
(45, 3, 'show_admin_bar_front', 'true'),
(46, 3, 'locale', ''),
(47, 3, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(48, 3, 'wp_user_level', '7'),
(49, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(50, 4, 'nickname', 'Author'),
(51, 4, 'first_name', ''),
(52, 4, 'last_name', ''),
(53, 4, 'description', ''),
(54, 4, 'rich_editing', 'true'),
(55, 4, 'syntax_highlighting', 'true'),
(56, 4, 'comment_shortcuts', 'false'),
(57, 4, 'admin_color', 'fresh'),
(58, 4, 'use_ssl', '0'),
(59, 4, 'show_admin_bar_front', 'true'),
(60, 4, 'locale', ''),
(61, 4, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(62, 4, 'wp_user_level', '2'),
(63, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(78, 6, 'nickname', 'Subscriber'),
(79, 6, 'first_name', ''),
(80, 6, 'last_name', ''),
(81, 6, 'description', ''),
(82, 6, 'rich_editing', 'true'),
(83, 6, 'syntax_highlighting', 'true'),
(84, 6, 'comment_shortcuts', 'false'),
(85, 6, 'admin_color', 'fresh'),
(86, 6, 'use_ssl', '0'),
(87, 6, 'show_admin_bar_front', 'true'),
(88, 6, 'locale', ''),
(89, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(90, 6, 'wp_user_level', '0'),
(91, 6, 'dismissed_wp_pointers', 'wp496_privacy'),
(93, 4, 'wp_dashboard_quick_press_last_post_id', '24'),
(94, 3, 'session_tokens', 'a:1:{s:64:\"3656755a144db0247bbcb090af0cf150940623f6e339649162ba7b91eceea123\";a:4:{s:10:\"expiration\";i:1544360711;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:133:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36 OPR/56.0.3051.104\";s:5:\"login\";i:1543151111;}}'),
(95, 3, 'wp_dashboard_quick_press_last_post_id', '26'),
(96, 4, 'session_tokens', 'a:1:{s:64:\"a83e409ca8ac7e4d882a1b1841bd226dcc0ed6c54deeaeab727698ece670bd96\";a:4:{s:10:\"expiration\";i:1544360742;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:133:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36 OPR/56.0.3051.104\";s:5:\"login\";i:1543151142;}}'),
(97, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(98, 1, 'wp_user-settings-time', '1543780572'),
(103, 1, 'session_tokens', 'a:1:{s:64:\"33b9808637c554bbb9fc60d66ec8091da1f2ad43d404e8837a3ebcd208e1f0ca\";a:4:{s:10:\"expiration\";i:1544045271;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:133:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36 OPR/56.0.3051.116\";s:5:\"login\";i:1543872471;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ykki', '$P$BGWIdBWsaM87HWKh6KFWfa2SL4MTYt/', 'ykki', 'vetnester@sdffd.com', '', '2018-11-20 15:44:50', '', 0, 'ykki'),
(2, 'Vlad', '$P$BfSZyfSDfGA1aE/rxurrD429DXUBrW1', 'vlad', 'sobaka@gmail.com', '', '2018-11-22 13:14:30', '', 0, 'Vlad'),
(3, 'Editor', '$P$BztKk3D73yj61PW2G55CDdiGV3Ku9u/', 'editor', 'editor@gmail.com', '', '2018-11-25 13:00:18', '', 0, 'Editor'),
(4, 'Author', '$P$BU3t6NJFsVDNK6iVnD5A8rmmkXQ2Ub.', 'author', 'author@gmail.com', '', '2018-11-25 13:00:50', '', 0, 'Author'),
(6, 'Subscriber', '$P$BZYa7swgJjxflCuqFgIZGZfecAHne.1', 'subscriber', 'subscriber@gmail.com', '', '2018-11-25 13:02:34', '', 0, 'Subscriber');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpfront_ure_options`
--

DROP TABLE IF EXISTS `wp_wpfront_ure_options`;
CREATE TABLE `wp_wpfront_ure_options` (
  `id` bigint(20) NOT NULL,
  `option_name` varchar(250) DEFAULT NULL,
  `option_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_wpfront_ure_options`
--

INSERT INTO `wp_wpfront_ure_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'wp_wpfront_ure_options-db-version', '2.14.1'),
(2, 'attachment_capabilities_processed', '1'),
(3, 'user_permission_capabilities_processed', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wsluserscontacts`
--

DROP TABLE IF EXISTS `wp_wsluserscontacts`;
CREATE TABLE `wp_wsluserscontacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wslusersprofiles`
--

DROP TABLE IF EXISTS `wp_wslusersprofiles`;
CREATE TABLE `wp_wslusersprofiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `object_sha` varchar(45) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `profileurl` varchar(255) NOT NULL,
  `websiteurl` varchar(255) NOT NULL,
  `photourl` varchar(255) NOT NULL,
  `displayname` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `language` varchar(20) NOT NULL,
  `age` varchar(10) NOT NULL,
  `birthday` int(11) NOT NULL,
  `birthmonth` int(11) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `emailverified` varchar(255) NOT NULL,
  `phone` varchar(75) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(75) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_modula`
--
ALTER TABLE `wp_modula`
  ADD UNIQUE KEY `id` (`Id`);

--
-- Indexes for table `wp_modula_images`
--
ALTER TABLE `wp_modula_images`
  ADD UNIQUE KEY `id` (`Id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpfront_ure_options`
--
ALTER TABLE `wp_wpfront_ure_options`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_wsluserscontacts`
--
ALTER TABLE `wp_wsluserscontacts`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_wslusersprofiles`
--
ALTER TABLE `wp_wslusersprofiles`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_modula`
--
ALTER TABLE `wp_modula`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_modula_images`
--
ALTER TABLE `wp_modula_images`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_wpfront_ure_options`
--
ALTER TABLE `wp_wpfront_ure_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wsluserscontacts`
--
ALTER TABLE `wp_wsluserscontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wslusersprofiles`
--
ALTER TABLE `wp_wslusersprofiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `wordpresslocal`
--
CREATE DATABASE IF NOT EXISTS `wordpresslocal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpresslocal`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
