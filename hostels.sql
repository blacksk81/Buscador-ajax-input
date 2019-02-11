-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2019 a las 15:54:28
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hostels`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostel`
--

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `msn` varchar(999) NOT NULL,
  `mapa` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hostel`
--

INSERT INTO `hostel` (`id`, `nombre`, `msn`, `mapa`) VALUES
(1, '151 Backpacker Hostel B&B - Calle Colon 151D, Miraflores', 'The nearest stop to your hotel is: Stop 1 / Stop D - Outside of Hotel Jose Antonio \r\nIn the box below, you can see where this stop is in relation to your hotel. You will also get a map from our on the ground staff in Lima', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m24!1m8!1m3!1d3900.799613149127!2d-77.03123300000001!3d-12.125859!3m2!1i1024!2i768!4f13.1!4m13!3e2!4m5!1s0x9105c81fa86ce7ed%3A0xa0c34e956cd860a0!2s151+Backpacker+Hostel+B%26B%2C+Colon+Street+151%2C+Lima+15074!3m2!1d-12.1249469!2d-77.0302789!4m5!1s0x9105c81e8bc89093%3A0xffd938a4cdfe3a4f!2sHotel+Jos%C3%A9+Antonio+Lima%2C+Av+28+de+Julio+398%2C+Lima+15074!3m2!1d-12.1265783!2d-77.03112!5e0!3m2!1ses!2spe!4v1549641600593\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2, 'La Casa de Karen, Ramon Zavala 123, Miraflores', 'The nearest stop to your hotel is: Stop 6 / Stop B - Outside of Boulevard Hotel \r\nIn the box below, you can see where this stop is in relation to your hotel. You will also get a map from our on the ground staff in Lima', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m24!1m8!1m3!1d7801.791060230236!2d-77.037732!3d-12.1193!3m2!1i1024!2i768!4f13.1!4m13!3e2!4m5!1s0x9105c83cac7e5ea5%3A0x57a8b1cb0da48008!2sLa+Casa+de+Karen%2C+123%2C+Ramon+Zavala%2C+Cercado+de+Lima+15074!3m2!1d-12.119486199999999!2d-77.03886469999999!4m5!1s0x9105c83cd4eb1aef%3A0xb5661a0521c02280!2sHotel+Boulevard%2C+Av.+Jos%C3%A9+Pardo+771%2C+Miraflores+15074!3m2!1d-12.1193546!2d-77.03651359999999!5e0!3m2!1ses!2spe!4v1549641677822\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
