-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql
-- Généré le : mer. 30 juin 2021 à 08:29
-- Version du serveur :  8.0.23
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test_blog`
--
CREATE DATABASE IF NOT EXISTS `test_blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test_blog`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `contenu` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `popularite` int DEFAULT '0',
  `auteurId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_articles_auteurs` (`auteurId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Tronquer la table avant d'insérer `articles`
--

TRUNCATE TABLE `articles`;
--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `description`, `contenu`, `popularite`, `auteurId`) VALUES
(1, 'Mon tout premier article', 'Superbe Description !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam viverra auctor neque ac porttitor. Aenean pretium aliquam elit, nec lacinia ex tristique sed. Phasellus vestibulum auctor lacus sed convallis. Suspendisse in ultrices velit. Phasellus eget pulvinar risus, aliquam iaculis felis. Mauris mattis sed sapien sit amet facilisis. In convallis pellentesque rutrum. Curabitur nec eleifend turpis. Cras posuere, risus auctor commodo vehicula, orci purus pretium nisl, sit amet semper felis enim non dui.\r\n\r\nMorbi ac placerat libero, vitae interdum lectus. Nunc ac interdum felis. Donec elementum elementum turpis, non congue urna. Morbi eleifend mollis sem. Curabitur vulputate augue metus, sed ultricies ex tempus vel. Mauris lobortis pulvinar risus, vel ultrices odio sollicitudin a. Quisque ultrices faucibus metus, vitae volutpat enim ultrices ut. Sed ac nulla vel turpis eleifend tristique. Donec a sodales lectus, eu convallis justo.\r\n\r\n', 10, 2),
(7, 'Mon Second Article :)', 'Description de mon deuxième article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et ex sit amet velit sagittis tempus at vitae velit. Proin consectetur ipsum tincidunt, faucibus sapien quis, finibus velit. Proin pretium a dui eu faucibus. In eu ultricies nunc. Maecenas purus nisi, cursus nec accumsan quis, finibus scelerisque orci. Cras convallis lectus vitae lacus feugiat ullamcorper. Sed non ligula sit amet ipsum lobortis ullamcorper eget sit amet lorem. Duis sit amet elementum tellus. Quisque commodo sem nec dolor convallis laoreet. Quisque ultrices, leo suscipit luctus laoreet, purus elit egestas libero, ac sollicitudin dolor est eget lacus. Integer imperdiet, odio vel dignissim hendrerit, orci sapien auctor libero, ut viverra nisl arcu quis lectus.', 52, 1),
(8, 'Voyage en afrique', 'Voyage en éthiopie', 'Lorem Ipsum ...', 8, 3);

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

DROP TABLE IF EXISTS `auteurs`;
CREATE TABLE IF NOT EXISTS `auteurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `imageDeProfile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Tronquer la table avant d'insérer `auteurs`
--

TRUNCATE TABLE `auteurs`;
--
-- Déchargement des données de la table `auteurs`
--

INSERT INTO `auteurs` (`id`, `nom`, `prenom`, `email`, `imageDeProfile`) VALUES
(1, 'Doudou', 'John', 'john.doe@mail.com', 'https://www.fote.org.uk/wp-content/uploads/2017/03/profile-icon-300x300.png'),
(2, 'Doudou', 'Jane', 'jane.doe@mail.com', 'https://www.fote.org.uk/wp-content/uploads/2017/03/profile-icon-300x300.png'),
(3, 'Dupont', 'Jean', 'jean.dupont@mail.com', 'https://www.fote.org.uk/wp-content/uploads/2017/03/profile-icon-300x300.png');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_articles_auteurs` FOREIGN KEY (`auteurId`) REFERENCES `auteurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
