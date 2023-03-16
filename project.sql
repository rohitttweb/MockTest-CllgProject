-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 04:19 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `aptitude`
--

CREATE TABLE `aptitude` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_ans` text NOT NULL,
  `topic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aptitude`
--

INSERT INTO `aptitude` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_ans`, `topic`) VALUES
(1, 'A student was asked to find the arithmetic mean of the following 12 numbers:\n3, 11, 7, 9, 15, 13, 8, 19, 17, 21, 14 and x. He found the mean to be 12.\nThe value of x will be:', '3', '7', '17', '31', '7', 'Average'),
(2, 'The average of the marks obtained in an examination by 8 students was 51 and by 9 other students was 68. The average marks of all 17 students was :', '59', '59.5', '60', '60.5', '60', 'Average'),
(3, 'If the average marks of three batches of 55, 60 and 45 students respectively is 50, 55 and 60, then the average marks of all the students is', '54.68', '53.33', '55', 'None of these', '54.68', 'Average'),
(4, 'The average of 30 results is 20 and the average of other 20 results is 30. What is the average of all the results ?', '24', '48', '25', '50', '24', 'Average'),
(5, 'If the average weight of 6 students is 50 kg; that of 2 students is 51 kg; and that of other 2 students is 55 kg; then the average weight of all students is', '61 kg', '51.5 kg', '52 kg', '51.2 kg', '51.2 kg', 'Average'),
(6, 'The average of 10 numbers is 7. If each number is multiplied by 12, then the average of the new set of numbers will be', '7', '19', '82', '84', '84', 'Average'),
(7, 'The average income of 40 persons is 4200 and that of another 35 persons is 4000. The average income of the whole group is :', '4100', '4106 * 1/3', '4106 * 2/3', '4108 * 1/3', '4106 * 2/3', 'Average'),
(8, 'The average weight of five persons sitting in a boat is 38 kg. The average weight of the boat and the persons sitting in the boat is 52kg. What is the weight of the boat ?', '228 kg', '122 kg', '232 kg', '242 kg', '122 kg', 'Average'),
(9, 'The average marks of 32 boys of section A of class X is 60 whereas the average marks of 40 boys of section B of class X is 33. The average marks for both the sections combined together is', '44', '45', '46.5', '45.5', '45', 'Average'),
(10, 'Total weekly emoluments of the workers of a factory is 1534. Average weekly emolument of a worker is 118. The number of workers in the factory is :', '16', '14', '13', '12', '13', 'Average'),
(11, '12 kg of rice costing 30 per kg is mixed with 8 kg of rice costing 40 per kg. The average per kg price of mixed rice is', '38', '37', '35', '34', '34', 'Average'),
(12, 'If average of 20 observations x1 , x2 , ..... , x20 is y, then the average of x1 – 101, x2 - 101, x3 – 101, ..... , x20 –101 is', 'y – 20', 'y - 101', '20y', '101y', 'y - 101', 'Average'),
(13, 'The average of x numbers is y and average of y numbers is x. Then the average of all the numbers taken together is', 'x + y / 2xy', '2xy / x + y', 'x^2 + y^2 / x + y', 'xy / x + y', '2xy / x + y', 'Average'),
(15, 'A man bought 13 articles at 70 each, 15 at 60 each and 12 at 65 each. The average price per article is', '60.25', '64.75', '65.75', '62.25', '64.75', 'Average'),
(16, 'A library has an average number of 510 visitors on Sunday and 240 on other days. The average number of visitors per day in a month of 30 days beginning with Sunday is :', '285', '295', '300', '290', '285', 'Average'),
(17, 'The average of 30 numbers is 40 and that of other 40 numbers is 30. The average of all the numbers is', '34 * 2/7', '35', '34', '34.5', '34 * 2/7', 'Average'),
(18, 'The average of 20 numbers is 15 and the average of first five is 12. The average of the rest is', '16', '15', '14', '13', '16', 'Average'),
(19, 'The average monthly expenditure of a family is 2,200 during first three months, 2,550 during next four months and 3,120 during last five months of the year. If the total savings during the year was 1,260, what is the average monthly income ?', '1,260', '1,280', '2,805', '2,850', '2,805', 'Average'),
(20, 'Find the average of 1.11, 0.01, 0.101, 0.001, 0.11', '0.2664', '0.2554', '0.1264', '0.1164', '0.2664', 'Average'),
(21, '4 boys and 3 girls spent 120 on the average, of which boys spent 150 on the average. Then the average amount spent by the girls is', '80', '60', '90', '100', '80', 'Average'),
(22, 'Six tables and twelve chairs were bought for 7,800. If the average price of a table is 750, then the average price of a chair would be', '250', '275', '150', '175', '275', 'Average'),
(23, 'Out of 20 boys, 6 are each of 1 m 15 cm height, 8 are of 1 m 10 cm and rest of 1 m 12 cm. The average height of all of them is', '1 m 12.1 cm', '1 m 21.1 cm', '1 m 21 cm', '1 m 12 cm', '1 m 12.1 cm', 'Average'),
(24, 'There are two groups A and B of a class, consisting of 42 and 28 students respectively. If the average weight of group A is 25 kg and that of group B is 40 kg, find the average weight of the whole class.', '69 kg', '31 kg', '70 kg', '30 kg', '31 kg', 'Average'),
(25, 'If 80% of A = 50% of B and B = x% of A, then the value of x is :', '400', '300', '160', '150', '160', 'Percentage'),
(26, 'If x is 80% of y, what percent of y is x ?', '75%', '80%', '100%', '125%', '125%', 'Percentage'),
(27, 'If 8% of x is the same as 4% of y, then 20% of x is the same as:', '10% of y', '16% of y', '80% of y', '50% of y', '10% of y', 'Percentage'),
(28, 'A student multiplied a number by 3/5 instead of 5/3. What is the percentage error in the calculation ?', '44%', '34%', '54%', '64%', '64%', 'Percentage'),
(29, 'If p% of p is 36, then p is equal to :', '3600', '600', '60', '15', '60', 'Percentage'),
(30, '2 is what percent of 50?', '2', '2.5', '4', '5', '4', 'Percentage'),
(31, '2/3 is what percent of 1/3 ?', '50%', '33.3%', '150%', '200%', '200%', 'Percentage'),
(32, '0.15% of 33 * 1/3% of 10000 is :', '5', '150', '0.05', '105', '5', 'Percentage'),
(33, '30% of x is 72. The value of x is:', '216', '240', '480', '640', '240', 'Percentage'),
(34, 'If 15% of (A + B) = 25% of (A – B), then what per cent of B is equal to A?', '10%', '60%', '200%', '400%', '400%', 'Percentage'),
(35, 'What is 20% of 25% of 300?', '150', '60', '45', '15', '15', 'Percentage'),
(36, 'If x% of 25/2 is 150, then the', '1000', '1200', '1400', '1500', '1200', 'Percentage'),
(37, 'If 50% of (x – y) = 30% of (x + y), then what per cent of x is y?', '25%', '33.33%', '40%', '400%', '25%', 'Percentage'),
(38, 'If 50 % of P = 25% of Q, then P = x% of Q. Find x.', '0.5', '2', '50', '0.005', '50', 'Percentage'),
(39, 'If 20% of A = 50% of B, then what per cent of A is B ?', '30%', '40%', '25%', '15%', '40%', 'Percentage'),
(40, 'In a school 40% of the students play football and 50% play cricket. If 18% of the students neither play football nor cricket, the percentage of the students playing both is :', '40%', '32%', '22%', '8%', '8%', 'Percentage'),
(41, 'If 20% of (P + Q) = 50% of (P –Q), then find P : Q', '7 : 8', '7 : 3', '7 : 5', '5 : 7', '7 : 3', 'Percentage'),
(42, '0.01 is what per cent of 0.1 ?', '10', '1/10', '100', '1/100', '10', 'Percentage'),
(43, '65g is what per cent of 2 kg ?', '13/4', '65/2', '15/8', '13/8', '13/4', 'Percentage'),
(44, 'Half of 1 per cent, written as a decimal, is', '0.2', '0.02', '0.005', '0.05', '0.005', 'Percentage'),
(45, 'The time duration of 1 hour 45 minutes is what percent of a day?', '7.218 %', '7.292 %', '8.3 %', '8.24 %', '7.292 %', 'Percentage'),
(46, '1.14 expressed as a per cent of 1.9 is', '6%', '10%', '60%', '90%', '60%', 'Percentage'),
(47, '32 is what per cent of 80 ?', '24%', '25.6%', '36%', '40%', '40%', 'Percentage'),
(48, 'If 90% of A = 30% of B and B = x% of A, then the value of x is', '800', '300', '700', '400', '300', 'Percentage'),
(49, 'If 90% of A = 30% of B and B = 2x% of A, then the value of x is', '450', '400', '300', '150', '150', 'Percentage'),
(50, 'If 30% of A is added to 40% of B, the answer is 80% of B. What percentage of A is B?', '30%', '40%', '70%', '75%', '75%', 'Percentage'),
(51, 'If 40% of (A + B) = 60% of (A – B) then 2A - 3B / A + B is', '7/6', '6/7', '5/6', '6/5', '7/6', 'Percentage'),
(52, '0.001 is equivalent to', '10%', '1%', '0.01%', '0.1%', '0.1%', 'Percentage'),
(53, 'What percent of 3.5 kg is 70 gms ?', '3%', '4%', '5%', '2%', '2%', 'Percentage'),
(54, 'One-third of 1206 is what percent of 134 ?', '100%', '150%', '200%', '300%', '300%', 'Percentage'),
(55, 'A man buys a cycle for 1400 and sells it at a loss of 15%. What is the selling price of the cycle?', '1202', '1190', '1160', '1000', '1190', 'Profit and Loss'),
(56, 'On selling an article for 651, there is a loss of 7%. The cost price of that article is', '744', '751', '793', '700', '700', 'Profit and Loss'),
(57, 'A milkman bought 70 litres of milk for 630 and added 5 litres of water. If he sells it at 9.00 per litre, his profit percentage is', '8 * 1/5 %', '7 %', '8 * 2/5 %', '7 * 1/7 %', '7 * 1/7 %', 'Profit and Loss'),
(58, 'In terms of percentage profit,\nwhich is the best transaction?\n<b>C.P. (in ) Profit (In )</b>\n(I) 36 -------- 17\n(II) 50 ------- 24\n(III) 40 ------- 19\n(IV) 60 ------- 29', '(I)', '(II)', '(III)', '(IV)', '(IV)', 'Profit and Loss'),
(59, 'A man bought an old typewriter for 1200 and spent 200 on its repair. He sold it for 1680. His profit per cent is :', '20%', '10%', '8%', '16%', '20%', 'Profit and Loss'),
(60, 'If the cost price is 95% of the selling price, what is the profit percent ?', '4%', '4.75%', '5%', '5.26%', '5.26%', 'Profit and Loss'),
(61, 'A merchant buys an article for 27 and sells it at a profit of 10% of the selling price. The selling price of the article is :', '29.70', '30', '37', '32', '30', 'Profit and Loss'),
(62, 'If the cost price of an article is 80% of its selling price, the profit per cent is :', '20%', '22.5%', '24%', '25%', '25%', 'Profit and Loss'),
(63, 'Krishnan bought a camera and paid 20% less than its original price. He sold it at 40% profit on the price he had paid. The percentage of profit earned by Krishnan on the original price was', '22%', '32%', '12%', '15%', '12%', 'Profit and Loss'),
(64, 'By what per cent must the cost price be raised in fixing the sale price in order that there may be a profit of 20% after allowing a commission of 10% ?', '25%', '133.33%', '33.33%', '30%', '33.33%', 'Profit and Loss'),
(65, 'By selling an article, a man makes a profit of 25% of its selling price. His profit per cent is', '20%', '25%', '16 * 2/3%', '33.33%', '33.33%', 'Profit and Loss'),
(66, 'If there is a profit of 20% on the cost price of an article, the percentage of profit calculated on its selling price will be', '24', '16 * 2/3', '8 * 1/3', '20', '16 * 2/3', 'Profit and Loss'),
(67, 'A man purchased a bedsheet for j 450 and sold it at a gain of 10% calculated on the selling price. The selling price of the bedsheet was', '460', '475', '480', '500', '500', 'Profit and Loss'),
(68, 'By selling an article for 960 a man incurs a loss of 4%; what was the cost price ?', '1000', '784', '498.4', '300', '1000', 'Profit and Loss'),
(69, 'A salesman expects a gain of 13% on his cost price. If in a month his sale was 7,91,000, what was his profit ?', '85,659', '88,300', '91,000', '97,786', '91,000', 'Profit and Loss'),
(70, 'By selling a car for 64,000, Mr. Rao lost 20%. Then the cost price of the car is :', '72,000', '76,800', '80,000', '84,000', '80,000', 'Profit and Loss'),
(71, 'A retailer buys a radio for 225. His overhead expenses are 15. He sells the radio for 300. The profit per cent of the retailer is :', '25%', '26 * 2/3%', '20%', '33 * 1/3%', '25%', 'Profit and Loss'),
(72, 'An item when sold for 1,690 earned 30% profit on the cost price. Then the cost price is', '507', '630', '1300', '130', '1300', 'Profit and Loss'),
(73, 'A fan is listed at 150 and a discount of 20% is given. Then the selling price is', '180', '150', '120', '110', '120', 'Profit and Loss'),
(74, 'By selling 33 metres of cloth, a person gains the cost of 11 metres. Find his gain%.', '33 * 1/3%', '33.5 %', '33%', '34 * 1/3%', '33 * 1/3%', 'Profit and Loss');

