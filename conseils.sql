-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 23 jan. 2020 à 15:31
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `conseils`
--
CREATE DATABASE IF NOT EXISTS `conseils` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `conseils`;

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `CommentaireGeneral` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`id`, `Nom`, `Prenom`, `CommentaireGeneral`) VALUES
(0, '!CLASSE', 'Avis général', ''),
(1, 'AKOUBIA', 'Mathieu', '0'),
(2, 'BARITEAU', 'Marion', '0'),
(3, 'BATY', 'Anton', '0'),
(4, 'BEALU', 'Zoé', '0'),
(5, 'BELLON', 'Felix', '0'),
(6, 'BLANQUART', 'Alexis', '0'),
(7, 'BOURREAU', 'Julien', '0'),
(8, 'BRUTUS', 'Théo', '0'),
(9, 'CATIFAIT', 'Léo', '0'),
(10, 'CINQUIN', 'Andy', '0'),
(11, 'COEUILLET', 'Quentin', '0'),
(12, 'CORBALAN', 'Tobias', '0'),
(13, 'DE ALMEDIA', 'Hugo', '0'),
(14, 'DE LA BICHE', 'Gabriel', '0'),
(15, 'DELAGE', 'Antoine', '0'),
(16, 'DELAMARE', 'Timothée', '0'),
(17, 'DEYRIS', 'Antoine', '0'),
(18, 'DIVET', 'Hugo', '0'),
(19, 'DUREL', 'Yohann', '0'),
(20, 'DUVAL', 'Michel', '0'),
(21, 'ENDOKE', 'Yohane', '0'),
(22, 'FARVACQUE', 'Théophile', '0'),
(23, 'GABLIN', 'Alexandre', '0'),
(24, 'GAUTHIER', 'Mathis', '0'),
(25, 'MOGUE', 'Fabiola', '0');

-- --------------------------------------------------------

--
-- Structure de la table `eleve_prof`
--

