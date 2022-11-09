-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 09 nov. 2022 à 10:32
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `startechs_2022`
--

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `_id` varchar(25) NOT NULL,
  `_state` tinyint(1) NOT NULL DEFAULT 1,
  `_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `_created` timestamp NULL DEFAULT NULL,
  `_cby` int(11) DEFAULT NULL,
  `_mby` int(11) DEFAULT NULL,
  `result` int(11) NOT NULL,
  `user` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `games`
--

INSERT INTO `games` (`_id`, `_state`, `_modified`, `_created`, `_cby`, `_mby`, `result`, `user`) VALUES
('95be2b1c636130b9ee000125', 1, '2022-11-09 09:32:16', '2022-11-09 09:30:39', NULL, NULL, 25, '95be2b1c636130b9ee00014b'),
('95de49b6663337dbb50002a4', 1, '2022-11-09 09:32:16', '2022-11-09 09:30:39', NULL, NULL, 10, '95be2b1c636130b9ee00014a');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `_id` varchar(25) NOT NULL,
  `number` int(11) NOT NULL,
  `qtype` enum('form-multiple','form-unique','ordre') NOT NULL,
  `question` text NOT NULL,
  `_state` tinyint(1) NOT NULL DEFAULT 1,
  `_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `_created` timestamp NULL DEFAULT NULL,
  `_mby` varchar(25) DEFAULT NULL,
  `_cby` varchar(25) DEFAULT NULL,
  `reponses` longtext NOT NULL,
  `validReponses` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`_id`, `number`, `qtype`, `question`, `_state`, `_modified`, `_created`, `_mby`, `_cby`, `reponses`, `validReponses`) VALUES
('4eabbf40646462565a0001af', 2, 'form-unique', 'Textiles. Qu\'est-ce qui est vrai ?', 1, '2022-11-09 09:27:36', '2022-11-09 09:25:59', NULL, NULL, 'L’industrie du textile est la deuxième industrie polluante au monde,\r\nLes fibres synthétiques sont écologiques car elles permettent d’économiser les fibres naturelles (coton, lin, soie, laine, etc.).,\r\nLe polyester n’est pas polluant, contrairement au coton\r\n', 'L’industrie du textile est la deuxième industrie polluante au monde'),
('5232620f3965306c7200005a', 3, 'ordre', 'Quels sont les états\\/régions les plus pollueurs ? classement Par volume de gaz à effet de serre en 2020 :', 1, '2022-11-09 09:29:27', '2022-11-09 09:27:52', NULL, NULL, 'La Chine,\r\nLes États-Unis,\r\nL’Union Européenne,\r\nL’Inde,\r\nLa Russie\r\n', ''),
('55fc01e53964365071000089', 1, 'form-multiple', 'Parmi les propositions suivantes, quelles sont celles que l\'économie circulaire cherche à favoriser ?', 1, '2022-11-09 09:25:00', '2022-11-09 09:22:02', NULL, NULL, 'Eco-conception,\r\nRecyclage,\r\nRéparation de produits,\r\nExtraction de ressources,\r\nObsolescence programmée\r\n', 'Eco-conception,\r\nRecyclage,\r\nRéparation de produits\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `_id` varchar(25) NOT NULL,
  `_state` tinyint(1) NOT NULL DEFAULT 1,
  `_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `_created` timestamp NULL DEFAULT NULL,
  `_cby` int(11) DEFAULT NULL,
  `_mby` int(11) DEFAULT NULL,
  `alias` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`_id`, `_state`, `_modified`, `_created`, `_cby`, `_mby`, `alias`) VALUES
('95be2b1c636130b9ee00014a', 1, '2022-11-09 08:26:11', '2022-11-08 08:25:09', NULL, NULL, 'Marcel'),
('95be2b1c636130b9ee00014b', 1, '2022-11-09 08:26:11', '2022-11-09 08:25:09', NULL, NULL, 'Pierre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
