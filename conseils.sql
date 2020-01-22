-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 22 jan. 2020 à 12:34
-- Version du serveur :  10.4.8-MariaDB
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
-- Index pour la table `eleve_prof`
--
ALTER TABLE `eleve_prof`
  ADD PRIMARY KEY (`id_prof`,`id_eleve`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
