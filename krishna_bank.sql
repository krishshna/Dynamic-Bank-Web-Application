

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Krishna', 'Mouli', 200, '2023-10-11 14:30:00'),
(2, 'Saneet', 'Ankit', 200, '2023-10-11 14:35:00'),
(3, 'Martin Scorsese', 'James Cameron', 5000, '2023-10-11 14:40:00'),
(4, 'Steve Jobs', 'Mukesh Ambani', 5000, '2023-10-11 14:45:00'),
(5, 'Mark', 'Shakira', 500, '2023-10-11 14:50:00'),
(6, 'Mukesh Ambani', 'Ariana Grande', 200, '2023-10-11 14:55:00'),
(7, 'Krishna', 'Mouli', 500, '2023-10-11 15:00:00'),
(8, 'Saneet', 'Ankit', 520, '2023-10-11 15:05:00'),
(9, 'Martin Scorsese', 'James Cameron', 1000, '2023-10-11 15:10:00'),
(10, 'Steve Jobs', 'Mukesh Ambani', 2500, '2023-10-11 15:15:00');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(7865, 'Krishna', 'krishna@email.com', 46600),
(2459, 'Mouli', 'mouli@email.com', 30620),
(5432, 'Martin Scorsese', 'james@email.com', 40000),
(9812, 'James Cameron', 'steve@email.com', 48800),
(3690, 'Steve Jobs', 'mark@email.com', 35000),
(5123, 'Mukesh Ambani', 'mukesh@email.com', 49500),
(1547, 'Shakira', 'shakira@email.com', 40000),
(8764, 'Ariana Grande', 'ariana@email.com', 49480),
(6321, 'John Doe', 'john@email.com', 40000),
(4420, 'Jane Smith', 'jane@email.com', 30000);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
