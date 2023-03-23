-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 04:17 AM
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
(74, 'By selling 33 metres of cloth, a person gains the cost of 11 metres. Find his gain%.', '33 * 1/3%', '33.5 %', '33%', '34 * 1/3%', '33 * 1/3%', 'Profit and Loss'),
(75, 'If a : b = 7 : 9 and b : c =15 : 7, then what is a : c?', '5 : 3', '3 : 5', '7 : 21', '7 : 15', '5 : 3', 'Ratios and Proportions'),
(76, 'If p : q = r : s = t : u = 2 : 3, then (mp + nr + ot) : (mq + ns + ou) is equal to :', '1 : 3', '1 : 2', '2 : 3', '3 : 2', '2 : 3', 'Ratios and Proportions'),
(77, 'If a : b = c : d = e : f = 1 : 2, then (pa + qc + re) : (pb + qd + rf) is equal to :', 'p : (q + r)', '(p + q) : r', '2 : 3', '1 : 2', '1 : 2', 'Ratios and Proportions'),
(78, 'If x : y = 3 : 1, then x^3 – y^3 : x^3 + y3 = ?', '13 : 14', '14 : 13', '10 : 11', '11 : 10', '13 : 14', 'Ratios and Proportions'),
(79, 'The fourth proportional to 0.12, 0.21, 8 is :', '8.9', '56', '14', '17', '14', 'Ratios and Proportions'),
(80, 'If m : n = 3 : 2, then (4m + 5n) : (4m – 5n) is equal to :', '4 : 9', '9 : 4', '11 : 1', '9 : 1', '11 : 1', 'Ratios and Proportions'),
(81, 'If A : B = 3 : 4, B : C = 5 : 7 and C : D = 8 : 9 then A : D is equal to', '3 : 7', '7 : 3', '21 : 10', '10 : 21', '10 : 21', 'Ratios and Proportions'),
(82, 'If a : b = 2/9 : 1/3, b : c = 2/7 : 5/14 and d : c = 7/10 : 3/5 then a : b : c : d is', '4 : 6 : 7 : 9', '16 : 24 : 30 : 35', '8 : 12 : 15 : 7', '30 : 35 : 24 : 16', '16 : 24 : 30 : 35', 'Ratios and Proportions'),
(83, 'If b is the mean proportional of a and c, then (a – b)^3 : (b – c)^3 equals', 'a^3 : c^3', 'b^2 : c^2', 'a^2 : c^2', 'a^3 : b^3', 'a^3 : b^3', 'Ratios and Proportions'),
(84, '6200 divided into three parts proportional to 1/2 : 1/3 : 1/5 are respectively', '3000, 2000, 1200', '3500, 1500, 1200', '2500, 2000, 1700', '2200, 3000, 1000', '3000, 2000, 1200', 'Ratios and Proportions'),
(85, '94 is divided into two parts in such a way that the fifth part of the first and the eighth part of the second are in the ratio 3 : 4. The first part is :', '30', '36', '40', '28', '30', 'Ratios and Proportions'),
(86, 'If a : b = 5 : 7 and c : d = 2a : 3b, then ac : bd is :', '20 : 38', '50 : 147', '10 : 21', '50 : 151', '50 : 147', 'Ratios and Proportions'),
(87, 'If a : b = c : d = e : f = 1 : 2, then ( 3a + 5c +7e): (3b + 5d + 7 f ) is', '8 : 7', '2 : 1', '1 : 4', '1 : 2', '1 : 2', 'Ratios and Proportions'),
(88, 'If a : (b+c) = 1 : 3 and c : (a+ b) = 5:7, then b : (a+c) is equal to', '1 : 2', '2 : 3', '1 : 3', '2 : 1', '1 : 2', 'Ratios and Proportions'),
(89, 'If a, b, c are three numbers such that a : b = 3 : 4 and b : c = 8 : 9, then a : c is equal to', '1 : 3', '2 : 3', '3 : 2', '1 : 2', '2 : 3', 'Ratios and Proportions'),
(90, 'If a : b : c = 2 : 3 : 4 and 2a –3b + 4c = 33, then the value of c is', '6', '9', '12', '66/7', '12', 'Ratios and Proportions'),
(91, 'The ratio of A to B is 4 : 5 and that of B to C is 2 : 3. If A equals 800, C equals', '1000', '1200', '1500', '2000', '1500', 'Ratios and Proportions'),
(92, 'If a : b : c = 7 : 3 : 5, then (a + b + c) : (2a + b – c) is equal to', '1 : 2', '2 : 3', '3 : 4', '5 : 4', '5 : 4', 'Ratios and Proportions'),
(93, 'If A : B = 2 : 3 and B : C = 4 : 5, then A : B : C is', '2 : 3 : 5', '5 : 4 : 6', '6 : 4 : 5', '8 : 12 : 15', '8 : 12 : 15', 'Ratios and Proportions'),
(94, 'If two times of A is equal to three times of B and also equal to four times of C, then A : B : C is', '2 : 3 : 4', '3 : 4 : 2', '4 : 6 : 3', '6 : 4 : 3', '6 : 4 : 3', 'Ratios and Proportions'),
(95, 'What sum of money must be given as simple interest for six months at 4% per annum in order to earn 150 interest?', '5000', '7500', '10000', '15000', '7500', 'Simple Interest'),
(96, 'A sum of 1600 gives a simple interest of 252 in 2 years and 3 months. The rate of interest per annum is:', '5.5%', '8%', '7%', '6%', '7%', 'Simple Interest'),
(97, 'A sum of money lent at simple interest amounts to 880 in 2 years and to 920 in 3 years. The sum of money (in rupees) is', '700', '760', '784', '800', '800', 'Simple Interest'),
(98, 'At some rate of simple interest, A lent 6,000 to B for 2 years and 1,500 to C for 4 years and received 9,00 as interest from both of them together. The rate of interest per annum was', '5%', '6%', '8%', '10%', '5%', 'Simple Interest'),
(99, 'A lent 5000 to B for 2 years and 3000 to C for 4 years on simple interest at the same rate of interest and received 2200 in all from both as interest. The rate of interest per annum is', '7%', '5%', '8%', '10%', '10%', 'Simple Interest'),
(100, 'What sum of money will amount to 520 in 5 years and to 568 in 7 years at simple interest ?', '400', '120', '510', '220', '400', 'Simple Interest'),
(101, '500 was invested at 12% per annum simple interest and a certain sum of money invested at 10% per annum simple interest. If the sum of the interest on both the sum after 4 years is 480, the latter sum of money is :', '450', '750', '600', '550', '600', 'Simple Interest'),
(102, 'A money lender finds that due to fall in the annual rate of interest 8% to 7*3/4% , his yearly income diminishes by 61.50. His capital is', '22400', '23800', '24600', '26000', '24600', 'Simple Interest'),
(103, 'A lends 2500 to B and a certain sum to C at the same time at 7% annual simple interest. If after 4 years, A altogether receives 1120 as interest from B and C, the sum lent to C is', '700', '6500', '4000', '1500', '1500', 'Simple Interest'),
(104, 'A certain sum of money amounts to 756 in 2 years and to 873 in 3*1/2 years at a certain rate of simple interest. The rate of interest per annum is', '10%', '11%', '12%', '13%', '13%', 'Simple Interest'),
(105, 'What sum will amount to 7000 in 5 years at 3*1/3% simple interest ?', '6300', '6500', '6000', '5000', '6000', 'Simple Interest'),
(106, 'A man took a loan from a bank at the rate of 12% per annum at simple interest. After 3 years he had to pay 5,400 as interest only for the period. The principal amount borrowed by him was :', '2000', '10000', '20000', '15000', '15000', 'Simple Interest'),
(107, 'sum of money at simple interest amounts to 1,012 in 2*1/2 years and to 1,067.20 in 4 years. The rate of interest per annum is :', '2.5%', '3%', '4%', '5%', '4%', 'Simple Interest'),
(108, 'A sum of money lent out at simple interest amounts to 720 after 2 years and to 1020 after a further period of 5 years. The sum is :', '500', '600', '700', '710', '600', 'Simple Interest'),
(109, 'The sum of money, that will give 1 as interest per day at the rate of 5% per annum simple interest is', '3650', '36500', '730', '7300', '7300', 'Simple Interest'),
(110, 'If the simple interest on a certain sum of money for 15 months at 7*1/2% per annum exceeds the simple interest on the same sum for 8 months at 12*1/2% per annum by 32.50, then the sum of money (in ) is :', '312', '312.50', '3120', '3120.50', '3120', 'Simple Interest'),
(111, 'What annual instalment will discharge a debt of 6450 due in 4 years at 5% simple interest ?', '1500', '1835', '1935', '1950', '1500', 'Simple Interest'),
(112, 'In what time will 72 become 81 at 6*1/4% per annum simple interest ?', '2 years', '3 years', '2 years 6 months', 'None of these', '2 years', 'Simple Interest'),
(113, 'The simple interest on 7,300 from 11 May, 1987 to 10 September, 1987 (both days included) at 5% per annum is', '123', '103', '200', '223', '123', 'Simple Interest'),
(114, 'A person borrows 5,000 for 2 years at 4% per annum simple interest. He immediately lends it to another person at 6*1/4% per annum simple interest for 2 years. His gain in the transaction is', '112.50', '450', '225', '150', '225', 'Simple Interest'),
(115, 'A and B can do a piece of work in 72 days. B and C can do it in 120 days, A and C can do it in 90 days. In how many days all the three together can do the work ?', '80 days', '100 days', '60 days', '150 days', '60 days', 'Time and Work'),
(116, 'A particular job can be completed by a team of 10 men in 12 days. The same job can be completed by a team of 10 women in 6 days. How many days are needed to complete the job if the two teams work together?', '4 days', '6 days', '9 days', '18 days', '4 days', 'Time and Work'),
(117, 'A can do a work in 6 days and B in 9 days. How many days will both take together to complete the work?', '7.5 days', '5.4 days', '3.6 days', '3 days', '3.6 days', 'Time and Work'),
(118, 'A and B can do a piece of work in 10 days, B and C in 15 days and C and A in 20 days. C alone can do the work in :', '60 days', '120 days', '80 days', '30 days', '120 days', 'Time and Work'),
(119, 'A can do a piece of work in 4 hours; B and C can do it in 3 hours. A and C can do it in 2 hours. How long will B alone take to do it ?', '10 hours', '12 hours', '8 hours', '24 hours', '12 hours', 'Time and Work'),
(120, 'A and B together can do a piece of work in 10 days. A alone can do it in 30 days. The time in which B alone can do it is', '10 days', '12 days', '15 days', '20 days', '15 days', 'Time and Work'),
(121, 'A and B together can complete a piece of work in 72 days, B and C together can complete it in 120 days, and A and C together in 90 days. In what time can A alone complete the work ?', '80 days', '100 days', '120 days', '150 days', '120 days', 'Time and Work'),
(122, 'A and B can do a piece of work in 12 days, B and C in 8 days and C and A in 6 days. How long would B take to do the same work alone ?', '24 days', '32 days', '40 days', '48 days', '48 days', 'Time and Work'),
(123, 'A and B can complete a piece of work in 30 days, B and C in 20 days, while C and A in 15 days. If all of them work together, the time taken in completing the work will be', '10 days', '12 days', '12 * 2/3 days', '13 * 1/3 days', '13 * 1/3 days', 'Time and Work'),
(124, 'A and B together can complete a work in 8 days and B and C together in 12 days. All of the three together can complete the work in 6 days. In how much time will A and C together complete the work ?', '8 days', '10 days', '12 days', '20 days', '8 days', 'Time and Work'),
(125, 'A alone can complete a work in 12 days. A and B together can complete it in 8 days. How long will B alone take to complete the work ?', '24 days', '18 days', '16 days', '20 days', '24 days', 'Time and Work'),
(126, 'If A and B together can complete a work in 18 days, A and C together in 12 days and B and C together in 9 days, then B alone can do the work in', '18 days', '24 days', '30 days', '40 days', '24 days', 'Time and Work'),
(127, 'While working 7 hours a day, A alone can complete a piece of work in 6 days and B alone in 8 days. In what time would they complete it together, working 8 hours a day ?', '3 days', '4 days', '2.5 days', '3.6 days', '3 days', 'Time and Work'),
(128, 'A and B can do a piece of work in 10 days. B and C can do it in 12 days. C and A in 15 days. In how many days will C finish it alone ?', '24 days', '30 days', '40 days', '60 days', '40 days', 'Time and Work'),
(129, 'If A and B together can complete a piece of work in 15 days and B alone in 20 days, in how many days can A alone complete the work ?', '60 days', '45 days', '40 days', '30 days', '60 days', 'Time and Work'),
(130, 'If A and B together can complete a work in 12 days, B and C together in 15 days and C and A together in 20 days, then B alone can complete the work in', '30 days', '25 days', '24 days', '20 days', '20 days', 'Time and Work'),
(131, 'A work can be completed by P and Q in 12 days, Q and R in 15 days, R and P in 20 days. In how many days P alone can finish the work?', '10 days', '20 days', '30 days', '60 days', '30 days', 'Time and Work'),
(132, 'A and B can complete a piece of work in 8 days, B and C can do it in 12 days, C and A can do it in 8 days. A, B and C together can complete it in', '4 days', '5 days', '6 days', '7 days', '6 days', 'Time and Work'),
(133, 'A and B working together can do a piece of work in 4.5 hours. B and C working together can do it in 3 hours. C and A working together can do it in 2.25 hours. All of them begin the work at the same time. Find how much time they will take to finish the piece of work.', '3 hours', '2 hours', '2.5 hours', '3.25 hours', '2 hours', 'Time and Work'),
(134, 'A and B together can complete a piece of work in 18 days, B and C in 24 days and A and C in 36 days. In how many days, will all of them together complete the work ?', '16 days', '15 days', '12 days', '10 days', '16 days', 'Time and Work');

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

