-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 07:00 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efix`
--

-- --------------------------------------------------------

--
-- Table structure for table `ordenes`
--

CREATE TABLE `ordenes` (
  `id` int(11) NOT NULL,
  `usuario_tecnico` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_cliente` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni_cliente` varchar(10) NOT NULL,
  `email_cliente` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_producto` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca_producto` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo_producto` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problema_inicial` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnostico` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presupuesto` int(10) DEFAULT NULL,
  `estado_producto` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preferencias`
--

CREATE TABLE `preferencias` (
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `RECIBIDO` tinyint(1) NOT NULL,
  `ESPERANDO_PRESUPUESTO` tinyint(1) NOT NULL,
  `REPARACION` tinyint(1) NOT NULL,
  `RETIRAR_SINARREGLO` tinyint(1) NOT NULL,
  `REPARADO` tinyint(1) NOT NULL,
  `CANCELADA` tinyint(1) NOT NULL,
  `ENTREGADO` tinyint(1) NOT NULL,
  `email_auth` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `preferencias`
--

INSERT INTO `preferencias` (`nombre`, `email`, `telefono`, `RECIBIDO`, `ESPERANDO_PRESUPUESTO`, `REPARACION`, `RETIRAR_SINARREGLO`, `REPARADO`, `CANCELADA`, `ENTREGADO`, `email_auth`) VALUES
('', '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(16) COLLATE utf8_bin NOT NULL,
  `contraseña` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contraseña`) VALUES
('Admin', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
