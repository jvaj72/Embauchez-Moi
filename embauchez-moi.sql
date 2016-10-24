-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 21 Octobre 2016 à 16:04
-- Version du serveur :  5.7.15-0ubuntu0.16.04.1
-- Version de PHP :  7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `embauchez-moi`
--

-- --------------------------------------------------------

--
-- Structure de la table `CANDIDAT`
--

CREATE TABLE `CANDIDAT` (
  `id_candidat` int(11) NOT NULL,
  `mail` varchar(25) DEFAULT NULL,
  `mot_de_passe` varchar(50) DEFAULT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `ville` varchar(25) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `mail_pro` varchar(50) DEFAULT NULL,
  `site_web` varchar(100) DEFAULT NULL,
  `photo_profil` varchar(250) DEFAULT NULL,
  `permis` varchar(50) DEFAULT NULL,
  `phrase_accroche` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `CANDIDAT`
--

INSERT INTO `CANDIDAT` (`id_candidat`, `mail`, `mot_de_passe`, `nom`, `prenom`, `date_naissance`, `adresse`, `cp`, `ville`, `tel`, `mail_pro`, `site_web`, `photo_profil`, `permis`, `phrase_accroche`) VALUES
(1, NULL, NULL, 'ujuyhhnh', 'rf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, 'salut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `CENTRE_INTERET`
--

CREATE TABLE `CENTRE_INTERET` (
  `id_centre` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `post_it` varchar(250) DEFAULT NULL,
  `id_candidat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `COMPETENCES`
--

CREATE TABLE `COMPETENCES` (
  `id_competences` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `niveau` int(11) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `id_candidat` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `DISTRIBUER`
--

CREATE TABLE `DISTRIBUER` (
  `id_savoir_etre` int(11) NOT NULL,
  `id_candidat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ENTREPRISE`
--

CREATE TABLE `ENTREPRISE` (
  `id_entreprise` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `numero_de_siren` int(11) DEFAULT NULL,
  `adresse` varchar(150) DEFAULT NULL,
  `secteur_activite` varchar(50) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `mail` varchar(25) DEFAULT NULL,
  `mot_de_passe` varchar(100) DEFAULT NULL,
  `logo` varchar(25) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `histoire` varchar(250) DEFAULT NULL,
  `texte` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `FICHIERS`
--

CREATE TABLE `FICHIERS` (
  `id_fichiers` int(11) NOT NULL,
  `lien_fichier` varchar(250) DEFAULT NULL,
  `id_entreprise` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `FORMATION`
--

CREATE TABLE `FORMATION` (
  `id_formation` int(11) NOT NULL,
  `annee` date DEFAULT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `diplome_obtenu` tinyint(1) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `niveau` varchar(25) DEFAULT NULL,
  `domaine` varchar(50) DEFAULT NULL,
  `etablissement` varchar(100) DEFAULT NULL,
  `id_candidat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `MESSAGE`
--

CREATE TABLE `MESSAGE` (
  `id_message` int(11) NOT NULL,
  `contenu` varchar(250) DEFAULT NULL,
  `date_message` date DEFAULT NULL,
  `id_entreprise` int(11) DEFAULT NULL,
  `id_candidat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `PROJET`
--

CREATE TABLE `PROJET` (
  `id_projet` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `categorie` varchar(25) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `galerie` varchar(250) DEFAULT NULL,
  `id_candidat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RESEAUX_SOCIAUX`
--

CREATE TABLE `RESEAUX_SOCIAUX` (
  `id_reseau_E` int(11) NOT NULL,
  `libelle` int(11) DEFAULT NULL,
  `lien` varchar(25) DEFAULT NULL,
  `id_entreprise` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RESEAUX_SOCIAUX_C`
--

CREATE TABLE `RESEAUX_SOCIAUX_C` (
  `id_reseau_c` int(11) NOT NULL,
  `libelle` int(11) DEFAULT NULL,
  `lien` varchar(250) DEFAULT NULL,
  `id_candidat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `SAVOIR_ETRE`
--

CREATE TABLE `SAVOIR_ETRE` (
  `id_savoir_etre` int(11) NOT NULL,
  `contenu` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `TYPE_COMPETENCE`
--

CREATE TABLE `TYPE_COMPETENCE` (
  `id_type` int(11) NOT NULL,
  `libelle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `VALEURS`
--

CREATE TABLE `VALEURS` (
  `id_valeurs` int(11) NOT NULL,
  `libelle` int(11) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `id_entreprise` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `CANDIDAT`
--
ALTER TABLE `CANDIDAT`
  ADD PRIMARY KEY (`id_candidat`);

--
-- Index pour la table `CENTRE_INTERET`
--
ALTER TABLE `CENTRE_INTERET`
  ADD PRIMARY KEY (`id_centre`),
  ADD UNIQUE KEY `FK_CENTRE_INTERET_CANDIDAT` (`id_candidat`);

--
-- Index pour la table `COMPETENCES`
--
ALTER TABLE `COMPETENCES`
  ADD PRIMARY KEY (`id_competences`),
  ADD KEY `FK_COMPETENCES_id_type` (`id_type`),
  ADD KEY `FK_COMPETENCES_CANDIDAT` (`id_candidat`);

--
-- Index pour la table `DISTRIBUER`
--
ALTER TABLE `DISTRIBUER`
  ADD PRIMARY KEY (`id_savoir_etre`,`id_candidat`),
  ADD KEY `FK_DISTRIBUER_CANDIDAT` (`id_candidat`);

--
-- Index pour la table `ENTREPRISE`
--
ALTER TABLE `ENTREPRISE`
  ADD PRIMARY KEY (`id_entreprise`);

--
-- Index pour la table `FICHIERS`
--
ALTER TABLE `FICHIERS`
  ADD PRIMARY KEY (`id_fichiers`),
  ADD KEY `FK_FICHIERS_id_entreprise` (`id_entreprise`);

--
-- Index pour la table `FORMATION`
--
ALTER TABLE `FORMATION`
  ADD PRIMARY KEY (`id_formation`),
  ADD KEY `FK_FORMATION_CANDIDAT` (`id_candidat`);

--
-- Index pour la table `MESSAGE`
--
ALTER TABLE `MESSAGE`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `FK_MESSAGE_id_entreprise` (`id_entreprise`),
  ADD KEY `FK_MESSAGE_CANDIDAT` (`id_candidat`);

--
-- Index pour la table `PROJET`
--
ALTER TABLE `PROJET`
  ADD PRIMARY KEY (`id_projet`),
  ADD KEY `FK_PROJET_id_candidat` (`id_candidat`);

--
-- Index pour la table `RESEAUX_SOCIAUX`
--
ALTER TABLE `RESEAUX_SOCIAUX`
  ADD PRIMARY KEY (`id_reseau_E`),
  ADD KEY `FK_RESEAUX_SOCIAUX_id_entreprise` (`id_entreprise`);

--
-- Index pour la table `RESEAUX_SOCIAUX_C`
--
ALTER TABLE `RESEAUX_SOCIAUX_C`
  ADD PRIMARY KEY (`id_reseau_c`),
  ADD KEY `FK_RESEAU_SOCIAUX_CANDIDAT` (`id_candidat`);

--
-- Index pour la table `SAVOIR_ETRE`
--
ALTER TABLE `SAVOIR_ETRE`
  ADD PRIMARY KEY (`id_savoir_etre`);

--
-- Index pour la table `TYPE_COMPETENCE`
--
ALTER TABLE `TYPE_COMPETENCE`
  ADD PRIMARY KEY (`id_type`);

--
-- Index pour la table `VALEURS`
--
ALTER TABLE `VALEURS`
  ADD PRIMARY KEY (`id_valeurs`),
  ADD KEY `FK_VALEURS_id_entreprise` (`id_entreprise`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `CANDIDAT`
--
ALTER TABLE `CANDIDAT`
  MODIFY `id_candidat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `CENTRE_INTERET`
--
ALTER TABLE `CENTRE_INTERET`
  ADD CONSTRAINT `FK_CENTRE_INTERET_CANDIDAT` FOREIGN KEY (`id_candidat`) REFERENCES `CANDIDAT` (`id_candidat`) ON DELETE CASCADE;

--
-- Contraintes pour la table `COMPETENCES`
--
ALTER TABLE `COMPETENCES`
  ADD CONSTRAINT `FK_COMPETENCES_CANDIDAT` FOREIGN KEY (`id_candidat`) REFERENCES `CANDIDAT` (`id_candidat`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_COMPETENCES_id_type` FOREIGN KEY (`id_type`) REFERENCES `TYPE_COMPETENCE` (`id_type`);

--
-- Contraintes pour la table `DISTRIBUER`
--
ALTER TABLE `DISTRIBUER`
  ADD CONSTRAINT `FK_DISTRIBUER_CANDIDAT` FOREIGN KEY (`id_candidat`) REFERENCES `CANDIDAT` (`id_candidat`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DISTRIBUER_id_savoir_etre` FOREIGN KEY (`id_savoir_etre`) REFERENCES `SAVOIR_ETRE` (`id_savoir_etre`);

--
-- Contraintes pour la table `FICHIERS`
--
ALTER TABLE `FICHIERS`
  ADD CONSTRAINT `FK_FICHIERS_id_entreprise` FOREIGN KEY (`id_entreprise`) REFERENCES `ENTREPRISE` (`id_entreprise`);

--
-- Contraintes pour la table `FORMATION`
--
ALTER TABLE `FORMATION`
  ADD CONSTRAINT `FK_FORMATION_CANDIDAT` FOREIGN KEY (`id_candidat`) REFERENCES `CANDIDAT` (`id_candidat`) ON DELETE CASCADE;

--
-- Contraintes pour la table `MESSAGE`
--
ALTER TABLE `MESSAGE`
  ADD CONSTRAINT `FK_MESSAGE_CANDIDAT` FOREIGN KEY (`id_candidat`) REFERENCES `CANDIDAT` (`id_candidat`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_MESSAGE_id_entreprise` FOREIGN KEY (`id_entreprise`) REFERENCES `ENTREPRISE` (`id_entreprise`);

--
-- Contraintes pour la table `RESEAUX_SOCIAUX`
--
ALTER TABLE `RESEAUX_SOCIAUX`
  ADD CONSTRAINT `FK_RESEAUX_SOCIAUX_id_entreprise` FOREIGN KEY (`id_entreprise`) REFERENCES `ENTREPRISE` (`id_entreprise`);

--
-- Contraintes pour la table `RESEAUX_SOCIAUX_C`
--
ALTER TABLE `RESEAUX_SOCIAUX_C`
  ADD CONSTRAINT `FK_RESEAU_SOCIAUX_CANDIDAT` FOREIGN KEY (`id_candidat`) REFERENCES `CANDIDAT` (`id_candidat`) ON DELETE CASCADE;

--
-- Contraintes pour la table `VALEURS`
--
ALTER TABLE `VALEURS`
  ADD CONSTRAINT `FK_VALEURS_id_entreprise` FOREIGN KEY (`id_entreprise`) REFERENCES `ENTREPRISE` (`id_entreprise`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
