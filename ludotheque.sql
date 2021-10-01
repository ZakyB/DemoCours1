-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 01 oct. 2021 à 14:19
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ludotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCateg` int(10) NOT NULL,
  `nomCateg` varchar(100) NOT NULL,
  `imageCateg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCateg`, `nomCateg`, `imageCateg`) VALUES
(1, 'Ambiance', 'https://zupimages.net/up/19/34/5rph.jpg'),
(2, 'Hasard', 'https://zupimages.net/up/19/34/hcic.jpg'),
(3, 'Rapidité', 'https://zupimages.net/up/19/34/ge8h.jpg'),
(4, 'Mémoire', 'https://zupimages.net/up/19/34/azr6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

CREATE TABLE `jeux` (
  `idJeux` int(10) NOT NULL,
  `nomJeux` varchar(100) NOT NULL,
  `imageJeux` varchar(100) NOT NULL,
  `numCateg` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jeux`
--

INSERT INTO `jeux` (`idJeux`, `nomJeux`, `imageJeux`, `numCateg`) VALUES
(1, 'Blue Lion (the)', 'https://zupimages.net/up/19/34/eitg.jpg', 4),
(2, 'Trésor des mayas (Le)', 'https://zupimages.net/up/19/34/9yd8.jpg', 4),
(5, 'Little Mémo', 'https://zupimages.net/up/19/34/wk5h.jpg', 4),
(6, 'Jungle Spped', 'https://zupimages.net/up/19/34/rk3k.jpg', 3),
(7, 'Dobble', 'https://zupimages.net/up/19/34/iru0.jpg', 3),
(8, 'Ballons', 'https://zupimages.net/up/19/34/6ehg.jpg', 2),
(9, 'Pickomino', 'https://zupimages.net/up/19/34/vbgu.jpg', 2),
(10, 'Time\'s Up Celebrity 3', 'https://zupimages.net/up/19/34/fl9o.jpg', 1),
(11, 'Buzz it', 'https://zupimages.net/up/19/34/bdwf.jpg', 1),
(12, 'Chasse aux monstres (la) (Ed. Anniversaire)', 'https://zupimages.net/up/19/34/ehmh.jpg', 4),
(13, 'Monopoly', 'https://zupimages.net/up/19/34/9t6x.jpg', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCateg`);

--
-- Index pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD PRIMARY KEY (`idJeux`),
  ADD KEY `numCateg` (`numCateg`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCateg` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `jeux`
--
ALTER TABLE `jeux`
  MODIFY `idJeux` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD CONSTRAINT `jeux_ibfk_1` FOREIGN KEY (`numCateg`) REFERENCES `categorie` (`idCateg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
