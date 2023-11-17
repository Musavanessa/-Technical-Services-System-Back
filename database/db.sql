-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 08:23 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techservices`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `admin_id` bigint(20) NOT NULL,
  `admin_name` varchar(45) DEFAULT NULL,
  `admin_surname` varchar(45) DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `campus` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`admin_id`, `admin_name`, `admin_surname`, `gender`, `email`, `phone`, `campus`, `password`) VALUES
(202233345, 'Mike', 'Jones', 'male', 'mkike234@gmail.com', '0124578987', 'Soshanguve South', '#creQiZ@');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `faculty` varchar(75) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `venue` varchar(45) DEFAULT NULL,
  `telephone_num` char(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `faculty`, `department`, `venue`, `telephone_num`, `email`) VALUES
(1, 'Information Communication Technology', 'Department of Computer Science', '12-12', NULL, NULL),
(2, 'Information Communication Technology', 'Department of Informatics', '12-180', NULL, NULL),
(3, 'Information Communication Technology', 'Department of Information Technology', '12-G01', NULL, NULL),
(4, 'Information Communication Technology', 'Department of Computer Systems Engineering', '12-11', NULL, NULL),
(5, 'Information Communication Technology', 'ICT first years and foundation unit', '12-5', NULL, NULL),
(6, 'Information Communication Technology', 'End user computing', '12-11', NULL, NULL),
(7, 'Economics and Finances', 'Department of Accounting', '2-g02', NULL, NULL),
(8, 'Economics and Finances', 'Department of Auditing', '2-14', NULL, NULL),
(9, 'Economics and Finances', 'Department of Economics', '4-20', NULL, NULL),
(10, 'Economics and Finances', 'Department of Finance and Investment', '8-g05', NULL, NULL),
(11, 'Economics and Finances', 'Department of Public Sector Finance', '2-g02', NULL, NULL),
(12, 'Science', 'Department of Biomedical Sciences', '10-12', NULL, NULL),
(13, 'Science', 'Department of Chemistry', '10-110', NULL, NULL),
(14, 'Science', 'Department of Physics', '18-12', NULL, NULL),
(15, 'Science', 'Department of Biotechnology and food technolo', '10-12', NULL, NULL),
(16, 'Science', 'Department of Animal sciences', '10-121', NULL, NULL),
(17, 'Science', 'Adelaide Tambo School of nursing sciences', '10-101', NULL, NULL),
(18, 'Science', 'Mathematics and sciences', '10-101', NULL, NULL),
(19, 'Engineering and the Built Environment', 'Department of architecture and industrial des', '21-1', NULL, NULL),
(20, 'Engineering and the Built Environment', 'Department of building sciences', '21-g6', NULL, NULL),
(21, 'Engineering and the Built Environment', 'Department of chemical ,metallurgical and mat', '21-10', NULL, NULL),
(22, 'Engineering and the Built Environment', 'Department of civil engineering', '20-21', NULL, NULL),
(23, 'Engineering and the Built Environment', 'Department of electrical engineering', '21-5', NULL, NULL),
(24, 'Engineering and the Built Environment', 'Department of geomatics', '21-1', NULL, NULL),
(25, 'Engineering and the Built Environment', 'Department of industrial engineering', '21-1', NULL, NULL),
(26, 'Engineering and the Built Environment', 'Mechanical and mechatronics engineering', '21-1', NULL, NULL),
(27, 'Humanities', 'Department Applied languages', '17-1', NULL, NULL),
(28, 'Humanities', 'Department Integrated Communication', '17-1', NULL, NULL),
(29, 'Humanities', 'Department of law', '17-3', NULL, NULL),
(30, 'Humanities', 'Department of Public management', '17-3', NULL, NULL),
(31, 'Humanities', 'Department of Safety and security management', '17-3', NULL, NULL),
(32, 'Humanities', 'School of Education', '17-3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `id` int(11) NOT NULL,
  `division_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `division_name`) VALUES
