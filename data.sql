-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 04 oct. 2017 à 10:18
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `s4d`
--

-- --------------------------------------------------------

--
-- Structure de la table `borne`
--

CREATE TABLE `borne` (
  `id` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `borne`
--

INSERT INTO `borne` (`id`, `image`, `ordre`) VALUES
(1, 'borne1', 1),
(2, 'borne2', 2),
(3, 'borne3', 3),
(4, 'borne4', 4),
(5, 'borne5', 5),
(6, 'borne6', 6),
(7, 'borne7', 7),
(8, 'borne8', 8),
(9, 'borne9', 9);

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

CREATE TABLE `carte` (
  `id` int(11) NOT NULL,
  `couleur_id` int(11) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `carte`
--

INSERT INTO `carte` (`id`, `couleur_id`, `image`, `numero`) VALUES
(1, 1, 'Carte_1', 1),
(2, 1, 'Carte_2', 2),
(3, 1, 'Carte_3', 3),
(4, 1, 'Carte_4', 4),
(5, 1, 'Carte_5', 5),
(6, 1, 'Carte_6', 6),
(7, 1, 'Carte_7', 7),
(8, 1, 'Carte_8', 8),
(9, 1, 'Carte_9', 9),
(10, 2, 'Carte_1', 1),
(11, 2, 'Carte_2', 2),
(12, 2, 'Carte_3', 3),
(13, 2, 'Carte_4', 4),
(14, 2, 'Carte_5', 5),
(15, 2, 'Carte_6', 6),
(16, 2, 'Carte_7', 7),
(17, 2, 'Carte_8', 8),
(18, 2, 'Carte_9', 9),
(19, 3, 'Carte_1', 1),
(20, 3, 'Carte_2', 2),
(21, 3, 'Carte_3', 3),
(22, 3, 'Carte_4', 4),
(23, 3, 'Carte_5', 5),
(24, 3, 'Carte_6', 6),
(25, 3, 'Carte_7', 7),
(26, 3, 'Carte_8', 8),
(27, 3, 'Carte_9', 9),
(28, 4, 'Carte_1', 1),
(29, 4, 'Carte_2', 2),
(30, 4, 'Carte_3', 3),
(31, 4, 'Carte_4', 4),
(32, 4, 'Carte_5', 5),
(33, 4, 'Carte_6', 6),
(34, 4, 'Carte_7', 7),
(35, 4, 'Carte_8', 8),
(36, 4, 'Carte_9', 9),
(37, 5, 'Carte_1', 1),
(38, 5, 'Carte_2', 2),
(39, 5, 'Carte_3', 3),
(40, 5, 'Carte_4', 4),
(41, 5, 'Carte_5', 5),
(42, 5, 'Carte_6', 6),
(43, 5, 'Carte_7', 7),
(44, 5, 'Carte_8', 8),
(45, 5, 'Carte_9', 9),
(46, 5, 'Carte_1', 1),
(47, 6, 'Carte_1', 1),
(48, 6, 'Carte_2', 2),
(49, 6, 'Carte_3', 3),
(50, 6, 'Carte_4', 4),
(51, 6, 'Carte_5', 5),
(52, 6, 'Carte_6', 6),
(53, 6, 'Carte_7', 7),
(54, 6, 'Carte_8', 8),
(55, 6, 'Carte_9', 9);

-- --------------------------------------------------------

--
-- Structure de la table `couleur`
--

CREATE TABLE `couleur` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `couleur`
--

INSERT INTO `couleur` (`id`, `libelle`) VALUES
(1, 'Couleur_1'),
(2, 'Couleur_2'),
(3, 'Couleur_3'),
(4, 'Couleur_4'),
(5, 'Couleur_5'),
(6, 'Couleur_6');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `borne`
--
ALTER TABLE `borne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BAD4FFFDC31BA576` (`couleur_id`);

--
-- Index pour la table `couleur`
--
ALTER TABLE `couleur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `borne`
--
ALTER TABLE `borne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `carte`
--
ALTER TABLE `carte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `couleur`
--
ALTER TABLE `couleur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `carte`
--
ALTER TABLE `carte`
  ADD CONSTRAINT `FK_BAD4FFFDC31BA576` FOREIGN KEY (`couleur_id`) REFERENCES `couleur` (`id`);