--
-- Dumping data for table `reasoning`
--

INSERT INTO `reasoning` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_ans`, `topic`) VALUES
(1, 'In a certain code, SOBER is written as RNADQ. How LOTUS can be written in that code?', 'KNSTR', 'MPUWT', 'KMSTR', 'LMRST', 'KNSTR', 'Coding Decoding'),
(2, 'If ‘MEAT’ is written as ‘TEAM’, then ‘BALE’ is written as', 'ELAB', 'EABL', 'EBLA', 'EALB', 'EALB', 'Coding Decoding'),
(3, 'If ‘WATER’ is written as ‘YCVGT’, then what is written as ‘HKTG’?', 'IRFE', 'FIRE', 'REFI', 'ERIF', 'FIRE', 'Coding Decoding'),
(4, 'If the word ‘TABLECLOTH’ is coded as ‘XEMRANRIXT’, how can ‘HOTEL’ be coded?', 'RIXAT', 'TIXAR', 'TAXIR', 'RAXIT', 'TIXAR', 'Coding Decoding'),
(5, 'If ‘ CARING‘ is coded as ‘EDVGKC‘ , and SHARES is coded as ‘UKEPBO’, how will CASKET be coded as in the same code?', 'EDXIBP', 'EDWIAP', 'EDWPAI', 'EDWIBP', 'EDWIBP', 'Coding Decoding'),
(6, 'If DEMOCRATIC is written as EDMORCATCI, how CONTINUOUS will be written in the same code?', 'OCTNNIOUSU', 'OTCNINUOUS', 'OCNTNIUOSU', 'OCNTNIUOSU', 'OCNTNIUOSU', 'Coding Decoding'),
(7, 'In a certain code, P is #, A is %, C is φ and E is @. How is PEACE written in that code?', '#@%@#', '#@#φ @', '%#@φ%', '#@%φ @', '#@%φ @', 'Coding Decoding'),
(8, 'In a certain code, ‘BELIEF’ is written as ‘AFKKDH’. How would ‘SELDOM’ be written in that code?', 'RDKCHL', 'RFKENM', 'RFKFNO', 'TFKENP', 'RFKFNO', 'Coding Decoding'),
(9, 'In a certain code language ‘LIEUTENANT‘ is written as 1232212021411420, then how ‘MANGO‘ can be written in that code language?', '13114715', '1311474', '14141375', '13114157', '1311474', 'Coding Decoding'),
(10, 'If ‘DELHI’ is coded as ‘73541’ and ‘CALCUTTA’ as ‘82589662’, how will ‘CALICUT’ be coded?', '5279431', '5978213', '8251896', '8543691', '8251896', 'Coding Decoding'),
(11, 'If in a certain code, ‘DAUGHTER’ is written as ‘TERDAUGH’, how will ‘APTITUDE’ be written in that code?', 'DEUAPTIT', 'UDEAPTIT', 'DUEAPTIT', 'DAUEPTIT', 'UDEAPTIT', 'Coding Decoding'),
(12, 'In a certain code, ‘TERMINAL’ is written as ‘NSFUMBOJ’ and ‘TOWERS’ is written as ‘XPUTSF’. How is ‘MATE’ written in that same code?', 'FUBN', 'UFNB', 'BNFU', 'BNDS', 'BNFU', 'Coding Decoding'),
(13, 'If PARK is coded as 5394, SHIRT is coded as 17698 and PANDIT is coded as 532068, how would you code NISHAR in that code language?', '266734', '231954', '201739', '261739', '261739', 'Coding Decoding'),
(14, 'If ‘SYNDICATE’ is written as ‘SYTENDCAI’, then how can ‘PSYCHOTIC’ be written?', 'PSYICTCOH', 'PSYCOHTCI', 'PSICYOCTH', 'PSICYCOTH', 'PSICYCOTH', 'Coding Decoding'),
(15, 'In a certain code, ‘REFRIGERATOR’ is coded as ‘ROTAREGIRFER’. Which words from the following would be coded as ‘NOITINUMMA’?', 'ANMOMIUTMI', 'AMNTOMUIIN', 'AMMUNITION', 'NMMUNITIOA', 'AMMUNITION', 'Coding Decoding'),
(16, 'In a certain code, ‘CERTAIN’ is coded as ‘XVIGZRM’ ‘SEQUENCE’ is coded as ‘HVJFVMXV’. How would ‘REQUIRED’ be coded?', 'FJIVWVIR', 'VJIFWTRV', 'WVJRIFVI', 'IVJFRIVW', 'IVJFRIVW', 'Coding Decoding'),
(17, 'In a certain code, ‘BUILDER’ is written as JVCKSFE. How is ‘SEALING’ written in that same code?', 'BFTKHOJ', 'JOHKBT', 'TFBKHOJ', 'BFTKJOH', 'BFTKHOJ', 'Coding Decoding'),
(18, 'In a coded language, BRINJAL is written as LAJNIRB. How will LADYFINGER be written in that code?', 'RNEGIFYDAL', 'RINEGIFYDAL', 'REGNIFYDAL', 'RGENIFYDAL', 'REGNIFYDAL', 'Coding Decoding'),
(19, 'In a certain code language, ‘CURATIVE’ is written as ‘BSVDDUHS’. How ‘STEAMING’ is to be written in the same code language?', 'BFUTFMHL', 'TUFBFMHL', 'BFUTLHMF', 'BFUTHOJN', 'BFUTFMHL', 'Coding Decoding'),
(20, '165135 is to ‘peace’ as 1215225 is to', 'lead', 'love', 'loop', 'aura', 'love', 'Coding Decoding'),
(21, 'Ranu walks 20 m north, then she turns left and walks 11m. Again she turns left and walks 32m. Finally she turns left and walks 11m. In which direction is she from her original point?', 'South', 'West', 'East', 'North', 'South', 'Direction and Distance'),
(22, 'Ravi started from his house and walked 13m east, then he takes a left and walked 7m. Then again he takes a left and walks 8m. He finally takes right and walked 5m. What is the shortest distance between his house and final point?', '15m', '12m', '13m', '11m', '13m', 'Direction and Distance'),
(23, 'Agrita walks 15m towards west, then she walks 4m towards north. Again she takes a turn and walks 3m towards the east. Finally she walked 9m towards south and comes to a halt. Agrita is how far from her initial position?', '10m', '13m', '9m', '23m', '13m', 'Direction and Distance'),
(24, 'Taneja starts from his office walks 22km towards south and walks 10m after taking right and he again take a right and walks 7m and then finally taken a left turn and walks 2km. If he moves 9m towards south, what is the direction of final point with respect to starting point.', 'North-East', 'South-West', 'North-West', 'South-East', 'South-West', 'Direction and Distance'),
(25, 'Two army trucks start from same army base, 1st truck travels 11 km south, then turn to left and travel 19 km. 2nd truck travels 11 km west, then turns to its right and travel 5 km. Find the shortest distance between the final positions of both the truck?', '36 km', '32 km', '17 km', '34 km', '34 km', 'Direction and Distance'),
(26, 'A person is facing towards north east. He turns 180° clockwise and then 45° anticlockwise. Finally he turns 60° clockwise. Now, the person is facing in which direction?', 'North-East', 'South-West', 'North- West', 'South-East', 'South-West', 'Direction and Distance'),
(27, 'Rupali is standing facing south. She walks 16km straight, then turns left and walks another 13km and turns right and walks 7km. Finally turns left and walks 9km to reach her office. Which direction is she facing now?', 'West', 'North', 'East', 'South', 'East', 'Direction and Distance'),
(28, 'A is 13m south east of B and C is 12m south of B.\nIn which direction is C with respect to A?', 'West', 'North', 'East', 'South', 'West', 'Direction and Distance'),
(29, 'One night Raushan walked towards a star to his east, after sometime he turned right and again takes a right and walk for 4km. Finally he takes a left turn. In which direction is Raushan facing now?', 'East', 'West', 'North', 'South', 'South', 'Direction and Distance'),
(30, 'Lucifer walks 13km towards south, then he walks 10km towards north. Finally he walks 4km towards east. Find the distance between his starting and final point.', '7 km', '5 km', '10 km', '9 km', '5 km', 'Direction and Distance'),
(31, 'Ranu walks 20 m north, then she turns left and walks 11m. Again she turns left and walks 32m. Finally she turns left and walks 11m. Find the distance between her initial and final position?', '11 m', '12 m', '10 m', '15 m', '12 m', 'Direction and Distance'),
(32, 'Ravi started from his house and walked 13m east, then he takes a left and walked 7m. Then again he takes a left and walks 8m. He finally takes right and walked 5m. In which direction is his starting point with respect to the point where he stopped?', 'North-East', 'South-West', 'North-West', 'South-East', 'South-West', 'Direction and Distance'),
(33, 'Agrita walks 15m towards west, then she walks 4m towards north. Again she takes a turn and walks 3m towards the east. Finally she walked 9m towards south and comes to a halt. In which direction is the halt with respect to her initial position?', 'North-East', 'South-West', 'North-West', 'South-East', 'South-West', 'Direction and Distance'),
(34, 'Taneja starts from his office walks 22km towards south and walks 10m after taking right and he again take a right and walks 7m and then takes a left turn and walks 2km. Again, he moves 9m towards south. Finally he takes a left turn and walks 12 m. Find the distance between his final and initial position.', '24 m', '20 m', '11 m', '12 m', '24 m', 'Direction and Distance'),
(35, 'Two army trucks start from same army base, 1st truck travels 11 km south, then turn to left and travel 19 km. 2nd truck travels 11 km west, then turns to its right and travel 5 km. In which direction is Truck 1 with respect to Truck 2?', 'North-East', 'South-West', 'North-West', 'South-East', 'South-East', 'Direction and Distance'),
(36, 'A person is facing towards East. He turns 270° clockwise and then 45° anticlockwise. Finally he turns 120° anticlockwise. Now, the person is facing in which direction?', 'North-East', 'South-West', 'North-West', 'South-East', 'South-West', 'Direction and Distance'),
(37, 'Rupali is standing facing south. She walks 16km straight, then turns left and walks another 13km and turns right and walks 7km. Then she turns left and walks 9km to reach her office. From her office, she walked 9 km towards North and then stopped walking. In which direction is she now from her starting point?', 'North-East', 'South-West', 'North-West', 'South-East', 'South-East', 'Direction and Distance'),
(38, 'A is 13m south east of B and C is 12m south of B. Find the shortest distance between A and C?', '5 m', '12 m', '15 m', '7 m', '5 m', 'Direction and Distance'),
(39, 'One night Raushan walked towards a star to his east, after sometime he turned right and again takes a right and walk for 4km. Finally he takes a left turn. In which direction is Raushan’s starting point with respect to the point where he stopped walking?', 'North-East', 'South-West', 'North-West', 'South-East', 'North-West', 'Direction and Distance'),
(40, 'Lucifer walks 13km towards south, then he walks 10km towards north. Finally he walks 4km towards east. In which direction is he now with respect to his starting point?', 'North-East', 'South-West', 'North-West', 'South-East', 'South-East', 'Direction and Distance');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `name`) VALUES
('user1', '$2b$10$Fn9WKKoqd.xnXbuW2GZh8.wTb6RNSxtu8FxovppjSrGZP5wJ7CxHq', 'Rohit'),
('rohitttweb', '$2b$10$1ImcetsnbAsK7LhUbUO7geZMHoqnyvxKCPfV4o39N2eilcz1uE0DW', 'Rohit Kumar'),
('user2', '$2b$10$txMBQKJLDw6godJn7jXumudKoinNdwdC0Arh9DZwV85QQydQl9B8e', 'user2'),
('user3', '$2b$10$SrHv9GBGk8PIoq5pr73gUOitNF2brhqbGUHIQMyIO579STs5Zn5Ce', 'test user'),
('rohittt', '$2b$10$i4khzdu8QeD7h0OG0E2F9e8fjL6mTe0XWwSex0Fr8kEBa0unp6NZ6', 'rohittt'),
('user11', '$2b$10$ovvKTVRjaBRC/MEaHfaKie6V5YhUUW3adAEQO9p8PHI3BlTC7JLJi', 'user'),
('admin', '$2b$10$v5q4olELxg.3prnV/FKxvur.zWpuFdMoNwUsEY4mTxB/vMkSIARrS', 'admin');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `general_awareness`
--
ALTER TABLE `general_awareness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reasoning`
--
ALTER TABLE `reasoning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `verbal`
--
ALTER TABLE `verbal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