(1, 'Plumbing'),
(2, 'Painting'),
(3, 'Carpentry'),
(4, 'Air Conditioning'),
(5, 'Electrical'),
(6, 'General (Water Proofing, Blinds & Glass)'),
(7, 'Engraving'),
(8, 'Buidling'),
(9, 'Lifts'),
(10, 'Metalwork (Welding & Fitting)');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `hod_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `campus` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`hod_id`, `name`, `surname`, `email`, `campus`, `password`, `department_id`) VALUES
(215890874, 'RC', 'Mogase', 'mogase@tut.ac.za', 'Soshanguve South', 'admin', 2),
(225896874, 'JC', 'Janse van Vuuren', 'tyson@tut.ac.za', 'Soshanguve South', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `division_id`) VALUES
(1, 'Wood Doors', 3),
(2, 'Burglar Door', 10),
(3, 'Ligh Bulb', 5),
(4, 'Geyser', 5),
(5, 'Printers', 5),
(6, 'Projector problem', 5),
(7, 'Wood Shelves', 3),
(8, 'Hardwood table issues', 3),
(9, 'Earth Leakage', 5),
(10, 'IT related', 5),
(11, 'Window frames', 8),
(12, 'Paving issues', 8),
(13, 'Flooring issues', 8),
(14, 'Broken Window Glass', 6),
(15, 'Broken gate', 10),
(16, 'Frequent burning out of light bulbs', 5),
(17, 'Electric shocks', 5),
(18, 'Less outlets', 5),
(19, 'Tripping circuit breaker', 5),
(20, 'Flickering light', 5),
(21, 'Switches of light not working', 5),
(22, 'A junction box that is uncovered', 5),
(23, 'Power sags and dips', 5),
(24, 'Overloading', 5),
(25, 'Electrical surges', 5),
(26, ' Frequent burning out of light bulbs', 5),
(27, 'Fading', 2),
(28, 'Water Marks', 2),
(29, 'Cracked Wall', 8),
(30, 'Unstable Pillars', 8),
(31, 'Unstable Walkway, Ramp & Bridge', 8),
(32, 'Exterior walls bulging or leaning', 8),
(33, 'Sagging roof and roof leaks', 8),
(34, 'Foundation problems', 8),
(35, 'Powdery or chalky surfaces on outside paint w', 2),
(36, 'Shrivelling and wrinkling', 2),
(37, 'Blistering and flaking', 2),
(38, 'Power failure', 9),
(39, 'Overheating', 9),
(40, 'Stuck doors', 9),
(41, 'Cracked panels', 9),
(42, 'Smoke or fire', 9),
(43, 'Safety gaps', 9),
(44, 'Stuck elavator', 9),
(45, 'Corroding metal furniture', 10),
(46, 'Rusty metal furniture', 10),
(47, 'Cracked window', 6),
(48, 'Air conditioning leaking water', 4),
(49, 'Air conditioning not blowing hot air', 4),
(50, 'Air conditioning not blowing cold air', 4),
(51, 'Air conditioning making noises', 4),
(52, 'Air conditioning power issue', 4),
(53, 'Dripping faucets', 1),
(54, 'Leaky pipes', 1),
(55, 'Running toilets', 1),
(56, 'Low water pressure', 1),
(57, 'Slow or clogged drains', 1),
(58, 'Sewer system backup', 1),
(59, 'Request for etching', 7),
(60, 'Request for inside ring engraving', 7),
(61, 'Request for laser engraving', 7),
(62, 'The lock is broken', 10),
(63, 'Key broken in lock', 10),
(64, 'Door will not close', 10),
(65, 'Back up generator did not commence ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` bigint(20) NOT NULL,
  `staff_name` varchar(45) DEFAULT NULL,
  `staff_surname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `campus` varchar(45) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_surname`, `email`, `phone`, `gender`, `campus`, `department_id`) VALUES
(202123345, 'Johanna', 'McAthurthy', 'mcathurthy4@tut4life.ac.za', '0127778360', 'female', 'Soshanguve South', 1),
(202458345, 'Dikeledi', 'Moepi', 'moepi@tut4life.ac.za', '0127878360', 'female', 'Ga-rankuwa', 5),
(212453459, 'Marcia', 'Smith', 'marciSmith@tut.ac.za', '0127796360', 'female', 'Pretoria', 5),
(212478003, 'Chris', 'Michael', 'Michael@tut.ac.za', '0187797825', 'male', 'eMalahleni', 5),
(212478113, 'Mpho', 'Tau', 'Mpho4@tut.ac.za', '0184589336', 'male', 'Polokwane', 5),
(212478123, 'Clarence', 'Sekoma', 'Sekoma@tut.ac.za', '0124584736', 'male', 'Acardia', 18),
(212478259, 'Loraine', 'Sekele', 'seleke@tut.ac.za', '0187799688', 'female', 'eMalahleni', 5),
(212879345, 'Thabo', 'Mokoena', 'mokoanaThab0@tut4life.ac.za', '0129354560', 'male', 'Arcadia', 15),
(222424345, 'James', 'Motaung', 'james34@tut4life.ac.za', '0124578965', 'male', 'Soshanguve South', 1),
(222466645, 'Jane', 'Moloi', 'janeMol01@tut4life.ac.za', '0124578365', 'female', 'Soshanguve South', 2);

