-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2020 at 11:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eval_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id_education` int(3) NOT NULL,
  `ecole` varchar(100) DEFAULT NULL,
  `cursus` varchar(100) DEFAULT NULL,
  `date_debut` varchar(20) NOT NULL,
  `debut_fin` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id_education`, `ecole`, `cursus`, `date_debut`, `debut_fin`) VALUES
(1, 'PARIS YNOV CAMPUS', 'ETUDES SUPÉRIEURES', '2019', 'maintenant'),
(2, 'INSTITUT MONTALEMBERT', 'COLLEGE-LYCÉE', '2012', '2019'),
(3, 'ECOLE NOTRE-DAME-DE-TOUTES-GRÂCES', 'MATERNELLE ET PRIMAIRE', '2004', '2012');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id_experiences` int(3) NOT NULL,
  `emploi` varchar(20) DEFAULT NULL,
  `entreprise` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `date_embauche` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id_experiences`, `emploi`, `entreprise`, `description`, `date_embauche`, `date_fin`) VALUES
(1, 'Employé Polyvalent', 'LIDL', 'Caissier, boulanger, homme de ménage, rangement rayon, mise en rayon,...', '2020-02-01', '2025-06-29'),
(2, 'Jeune Devellopeur', 'Moi', 'J\'ai commencé à réellement le code en Terminale S et cela ma passionné directement', '2018-09-03', '2020-07-17'),
(3, 'Soutien Scolaire', 'Moi', 'Cours particulier à des collégiens sur les matières scientifiques', '2016-09-01', '2020-06-19'),
(4, 'Baby-sitting', 'Moi', 'Garde, aller les chercher à l\'école, leur faire l\'étude....', '2014-09-02', '2019-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Guillaume', 'guillaumedupuy93@gmail.com', 'aa2497485d6c3142ac6141ef961bed9f5563ecc60e64a151c726369fcef4217c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id_education`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id_experiences`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id_education` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id_experiences` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
