-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: 104.198.220.140
-- Generation Time: Oct 12, 2017 at 09:27 PM
-- Server version: 5.7.14-google-log
-- PHP Version: 7.0.24-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servisum`
--

-- --------------------------------------------------------

--
-- Table structure for table `bancos`
--

CREATE TABLE `bancos` (
  `id` int(4) NOT NULL,
  `short_name` varchar(35) DEFAULT NULL,
  `full_name` varchar(116) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bancos`
--

INSERT INTO `bancos` (`id`, `short_name`, `full_name`) VALUES
(2, 'BANAMEX', 'Banco Nacional de México, S.A., Institución de Banca Múltiple, Grupo\nFinanciero Banamex'),
(6, 'BANCOMEXT', 'Banco Nacional de Comercio Exterior, Sociedad Nacional de Crédito,\nInstitución de Banca de Desarrollo'),
(9, 'BANOBRAS', 'Banco Nacional de Obras y Servicios Públicos, Sociedad Nacional de\nCrédito, Institución de Banca de Desarrollo'),
(12, 'BBVA BANCOMER', 'BBVA Bancomer, S.A., Institución de Banca Múltiple, Grupo Financiero BBVA\nBancomer'),
(14, 'SANTANDER', 'Banco Santander (México), S.A., Institución de Banca Múltiple, Grupo\nFinanciero Santander'),
(19, 'BANJERCITO', 'Banco Nacional del Ejército, Fuerza Aérea y Armada, Sociedad Nacional de\nCrédito, Institución de Banca de Desarrollo'),
(21, 'HSBC', 'HSBC México, S.A., institución De Banca Múltiple, Grupo Financiero HSBC'),
(30, 'BAJIO', 'Banco del Bajío, S.A., Institución de Banca Múltiple'),
(32, 'IXE', 'IXE Banco, S.A., Institución de Banca Múltiple, IXE Grupo Financiero'),
(36, 'INBURSA', 'Banco Inbursa, S.A., Institución de Banca Múltiple, Grupo Financiero Inbursa'),
(37, 'INTERACCIONES', 'Banco Interacciones, S.A., Institución de Banca Múltiple'),
(42, 'MIFEL', 'Banca Mifel, S.A., Institución de Banca Múltiple, Grupo Financiero Mifel'),
(44, 'SCOTIABANK', 'Scotiabank Inverlat, S.A.'),
(58, 'BANREGIO', 'Banco Regional de Monterrey, S.A., Institución de Banca Múltiple, Banregio\nGrupo Financiero'),
(59, 'INVEX', 'Banco Invex, S.A., Institución de Banca Múltiple, Invex Grupo Financiero'),
(60, 'BANSI', 'Bansi, S.A., Institución de Banca Múltiple'),
(62, 'AFIRME', 'Banca Afirme, S.A., Institución de Banca Múltiple'),
(72, 'BANORTE', 'Banco Mercantil del Norte, S.A., Institución de Banca Múltiple, Grupo\nFinanciero Banorte'),
(102, 'THE ROYAL BANK', 'The Royal Bank of Scotland México, S.A., Institución de Banca Múltiple'),
(103, 'AMERICAN EXPRESS', 'American Express Bank (México), S.A., Institución de Banca Múltiple'),
(106, 'BAMSA', 'Bank of America México, S.A., Institución de Banca Múltiple, Grupo\nFinanciero Bank of America'),
(108, 'TOKYO', 'Bank of Tokyo-Mitsubishi UFJ (México), S.A.'),
(110, 'JP MORGAN', 'Banco J.P. Morgan, S.A., Institución de Banca Múltiple, J.P. Morgan Grupo\nFinanciero'),
(112, 'BMONEX', 'Banco Monex, S.A., Institución de Banca Múltiple'),
(113, 'VE POR MAS', 'Banco Ve Por Mas, S.A. Institución de Banca Múltiple'),
(116, 'ING', 'ING Bank (México), S.A., Institución de Banca Múltiple, ING Grupo\nFinanciero'),
(124, 'DEUTSCHE', 'Deutsche Bank México, S.A., Institución de Banca Múltiple'),
(126, 'CREDIT SUISSE', 'Banco Credit Suisse (México), S.A. Institución de Banca Múltiple, Grupo\nFinanciero Credit Suisse (México)'),
(127, 'AZTECA', 'Banco Azteca, S.A. Institución de Banca Múltiple.'),
(128, 'AUTOFIN', 'Banco Autofin México, S.A. Institución de Banca Múltiple'),
(129, 'BARCLAYS', 'Barclays Bank México, S.A., Institución de Banca Múltiple, Grupo Financiero\nBarclays México'),
(130, 'COMPARTAMOS', 'Banco Compartamos, S.A., Institución de Banca Múltiple'),
(131, 'BANCO FAMSA', 'Banco Ahorro Famsa, S.A., Institución de Banca Múltiple'),
(132, 'BMULTIVA', 'Banco Multiva, S.A., Institución de Banca Múltiple, Multivalores Grupo\nFinanciero'),
(133, 'ACTINVER', 'Banco Actinver, S.A. Institución de Banca Múltiple, Grupo Financiero Actinver'),
(134, 'WAL-MART', 'Banco Wal-Mart de México Adelante, S.A., Institución de Banca Múltiple'),
(135, 'NAFIN', 'Nacional Financiera, Sociedad Nacional de Crédito, Institución de Banca de\nDesarrollo'),
(136, 'INTERBANCO', 'Inter Banco, S.A. Institución de Banca Múltiple'),
(137, 'BANCOPPEL', 'BanCoppel, S.A., Institución de Banca Múltiple'),
(138, 'ABC CAPITAL', 'ABC Capital, S.A., Institución de Banca Múltiple'),
(139, 'UBS BANK', 'UBS Bank México, S.A., Institución de Banca Múltiple, UBS Grupo Financiero'),
(140, 'CONSUBANCO', 'Consubanco, S.A. Institución de Banca Múltiple'),
(141, 'VOLKSWAGEN', 'Volkswagen Bank, S.A., Institución de Banca Múltiple'),
(143, 'CIBANCO', 'CIBanco, S.A.'),
(145, 'BBASE', 'Banco Base, S.A., Institución de Banca Múltiple'),
(166, 'BANSEFI', 'Banco del Ahorro Nacional y Servicios Financieros, Sociedad Nacional de\nCrédito, Institución de Banca de Desarrollo'),
(168, 'HIPOTECARIA\nFEDERAL', 'Sociedad Hipotecaria Federal, Sociedad Nacional de Crédito, Institución de\nBanca de Desarrollo'),
(600, 'MONEXCB', 'Monex Casa de Bolsa, S.A. de C.V. Monex Grupo Financiero'),
(601, 'GBM', 'GBM Grupo Bursátil Mexicano, S.A. de C.V. Casa de Bolsa'),
(602, 'MASARI', 'Masari Casa de Bolsa, S.A.'),
(605, 'VALUE', 'Value, S.A. de C.V. Casa de Bolsa'),
(606, 'ESTRUCTURADORES', 'Estructuradores del Mercado de Valores Casa de Bolsa, S.A. de C.V.'),
(607, 'TIBER', 'Casa de Cambio Tiber, S.A. de C.V.'),
(608, 'VECTOR', 'Vector Casa de Bolsa, S.A. de C.V.'),
(610, 'B&B', 'B y B, Casa de Cambio, S.A. de C.V.'),
(614, 'ACCIVAL', 'Acciones y Valores Banamex, S.A. de C.V., Casa de Bolsa'),
(615, 'MERRILL LYNCH', 'Merrill Lynch México, S.A. de C.V. Casa de Bolsa'),
(616, 'FINAMEX', 'Casa de Bolsa Finamex, S.A. de C.V.'),
(617, 'VALMEX', 'Valores Mexicanos Casa de Bolsa, S.A. de C.V.'),
(618, 'UNICA', 'Unica Casa de Cambio, S.A. de C.V.'),
(619, 'MAPFRE', 'MAPFRE Tepeyac, S.A.'),
(620, 'PROFUTURO', 'Profuturo G.N.P., S.A. de C.V., Afore'),
(621, 'CB ACTINVER', 'Actinver Casa de Bolsa, S.A. de C.V.'),
(622, 'OACTIN', 'OPERADORA ACTINVER, S.A. DE C.V.'),
(623, 'SKANDIA', 'Skandia Vida, S.A. de C.V.'),
(626, 'CBDEUTSCHE', 'Deutsche Securities, S.A. de C.V. CASA DE BOLSA'),
(627, 'ZURICH', 'Zurich Compañía de Seguros, S.A.'),
(628, 'ZURICHVI', 'Zurich Vida, Compañía de Seguros, S.A.'),
(629, 'SU CASITA', 'Hipotecaria Su Casita, S.A. de C.V. SOFOM ENR'),
(630, 'CB INTERCAM', 'Intercam Casa de Bolsa, S.A. de C.V.'),
(631, 'CI BOLSA', 'CI Casa de Bolsa, S.A. de C.V.'),
(632, 'BULLTICK CB', 'Bulltick Casa de Bolsa, S.A., de C.V.'),
(633, 'STERLING', 'Sterling Casa de Cambio, S.A. de C.V.'),
(634, 'FINCOMUN', 'Fincomún, Servicios Financieros Comunitarios, S.A. de C.V.'),
(636, 'HDI SEGUROS', 'HDI Seguros, S.A. de C.V.'),
(637, 'ORDER', 'Order Express Casa de Cambio, S.A. de C.V'),
(638, 'AKALA', 'Akala, S.A. de C.V., Sociedad Financiera Popular'),
(640, 'CB JPMORGAN', 'J.P. Morgan Casa de Bolsa, S.A. de C.V. J.P. Morgan Grupo Financiero'),
(642, 'REFORMA', 'Operadora de Recursos Reforma, S.A. de C.V., S.F.P.'),
(646, 'STP', 'Sistema de Transferencias y Pagos STP, S.A. de C.V.SOFOM ENR'),
(647, 'TELECOMM', 'Telecomunicaciones de México'),
(648, 'EVERCORE', 'Evercore Casa de Bolsa, S.A. de C.V.'),
(649, 'SKANDIA', 'Skandia Operadora de Fondos, S.A. de C.V.'),
(651, 'SEGMTY', 'Seguros Monterrey New York Life, S.A de C.V'),
(652, 'ASEA', 'Solución Asea, S.A. de C.V., Sociedad Financiera Popular'),
(653, 'KUSPIT', 'Kuspit Casa de Bolsa, S.A. de C.V.'),
(655, 'SOFIEXPRESS', 'J.P. SOFIEXPRESS, S.A. de C.V., S.F.P.'),
(656, 'UNAGRA', 'UNAGRA, S.A. de C.V., S.F.P.'),
(659, 'OPCIONES EMPRESARIALES\nDEL NOROESTE', '\nOPCIONES EMPRESARIALES DEL NORESTE, S.A. DE C.V., S.F.P.'),
(670, 'LIBERTAD', 'Libertad Servicios Financieros, S.A. De C.V.'),
(901, 'CLS', 'Cls Bank International'),
(902, 'INDEVAL', 'SD. Indeval, S.A. de C.V.'),
(999, 'N/A', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bancos`
--
ALTER TABLE `bancos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