-- --------------------------------------------------------

--
-- Table structure for table `general_awareness`
--

CREATE TABLE `general_awareness` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_ans` text NOT NULL,
  `topic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reasoning`
--

CREATE TABLE `reasoning` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_ans` text NOT NULL,
  `topic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `lastname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `name`, `lastname`) VALUES
('user1', '$2b$10$Fn9WKKoqd.xnXbuW2GZh8.wTb6RNSxtu8FxovppjSrGZP5wJ7CxHq', 'Rohit', 'kumar'),
('rohitttweb', '$2b$10$1ImcetsnbAsK7LhUbUO7geZMHoqnyvxKCPfV4o39N2eilcz1uE0DW', 'Rohit Kumar', ''),
('user2', '$2b$10$txMBQKJLDw6godJn7jXumudKoinNdwdC0Arh9DZwV85QQydQl9B8e', 'user2', ''),
('user3', '$2b$10$SrHv9GBGk8PIoq5pr73gUOitNF2brhqbGUHIQMyIO579STs5Zn5Ce', 'test user', ''),
('rohittt', '$2b$10$i4khzdu8QeD7h0OG0E2F9e8fjL6mTe0XWwSex0Fr8kEBa0unp6NZ6', 'rohittt', ''),
('user11', '$2b$10$ovvKTVRjaBRC/MEaHfaKie6V5YhUUW3adAEQO9p8PHI3BlTC7JLJi', 'user', ''),
('admin', '$2b$10$v5q4olELxg.3prnV/FKxvur.zWpuFdMoNwUsEY4mTxB/vMkSIARrS', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `verbal`
--

CREATE TABLE `verbal` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_ans` text NOT NULL,
  `topic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aptitude`
--
ALTER TABLE `aptitude`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_awareness`
--
ALTER TABLE `general_awareness`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reasoning`
--
ALTER TABLE `reasoning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- Indexes for table `verbal`
--
ALTER TABLE `verbal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aptitude`
--
ALTER TABLE `aptitude`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `general_awareness`
--
ALTER TABLE `general_awareness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reasoning`
--
ALTER TABLE `reasoning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verbal`
--
ALTER TABLE `verbal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