-- --------------------------------------------------------

--
-- Table structure for table `technician`
--

CREATE TABLE `technician` (
  `tech_id` bigint(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `availability` enum('available','busy') NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `campus` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technician`
--

INSERT INTO `technician` (`tech_id`, `name`, `surname`, `phone`, `email`, `gender`, `availability`, `division_id`, `campus`, `password`) VALUES
(1478956, 'leago', 'Phidi', '0874596325', 'phidi2@gmail.com', 'male', 'available', 9, 'pretoria', 'mjsg'),
(14562369, 'Botlhale', 'Phasha', '0874596526', 'phasha22@gmail.com', 'female', 'available', 7, 'north', 'phasha'),
(20145789, 'Jimmy', 'Phasha', '0874596215', 'jimmyp3@gmail.com', 'male', 'available', 8, 'north', 'jimmy2'),
(21518934, 'Khumo', 'Seadimo', '012438895', 'khumo34@tut.ac.za', 'male', 'available', 2, 'Polokwane', 'khum0'),
(21574896, 'mickie', 'Leago', '0845263157', 'leagom@gmail.com', 'male', 'available', 3, 'north', 'leago3'),
(21611061, 'Sbusiso', 'Zwane', '012437845', 'ssbu@tut.ac.za', 'male', 'available', 5, 'Polokwane', '777'),
(21616051, 'Jimmy', 'Moloko', '012789123', 'JIM@tut.ac.za', 'male', 'available', 2, 'Ga-rankuwa', 'lesedi'),
(21632548, 'Thapelo', 'Mabena', '0784512639', 'mabneat@gmail.com', 'male', 'available', 6, 'south', 'thabs'),
(21666456, 'Lesedi', 'Rooi', '012789895', 'lesediLight@tut.ac.za', 'male', 'available', 1, 'Ga-rankuwa', 'lesedi'),
(21711162, 'Lebogang', 'Zwane', '012437845', 'lebza@tut.ac.za', 'male', 'available', 5, 'Polokwane', 'sbu'),
(21766660, 'Lesiba', 'Rampa', '012437895', 'lesa@tut.ac.za', 'male', 'available', 1, 'Polokwane', 'les'),
(21894865, 'Leon', 'Railey', '012437891', 'raileyL@tut.ac.za', 'male', 'available', 5, 'Pretoria', '1234'),
(21911060, 'Samkelo', 'Zungu', '012437876', 'sam@tut.ac.za', 'male', 'available', 2, 'Polokwane', 'katzxe'),
(21911168, 'Katlego', 'Maboe', '012438576', 'lats@tut.ac.za', 'male', 'available', 2, 'Acardia', '777'),
(21913457, 'Jason', 'Khubeka', '012778103', 'jasonk@tut.ac.za', 'male', 'available', 5, 'Pretoria', 'jason'),
(21913458, 'Jason', 'Khubeka', '012778103', 'jasonk@tut.ac.za', 'male', 'available', 1, 'Arcadia', 'jason'),
(21914818, 'Thabani', 'Zulu', '012637776', 'zuluNdabezitha@tut.ac.za', 'male', 'available', 1, 'Pretoria', 'thabani'),
(21915811, 'Dumisani', 'Mahlangu', '012637776', 'dubs@tut.ac.za', 'male', 'available', 2, 'Acardia', 'dumi23'),
(21916011, 'Jonathan', 'Bayers', '012778123', 'jona@tut.ac.za', 'male', 'available', 5, 'Ga-rankuwa', 'jon'),
(21918052, 'Phil', 'Matjila', '012789123', 'pmatjila@tut.ac.za', 'male', 'available', 6, 'Ga-rankuwa', '4857'),
(21918965, 'Katlego', 'Maboe', '012438576', 'lats@tut.ac.za', 'male', 'available', 2, 'Acardia', 'katzxe'),
(21933400, 'Jerah', 'Cliff', '012718113', 'jasonk@tut.ac.za', 'male', 'available', 6, 'Polokwane', 'jerah1'),
(21990052, 'Lesego', 'Radebe', '012434496', 'MLes2@tut.ac.za', 'male', 'available', 1, 'eMalahleni', 'les1'),
(25897486, 'John', 'Black', '0124578987', 'john@tut.ac.za', 'male', 'available', 1, 'Soshanguve South', 'john%Bl@ck'),
(25997850, 'Tebogo', 'Zwane', '0124345666', 'tebogoZwane@tut.ac.za', 'male', 'available', 5, 'Soshanguve South', 'tebogo'),
(25997859, 'Sifiso', 'Khumalo', '0124347852', 'Skhumalo@tut.ac.za', 'female', 'available', 2, 'Soshanguve South', 'sifis0'),
(25997936, 'Xolile', 'Dube', '0128745963', 'xoliDube@tut.ac.za', 'male', 'available', 5, 'Acardia', '1xoli'),
(25997958, 'Matthews', 'Kehla', '0124378152', 'MatKelha@tut.ac.za', 'male', 'available', 6, 'Soshanguve South', 'k123'),
(25998851, 'Mpho', 'Mashaba', '012437752', 'Mpho234@tut.ac.za', 'male', 'available', 5, 'eMalahleni', 'mpho1'),
(25999486, 'Sam', 'Modise', '0124574581', 'sammodise@tut.ac.za', 'male', 'available', 2, 'Soshanguve South', 's@mModI~3'),
(45896233, 'Thandi', 'Laduma', '0687451256', 'thandi7@gmail.com', 'female', 'available', 10, 'south', '9754'),
(124586633, 'Tshepo', 'Thibana', '0784596321', 'thibanat@gmail.com', 'male', 'available', 10, 'south', 'thiba'),
(125478965, 'Phuthi', 'Nkosi', '0784512369', 'phuthik@gmail.com', 'male', 'available', 4, 'ga-rankuwa', '8781'),
(154789652, 'Lerato', 'Phuthi', '0874589652', 'phuthi@gmail.com', 'female', 'available', 9, 'north', 'p123'),
(213654789, 'Musa', 'Lebisi', '0784596321', 'lebisim2@gmail.com', 'female', 'available', 4, 'ga-rankuwa', '09162'),
(214789563, 'Thando', 'Paledi', '0789654125', 'thando12@gmail.com', 'male', 'available', 3, 'pretoria', 'paledi25'),
(215478936, 'Thando', 'Khoza', '0968457956', 'thando2@gmail.com', 'female', 'available', 6, 'north', '12354'),
(215632154, 'Boikano', 'Malebu', '0856947589', 'malebu3@gmail.com', 'male', 'available', 4, 'ga-rankuwa', '35fcd'),
(215748965, 'Banele', 'magagula', '084596321', 'banele3@gmail.com', 'female', 'available', 6, 'north', 'cgb3'),
(215778993, 'Thapelo', 'Mpofu', '0789654125', 'thabs4@gmail.com', 'male', 'available', 10, 'north', 'm3414'),
(217894563, 'Khumo', 'Khune', '0789654126', 'khune56@gmail.com', 'male', 'available', 3, 'ga-rankuwa', 'dfvs'),
(217895463, 'Lebo', 'mabena', '0856478965', 'mabena452gmail.com', 'female', 'available', 10, 'pretoria', '354454'),
(217895635, 'Thapelo', 'Mbamba', '0789546236', 'mbambae@gmail.com', 'male', 'available', 7, 'pretoria', '1234'),
(218965478, 'gugu', 'nkosi', '0874587965', 'gugulethu@gmail.com', 'female', 'available', 8, 'ga-rankuwa', '45bhbht'),
(587495166, 'Neo', 'Mabasa', '0784512369', 'neo2@gmail.com', 'female', 'available', 3, 'pretoria', 'mab2324'),
(2139654785, 'Johnathan', 'wlliams', '0789654815', 'williamse@gmail.com', 'male', 'available', 10, 'mbombela', 'wi322'),
(2157896423, 'refilwe', 'Masuku', '0896547895', 'masukur2@gmail.com', 'male', 'available', 9, 'south', 'li323'),
(2157896453, 'Thabo', 'Nkosi', '0784596321', 'nkosi4@gmail.com', 'male', 'available', 4, 'pretoria', '1313'),
(2159647856, 'priscilla', 'Williams', '0637388660', 'williamsv@gmail.com', 'female', 'available', 3, 'north', 'pr132'),
(2189653478, 'Nthabi', 'Phuthi', '0896541756', 'nthabi3@gmail.com', 'female', 'available', 3, 'north', 'phu354'),
(2198745695, 'Thabang', 'Moagi', '0847896521', 'moagu78@gmail.com', 'male', 'available', 10, 'pretoria', '');

-- --------------------------------------------------------

--
-- Table structure for table `work_request`
--

CREATE TABLE `work_request` (
  `id` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `req_date` date DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `venue` varchar(45) DEFAULT NULL,
  `image` blob DEFAULT NULL,
  `progress` varchar(45) DEFAULT NULL,
  `staff_feedback` text DEFAULT NULL,
  `tech_feedback` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` enum('active','closed') DEFAULT NULL,
  `completed_date` date DEFAULT NULL,
  `assigned_date` date DEFAULT NULL,
  `expected_date` date DEFAULT NULL,
  `completion_time` varchar(5) DEFAULT NULL,
  `expected_time` varchar(5) DEFAULT NULL,
  `closed_date` varchar(45) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `tech_id` bigint(20) DEFAULT NULL,
  `staff_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_request`
--

INSERT INTO `work_request` (`id`, `description`, `req_date`, `category`, `priority`, `venue`, `image`, `progress`, `staff_feedback`, `tech_feedback`, `rating`, `status`, `completed_date`, `assigned_date`, `expected_date`, `completion_time`, `expected_time`, `closed_date`, `admin_id`, `tech_id`, `staff_id`) VALUES
(1674584557236, 'Lights not going on', '2023-04-25', 'Electrical', NULL, '10-1', '', 'pending', '', '', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 212478259),
(1678584235896, 'Flickering lights', '2023-04-10', 'Electrical', 'High', '4-112', '', 'complete', 'sorted', 'lights changed', 3, 'closed', '2023-04-14', '2023-04-13', NULL, NULL, NULL, NULL, 202233345, 25997936, 222466645),
(1678584330959, 'Blocked toilets', '2023-03-15', 'Plumbing', 'High', '10-112', '', 'complete', 'sorted', 'pipes changed', 3, 'closed', '2023-03-19', '2023-03-19', NULL, NULL, NULL, NULL, 202233345, 25897486, 222466645),
(1678584897459, 'No hot water', '2023-04-20', 'Electrical', 'High', '11-62', '', 'complete', 'sorted', 'thermostat replaced', 3, 'closed', '2023-04-23', '2023-04-23', NULL, NULL, NULL, NULL, 202233345, 25997936, 222466645),
(1678684550957, 'PC not switching on', '2023-03-15', 'Hardware', 'High', '10-102', '', 'complete', 'sorted', 'hardware components changed', 3, 'closed', NULL, NULL, NULL, NULL, NULL, NULL, 202233345, 25999486, 222466645),
(1678784590556, 'Blue screen', '2023-03-06', 'Hardware', 'High', '10-112', '', 'complete', 'the issue is sorted', 'done with task', 4, 'active', NULL, NULL, NULL, NULL, NULL, NULL, 202233345, 25999486, 212879345),
(1678884550551, 'Burst water pipe', '2023-03-23', 'Plumbing', 'High', '10-1', '', 'on-hold', 'sorted', 'pipes ordered', 3, 'active', NULL, '2023-03-29', NULL, NULL, NULL, NULL, 202233345, 25897486, 212478113),
(1678884550556, 'Leaking taps', '2023-03-20', 'Plumbing', 'High', '10-g28', '', 'in-progress', NULL, NULL, NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, 202233345, 25897486, 222424345),
(1678884557896, 'Shattered windows', '2023-03-25', 'Glass', NULL, '10-1', '', 'pending', '', '', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 212478113);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`hod_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `technician`
--
ALTER TABLE `technician`
  ADD PRIMARY KEY (`tech_id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `work_request`
--
ALTER TABLE `work_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tech_id` (`tech_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hod`
--
ALTER TABLE `hod`
  ADD CONSTRAINT `hod_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `technician`
--
ALTER TABLE `technician`
  ADD CONSTRAINT `technician_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`);

--
-- Constraints for table `work_request`
--
ALTER TABLE `work_request`
  ADD CONSTRAINT `work_request_ibfk_1` FOREIGN KEY (`tech_id`) REFERENCES `technician` (`tech_id`),
  ADD CONSTRAINT `work_request_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `administrator` (`admin_id`),
  ADD CONSTRAINT `work_request_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
