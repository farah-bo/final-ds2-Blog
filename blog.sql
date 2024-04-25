-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 25 avr. 2024 à 23:01
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `titre` varchar(50) NOT NULL,
  `contenu` varchar(5000) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`titre`, `contenu`, `image_path`, `likes`) VALUES
('bbbbbbbbbbbbbbbbbbbbb', '', 'art1.jpg', 0),
('rania', 'rania bcbfebkugik', 'img1.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `sender_id` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`sender_id`, `message`, `created_at`) VALUES
('wassim', 'azert', '2024-04-23 17:29:17'),
('wassim', 'eezrtretyt\r\n', '2024-04-23 17:29:25'),
('wassim', 'vffhdb', '2024-04-23 17:29:30'),
('gigi', 'salutttt', '2024-04-23 17:30:22'),
('gigi', 'salut les babies', '2024-04-23 17:41:16'),
('gigi', 'dfg\r\ngthjk', '2024-04-23 18:00:14'),
('wassim', 'drftgyhjt', '2024-04-24 11:57:05'),
('wassim', 'erftghyuji\r\n', '2024-04-24 11:57:16'),
('wassim', 'jidjd', '2024-04-24 12:20:31'),
('wassim', 'yaaa omaaaar', '2024-04-25 11:17:32'),
('wassim', 'yaaa omaaaar', '2024-04-25 11:17:39'),
('wassim', 'yaaa houseeeem', '2024-04-25 14:53:17');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `nom` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `pass1` varchar(20) NOT NULL,
  `type` varchar(5) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`nom`, `mail`, `pass1`, `type`) VALUES
('12', '12@gmail.com', '12', 'user'),
('123', '12@gmail.com', '1', 'user'),
('flen', 'mahanoureddine29@gmail.com', '1', 'user'),
('gigi', 'go@gmail.com', '14', 'user'),
('maha147', 'zeee12@gmail.com', '0000', 'user'),
('maha4', 'mahanoureddine29@gmail.com', '1212', 'user'),
('mahaadmin', 'maha@gmail.com', '12345678', 'admin'),
('wassim', 'wass@gmail.com', '1212', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`titre`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD KEY `sender_id` (`sender_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nom`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`nom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