CREATE TABLE `eleve_prof` (
  `id_prof` int(11) NOT NULL,
  `id_eleve` int(11) NOT NULL,
  `moyenne` int(11) DEFAULT NULL,
  `appreciation` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `eleve_prof`
--

INSERT INTO `eleve_prof` (`id_prof`, `id_eleve`, `moyenne`, `appreciation`, `type`) VALUES
(0, 0, NULL, NULL, NULL),
(0, 1, NULL, NULL, NULL),
(0, 2, NULL, NULL, NULL),
(0, 3, NULL, NULL, NULL),
(0, 4, NULL, NULL, NULL),
(0, 5, NULL, NULL, NULL),
(0, 6, NULL, NULL, NULL),
(0, 7, NULL, NULL, NULL),
(0, 8, NULL, NULL, NULL),
(0, 9, NULL, NULL, NULL),
(0, 10, NULL, NULL, NULL),
(0, 11, NULL, NULL, NULL),
(0, 12, NULL, NULL, NULL),
(0, 13, NULL, NULL, NULL),
(0, 14, NULL, NULL, NULL),
(0, 15, NULL, NULL, NULL),
(0, 16, NULL, NULL, NULL),
(0, 17, NULL, NULL, NULL),
(0, 18, NULL, NULL, NULL),
(0, 19, NULL, NULL, NULL),
(0, 20, NULL, NULL, NULL),
(0, 21, NULL, NULL, NULL),
(0, 22, NULL, NULL, NULL),
(0, 23, NULL, NULL, NULL),
(0, 24, NULL, NULL, NULL),
(0, 25, 0, 'résumé - avis perso - dit qu\'elle veux bosser etc - voir comm avec Braux - ', NULL),
(1, 0, NULL, NULL, NULL),
(1, 1, NULL, NULL, NULL),
(1, 2, NULL, NULL, NULL),
(1, 3, NULL, NULL, NULL),
(1, 4, NULL, NULL, NULL),
(1, 5, NULL, NULL, NULL),
(1, 6, NULL, NULL, NULL),
(1, 7, NULL, NULL, NULL),
(1, 8, NULL, NULL, NULL),
(1, 9, NULL, NULL, NULL),
(1, 10, NULL, NULL, NULL),
(1, 11, NULL, NULL, NULL),
(1, 12, NULL, NULL, NULL),
(1, 13, NULL, NULL, NULL),
(1, 14, NULL, NULL, NULL),
(1, 15, NULL, NULL, NULL),
(1, 16, NULL, NULL, NULL),
(1, 17, NULL, NULL, NULL),
(1, 18, NULL, NULL, NULL),
(1, 19, NULL, NULL, NULL),
(1, 20, NULL, NULL, NULL),
(1, 21, NULL, NULL, NULL),
(1, 22, NULL, NULL, NULL),
(1, 23, NULL, NULL, NULL),
(1, 24, NULL, NULL, NULL),
(1, 25, 0, '', NULL),
(2, 0, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL),
(2, 3, NULL, NULL, NULL),
(2, 4, NULL, NULL, NULL),
(2, 5, NULL, NULL, NULL),
(2, 6, NULL, NULL, NULL),
(2, 7, NULL, NULL, NULL),
(2, 8, NULL, NULL, NULL),
(2, 9, NULL, NULL, NULL),
(2, 10, NULL, NULL, NULL),
(2, 11, NULL, NULL, NULL),
(2, 12, NULL, NULL, NULL),
(2, 13, NULL, NULL, NULL),
(2, 14, NULL, NULL, NULL),
(2, 15, NULL, NULL, NULL),
(2, 16, NULL, NULL, NULL),
(2, 17, NULL, NULL, NULL),
(2, 18, NULL, NULL, NULL),
(2, 19, NULL, NULL, NULL),
(2, 20, NULL, NULL, NULL),
(2, 21, NULL, NULL, NULL),
(2, 22, NULL, NULL, NULL),
(2, 23, NULL, NULL, NULL),
(2, 24, NULL, NULL, NULL),
(2, 25, 0, '', NULL),
(3, 0, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL),
(3, 2, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL),
(3, 4, NULL, NULL, NULL),
(3, 5, NULL, NULL, NULL),
(3, 6, NULL, NULL, NULL),
(3, 7, NULL, NULL, NULL),
(3, 8, NULL, NULL, NULL),
(3, 9, NULL, NULL, NULL),
(3, 10, NULL, NULL, NULL),
(3, 11, NULL, NULL, NULL),
(3, 12, NULL, NULL, NULL),
(3, 13, NULL, NULL, NULL),
(3, 14, NULL, NULL, NULL),
(3, 15, NULL, NULL, NULL),
(3, 16, NULL, NULL, NULL),
(3, 17, NULL, NULL, NULL),
(3, 18, NULL, NULL, NULL),
(3, 19, NULL, NULL, NULL),
(3, 20, NULL, NULL, NULL),
(3, 21, NULL, NULL, NULL),
(3, 22, NULL, NULL, NULL),
(3, 23, NULL, NULL, NULL),
(3, 24, NULL, NULL, NULL),
(3, 25, 0, '', NULL),
(4, 0, NULL, NULL, NULL),
(4, 1, NULL, NULL, NULL),
(4, 2, NULL, NULL, NULL),
(4, 3, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL),
(4, 5, NULL, NULL, NULL),
(4, 6, NULL, NULL, NULL),
(4, 7, NULL, NULL, NULL),
(4, 8, NULL, NULL, NULL),
(4, 9, NULL, NULL, NULL),
(4, 10, NULL, NULL, NULL),
(4, 11, NULL, NULL, NULL),
(4, 12, NULL, NULL, NULL),
(4, 13, NULL, NULL, NULL),
(4, 14, NULL, NULL, NULL),
(4, 15, NULL, NULL, NULL),
(4, 16, NULL, NULL, NULL),
(4, 17, NULL, NULL, NULL),
(4, 18, NULL, NULL, NULL),
(4, 19, NULL, NULL, NULL),
(4, 20, NULL, NULL, NULL),
(4, 21, NULL, NULL, NULL),
(4, 22, NULL, NULL, NULL),
(4, 23, NULL, NULL, NULL),
(4, 24, NULL, NULL, NULL),
(4, 25, 0, '', NULL),
(5, 0, NULL, NULL, NULL),
(5, 1, NULL, NULL, NULL),
(5, 2, NULL, NULL, NULL),
(5, 3, NULL, NULL, NULL),
(5, 4, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL),
(5, 6, NULL, NULL, NULL),
(5, 7, NULL, NULL, NULL),
(5, 8, NULL, NULL, NULL),
(5, 9, NULL, NULL, NULL),
(5, 10, NULL, NULL, NULL),
(5, 11, NULL, NULL, NULL),
(5, 12, NULL, NULL, NULL),
(5, 13, NULL, NULL, NULL),
(5, 14, NULL, NULL, NULL),
(5, 15, NULL, NULL, NULL),
(5, 16, NULL, NULL, NULL),
(5, 17, NULL, NULL, NULL),
(5, 18, NULL, NULL, NULL),
(5, 19, NULL, NULL, NULL),
(5, 20, NULL, NULL, NULL),
(5, 21, NULL, NULL, NULL),
(5, 22, NULL, NULL, NULL),
(5, 23, NULL, NULL, NULL),
(5, 24, NULL, NULL, NULL),
(5, 25, 0, '', NULL),
(6, 0, NULL, NULL, NULL),
(6, 1, NULL, NULL, NULL),
(6, 2, NULL, NULL, NULL),
(6, 3, NULL, NULL, NULL),
(6, 4, NULL, NULL, NULL),
(6, 5, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL),
(6, 7, NULL, NULL, NULL),
(6, 8, NULL, NULL, NULL),
(6, 9, NULL, NULL, NULL),
(6, 10, NULL, NULL, NULL),
(6, 11, NULL, NULL, NULL),
(6, 12, NULL, NULL, NULL),
(6, 13, NULL, NULL, NULL),
(6, 14, NULL, NULL, NULL),
(6, 15, NULL, NULL, NULL),
(6, 16, NULL, NULL, NULL),
(6, 17, NULL, NULL, NULL),
(6, 18, NULL, NULL, NULL),
(6, 19, NULL, NULL, NULL),
(6, 20, NULL, NULL, NULL),
(6, 21, NULL, NULL, NULL),
(6, 22, NULL, NULL, NULL),
(6, 23, NULL, NULL, NULL),
(6, 24, NULL, NULL, NULL),
(6, 25, 0, '', NULL),
(7, 0, NULL, NULL, NULL),
(7, 1, NULL, NULL, NULL),
(7, 2, NULL, NULL, NULL),
(7, 3, NULL, NULL, NULL),
(7, 4, NULL, NULL, NULL),
(7, 5, NULL, NULL, NULL),
(7, 6, NULL, NULL, NULL),
(7, 7, NULL, NULL, NULL),
(7, 8, NULL, NULL, NULL),
(7, 9, NULL, NULL, NULL),
(7, 10, NULL, NULL, NULL),
(7, 11, NULL, NULL, NULL),
(7, 12, NULL, NULL, NULL),
(7, 13, NULL, NULL, NULL),
(7, 14, NULL, NULL, NULL),
(7, 15, NULL, NULL, NULL),
(7, 16, NULL, NULL, NULL),
(7, 17, NULL, NULL, NULL),
(7, 18, NULL, NULL, NULL),
(7, 19, NULL, NULL, NULL),
(7, 20, NULL, NULL, NULL),
(7, 21, NULL, NULL, NULL),
(7, 22, NULL, NULL, NULL),
(7, 23, NULL, NULL, NULL),
(7, 24, NULL, NULL, NULL),
(7, 25, 0, '', NULL),
(8, 0, NULL, NULL, NULL),
(8, 1, NULL, NULL, NULL),
(8, 2, NULL, NULL, NULL),
(8, 3, NULL, NULL, NULL),
(8, 4, NULL, NULL, NULL),
(8, 5, NULL, NULL, NULL),
(8, 6, NULL, NULL, NULL),
(8, 7, NULL, NULL, NULL),
(8, 8, NULL, NULL, NULL),
(8, 9, NULL, NULL, NULL),
(8, 10, NULL, NULL, NULL),
(8, 11, NULL, NULL, NULL),
(8, 12, NULL, NULL, NULL),
(8, 13, NULL, NULL, NULL),
(8, 14, NULL, NULL, NULL),
(8, 15, NULL, NULL, NULL),
(8, 16, NULL, NULL, NULL),
(8, 17, NULL, NULL, NULL),
(8, 18, NULL, NULL, NULL),
(8, 19, NULL, NULL, NULL),
(8, 20, NULL, NULL, NULL),
(8, 21, NULL, NULL, NULL),
(8, 22, NULL, NULL, NULL),
(8, 23, NULL, NULL, NULL),
(8, 24, NULL, NULL, NULL),
(8, 25, 0, '', NULL),
(9, 0, NULL, NULL, NULL),
(9, 1, NULL, NULL, NULL),
(9, 2, NULL, NULL, NULL),
(9, 3, NULL, NULL, NULL),
(9, 4, NULL, NULL, NULL),
(9, 5, NULL, NULL, NULL),
(9, 6, NULL, NULL, NULL),
(9, 7, NULL, NULL, NULL),
(9, 8, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL),
(9, 10, NULL, NULL, NULL),
(9, 11, NULL, NULL, NULL),
(9, 12, NULL, NULL, NULL),
(9, 13, NULL, NULL, NULL),
(9, 14, NULL, NULL, NULL),
(9, 15, NULL, NULL, NULL),
(9, 16, NULL, NULL, NULL),
(9, 17, NULL, NULL, NULL),
(9, 18, NULL, NULL, NULL),
(9, 19, NULL, NULL, NULL),
(9, 20, NULL, NULL, NULL),
(9, 21, NULL, NULL, NULL),
(9, 22, NULL, NULL, NULL),
(9, 23, NULL, NULL, NULL),
(9, 24, NULL, NULL, NULL),
(9, 25, 0, '', NULL),
(10, 0, NULL, NULL, NULL),
(10, 1, NULL, NULL, NULL),
(10, 2, NULL, NULL, NULL),
(10, 3, NULL, NULL, NULL),
(10, 4, NULL, NULL, NULL),
(10, 5, NULL, NULL, NULL),
(10, 6, NULL, NULL, NULL),
(10, 7, NULL, NULL, NULL),
(10, 8, NULL, NULL, NULL),
(10, 9, NULL, NULL, NULL),
(10, 10, NULL, NULL, NULL),
(10, 11, NULL, NULL, NULL),
(10, 12, NULL, NULL, NULL),
(10, 13, NULL, NULL, NULL),
(10, 14, NULL, NULL, NULL),
(10, 15, NULL, NULL, NULL),
(10, 16, NULL, NULL, NULL),
(10, 17, NULL, NULL, NULL),
(10, 18, NULL, NULL, NULL),
(10, 19, NULL, NULL, NULL),
(10, 20, NULL, NULL, NULL),
(10, 21, NULL, NULL, NULL),
(10, 22, NULL, NULL, NULL),
(10, 23, NULL, NULL, NULL),
(10, 24, NULL, NULL, NULL),
(10, 25, 0, '', NULL),
(11, 0, NULL, NULL, NULL),
(11, 1, NULL, NULL, NULL),
(11, 2, NULL, NULL, NULL),
(11, 3, NULL, NULL, NULL),
(11, 4, NULL, NULL, NULL),
(11, 5, NULL, NULL, NULL),
(11, 6, NULL, NULL, NULL),
(11, 7, NULL, NULL, NULL),
(11, 8, NULL, NULL, NULL),
(11, 9, NULL, NULL, NULL),
(11, 10, NULL, NULL, NULL),
(11, 11, NULL, NULL, NULL),
(11, 12, NULL, NULL, NULL),
(11, 13, NULL, NULL, NULL),
(11, 14, NULL, NULL, NULL),
(11, 15, NULL, NULL, NULL),
(11, 16, NULL, NULL, NULL),
(11, 17, NULL, NULL, NULL),
(11, 18, NULL, NULL, NULL),
(11, 19, NULL, NULL, NULL),
(11, 20, NULL, NULL, NULL),
(11, 21, NULL, NULL, NULL),
(11, 22, NULL, NULL, NULL),
(11, 23, NULL, NULL, NULL),
(11, 24, NULL, NULL, NULL),
(11, 25, 0, '', NULL),
(12, 0, NULL, NULL, NULL),
(12, 1, NULL, NULL, NULL),
(12, 2, NULL, NULL, NULL),
(12, 3, NULL, NULL, NULL),
(12, 4, NULL, NULL, NULL),
(12, 5, NULL, NULL, NULL),
(12, 6, NULL, NULL, NULL),
(12, 7, NULL, NULL, NULL),
(12, 8, NULL, NULL, NULL),
(12, 9, NULL, NULL, NULL),
(12, 10, NULL, NULL, NULL),
(12, 11, NULL, NULL, NULL),
(12, 12, NULL, NULL, NULL),
(12, 13, NULL, NULL, NULL),
(12, 14, NULL, NULL, NULL),
(12, 15, NULL, NULL, NULL),
(12, 16, NULL, NULL, NULL),
(12, 17, NULL, NULL, NULL),
(12, 18, NULL, NULL, NULL),
(12, 19, NULL, NULL, NULL),
(12, 20, NULL, NULL, NULL),
(12, 21, NULL, NULL, NULL),
(12, 22, NULL, NULL, NULL),
(12, 23, NULL, NULL, NULL),
(12, 24, NULL, NULL, NULL),
(12, 25, 0, '', NULL),
(13, 0, NULL, NULL, NULL),
(13, 1, NULL, NULL, NULL),
(13, 2, NULL, NULL, NULL),
(13, 3, NULL, NULL, NULL),
(13, 4, NULL, NULL, NULL),
(13, 5, NULL, NULL, NULL),
(13, 6, NULL, NULL, NULL),
(13, 7, NULL, NULL, NULL),
(13, 8, NULL, NULL, NULL),
(13, 9, NULL, NULL, NULL),
(13, 10, NULL, NULL, NULL),
(13, 11, NULL, NULL, NULL),
(13, 12, NULL, NULL, NULL),
(13, 13, NULL, NULL, NULL),
(13, 14, NULL, NULL, NULL),
(13, 15, NULL, NULL, NULL),
(13, 16, NULL, NULL, NULL),
(13, 17, NULL, NULL, NULL),
(13, 18, NULL, NULL, NULL),
(13, 19, NULL, NULL, NULL),
(13, 20, NULL, NULL, NULL),
(13, 21, NULL, NULL, NULL),
(13, 22, NULL, NULL, NULL),
(13, 23, NULL, NULL, NULL),
(13, 24, NULL, NULL, NULL),
(13, 25, 0, '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE `prof` (
  `id_prof` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `CommentaireClasse` varchar(500) NOT NULL,
  `matiere` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `prof`
--

INSERT INTO `prof` (`id_prof`, `Nom`, `Prenom`, `CommentaireClasse`, `matiere`) VALUES
(0, 'AVIS', 'Général', '', 'résumé'),
(1, 'LECLERCQ', 'Valérie', '', 'Anglais'),
(2, 'GUYON', 'Anne', '', 'Art du pitch'),
(3, 'CLARENS', 'Nicolas', '', 'Anglais'),
(4, 'MICHALET', 'Luc', '', 'Mathématiques'),
(5, 'ROMEUF', 'Pierre François', '', 'UML / PPE2'),
(6, 'DELMAS', 'Catherine', '', 'Merise'),
(7, 'BOURLES', 'Jean-yves', '', 'IPV4 - réseaux'),
(8, 'DUPRE', 'Thierry', '', 'Réseaux Ethernet'),
(9, 'CHERAMY', 'Guillaume', '', 'Linux'),
(10, 'REINOLD', 'Frédéric', '', 'Réseau - Projet'),
(11, 'FERRONNIERE', 'Alan', '', 'Dev Web'),
(12, 'BRAUX', 'Mathias', '', 'Algo / C'),
(13, 'SUZUR DE LOBEL', 'Arnaud', '', 'Droit / Eco');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `eleve_prof`
--
ALTER TABLE `eleve_prof`
  ADD PRIMARY KEY (`id_prof`,`id_eleve`);

--
-- Index pour la table `prof`
--
ALTER TABLE `prof`
  ADD PRIMARY KEY (`id_prof`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
