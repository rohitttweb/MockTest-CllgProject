-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 11:39 AM
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
-- Database: `onlinemocktestv1`
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
(134, 'A and B together can complete a piece of work in 18 days, B and C in 24 days and A and C in 36 days. In how many days, will all of them together complete the work ?', '16 days', '15 days', '12 days', '10 days', '16 days', 'Time and Work'),
(135, 'What is the amount obtained on a principal of Rs. 5000 after 3 years at a rate of 10% per annum compounded annually?', 'Rs. 6655', 'Rs. 6715', 'Rs. 6815', 'Rs. 6955', 'Rs. 6655', 'Compound Interest'),
(136, 'What will be the compound interest obtained on a principal of Rs. 8000 at a rate of 15% per annum after 3 years?', 'Rs. 4374', 'Rs. 3274', 'Rs. 3574', 'Rs. 4074', 'Rs. 4374', 'Compound Interest'),
(137, 'What is the amount obtained on a principal of Rs. 12000 at a rate of 8% per annum compounded annually after 2 years?', 'Rs. 13824.96', 'Rs. 12596.78', 'Rs. 13564.89', 'Rs. 14196.12', 'Rs. 13824.96', 'Compound Interest'),
(138, 'What is the rate of interest at which a principal of Rs. 6000 will double itself in 8 years, compounded annually?', '8%', '10%', '12%', '14%', '10%', 'Compound Interest'),
(139, 'A sum of money becomes 3 times itself in 10 years at simple interest. What is the rate of interest?', '200%', '150%', '100%', '50%', '200%', 'Compound Interest'),
(140, 'What is the difference between the simple interest and compound interest on a sum of Rs. 12000 for 2 years at a rate of 15% per annum?', 'Rs. 760.50', 'Rs. 800.50', 'Rs. 860.50', 'Rs. 920.50', 'Rs. 760.50', 'Compound Interest'),
(141, 'What is the compound interest on a principal of Rs. 8000 at a rate of 10% per annum for 2 years compounded half-yearly?', 'Rs. 1816', 'Rs. 1856', 'Rs. 1916', 'Rs. 1956', 'Rs. 1816', 'Compound Interest'),
(142, 'What is the time period in which a sum of money at simple interest becomes 5 times itself at a rate of interest of 20% per annum?', '16 years', '15 years', '18 years', '20 years', '16 years', 'Compound Interest'),
(143, 'What will be the compound interest obtained on a principal of Rs. 4000 at a rate of 12.5% per annum after 4 years?', 'Rs. 1988.50', 'Rs. 2388.50', 'Rs. 2688.50', 'Rs. 2888.50', 'Rs. 1988.50', 'Compound Interest'),
(144, 'What is the difference between the compound interest and the simple interest on a sum of Rs. 20000 for 2 years at a rate of 10% per annum?', 'Rs. 4200', 'Rs. 4100', 'Rs. 4000', 'Rs. 3900', 'Rs. 4200', 'Compound Interest'),
(145, 'Find the compound interest on a sum of $1200 for 2 years at 10% per annum, compounded annually?', '$220', '$240', '$242', '$260', '$242', 'Compound Interest'),
(146, 'What sum will amount to $5000 in 3 years at 10% p.a. compound interest?', '$3500', '$3970', '$4010', '$4500', '$4010', 'Compound Interest'),
(147, 'At what rate percent per annum will a sum of $1500 yield a simple interest of $540 in 3 years?', '12%', '8%', '6%', '10%', '12%', 'Compound Interest'),
(148, 'The difference between the simple interest and the compound interest on a sum for 2 years at 12% per annum, compounded annually is $72. Find the sum?', '$600', '$800', '$1000', '$1200', '$600', 'Compound Interest'),
(149, 'What will be the amount on $6000 in 2 years at 10% per annum compounded semi-annually?', '$7262', '$7320', '$7362', '$7460', '$7362', 'Compound Interest'),
(150, 'The difference between the compound interest and the simple interest on a certain sum at 8% per annum for 2 years is $80. Find the sum?', '$5000', '$5200', '$5500', '$6000', '$5000', 'Compound Interest'),
(151, 'What sum will amount to $10,623 in 2 years at 20% per annum compounded annually?', '$6500', '$7500', '$8000', '$9000', '$7500', 'Compound Interest'),
(152, 'Find the compound interest on $4000 for 2 years at 5% per annum compounded annually?', '$4100', '$4200', '$4250', '$4300', '$4200', 'Compound Interest'),
(153, 'What sum will amount to $8820 in 2 years at 15% per annum compounded semi-annually?', '$7000', '$7500', '$8000', '$8500', '$8000', 'Compound Interest'),
(154, 'Find the compound interest on $6250 for 3 years at 8% per annum compounded annually?', '$8600', '$8900', '$9000', '$9300', '$9300', 'Compound Interest'),
(155, 'If a train covers a distance of 120 km in 2 hours, what is its speed in km/h?', '50', '60', '70', '80', '60', 'Time and Speed'),
(156, 'A car travels a distance of 360 km in 5 hours. What is the speed of the car in km/h?', '70', '72', '75', '80', '72', 'Time and Speed'),
(157, 'A cyclist covers a distance of 45 km in 3 hours. What is the average speed of the cyclist in km/h?', '10', '12', '15', '18', '15', 'Time and Speed'),
(158, 'A person walks at a speed of 5 km/h for 3 hours. What distance does he cover in this time?', '10 km', '12 km', '13 km', '15 km', '15 km', 'Time and Speed'),
(159, 'If a car covers a distance of 100 km in 2 hours, what is the speed of the car in m/s?', '13.89', '25', '30', '35', '27.78', 'Time and Speed'),
(160, 'A train covers a distance of 500 km in 5 hours. What is the speed of the train in m/s?', '27.78', '50', '60', '70', '27.78', 'Time and Speed'),
(161, 'A person covers a distance of 10 km in 2 hours. If he wants to cover the same distance in 1 hour, what should be his speed?', '5 km/h', '8 km/h', '10 km/h', '12 km/h', '10 km/h', 'Time and Speed'),
(162, 'A car travels a distance of 600 km in 8 hours. If the car travels at a speed of 75 km/h for the first 3 hours, what should be its speed for the remaining distance?', '70 km/h', '75 km/h', '80 km/h', '85 km/h', '65 km/h', 'Time and Speed'),
(163, 'A person walks a certain distance at a speed of 4 km/h and returns at a speed of 5 km/h. What is his average speed for the whole journey?', '4.44 km/h', '4.5 km/h', '4.8 km/h', '5 km/h', '4.44 km/h', 'Time and Speed'),
(164, 'A car covers a certain distance at a speed of 60 km/h and returns at a speed of 40 km/h. What is the average speed of the car for the whole journey?', '48 km/h', '50 km/h', '52 km/h', '54 km/h', '48 km/h', 'Time and Speed'),
(165, 'A man covered a certain distance at some speed. Had he moved 3 kmph faster, he would have taken 40 minutes less. If he had moved 2 kmph slower, he would have taken 40 minutes more. Find the distance.', '10 km', '15 km', '20 km', '25 km', '15 km', 'Time and Speed'),
(166, 'A car travels at the speed of 60 km/hr for 40% of the time and the rest of the time at the rate of 30 km/hr. Find the average speed of the car.', '42 km/hr', '44 km/hr', '46 km/hr', '48 km/hr', '48 km/hr', 'Time and Speed'),
(167, 'A train is running at a speed of 90 kmph. How many seconds will it take to cover a distance of 2 km?', '20 seconds', '22 seconds', '24 seconds', '26 seconds', '24 seconds', 'Time and Speed'),
(168, 'A man on tour travels first 160 km at 64 km/hr and the next 160 km at 80 km/hr. The average speed for the first 320 km of the tour is:', '71.11 km/hr', '72 km/hr', '73.33 km/hr', '74.44 km/hr', '72 km/hr', 'Time and Speed'),
(169, 'A car completes a journey of 300 km in 7.5 hours. What would be the average speed of the car if it had covered 360 km in 9 hours?', '50 kmph', '55 kmph', '60 kmph', '65 kmph', '60 kmph', 'Time and Speed'),
(170, 'A man can cover a distance in 2 hrs 24 min by covering a part of the journey at 4 kmph and the remaining at 5 kmph. Find the total distance.', '12 km', '15 km', '18 km', '20 km', '15 km', 'Time and Speed'),
(171, 'A cyclist covers a certain distance in 2 hours at an average speed of 18 kmph. If he covers the same distance in 1 hr 40 min, what is his average speed during the journey?', '20 kmph', '22 kmph', '24 kmph', '26 kmph', '22 kmph', 'Time and Speed'),
(172, 'A boy cycles from his home to school at 20 kmph and returns at a speed of 15 kmph. Find the boy’s average speed for the whole journey.', '16 kmph', '17 kmph', '18 kmph', '19 kmph', '16.67 kmph', 'Time and Speed'),
(173, 'A man covers a certain distance by covering half of it at 40 kmph and the other half at 60 kmph. Find his average speed for the whole journey.', '48 kmph', '50 kmph', '52 kmph', '54 kmph', '48 kmph', 'Time and Speed'),
(174, 'A man can cover a certain distance in 1 hour 24 minutes by walking at 3 kmph and running at 6 kmph. Find the distance covered by him.', '6 km', '7 km', '8 km', '9 km', '9 km', 'Time and Speed');

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

--
-- Dumping data for table `general_awareness`
--

INSERT INTO `general_awareness` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_ans`, `topic`) VALUES
(1, 'The Harappan Civilization was discovered in the year?', '1921', '1919', '1922', '1935', '1921', 'History'),
(2, 'Who among the following was the first Sultan of Delhi?', 'Qutub-ud-din Aibak', 'Iltutmish', 'Razia Sultana', 'Balban', 'Qutub-ud-din Aibak', 'History'),
(3, 'The first battle of Panipat was fought between?', 'Akbar and Hemu', 'Babur and Ibrahim Lodi', 'Sher Shah Suri and Humayun', 'Aurangzeb and Dara Shikoh', 'Babur and Ibrahim Lodi', 'History'),
(4, 'The Indian National Congress was founded in which year?', '1885', '1905', '1915', '1925', '1885', 'History'),
(5, 'Who among the following was the first Indian woman to become the President of the Indian National Congress?', 'Indira Gandhi', 'Sarojini Naidu', 'Vijayalakshmi Pandit', 'Annie Besant', 'Annie Besant', 'History'),
(6, 'The first war of Indian independence was fought in which year?', '1857', '1858', '1861', '1875', '1857', 'History'),
(7, 'Who among the following was the Governor-General of India at the time of the Indian Rebellion of 1857?', 'Lord Canning', 'Lord Dalhousie', 'Lord Ripon', 'Lord Mountbatten', 'Lord Canning', 'History'),
(8, 'The Quit India Movement was launched in which year?', '1942', '1945', '1947', '1949', '1942', 'History'),
(9, 'Who among the following was the first Indian woman to become the Governor of an Indian state?', 'Sarojini Naidu', 'Indira Gandhi', 'Vijayalakshmi Pandit', 'Sucheta Kriplani', 'Sarojini Naidu', 'History'),
(10, 'Who among the following is known as the \"Father of Indian Constitution\"?', 'B.R. Ambedkar', 'Jawaharlal Nehru', 'Sardar Vallabhbhai Patel', 'Gopal Krishna Gokhale', 'B.R. Ambedkar', 'History'),
(11, 'Who among the following was the founder of the Maurya Empire?', 'Chandragupta Maurya', 'Ashoka the Great', 'Bindusara', 'Bimbisara', 'Chandragupta Maurya', 'History'),
(12, 'The Indus Valley Civilization was located in which part of India?', 'Northwestern', 'Northeastern', 'Southwestern', 'Southeastern', 'Northwestern', 'History'),
(13, 'The Battle of Plassey was fought in which year?', '1757', '1765', '1775', '1785', '1757', 'History'),
(14, 'Who among the following was the first Indian to receive a Nobel Prize?', 'C.V. Raman', 'Rabindranath Tagore', 'S. Chandrasekhar', 'Mother Teresa', 'Rabindran Tagore', 'History'),
(15, 'Who among the following was the first President of India?', 'Dr. Rajendra Prasad', 'S. Radhakrishnan', 'Zakir Hussain', 'V.V. Giri', 'Dr. Rajendra Prasad', 'History'),
(16, 'The Battle of Haldighati was fought between which two rulers?', 'Akbar and Rana Pratap', 'Aurangzeb and Shivaji', 'Babur and Hemu', 'Sher Shah Suri and Humayun', 'Akbar and Rana Pratap', 'History'),
(17, 'Who among the following was the last Mughal Emperor?', 'Bahadur Shah Zafar II', 'Shah Jahan', 'Aurangzeb', 'Jahangir', 'Bahadur Shah Zafar II', 'History'),
(18, 'Who among the following was the first Indian to be elected as the Secretary-General of the United Nations?', 'Vijayalakshmi Pandit', 'Jawaharlal Nehru', 'Indira Gandhi', 'Kofi Annan', 'Vijayalakshmi Pandit', 'History'),
(19, 'Who among the following was the founder of the Gupta Empire?', 'Sri Gupta', 'Chandragupta I', 'Samudragupta', 'Skandagupta', 'Sri Gupta', 'History'),
(20, 'Who among the following was the first British Governor-General of India?', 'Lord William Bentinck', 'Warren Hastings', 'Lord Cornwallis', 'Lord Dalhousie', 'Warren Hastings', 'History'),
(21, 'Which of the following is the largest ocean in the world?', 'Atlantic', 'Indian', 'Pacific', 'Arctic', 'Pacific', 'Geography'),
(22, 'Which of the following is the largest desert in the world?', 'Sahara', 'Arabian', 'Gobi', 'Kalahari', 'Sahara', 'Geography'),
(23, 'Which of the following is the largest river in India by discharge?', 'Ganga', 'Yamuna', 'Godavari', 'Narmada', 'Ganga', 'Geography'),
(24, 'Which of the following countries is not located in Southeast Asia?', 'Vietnam', 'Myanmar', 'Bangladesh', 'Cambodia', 'Bangladesh', 'Geography'),
(25, 'Which of the following is not a type of plate boundary?', 'Transform', 'Divergent', 'Convergent', 'Intrusive', 'Intrusive', 'Geography'),
(26, 'Which of the following is not a type of volcano?', 'Cinder Cone', 'Shield', 'Composite', 'Fault Block', 'Fault Block', 'Geography'),
(27, 'Which of the following is the capital city of Japan?', 'Kyoto', 'Tokyo', 'Osaka', 'Hiroshima', 'Tokyo', 'Geography'),
(28, 'Which of the following is the highest mountain peak in Africa?', 'Mount Kilimanjaro', 'Mount Everest', 'Mount Denali', 'Mount Fuji', 'Mount Kilimanjaro', 'Geography'),
(29, 'Which of the following countries is not a member of the European Union?', 'Spain', 'Poland', 'Switzerland', 'Denmark', 'Switzerland', 'Geography'),
(30, 'Which of the following is the largest country in South America?', 'Brazil', 'Argentina', 'Colombia', 'Peru', 'Brazil', 'Geography'),
(31, 'Which of the following is not a country in Europe?', 'Georgia', 'Moldova', 'Tanzania', 'Belarus', 'Tanzania', 'Geography'),
(32, 'Which of the following is the world’s largest coral reef system?', 'Great Barrier Reef', 'Belize Barrier Reef', 'Andros Barrier Reef', 'Mesoamerican Barrier Reef', 'Great Barrier Reef', 'Geography'),
(33, 'Which of the following is the deepest point in the ocean?', 'Challenger Deep', 'Puerto Rico Trench', 'Java Trench', 'Mariana Trench', 'Mariana Trench', 'Geography'),
(34, 'Which of the following is not a type of biome?', 'Desert', 'Tropical Rainforest', 'Tundra', 'Prairie', 'Prairie', 'Geography'),
(35, 'Which of the following is not a type of rock cycle?', 'Sedimentary', 'Igneous', 'Metamorphic', 'Hydraulic', 'Hydraulic', 'Geography'),
(36, 'Which of the following is not a type of cloud?', 'Cirrus', 'Nimbus', 'Cumulus', 'Altocumulus', 'Altocumulus', 'Geography'),
(37, 'Which of the following is not a continent?', 'Antarctica', 'Asia', 'Atlantis', 'Australia', 'Atlantis', 'Geography'),
(38, 'Which of the following is not a country in Southeast Asia?', 'Singapore', 'Laos', 'Greece', 'Philippines', 'Greece', 'Geography'),
(39, 'Which of the following is the highest mountain peak in North America?', 'Mount Elbert', 'Mount Rainier', 'Mount Whitney', 'Denali', 'Denali', 'Geography'),
(40, 'Which of the following is the largest country in the world by land area?', 'China', 'Canada', 'Russia', 'United States', 'Russia', 'Geography'),
(41, 'Which of the following is not a continent?', 'Africa', 'Europe', 'Arctica', 'South America', 'Arctica', 'Geography'),
(42, 'Which of the following is the capital city of Italy?', 'Rome', 'Florence', 'Venice', 'Milan', 'Rome', 'Geography'),
(43, 'Which of the following is the largest lake in Africa?', 'Lake Victoria', 'Lake Tanganyika', 'Lake Malawi', 'Lake Chad', 'Lake Victoria', 'Geography'),
(44, 'Which of the following countries is not located in the Middle East?', 'Iran', 'Iraq', 'Jordan', 'Thailand', 'Thailand', 'Geography'),
(45, 'Which of the following is not a type of fault?', 'Normal', 'Reverse', 'Strike-Slip', 'Lateral', 'Lateral', 'Geography'),
(46, 'Which of the following is the largest island in the world?', 'Greenland', 'Madagascar', 'Borneo', 'Sumatra', 'Greenland', 'Geography'),
(47, 'Which of the following is the longest river in South America?', 'Amazon', 'Orinoco', 'Magdalena', 'Paraguay', 'Amazon', 'Geography'),
(48, 'Which of the following is the largest sea in the world?', 'South China Sea', 'Mediterranean Sea', 'Red Sea', 'Philippine Sea', 'South China Sea', 'Geography'),
(49, 'Who is the first President of India?', 'Dr. Rajendra Prasad', 'S. Radhakrishnan', 'Zakir Hussain', 'V. V. Giri', 'Dr. Rajendra Prasad', 'Indian Polity and Constitution'),
(50, 'Which of the following is not a fundamental right guaranteed by the Indian Constitution?', 'Right to Property', 'Right to Equality', 'Right to Freedom of Religion', 'Right to Education', 'Right to Property', 'Indian Polity and Constitution'),
(51, 'What is the minimum age requirement for being elected as the President of India?', '25 years', '30 years', '35 years', '40 years', '35 years', 'Indian Polity and Constitution'),
(52, 'Who appoints the Governor of a state in India?', 'President of India', 'Prime Minister of India', 'Chief Minister of the state', 'Chief Justice of India', 'President of India', 'Indian Polity and Constitution'),
(53, 'What is the term of office of a member of the Rajya Sabha?', '4 years', '5 years', '6 years', '7 years', '6 years', 'Indian Polity and Constitution'),
(54, 'Who presides over the joint session of the Parliament?', 'President of India', 'Vice-President of India', 'Prime Minister of India', 'Speaker of the Lok Sabha', 'Speaker of the Lok Sabha', 'Indian Polity and Constitution'),
(55, 'Which of the following is the highest judicial authority in India?', 'Supreme Court', 'High Court', 'District Court', 'Constitutional Court', 'Supreme Court', 'Indian Polity and Constitution'),
(56, 'What is the term of office of the Chief Justice of India?', '5 years', '6 years', '7 years', '10 years', '7 years', 'Indian Polity and Constitution'),
(57, 'Who is the current Prime Minister of India?', 'Narendra Modi', 'Rahul Gandhi', 'Amit Shah', 'Sonia Gandhi', 'Narendra Modi', 'Indian Polity and Constitution'),
(58, 'Which of the following is not a type of writ issued by the Supreme Court or High Courts?', 'Habeas Corpus', 'Mandamus', 'Quo Warranto', 'Corpus Delicti', 'Corpus Delicti', 'Indian Polity and Constitution'),
(59, 'What is the term of office of the Lok Sabha?', '4 years', '5 years', '6 years', '7 years', '5 years', 'Indian Polity and Constitution'),
(60, 'Which of the following is not a constitutional body in India?', 'Central Bureau of Investigation', 'Election Commission of India', 'Comptroller and Auditor General of India', 'National Human Rights Commission', 'Central Bureau of Investigation', 'Indian Polity and Constitution'),
(61, 'Who was the first woman Chief Minister of an Indian state?', 'Sucheta Kripalani', 'Vijayalakshmi Pandit', 'Indira Gandhi', 'Jayalalithaa', 'Sucheta Kripalani', 'Indian Polity and Constitution'),
(62, 'What is the minimum age requirement for being elected as a member of the Lok Sabha?', '18 years', '21 years', '25 years', '30 years', '25 years', 'Indian Polity and Constitution'),
(63, 'Which article of the Indian Constitution deals with the procedure for amendment of the Constitution?', 'Article 352', 'Article 368', 'Article 372', 'Article 376', 'Article 368', 'Indian Polity and Constitution'),
(64, 'What is the name of the upper house of the Parliament of India?', 'Lok Sabha', 'Rajya Sabha', 'Vidhan Sabha', 'Vidhan Parishad', 'Rajya Sabha', 'Indian Polity and Constitution'),
(65, 'What is the name of the lower house of the Parliament of India?', 'Lok Sabha', 'Rajya Sabha', 'Vidhan Sabha', 'Vidhan Parishad', 'Lok Sabha', 'Indian Polity and Constitution'),
(66, 'What is the name of the Union Cabinet Minister of India responsible for Home Affairs?', 'Amit Shah', 'Nitin Gadkari', 'Piyush Goyal', 'Nirmala Sitharaman', 'Amit Shah', 'Indian Polity and Constitution'),
(67, 'Who is the current Chief Minister of Uttar Pradesh?', 'Yogi Adityanath', 'Akhilesh Yadav', 'Mayawati', 'Mulayam Singh Yadav', 'Yogi Adityanath', 'Indian Polity and Constitution'),
(68, 'Which of the following is not a part of the Directive Principles of State Policy in the Indian Constitution?', 'Free and compulsory education for children up to the age of 14 years', 'Equal pay for equal work for both men and women', 'Prohibition of cow slaughter', 'Protection of monuments and places of historic importance', 'Prohibition of cow slaughter', 'Indian Polity and Constitution'),
(69, 'What is the full form of GST in the context of Indian Economy?', 'Goods and Services Tax', 'General Sales Tax', 'Goods and Sales Tax', 'Global Service Tax', 'Goods and Services Tax', 'Indian Economy and Budget'),
(70, 'Which of the following is not a part of the primary sector of the Indian economy?', 'Agriculture', 'Mining', 'Forestry', 'Manufacturing', 'Manufacturing', 'Indian Economy and Budget'),
(71, 'What is the name of the current Finance Minister of India?', 'Arun Jaitley', 'Nirmala Sitharaman', 'Piyush Goyal', 'Amit Shah', 'Nirmala Sitharaman', 'Indian Economy and Budget'),
(72, 'Which of the following is not a part of the Union Budget of India?', 'Revenue Budget', 'Capital Budget', 'Finance Budget', 'Defence Budget', 'Finance Budget', 'Indian Economy and Budget'),
(73, 'What is the name of the institution in India that is responsible for the regulation of the securities market?', 'RBI', 'SEBI', 'NABARD', 'SIDBI', 'SEBI', 'Indian Economy and Budget'),
(74, 'What is the name of the flagship programme of the Government of India for the promotion of financial inclusion?', 'Swachh Bharat Abhiyan', 'Digital India', 'Make in India', 'Jan Dhan Yojana', 'Jan Dhan Yojana', 'Indian Economy and Budget'),
(75, 'What is the current repo rate in India as of September 2021?', '3.35%', '4.00%', '4.25%', '4.50%', '4.00%', 'Indian Economy and Budget'),
(76, 'Which of the following is not a part of the monetary policy of the Reserve Bank of India?', 'Fiscal deficit', 'Repo rate', 'Reverse repo rate', 'Cash reserve ratio', 'Fiscal deficit', 'Indian Economy and Budget'),
(77, 'What is the name of the index that is used to measure the performance of the Bombay Stock Exchange?', 'NIFTY', 'SENSEX', 'BSE-100', 'BSE-200', 'SENSEX', 'Indian Economy and Budget'),
(78, 'What is the name of the tax levied by the Government of India on income earned by individuals and companies?', 'Service tax', 'Sales tax', 'Income tax', 'Excise duty', 'Income tax', 'Indian Economy and Budget'),
(79, 'What is the name of the scheme launched by the Government of India in 2018 to provide health insurance cover to the economically weaker sections of the society?', 'Ayushman Bharat', 'Pradhan Mantri Awas Yojana', 'Ujjwala Yojana', 'Swachh Bharat Abhiyan', 'Ayushman Bharat', 'Indian Economy and Budget'),
(80, 'What is the name of the tax levied by the Government of India on the sale of goods and services?', 'Income tax', 'Service tax', 'Excise duty', 'Customs duty', 'Service tax', 'Indian Economy and Budget'),
(81, 'Which of the following sectors in India employs the highest number of people?', 'Agriculture', 'Manufacturing', 'Services', 'Mining', 'Agriculture', 'Indian Economy and Budget'),
(82, 'What is the name of the initiative launched by the Reserve Bank of India in 2016 to promote digital payments in the country?', 'BHIM', 'UMANG', 'AADHAAR', 'SWAYAM', 'BHIM', 'Indian Economy and Budget'),
(83, 'What is the name of the index that is used to measure the performance of the National Stock Exchange?', 'SENSEX', 'NIFTY', 'BSE-100', 'BSE-200', 'NIFTY', 'Indian Economy and Budget'),
(84, 'What is the name of the agency in India that is responsible for the collection and analysis of economic data?', 'SEBI', 'NABARD', 'RBI', 'CSO', 'CSO', 'Indian Economy and Budget'),
(85, 'What is the name of the government agency in India that is responsible for the formulation and implementation of industrial policy?', 'SEBI', 'NABARD', 'RBI', 'DIPP', 'DIPP', 'Indian Economy and Budget'),
(86, 'What is the name of the tax levied by the Government of India on the import and export of goods?', 'Excise duty', 'Sales tax', 'Customs duty', 'Service tax', 'Customs duty', 'Indian Economy and Budget'),
(87, 'What is the name of the initiative launched by the Government of India in 2014 to provide bank accounts to every household in the country?', 'Digital India', 'Make in India', 'Pradhan Mantri Jan Dhan Yojana', 'Swachh Bharat Abhiyan', 'Pradhan Mantri Jan Dhan Yojana', 'Indian Economy and Budget'),
(88, 'What is the name of the scheme launched by the Government of India in 2015 to promote entrepreneurship among the youth?', 'Startup India', 'Stand-Up India', 'Skill India', 'Make in India', 'Startup India', 'Indian Economy and Budget'),
(89, 'What is the name of the process by which green plants convert light energy from the sun into chemical energy?', 'Photosynthesis', 'Respiration', 'Digestion', 'Fermentation', 'Photosynthesis', 'Science and Technology'),
(90, 'What is the name of the particle that carries a negative charge and orbits around the nucleus of an atom?', 'Proton', 'Electron', 'Neutron', 'Photon', 'Electron', 'Science and Technology'),
(91, 'What is the name of the force that holds atoms together in a molecule?', 'Electromagnetic force', 'Gravitational force', 'Strong nuclear force', 'Weak nuclear force', 'Electromagnetic force', 'Science and Technology'),
(92, 'What is the name of the process by which water vapor in the atmosphere is converted into liquid water?', 'Condensation', 'Evaporation', 'Sublimation', 'Melting', 'Condensation', 'Science and Technology'),
(93, 'What is the name of the phenomenon in which an object appears to be of a different color when viewed under different lighting conditions?', 'Metamerism', 'Polarization', 'Interference', 'Fluorescence', 'Metamerism', 'Science and Technology'),
(94, 'What is the name of the process by which an electric current is produced by a changing magnetic field?', 'Induction', 'Conduction', 'Resistance', 'Capacitance', 'Induction', 'Science and Technology'),
(95, 'What is the name of the instrument that is used to measure the intensity of earthquakes?', 'Seismograph', 'Barometer', 'Thermometer', 'Hygrometer', 'Seismograph', 'Science and Technology'),
(96, 'What is the name of the device that is used to convert mechanical energy into electrical energy?', 'Motor', 'Generator', 'Battery', 'Transformer', 'Generator', 'Science and Technology'),
(97, 'What is the name of the process by which a solid is converted directly into a gas without passing through the liquid phase?', 'Sublimation', 'Melting', 'Evaporation', 'Condensation', 'Sublimation', 'Science and Technology'),
(98, 'What is the name of the instrument that is used to measure the amount of light that passes through a sample?', 'Spectrophotometer', 'Colorimeter', 'Polarimeter', 'Fluorometer', 'Spectrophotometer', 'Science and Technology'),
(99, 'What is the name of the process by which an organism produces offspring that are genetically identical to itself?', 'Asexual reproduction', 'Sexual reproduction', 'Fertilization', 'Gametogenesis', 'Asexual reproduction', 'Science and Technology'),
(100, 'What is the name of the phenomenon in which the wavelength of electromagnetic radiation is increased due to the motion of the source?', 'Doppler effect', 'Photoelectric effect', 'Compton effect', 'Zeeman effect', 'Doppler effect', 'Science and Technology'),
(101, 'What is the name of the chemical bond that is formed between two atoms by the sharing of electrons?', 'Covalent bond', 'Ionic bond', 'Hydrogen bond', 'Van der Waals bond', 'Covalent bond', 'Science and Technology'),
(102, 'What is the name of the process by which an organism breaks down food to release energy?', 'Cellular respiration', 'Photosynthesis', 'Glycolysis', 'Fermentation', 'Cellular respiration', 'Science and Technology'),
(103, 'What is the name of the device that is used to measure the electric potential difference between two points in a circuit?', 'Voltmeter', 'Ammeter', 'Ohmmeter', 'Wattmeter', 'Voltmeter', 'Science and Technology'),
(104, 'What is the name of the unit used to measure the amount of electrical charge?', 'Coulomb', 'Ampere', 'Volt', 'Ohm', 'Coulomb', 'Science and Technology'),
(105, 'What is the name of the process by which a liquid is converted into a gas by heating it?', 'Vaporization', 'Melting', 'Sublimation', 'Condensation', 'Vaporization', 'Science and Technology'),
(106, 'What is the name of the instrument that is used to measure the speed and direction of winds?', 'Anemometer', 'Barometer', 'Thermometer', 'Hygrometer', 'Anemometer', 'Science and Technology'),
(107, 'What is the name of the unit used to measure the frequency of a wave?', 'Hertz', 'Watt', 'Joule', 'Newton', 'Hertz', 'Science and Technology'),
(108, 'What is the name of the process by which the nucleus of an atom splits into two or more smaller nuclei?', 'Nuclear fission', 'Nuclear fusion', 'Radioactivity', 'Electron capture', 'Nuclear fission', 'Science and Technology'),
(109, 'Which country has won the most number of FIFA World Cup titles?', 'Brazil', 'Germany', 'Argentina', 'Italy', 'Brazil', 'Sports and Games'),
(110, 'In which year did the first modern Olympic Games take place?', '1896', '1900', '1904', '1908', '1896', 'Sports and Games'),
(111, 'Which city is known as the Mecca of Cricket?', 'Lords', 'MCG', 'Eden Gardens', 'The Oval', 'Lords', 'Sports and Games'),
(112, 'Which is the only country to have won cricket World Cup three times in a row?', 'Australia', 'India', 'West Indies', 'England', 'Australia', 'Sports and Games'),
(113, 'Who is the only cricketer to have scored 100 international centuries?', 'Sachin Tendulkar', 'Ricky Ponting', 'Brian Lara', 'Jacques Kallis', 'Sachin Tendulkar', 'Sports and Games'),
(114, 'Which player holds the record for the most goals in a single football World Cup tournament?', 'Just Fontaine', 'Pele', 'Miroslav Klose', 'Gerd Muller', 'Just Fontaine', 'Sports and Games'),
(115, 'Which country has won the most number of Olympic gold medals?', 'USA', 'China', 'Russia', 'Great Britain', 'USA', 'Sports and Games'),
(116, 'Who is the only female tennis player to have won a calendar-year Grand Slam in the Open Era?', 'Steffi Graf', 'Martina Navratilova', 'Serena Williams', 'Margaret Court', 'Steffi Graf', 'Sports and Games'),
(117, 'Which country has won the most number of Hockey World Cup titles?', 'Australia', 'India', 'Netherlands', 'Pakistan', 'Australia', 'Sports and Games'),
(118, 'Who is the only athlete to have won Olympic gold medals in both the 100m and 400m events?', 'Michael Johnson', 'Usain Bolt', 'Carl Lewis', 'Jesse Owens', 'Michael Johnson', 'Sports and Games'),
(119, 'Which is the oldest Grand Slam tennis tournament?', 'Wimbledon', 'US Open', 'French Open', 'Australian Open', 'Wimbledon', 'Sports and Games'),
(120, 'Who won the FIFA World Cup in 2018?', 'France', 'Brazil', 'Spain', 'Germany', 'France', 'Sports and Games'),
(121, 'Which country has won the most number of Olympic medals?', 'USA', 'China', 'Russia', 'Great Britain', 'USA', 'Sports and Games'),
(122, 'Which is the only team to have won the ICC Cricket World Cup on home soil?', 'India', 'Australia', 'Sri Lanka', 'England', 'India', 'Sports and Games'),
(123, 'Which country won the first ever cricket World Cup?', 'West Indies', 'India', 'Australia', 'England', 'West Indies', 'Sports and Games'),
(124, 'Who is the only athlete to have won gold medals in three different Olympic Games in the same event?', 'Usain Bolt', 'Michael Phelps', 'Mo Farah', 'Allyson Felix', 'Usain Bolt', 'Sports and Games'),
(125, 'Which country has won the most number of UEFA Champions League titles?', 'Real Madrid', 'Barcelona', 'AC Milan', 'Liverpool', 'Real Madrid', 'Sports and Games'),
(126, 'Which sport is played in a velodrome?', 'Cycling', 'Swimming', 'Athletics', 'Boxing', 'Cycling', 'Sports and Games'),
(127, 'Which country has won the most number of Commonwealth Games gold medals?', 'Australia', 'England', 'Canada', 'India', 'Australia', 'Sports and Games'),
(128, 'Who is the fastest bowler in cricket history?', 'Shoaib Akhtar', 'Brett Lee', 'Glenn McGrath', 'Curtly Ambrose', 'Shoaib Akhtar', 'Sports and Games'),
(129, 'Who was the first Indian to receive the Nobel Prize?', 'Rabindranath Tagore', 'C.V. Raman', 'Mother Teresa', 'Amartya Sen', 'Rabindranath Tagore', 'Awards and Honours'),
(130, 'Who was awarded the Bharat Ratna, India’s highest civilian award, posthumously in 2019?', 'Atal Bihari Vajpayee', 'Bhagat Singh', 'Sardar Vallabhbhai Patel', 'Indira Gandhi', 'Atal Bihari Vajpayee', 'Awards and Honours'),
(131, 'Who won the Academy Award for Best Actor for his performance in the movie Joker in 2020?', 'Joaquin Phoenix', 'Leonardo DiCaprio', 'Brad Pitt', 'Tom Hanks', 'Joaquin Phoenix', 'Awards and Honours'),
(132, 'Which Indian actor has won the most National Film Awards for Best Actor?', 'Amitabh Bachchan', 'Dilip Kumar', 'Naseeruddin Shah', 'Kamal Haasan', 'Amitabh Bachchan', 'Awards and Honours'),
(133, 'Who won the Man Booker Prize for Fiction in 2021?', 'Damon Galgut', 'Maggie O’Farrell', 'Patricia Lockwood', 'Anuk Arudpragasam', 'Damon Galgut', 'Awards and Honours'),
(134, 'Who was awarded the Nobel Peace Prize in 2020?', 'World Food Programme', 'Greta Thunberg', 'Donald Trump', 'Kim Jong-un', 'World Food Programme', 'Awards and Honours'),
(135, 'Which Indian musician won the Grammy Award for Best World Music Album in 2021?', 'Ricky Kej', 'Zakir Hussain', 'Pandit Ravi Shankar', 'A.R. Rahman', 'Ricky Kej', 'Awards and Honours'),
(136, 'Which Indian sportsperson has won the most number of Rajiv Gandhi Khel Ratna Awards?', 'Vishwanathan Anand', 'Leander Paes', 'Mary Kom', 'Sachin Tendulkar', 'Mary Kom', 'Awards and Honours'),
(137, 'Who won the Nobel Prize for Literature in 2020?', 'Louise Glück', 'Olga Tokarczuk', 'Peter Handke', 'Kazuo Ishiguro', 'Louise Glück', 'Awards and Honours'),
(138, 'Which Indian film won the Best Picture Award at the 92nd Academy Awards in 2020?', 'Gully Boy', 'Andhadhun', 'Article 15', 'Super 30', 'Gully Boy', 'Awards and Honours'),
(139, 'Who was the first woman to win the Nobel Prize?', 'Marie Curie', 'Mother Teresa', 'Rosalind Franklin', 'Dorothy Hodgkin', 'Marie Curie', 'Awards and Honours'),
(140, 'Which Indian actor was awarded the Padma Vibhushan, India’s second highest civilian award, in 2015?', ' Amitabh Bachchan', 'Rajinikanth', 'Kamal Haasan', 'Mammootty', ' Amitabh Bachchan', 'Awards and Honours'),
(141, 'Who won the Pulitzer Prize for Fiction in 2021?', 'Louise Erdrich', 'Douglas Stuart', 'Raven Leilani', 'Avni Doshi', 'Louise Erdrich', 'Awards and Honours'),
(142, 'Which Indian author has won the Booker Prize twice?', 'Jhumpa Lahiri', 'Arundhati Roy', 'Salman Rushdie', 'Kiran Desai', 'Arundhati Roy', 'Awards and Honours'),
(143, 'Who was awarded the Nobel Prize in Physics in 2020?', 'Roger Penrose', 'Andrea Ghez', 'Reinhard Genzel', 'Emmanuelle Charpentier', 'Roger Penrose', 'Awards and Honours'),
(144, 'Which Indian actor was awarded the Dadasaheb Phalke Award, India’s highest award in cinema, in 2018?', 'Vinod Khanna', 'Rishi Kapoor', 'Shashi Kapoor', 'Mohanlal', 'Vinod Khanna', 'Awards and Honours'),
(145, 'Who won the Academy Award for Best Supporting Actress for her performance in the movie Minari in 2021?', 'Yuh-Jung Youn', 'Olivia Colman', 'Maria Bakalova', 'Glenn Close', 'Yuh-Jung Youn', 'Awards and Honours'),
(146, 'Which Indian writer was awarded the Sahitya Akademi Award for his book “An Era of Darkness: The British Empire in India” in 2018?', 'Shashi Tharoor', 'Ramachandra Guha', 'Amitav Ghosh', 'Arundhati Roy', 'Shashi Tharoor', 'Awards and Honours'),
(147, 'Who was awarded the Nobel Prize in Physiology or Medicine in 2020?', 'Harvey J. Alter, Michael Houghton, and Charles M. Rice', 'Jennifer Doudna and Emmanuelle Charpentier', 'James Peebles, Michel Mayor, and Didier Queloz', 'Abhijit Banerjee, Esther Duflo, and Michael Kremer', 'Harvey J. Alter, Michael Houghton, and Charles M. Rice', 'Awards and Honours'),
(148, 'Which Indian sportsperson was awarded the Padma Bhushan, India’s third highest civilian award, in 2019?', 'P.V. Sindhu', 'Sushil Kumar', 'Mary Kom', 'Leander Paes', 'P.V. Sindhu', 'Awards and Honours'),
(149, 'Who is the author of the book “The Alchemist”?', 'Paulo Coelho', 'Dan Brown', 'Stephen King', 'J.K. Rowling', 'Paulo Coelho', 'Books and Authors'),
(150, 'Who is the author of the book “The God of Small Things”?', 'Salman Rushdie', 'Arundhati Roy', 'V.S. Naipaul', 'Kiran Desai', 'Arundhati Roy', 'Books and Authors'),
(151, 'Who wrote the novel “The Great Gatsby”?', 'John Steinbeck', 'Ernest Hemingway', 'F. Scott Fitzgerald', 'William Faulkner', 'F. Scott Fitzgerald', 'Books and Authors'),
(152, 'Who is the author of the book “Midnight’s Children”?', 'Aravind Adiga', 'Salman Rushdie', 'Vikram Seth', 'Anita Desai', 'Salman Rushdie', 'Books and Authors'),
(153, 'Who wrote the novel “To Kill a Mockingbird”?', 'John Steinbeck', 'Ernest Hemingway', 'Harper Lee', 'William Faulkner', 'Harper Lee', 'Books and Authors'),
(154, 'Who is the author of the book “The Catcher in the Rye”?', 'J.D. Salinger', 'Ernest Hemingway', 'F. Scott Fitzgerald', 'Mark Twain', 'J.D. Salinger', 'Books and Authors'),
(155, 'Who wrote the novel “Pride and Prejudice”?', 'Charlotte Bronte', 'Emily Bronte', 'Jane Austen', 'Agatha Christie', 'Jane Austen', 'Books and Authors'),
(156, 'Who is the author of the book “The Da Vinci Code”?', 'Dan Brown', 'J.K. Rowling', 'Stephen King', 'Paulo Coelho', 'Dan Brown', 'Books and Authors'),
(157, 'Who wrote the novel “One Hundred Years of Solitude”?', 'Gabriel Garcia Marquez', 'Isabel Allende', 'Pablo Neruda', 'Jorge Luis Borges', 'Gabriel Garcia Marquez', 'Books and Authors'),
(158, 'Who is the author of the book “The Picture of Dorian Gray”?', 'Oscar Wilde', 'T.S. Eliot', 'Virginia Woolf', 'James Joyce', 'Oscar Wilde', 'Books and Authors'),
(159, 'Who wrote the novel “1984”?', 'George Orwell', 'Aldous Huxley', 'Anthony Burgess', 'Margaret Atwood', 'George Orwell', 'Books and Authors'),
(160, 'Who is the author of the book “The Hunger Games”?', 'Suzanne Collins', 'Veronica Roth', 'J.K. Rowling', 'George R.R. Martin', 'Suzanne Collins', 'Books and Authors'),
(161, 'Who wrote the novel “The Hobbit”?', 'J.R.R. Tolkien', 'C.S. Lewis', 'J.K. Rowling', 'George R.R. Martin', 'J.R.R. Tolkien', 'Books and Authors'),
(162, 'Who is the author of the book “The Handmaid’s Tale”?', 'Margaret Atwood', 'Sylvia Plath', 'Virginia Woolf', 'Jane Austen', 'Margaret Atwood', 'Books and Authors'),
(163, 'Who wrote the novel “The Adventures of Tom Sawyer”?', 'Mark Twain', 'Edgar Allan Poe', 'Herman Melville', 'Nathaniel Hawthorne', 'Mark Twain', 'Books and Authors'),
(164, 'Who is the author of the book “A Tale of Two Cities”?', 'Charles Dickens', 'Jane Austen', 'Thomas Hardy', 'Charlotte Bronte', 'Charles Dickens', 'Books and Authors'),
(165, 'Who wrote the novel “The Girl with the Dragon Tattoo”?', 'Stieg Larsson', 'John le Carré', 'Agatha Christie', 'Dan Brown', 'Stieg Larsson', 'Books and Authors'),
(166, 'Who is the author of the book “The Road”?', 'Cormac McCarthy', 'Stephen King', 'Haruki Murakami', 'J.D. Salinger', 'Cormac McCarthy', 'Books and Authors'),
(167, 'Who wrote the novel “Wuthering Heights”?', 'Emily Bronte', 'Charlotte Bronte', 'Jane Austen', 'George Eliot', 'Emily Bronte', 'Books and Authors'),
(168, 'Who is the author of the book “The Cat in the Hat”?', 'Dr. Seuss', 'Roald Dahl', 'Shel Silverstein', 'Beatrix Potter', 'Dr. Seuss', 'Books and Authors'),
(169, 'When is World Environment Day celebrated?', 'June 5', 'April 22', 'March 22', 'September 16', 'June 5', 'Important Days and Dates'),
(170, 'When is International Women’s Day celebrated?', 'March 8', 'June 8', 'December 8', 'September 8', 'March 8', 'Important Days and Dates'),
(171, 'When is Gandhi Jayanti celebrated?', 'October 2', 'August 15', 'January 26', 'November 14', 'October 2', 'Important Days and Dates'),
(172, 'When is World Population Day observed?', 'July 11', 'June 5', 'April 22', 'March 22', 'July 11', 'Important Days and Dates'),
(173, 'When is International Yoga Day celebrated?', 'June 21', 'May 1', 'July 1', 'August 1', 'June 21', 'Important Days and Dates'),
(174, 'When is International Day of Peace observed?', 'September 21', 'June 5', 'April 22', 'March 22', 'September 21', 'Important Days and Dates'),
(175, 'When is International Labour Day observed?', 'May 1', 'June 5', 'April 22', 'March 22', 'May 1', 'Important Days and Dates'),
(176, 'When is Children’s Day celebrated in India?', 'November 14', 'October 2', 'August 15', 'January 26', 'November 14', 'Important Days and Dates'),
(177, 'When is National Science Day celebrated in India?', 'February 28', 'January 26', 'August 15', 'October 2', 'February 28', 'Important Days and Dates'),
(178, 'When is National Sports Day celebrated in India?', 'August 29', 'July 1', 'September 5', 'October 31', 'August 29', 'Important Days and Dates'),
(179, 'When is World Health Day celebrated?', 'April 7', 'June 5', 'April 22', 'March 22', 'April 7', 'Important Days and Dates'),
(180, 'When is National Youth Day celebrated in India?', 'January 12', 'October 2', 'August 15', 'January 26', 'January 12', 'Important Days and Dates'),
(181, 'When is National Science Fiction Day observed?', 'January 2', 'February 28', 'December 25', 'April 1', 'January 2', 'Important Days and Dates'),
(182, 'When is National Voters’ Day celebrated in India?', 'January 25', 'February 14', 'March 8', 'April 7', 'January 25', 'Important Days and Dates'),
(183, 'When is National Education Day observed in India?', 'November 11', 'October 2', 'August 15', 'January 26', 'November 11', 'Important Days and Dates'),
(184, 'When is World Water Day observed?', 'March 22', 'June 5', 'April 22', 'May 1', 'March 22', 'Important Days and Dates'),
(185, 'When is National Unity Day celebrated in India?', 'October 31', 'August 15', 'January 26', 'November 14', 'October 31', 'Important Days and Dates'),
(186, 'When is National Sports Awards given in India?', 'August 29', 'July 1', 'September 5', 'October 31', 'August 29', 'Important Days and Dates'),
(187, 'When is National Ayurveda Day celebrated in India?', 'October 28', 'January 26', 'August 15', 'October 2', 'October 28', 'Important Days and Dates'),
(188, 'When is International Day for the Elimination of Violence against Women observed?', 'November 25', 'October 2', 'August 15', 'January 26', 'November 25', 'Important Days and Dates'),
(189, 'Which dance form originated in Kerala?', 'Kathak', 'Kuchipudi', 'Mohiniyattam', 'Bharatanatyam', 'Mohiniyattam', 'Art and Culture'),
(190, 'Who is known as the \"Father of the Indian Cinema\"?', 'Satyajit Ray', 'Dadasaheb Phalke', 'Raj Kapoor', 'Bimal Roy', 'Dadasaheb Phalke', 'Art and Culture'),
(191, 'What is the name of the famous dance festival celebrated in Konark?', 'Khajuraho Dance Festival', 'Konark Dance Festival', 'Ellora Dance Festival', 'Hampi Dance Festival', 'Konark Dance Festival', 'Art and Culture'),
(192, 'Which classical dance form originated in Manipur?', 'Odissi', 'Kathakali', 'Manipuri', 'Bharatanatyam', 'Manipuri', 'Art and Culture'),
(193, 'Which classical dance form originated in Andhra Pradesh?', 'Kuchipudi', 'Kathak', 'Mohiniyattam', 'Sattriya', 'Kuchipudi', 'Art and Culture'),
(194, 'Who is the author of the book \"The Namesake\"?', 'Jhumpa Lahiri', 'Arundhati Roy', 'Vikram Seth', 'Salman Rushdie', 'Jhumpa Lahiri', 'Art and Culture'),
(195, 'What is the name of the famous festival celebrated in Rajasthan?', 'Holi', 'Diwali', 'Pushkar Mela', 'Kumbh Mela', 'Pushkar Mela', 'Art and Culture'),
(196, 'Which is the oldest classical dance form of India?', 'Bharatanatyam', 'Kathak', 'Kathakali', 'Manipuri', 'Bharatanatyam', 'Art and Culture'),
(197, 'What is the name of the famous puppetry form of Rajasthan?', 'Kathputli', 'Glove Puppetry', 'String Puppetry', 'Rod Puppetry', 'Kathputli', 'Art and Culture'),
(198, 'Who is known as the \"Nightingale of India\"?', 'Lata Mangeshkar', 'Asha Bhosle', 'Geeta Dutt', 'Kavita Krishnamurthy', 'Lata Mangeshkar', 'Art and Culture'),
(199, 'Which classical dance form originated in Tamil Nadu?', 'Kathak', 'Bharatanatyam', 'Kathakali', 'Manipuri', 'Bharatanatyam', 'Art and Culture'),
(200, 'Who was the author of the famous book \"The Great Gatsby\"?', 'William Faulkner', 'F. Scott Fitzgerald', 'Ernest Hemingway', 'John Steinbeck', 'F. Scott Fitzgerald', 'Books and Authors'),
(201, 'Which Indian city is known as the \"City of Joy\"?', 'Kolkata', 'Delhi', 'Mumbai', 'Chennai', 'Kolkata', 'General Knowledge'),
(202, 'Which Indian singer was awarded the Bharat Ratna in 2001?', 'Lata Mangeshkar', 'Asha Bhosle', 'Kishore Kumar', 'Mohammed Rafi', 'Lata Mangeshkar', 'Awards and Honours'),
(203, 'Who invented the World Wide Web (WWW)?', 'Bill Gates', 'Steve Jobs', 'Tim Berners-Lee', 'Mark Zuckerberg', 'Tim Berners-Lee', 'Science and Technology'),
(204, 'Which is the highest literary award given in India?', 'Booker Prize', 'Pulitzer Prize', 'Sahitya Akademi Award', 'Nobel Prize in Literature', 'Sahitya Akademi Award', 'Awards and Honours'),
(205, 'On which river is the city of Varanasi located?', 'Yamuna', 'Ganga', 'Brahmaputra', 'Narmada', 'Ganga', 'Geography'),
(206, 'Who is known as the \"Father of the Indian Constitution\"?', 'Mahatma Gandhi', 'Jawaharlal Nehru', 'B.R. Ambedkar', 'Sardar Patel', 'B.R. Ambedkar', 'Indian Polity and Constitution'),
(207, 'Which is the largest cell in the human body?', 'Nerve cell', 'Sperm cell', 'Muscle cell', 'Egg cell', 'Egg cell', 'Science and Technology'),
(208, 'Which Indian state has the highest literacy rate?', 'Kerala', 'Tamil Nadu', 'Andhra Pradesh', 'Uttar Pradesh', 'Kerala', 'Geography');

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
(40, 'Lucifer walks 13km towards south, then he walks 10km towards north. Finally he walks 4km towards east. In which direction is he now with respect to his starting point?', 'North-East', 'South-West', 'North-West', 'South-East', 'South-East', 'Direction and Distance'),
(41, 'What comes next in the series: 5, 8, 13, 20, 29, ?', '38', '39', '40', '41', '38', 'Number and Letter Series'),
(42, 'What comes next in the series: F, H, K, O, T, ?', 'Y', 'V', 'W', 'X', 'Y', 'Number and Letter Series'),
(43, 'What comes next in the series: 2, 6, 12, 20, 30, ?', '42', '44', '48', '50', '42', 'Number and Letter Series'),
(44, 'What comes next in the series: B, E, I, N, ?', 'T', 'U', 'V', 'W', 'U', 'Number and Letter Series'),
(45, 'What comes next in the series: 3, 7, 15, 31, 63, ?', '127', '129', '131', '133', '127', 'Number and Letter Series'),
(46, 'What comes next in the series: L, O, K, N, H, ?', 'K', 'L', 'M', 'N', 'M', 'Number and Letter Series'),
(47, 'What comes next in the series: 4, 9, 19, 39, 79, ?', '159', '149', '129', '119', '159', 'Number and Letter Series'),
(48, 'What comes next in the series: G, K, P, U, ?', 'Z', 'W', 'X', 'Y', 'Z', 'Number and Letter Series'),
(49, 'What comes next in the series: 1, 4, 10, 22, 46, ?', '94', '90', '92', '96', '94', 'Number and Letter Series'),
(50, 'What comes next in the series: A, C, F, J, O, ?', 'T', 'U', 'V', 'W', 'U', 'Number and Letter Series'),
(51, 'What comes next in the series? A, C, E, G, __', 'H', 'I', 'F', 'J', 'I', 'Number and Letter Series'),
(52, 'What comes next in the series? 1, 3, 6, 10, 15, __', '21', '22', '23', '24', '21', 'Number and Letter Series'),
(53, 'What comes next in the series? D, G, K, P, __', 'V', 'Q', 'R', 'S', 'S', 'Number and Letter Series'),
(54, 'What comes next in the series? 2, 4, 8, 16, __', '24', '32', '64', '128', '32', 'Number and Letter Series'),
(55, 'What comes next in the series? F, H, K, O, __', 'U', 'P', 'T', 'W', 'U', 'Number and Letter Series'),
(56, 'What comes next in the series? 10, 20, 40, 80, __', '160', '120', '200', '240', '160', 'Number and Letter Series'),
(57, 'What comes next in the series? B, F, J, O, __', 'T', 'Q', 'R', 'S', 'T', 'Number and Letter Series'),
(58, 'What comes next in the series? 5, 10, 20, 40, __', '80', '100', '120', '160', '80', 'Number and Letter Series'),
(59, 'What comes next in the series? G, K, N, S, __', 'X', 'T', 'W', 'V', 'W', 'Number and Letter Series'),
(60, 'What comes next in the series? 3, 6, 9, 12, 15, __', '18', '20', '21', '24', '18', 'Number and Letter Series'),
(61, 'Five friends A, B, C, D, and E are sitting in a row. A is to the left of B and C is to the right of E. If D is sitting between A and C, who is sitting in the middle?', 'A', 'B', 'C', 'D', 'C', 'Ranking and Arrangements'),
(62, 'If the first day of a month is Sunday, what will be the last day of that month if it has 31 days?', 'Monday', 'Tuesday', 'Saturday', 'Sunday', 'Tuesday', 'Ranking and Arrangements'),
(63, 'In a row of 15 students, Ravi is fifth from the right and Abhi is sixth from the left. How many students are there between Ravi and Abhi?', '7', '6', '5', '4', '3', 'Ranking and Arrangements'),
(64, 'Six people are sitting in a circle facing the center. A is between B and C, D is second to the right of C, and F is to the left of E. Who is sitting between A and F?', 'B', 'C', 'D', 'E', 'C', 'Ranking and Arrangements'),
(65, 'If every alternate letter starting from B is written in lower case and the rest in upper case, then which letter would be the 10th letter from the left?', 'j', 'H', 'J', 'h', 'J', 'Ranking and Arrangements'),
(66, 'If 6th of July is Tuesday, then what day will be on 14th of August in the same year?', 'Monday', 'Tuesday', 'Wednesday', 'Sunday', 'Sunday', 'Ranking and Arrangements'),
(67, 'In a row of students, if the 16th student from the left and the 12th student from the right interchange their positions, then the student who was 20th from the left will be how many positions away from the right end?', '7', '8', '9', '10', '9', 'Ranking and Arrangements'),
(68, 'If P, Q, R, S, T and U are standing in a queue in the same order and P is standing in the middle. If U is standing behind T, then who is standing in front of R?', 'Q', 'T', 'U', 'Cannot be determined', 'Q', 'Ranking and Arrangements'),
(69, 'A group of 10 people are standing in a line. In how many ways can you rearrange them?', '3,628,800', '3,628', '362,880', '362,880,000', '3,628,800', 'Ranking and Arrangements'),
(70, 'If A, B, C, D and E are sitting in a row and D is not sitting next to E, then which of the following is a possible arrangement?', 'ABCDE', 'ABDCE', 'BADEC', 'BCADE', 'BCADE', 'Ranking and Arrangements'),
(71, 'In a row of 40 children, Varun is 20th from the left end. If he moves 10 places towards the right end, what will be his position from the right end?', '21', '22', '23', '24', 'B', 'Ranking and Arrangements'),
(72, 'Six people P, Q, R, S, T and U are sitting in a circle facing the center. P is second to the left of T who is second to the left of R. S is second to the right of U. Who is sitting between P and U?', 'Q', 'T', 'R', 'S', 'T', 'Ranking and Arrangements'),
(73, 'Ten people are sitting in two parallel rows containing five people each. In row 1, A, B, C, D and E are seated and all of them are facing south. In row 2, P, Q, R, S and T are seated and all of them are facing north. Therefore, in the given seating arrangement each member seated in a row faces another member of the other row. Moreover, each of them has a different profession viz. Doctor, Engineer, Teacher, Lawyer, Banker, Accountant, Journalist, Architect, Consultant and Businessman. Who among the following represents the professionals seated in the two rows?', 'Teacher, Businessman, Lawyer, Engineer, Accountant and Architect', 'Journalist, Consultant, Doctor, Banker, Teacher and Businessman', 'Consultant, Journalist, Accountant, Lawyer, Teacher and Banker', 'Businessman, Teacher, Lawyer, Accountant, Engineer and Journalist', 'Businessman, Teacher, Lawyer, Accountant, Engineer and Journalist', 'Ranking and Arrangements'),
(74, 'There are five friends - A, B, C, D and E. A is shorter than B but taller than C. D is taller than E but shorter than A. Who is the shortest?', 'B', 'C', 'D', 'E', 'C', 'Ranking and Arrangements'),
(75, 'In a row of children, A is 8th from the left and B is 12th from the right. If they interchange their places, A becomes 18th from the left. What is the total number of children in the row?', '24', '26', '28', '30', '26', 'Ranking and Arrangements'),
(76, 'In a row of students, S is 8th from the left and P is 15th from the right. If they interchange their positions, then S becomes 20th from the left. How many students are there in the row?', '28', '30', '32', '34', '32', 'Ranking and Arrangements'),
(77, 'A group of five people consisting of A, B, C, D and E is standing in a row. If A is not at the extreme end, how many arrangements are possible?', '72', '60', '48', '36', '48', 'Ranking and Arrangements'),
(78, 'In a group of 8 people, A is 6th from the front and B is 7th from the back. If they change their positions, A becomes 11th from the front. How many people are there in the group now?', '8', '9', '10', '11', '10', 'Ranking and Arrangements'),
(79, 'In a row of 50 people, A is 17th from the left end and B is 10 places to the right of A. How many people are there between A and B?', '24', '25', '26', '27', '23', 'Ranking and Arrangements'),
(80, 'Five students A, B, C, D, and E are sitting in a row. If A is sitting next to B, C is sitting next to D, and D is not sitting next to E, then which of the following pairs must be sitting at the ends?', 'AC', 'AE', 'BE', 'CD', 'BE', 'Ranking and Arrangements'),
(81, 'All cats are dogs. All dogs are mice. Therefore, all cats are mice.', 'True', 'False', 'Can’t be determined', 'None of the above', 'False', 'Syllogism'),
(82, 'All trees are plants. All plants are living beings. Therefore, all trees are living beings.', 'True', 'False', 'Can’t be determined', 'None of the above', 'True', 'Syllogism'),
(83, 'All doctors are researchers. All researchers are hardworking. Therefore, all doctors are hardworking.', 'True', 'False', 'Can’t be determined', 'None of the above', 'True', 'Syllogism'),
(84, 'All bicycles are vehicles. All vehicles are automobiles. Therefore, all bicycles are automobiles.', 'True', 'False', 'Can’t be determined', 'None of the above', 'True', 'Syllogism'),
(85, 'All birds can fly. Some birds are sparrows. Therefore, some sparrows can fly.', 'True', 'False', 'Can’t be determined', 'None of the above', 'True', 'Syllogism'),
(86, 'All fruits are vegetables. All vegetables are healthy. Therefore, all fruits are healthy.', 'True', 'False', 'Can’t be determined', 'None of the above', 'True', 'Syllogism'),
(87, 'All athletes are healthy. Some athletes are footballers. Therefore, some footballers are healthy.', 'True', 'False', 'Can’t be determined', 'None of the above', 'True', 'Syllogism'),
(88, 'All chairs are furniture. Some furniture are made of wood. Therefore, some chairs are made of wood.', 'True', 'False', 'Can’t be determined', 'None of the above', 'True', 'Syllogism'),
(89, 'All dogs are mammals. Some mammals are predators. Therefore, some dogs are predators.', 'True', 'False', 'Can’t be determined', 'None of the above', 'True', 'Syllogism'),
(90, 'All flowers are plants. Some plants are roses. Therefore, some roses are flowers.', 'True', 'False', 'Can’t be determined', 'None of the above', 'True', 'Syllogism'),
(91, 'All pens are pencils. Some pencils are erasers. Therefore,', 'All erasers are pens.', 'All erasers are pencils.', 'All pencils are erasers.', 'All pens are erasers.', 'All pencils are erasers.', 'Syllogism'),
(92, 'All cats are dogs. All dogs are rats. Therefore,', 'All rats are dogs.', 'All rats are cats.', 'All cats are rats.', 'All dogs are rats.', 'All cats are rats.', 'Syllogism'),
(93, 'Some trees are flowers. All flowers are plants. Therefore,', 'Some trees are plants.', 'All trees are plants.', 'No trees are plants.', 'Some plants are trees.', 'Some trees are plants.', 'Syllogism'),
(94, 'Some dogs are cats. All cats are birds. Therefore,', 'Some dogs are birds.', 'No dogs are birds.', 'All dogs are birds.', 'Some birds are cats.', 'Some dogs are birds.', 'Syllogism'),
(95, 'All students in this school are smart. All students in this school are hardworking. Therefore,', 'All hardworking students are smart.', 'All smart students are hardworking.', 'Some hardworking students are smart.', 'Some smart students are hardworking.', 'All hardworking students are smart.', 'Syllogism'),
(96, 'Some chairs are tables. Some tables are desks. Therefore,', 'Some desks are chairs.', 'Some chairs are desks.', 'No desks are chairs.', 'All desks are tables.', 'Some desks are chairs.', 'Syllogism'),
(97, 'All cars have engines. All trucks have engines. Therefore,', 'All cars are trucks.', 'All trucks are cars.', 'All cars and trucks have engines.', 'Some cars are trucks.', 'All cars and trucks have engines.', 'Syllogism'),
(98, 'All fish are animals. All animals are living things. Therefore,', 'All fish are living things.', 'No living things are fish.', 'All living things are fish.', 'Some living things are not fish.', 'All fish are living things.', 'Syllogism'),
(99, 'All men are human beings. Some human beings are kind-hearted. Therefore,', 'All kind-hearted men are human beings.', 'Some kind-hearted men are human beings.', 'All human beings are kind-hearted.', 'Some men are kind-hearted.', 'Some kind-hearted men are human beings.', 'Syllogism'),
(100, 'All oranges are fruits. All fruits are sweet. Therefore,', 'All sweet things are oranges.', 'All sweet things are fruits.', 'All oranges are sweet things.', 'Some sweet things are fruits.', 'All sweet things are fruits.', 'Syllogism');

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
-- Dumping data for table `verbal`
--

INSERT INTO `verbal` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_ans`, `topic`) VALUES
(1, 'Identify the sentence that is grammatically incorrect:', 'I am going to the gym every day.', 'She have a lot of work to do.', 'He has lived in this city for ten years.', 'They were not able to attend the meeting.', 'She have a lot of work to do.', 'Grammar and sentence structure'),
(2, 'Choose the correct form of the verb to complete the sentence:\nI _____ to the movies last night.', 'goes', 'gone', 'went', 'go', 'went', 'Grammar and sentence structure'),
(3, 'Choose the correct sentence:', 'Me and my friends are going to the beach.', 'My friends and I are going to the beach.', 'I and my friends are going to the beach.', 'My friends and me are going to the beach.', 'My friends and I are going to the beach.', 'Grammar and sentence structure'),
(4, 'Identify the error in the sentence:\n\nShe asked me to lend her five dollars, and then she went and spend it on candy.', 'Subject-verb agreement error', 'Tense inconsistency', 'Pronoun error', 'Verb form error', 'Verb form error', 'Grammar and sentence structure'),
(5, 'Choose the correct sentence:', 'The cat chased it\'s tail.', 'The cat chased its tail.', 'The cat chased their tail.', 'The cat chased there tail.', 'The cat chased its tail.', 'Grammar and sentence structure'),
(6, 'Choose the correct form of the verb to complete the sentence:\n\nThey _____ watching the game on TV when the power went out.', 'were', 'are', 'is', 'was', 'were', 'Grammar and sentence structure'),
(7, 'Choose the correct sentence:', 'The committee was divided on their decision.', 'The committee were divided on their decision.', 'The committee was divided on its decision.', 'The committee were divided on its decision.', 'The committee was divided on its decision.', 'Grammar and sentence structure'),
(8, 'Identify the sentence that is grammatically incorrect:', 'She is taller than her sister.', 'He runs faster than me.', 'I am good at math.', 'They speak Spanish fluently', 'He runs faster than me.', 'Grammar and sentence structure'),
(9, 'Choose the correct sentence:', ') My sister, who is a doctor, is coming to visit.', 'My sister who is a doctor is coming to visit.', 'My sister who, is a doctor, is coming to visit.', 'My sister who is a doctor, is coming to visit.', 'My sister who is a doctor is coming to visit.', 'Grammar and sentence structure'),
(10, 'Choose the correct form of the verb to complete the sentence:\n\nThe new teacher _____ very strict.', 'is', 'are', 'am', 'be', 'is', 'Grammar and sentence structure'),
(11, 'Choose the correct sentence:', 'The dog\'s barking woke me up early.', 'The dogs\' barking woke me up early.', 'The dog barking woke me up early.', 'The dogs barking woke me up early.', 'The dog\'s barking woke me up early.', 'Grammar and sentence structure'),
(12, 'Choose the correct sentence:', 'He is taller than I.', 'He is taller than me.', 'Him is taller than me.', 'Him is taller than I.', 'He is taller than me.', 'Grammar and sentence structure'),
(13, 'Identify the error in the sentence:\n\nHer and I are planning to go to the concert.', 'Subject-verb agreement error', 'Pronoun error', 'Tense inconsistency', 'Pronoun case error', 'Pronoun case error', 'Grammar and sentence structure'),
(14, 'Choose the correct sentence:', 'Whose going to the party tonight?', 'Who\'s going to the party tonight?', 'Whom going to the party tonight?', 'Who going to the party tonight?', 'Who\'s going to the party tonight?', 'Grammar and sentence structure'),
(15, 'Choose the correct sentence:', 'The team won the game because of their hard work.', 'The team won the game because of its hard work.', 'The team won the game because of they hard work.', 'The team won the game because of there hard work.', 'The team won the game because of its hard work.', 'Grammar and sentence structure'),
(16, 'Choose the correct form of the verb to complete the sentence:\n\nShe _____ to visit her grandparents next month.', 'plan', 'plans', 'planned', 'planning', 'plans', 'Grammar and sentence structure'),
(17, 'Identify the error in the sentence:\n\nI should of studied more for the exam.', 'Subject-verb agreement error', 'Tense inconsistency', 'Pronoun error', 'Verb form error', 'Verb form error', 'Grammar and sentence structure'),
(18, 'Choose the correct sentence:', 'He told Mary and I about the news.', 'He told Mary and me about the news.', 'He told Mary and myself about the news.', 'He told Mary and we about the news.', 'He told Mary and me about the news.', 'Grammar and sentence structure'),
(19, 'Choose the correct sentence:', 'The children played happily in the park.', 'The children played happy in the park.', 'The children played happiness in the park.', 'The children played happily at', 'The children played happiness in the park.', 'Grammar and sentence structure'),
(20, 'Choose the correct form of the verb to complete the sentence:\n\nI _____ my keys this morning.', 'lose', 'loses', 'lost', 'losing', 'lost', 'Grammar and sentence structure'),
(21, 'Choose the correct sentence:', 'The cat drank it\'s milk.', 'The cat drank its milk.', 'The cat drank their milk.', 'The cat drank there milk.', 'The cat drank its milk.', 'Grammar and sentence structure'),
(22, 'Synonym of \"happy\":', 'Sad', 'Joyful', 'Angry', 'Tired', 'Joyful', 'Synonym and Antonyms'),
(23, 'Antonym of \"big\":', 'Small', 'Wide', 'Tall', 'Thick', 'Small', 'Synonym and Antonyms'),
(24, 'Synonym of \"expensive\":', 'Cheap', 'free', 'Affordable', 'Inexpensive', 'Inexpensive', 'Synonym and Antonyms'),
(25, 'Antonym of \"loud\":', 'Quiet', 'Soft', 'Noisy', 'Shrill', 'Quiet', 'Synonym and Antonyms'),
(26, 'Synonym of \"beautiful\":', 'Ugly', 'Pretty', 'Homely', 'Plain', 'Pretty', 'Synonym and Antonyms'),
(27, 'Antonym of \"friendly\":', 'Kind', 'Hostile', 'Amiable', 'Sociable', 'Hostile', 'Synonym and Antonyms'),
(28, 'Synonym of \"difficult\":', 'Easy', 'Hard', 'Simple', 'Effortless', 'Hard', 'Synonym and Antonyms'),
(29, 'Antonym of \"dark\":', 'Gloomy', 'Bright', 'Shadowy', 'Dull', 'Bright', 'Synonym and Antonyms'),
(30, 'Synonym of \"exciting\":', 'Boring', 'Dull', 'Lame', 'Thrilling', 'Thrilling', 'Synonym and Antonyms'),
(31, 'Antonym of \"fast\":', 'Slow', 'Rapid', 'Quick', 'Swift', 'Slow', 'Synonym and Antonyms'),
(32, 'Synonym of \"angry\":', 'Happy', 'Furious', 'Calm', 'Content', 'Furious', 'Synonym and Antonyms'),
(33, 'Antonym of \"empty\":', 'Full', 'Vacant', 'Hollow', 'Bare', 'Full', 'Synonym and Antonyms'),
(34, 'Synonym of \"brave\":', 'Cowardly', 'Timid', 'Fearless', 'Scared', 'Fearless', 'Synonym and Antonyms'),
(35, 'Antonym of \"near\":', 'Far', 'Close', 'Distant', 'Adjacent', 'Far', 'Synonym and Antonyms'),
(36, 'Synonym of \"intelligent\":', 'Stupid', 'Dumb', 'Clever', 'Idiotic', 'Clever', 'Synonym and Antonyms'),
(37, 'Antonym of \"heavy\":', 'Weightless', 'Light', 'Massive', 'Dense', 'Light', 'Synonym and Antonyms'),
(38, 'Synonym of \"kind\":', 'Mean', 'Rude', 'Nice', 'Cruel', 'Nice', 'Synonym and Antonyms'),
(39, 'Antonym of \"old\":', 'Ancient', 'New', 'Mature', 'Aged', 'New', 'Synonym and Antonyms'),
(40, 'Synonym of \"generous\":', 'Stingy', 'Selfish', 'Giving', 'Greedy', 'Giving', 'Synonym and Antonyms'),
(41, 'Antonym of \"wet\":', 'Dry', 'Moist', 'Damp', 'Soggy', 'Dry', 'Synonym and Antonyms'),
(42, 'Idioms and Phrases: To go the extra mile', 'To go further than expected', 'To go a shorter distance', 'To take a break', 'To go in the wrong direction', 'To go further than expected', 'Idioms and Phrases'),
(43, 'Idioms and Phrases: A piece of cake', 'A difficult task', 'A simple task', 'A complicated task', 'An impossible task', 'A simple task', 'Idioms and Phrases'),
(44, 'Idioms and Phrases: Break the ice', 'To start a conversation', 'To end a conversation', 'To interrupt a conversation', 'To avoid a conversation', 'To start a conversation', 'Idioms and Phrases'),
(45, 'Idioms and Phrases: To spill the beans', 'To reveal a secret', 'To keep a secret', 'To hide a secret', 'To forget a secret', 'To reveal a secret', 'Idioms and Phrases'),
(46, 'Idioms and Phrases: A blessing in disguise', 'Something good that is not recognized at first', 'Something bad that is recognized immediately', 'Something good that is recognized immediately', 'Something bad that is not recognized at first', 'Something good that is not recognized at first', 'Idioms and Phrases'),
(47, 'Idioms and Phrases: To be on cloud nine', 'To be extremely happy', 'To be extremely sad', 'To be extremely angry', 'To be extremely tired', 'To be extremely happy', 'Idioms and Phrases'),
(48, 'Idioms and Phrases: Under the weather', 'To be feeling sick', 'To be feeling well', 'To be feeling energetic', 'To be feeling lazy', 'To be feeling sick', 'Idioms and Phrases'),
(49, 'Idioms and Phrases: A dime a dozen', 'Something very common and easy to get', 'Something very rare and hard to get', 'Something very valuable', 'Something very expensive', 'Something very common and easy to get', 'Idioms and Phrases'),
(50, 'Idioms and Phrases: To cut corners', 'To do something in the quickest and cheapest way possible', 'To do something in the most expensive way possible', 'To do something in the most efficient way possible', 'To do something in the most time-consuming way possible', 'To do something in the quickest and cheapest way possible', 'Idioms and Phrases'),
(51, 'Idioms and Phrases: To let the cat out of the bag', 'To reveal a secret', 'To keep a secret', 'To hide a secret', 'To forget a secret', 'To reveal a secret', 'Idioms and Phrases'),
(52, 'Idioms and Phrases: To hit the nail on the head', 'To be exactly right', 'To be partially right', 'To be completely wrong', 'To be confused', 'To be exactly right', 'Idioms and Phrases'),
(53, 'Idioms and Phrases: To pull someone’s leg', 'To tease someone', 'To make someone angry', 'To make someone happy', 'To scare someone', 'To tease someone', 'Idioms and Phrases'),
(54, 'Idioms and Phrases: To add insult to injury', 'To make a bad situation worse', 'To make a bad situation better', 'To make a good situation worse', 'To make a good situation better', 'To make a bad situation worse', 'Idioms and Phrases'),
(55, 'Idioms and Phrases: To keep an eye on something', 'To monitor something closely', 'To ignore something completely', 'To fix something', 'To change something', 'To monitor something closely', 'Idioms and Phrases'),
(56, 'Idioms and Phrases: To have a chip on one’s shoulder', 'To be easily angered', 'To be very happy', 'To be very sad', 'To be very surprised', 'To be easily angered', 'Idioms and Phrases'),
(57, 'Idioms and Phrases: To turn a blind eye', 'To ignore something', 'To pay attention to something', 'To fix something', 'To change something', 'To ignore something', 'Idioms and Phrases'),
(58, 'Idioms and Phrases: To burn the midnight oil', 'To work late into the night', 'To sleep early', 'To wake up early', 'To have a lot of free time', 'To work late into the night', 'Idioms and Phrases'),
(59, 'Idioms and Phrases: To kick the bucket', 'To die', 'To live a long life', 'To get married', 'To retire', 'To die', 'Idioms and Phrases'),
(60, 'Idioms and Phrases: To make ends meet', 'To have enough money to survive', 'To have more money than necessary', 'To have less money than necessary', 'To have no money at all', 'To have enough money to survive', 'Idioms and Phrases'),
(61, 'Idioms and Phrases: To cut the mustard', 'To perform well', 'To perform poorly', 'To be confused', 'To be angry', 'To perform well', 'Idioms and Phrases'),
(62, 'What does the word “pensive” mean?', 'Thoughtful and reflective', 'Uninterested and bored', 'Proud and arrogant', 'Friendly and outgoing', 'Thoughtful and reflective', 'Vocabulary'),
(63, 'What does the word “frivolous” mean?', 'Not serious or important', 'Very serious and important', 'Happy and carefree', 'Sad and depressed', 'Not serious or important', 'Vocabulary'),
(64, 'What does the word “diligent” mean?', 'Hardworking and focused', 'Lazy and unmotivated', 'Energetic and outgoing', 'Shy and introverted', 'Hardworking and focused', 'Vocabulary'),
(65, 'What does the word “elated” mean?', 'Extremely happy and excited', 'Sad and depressed', 'Angry and frustrated', 'Tired and exhausted', 'Extremely happy and excited', 'Vocabulary'),
(66, 'What does the word “conundrum” mean?', 'A confusing and difficult problem', 'An easy and simple solution', 'A funny and entertaining story', 'A scary and terrifying experience', 'A confusing and difficult problem', 'Vocabulary'),
(67, 'What does the word “myriad” mean?', 'A great number of things', 'A small number of things', 'A colorful and diverse group of people', 'A single, specific thing', 'A great number of things', 'Vocabulary'),
(68, 'What does the word “opaque” mean?', 'Not transparent, difficult to see through', 'Transparent and clear', 'Shiny and reflective', 'Dull and boring', 'Not transparent, difficult to see through', 'Vocabulary'),
(69, 'What does the word “malleable” mean?', 'Capable of being shaped or molded', 'Rigid and inflexible', 'Easily broken or damaged', 'Very hard and strong', 'Capable of being shaped or molded', 'Vocabulary'),
(70, 'What does the word “precarious” mean?', 'Dangerous and unstable', 'Safe and secure', 'Comfortable and cozy', 'Exciting and fun', 'Dangerous and unstable', 'Vocabulary'),
(71, 'What does the word “ubiquitous” mean?', 'Present or found everywhere', 'Rare and hard to find', 'Temporary or fleeting', 'Small and insignificant', 'Present or found everywhere', 'Vocabulary'),
(72, 'What does the word “magnanimous” mean?', 'Very generous and forgiving', 'Greedy and selfish', 'Shy and introverted', 'Unfriendly and mean', 'Very generous and forgiving', 'Vocabulary'),
(73, 'What does the word “acumen” mean?', 'The ability to make good judgments and quick decisions', 'The inability to make decisions', 'A lack of intelligence', 'A lack of motivation', 'The ability to make good judgments and quick decisions', 'Vocabulary'),
(74, 'What does the word “apathy” mean?', 'Lack of interest, enthusiasm, or concern', 'Excessive interest or enthusiasm', 'Excessive concern', 'Friendly and outgoing', 'Lack of interest, enthusiasm, or concern', 'Vocabulary'),
(75, 'What does the word “abhor” mean?', 'To hate or detest', 'To love or adore', 'To feel indifferent', 'To be scared of', 'To hate or detest', 'Vocabulary'),
(76, 'What does the word “exasperate” mean?', 'To irritate or annoy greatly', 'To please or delight', 'To make indifferent', 'To confuse or bewilder', 'To irritate or annoy greatly', 'Vocabulary'),
(77, 'What does the word “elusive” mean?', 'Difficult to find, catch, or achieve', 'Easy to find and obtain', 'Easily understandable', 'Straightforward and simple', 'Difficult to find, catch, or achieve', 'Vocabulary'),
(78, 'What does the word “veracity” mean?', 'Truthfulness and accuracy', 'Dishonesty and deceit', 'Politeness and courtesy', 'Harshness and rudeness', 'Truthfulness and accuracy', 'Vocabulary'),
(79, 'What does the word “prolific” mean?', 'Producing many works, results, or offspring', 'Producing few works, results, or offspring', 'Slow and lazy', 'Unproductive and inefficient', 'Producing many works, results, or offspring', 'Vocabulary'),
(80, 'What does the word “incognito” mean?', 'Having one’s true identity concealed', 'Having one’s true identity revealed', 'Friendly and outgoing', 'Unfriendly and mean', 'Having one’s true identity concealed', 'Vocabulary'),
(81, 'What does the word “zealot” mean?', 'A person who is fanatically devoted to a cause', 'A person who is indifferent to a cause', 'A person who is skeptical of a cause', 'A person who is hostile to a cause', 'A person who is fanatically devoted to a cause', 'Vocabulary'),
(82, 'What is the main idea of the passage?', 'A summary of the history of the Great Wall of China', 'An analysis of the cultural significance of the Great Wall of China', 'A description of the physical features of the Great Wall of China', 'A guide to visiting the Great Wall of China', 'A summary of the history of the Great Wall of China', 'Reading Comprehension'),
(83, 'According to the passage, what is the purpose of the Great Wall of China?', 'To defend against invaders', 'To provide a trade route', 'To showcase the country’s culture', 'To serve as a tourist attraction', 'To defend against invaders', 'Reading Comprehension'),
(84, 'What can be inferred about the construction of the Great Wall of China?', 'It involved a massive workforce over a long period of time', 'It was built quickly and easily', 'It was completed in a few years', 'It was built by a small group of people', 'It involved a massive workforce over a long period of time', 'Reading Comprehension'),
(85, 'What is the meaning of the word “imposing” as used in the passage?', 'Impressive or grand', 'Small or insignificant', 'Ugly or unattractive', 'Flimsy or weak', 'Impressive or grand', 'Reading Comprehension'),
(86, 'According to the passage, how long is the Great Wall of China?', 'Over 13,000 miles', 'Around 5,000 miles', 'About 7,000 miles', 'Around 10,000 miles', 'Over 13,000 miles', 'Reading Comprehension'),
(87, 'What is the author’s attitude towards the Great Wall of China?', 'Positive and appreciative', 'Negative and critical', 'Neutral and indifferent', 'Confused and uncertain', 'Positive and appreciative', 'Reading Comprehension'),
(88, 'What is the significance of the Great Wall of China in Chinese culture?', 'It is a symbol of the country’s strength and unity', 'It is a reminder of the country’s past failures and weaknesses', 'It is a representation of the country’s artistic heritage', 'It has no cultural significance', 'It is a symbol of the country’s strength and unity', 'Reading Comprehension'),
(89, 'What can be inferred about the maintenance of the Great Wall of China?', 'It is a constant challenge due to the wall’s age and length', 'It is a simple task that requires little effort', 'It is a task that is easily accomplished', 'It is a task that is no longer necessary', 'It is a constant challenge due to the wall’s age and length', 'Reading Comprehension'),
(90, 'What is the meaning of the phrase “the wonder of the world” as used in the passage?', 'An extraordinary and impressive feat of engineering', 'A strange and confusing phenomenon', 'A boring and uninteresting topic', 'A dangerous and frightening place', 'An extraordinary and impressive feat of engineering', 'Reading Comprehension'),
(91, 'What is the purpose of the final paragraph of the passage?', 'To encourage readers to visit the Great Wall of China', 'To summarize the main points of the passage', 'To provide additional historical information about the Great Wall of China', 'To criticize the Great Wall of China', 'To encourage readers to visit the Great Wall of China', 'Reading Comprehension'),
(92, 'According to the passage, what is the main reason for the decline in the population of bees?', 'Climate change', 'Pesticides', 'Loss of habitat', 'Natural predators', 'Pesticides', 'Reading Comprehension'),
(93, 'What is the author\'s main argument in this passage?', 'That social media is a harmful influence on society', 'That vaccinations are a crucial aspect of public health', 'That the internet has revolutionized the way we communicate', 'That climate change is the most pressing issue facing humanity', 'That vaccinations are a crucial aspect of public health', 'Reading Comprehension'),
(94, 'In what way do the two main characters in the story differ?', 'Their personalities', 'Their professions', 'Their ages', 'Their nationalities', 'Their personalities', 'Reading Comprehension'),
(95, 'What is the significance of the title of the poem?', 'It refers to the central theme of the poem', 'It is a metaphor for the poet\'s emotions', 'It is a reference to a historical event', 'It is a play on words', 'It refers to the central theme of the poem', 'Reading Comprehension'),
(96, 'What is the tone of the author towards the subject of the article?', 'Objective', 'Critical', 'Enthusiastic', 'Humorous', 'Objective', 'Reading Comprehension'),
(97, 'According to the passage, what is the author\'s opinion on the use of nuclear energy?', 'It is a necessary evil', 'It is a promising alternative to fossil fuels', 'It is too dangerous to be used responsibly', 'It is a wasteful and inefficient form of energy', 'It is a promising alternative to fossil fuels', 'Reading Comprehension'),
(98, 'What is the central conflict in the story?', 'Man vs. Nature', 'Man vs. Society', 'Man vs. Man', 'Man vs. Self', 'Man vs. Self', 'Reading Comprehension'),
(99, 'What is the main idea of the second paragraph of the passage?', 'The benefits of exercise for mental health', 'The importance of a healthy diet', 'The dangers of a sedentary lifestyle', 'The history of the gymnasium', 'The dangers of a sedentary lifestyle', 'Reading Comprehension'),
(100, 'What is the significance of the symbolism used in the poem?', 'It represents the poet\'s personal experience', 'It is a comment on society as a whole', 'It is a reflection of human nature', 'It is a religious reference', 'It represents the poet\'s personal experience', 'Reading Comprehension'),
(101, 'What is the author\'s purpose in writing this article?', 'To inform the reader about a current event', 'To persuade the reader to take action', 'To entertain the reader', 'To criticize a particular individual or group', 'To inform the reader about a current event', 'Reading Comprehension'),
(102, 'He has been playing cricket since five years.\n', 'since five years', 'for five years', 'from five years', 'No error', 'for five years', 'Error Detection and Correction'),
(103, 'I could not help but noticed the changes in him.\n', 'noticed the changes in him', 'but notice the changes in him', 'but noticed the changes in him', 'No error', 'but notice the changes in him', 'Error Detection and Correction'),
(104, 'The teacher asked me if I have completed the assignment.\n', 'if I have completed', 'if I had completed', 'if I completed', 'No error', 'if I had completed', 'Error Detection and Correction'),
(105, 'It was raining heavily so I took my umbrella.\n', 'It was raining heavily', 'so I took my umbrella', 'No error', 'It was raining heavy', 'No error', 'Error Detection and Correction'),
(106, 'I am more stronger than him in math.\n', 'I am more stronger', 'I am stronger', 'No error', 'I am much stronger', 'I am stronger', 'Error Detection and Correction'),
(107, 'Neither John or Jane were present in the meeting.\n', 'Neither John or Jane', 'Neither John nor Jane', 'No error', 'Neither John and Jane', 'Neither John nor Jane', 'Error Detection and Correction'),
(108, 'I am looking forward to meet my grandparents next week.\n', 'to meet', 'to meeting', 'No error', 'for meeting', 'to meeting', 'Error Detection and Correction'),
(109, 'The patient’s condition is worst today than yesterday.\n', 'is worst today than yesterday', 'was worse today than yesterday', 'is worse today than it was yesterday', 'No error', 'is worse today than it was yesterday', 'Error Detection and Correction'),
(110, 'I have been living in this city for five years.\n', 'I have been living', 'I am living', 'No error', 'I have lived', 'No error', 'Error Detection and Correction'),
(111, 'He works hard so that he will succeed.\n', 'will succeed', 'would succeed', 'should succeed', 'No error', 'will succeed', 'Error Detection and Correction'),
(112, 'The team and the coach is planning a new strategy for the next game.\n', 'The team and the coach is', 'The team and the coach are', 'No error', 'The team is planning', 'The team and the coach are', 'Error Detection and Correction'),
(113, 'He asked me why I didn’t went to the party last night.\n', 'didn’t went', 'didn’t go', 'hadn’t gone', 'No error', 'didn’t go', 'Error Detection and Correction'),
(114, 'The company’s profit have increased this quarter.\n', 'profit have increased', 'profits has increased', 'profit has increased', 'No error', 'profit has increased', 'Error Detection and Correction'),
(115, 'Everyone in the family are going to attend the wedding.\n', 'Everyone in the family are', 'Everyone in the family is', 'No error', 'Everyone is going to attend', 'Everyone in the family is', 'Error Detection and Correction'),
(116, 'The traffic was bad this morning so I arrived late for work.\n', 'The traffic was bad this morning', 'so I arrived late for work', 'No error', 'The traffic were bad', 'No error', 'Error Detection and Correction'),
(117, 'He is one of the best student in his class.\n', 'one of the best student', 'one of the best students', 'No error', 'the best student', 'one of the best students', 'Error Detection and Correction'),
(118, 'She is the most beautiful girl that I have ever seen.\n', 'most beautiful girl', 'more beautiful girl', 'No error', 'beautiful girl', 'most beautiful girl', 'Error Detection and Correction'),
(119, 'The company’s new policy has affected the sales.\n', 'has affected the sales', 'have affected the sales', 'No error', 'has affect the sales', 'has affected the sales', 'Error Detection and Correction'),
(120, 'We had a lot of fun during the picnic last week.\n', 'had a lot of fun', 'had lots of fun', 'No error', 'had a lot fun', 'No error', 'Error Detection and Correction'),
(121, 'I am always confuse between the two options.\n', 'always confuse', 'always confused', 'No error', 'always confusing', 'always confused', 'Error Detection and Correction'),
(122, 'BIRD : FEATHERS :: DOG : ?', 'BARK', 'CLAWS', 'FUR', 'TAIL', 'FUR', 'Analogies'),
(123, 'PEN : WRITE :: NEEDLE : ?', 'THREAD', 'SEW', 'POINT', 'KNIT', 'SEW', 'Analogies'),
(124, 'KANGAROO : HOP :: SNAKE : ?', 'SLITHER', 'CLIMB', 'JUMP', 'FLY', 'SLITHER', 'Analogies'),
(125, 'ROOSTER : COCK-A-DOODLE-DOO :: BABY : ?', 'TALK', 'CRY', 'LAUGH', 'SLEEP', 'CRY', 'Analogies'),
(126, 'PLANTS : OXYGEN :: COW : ?', 'HIDE', 'MEAT', 'GRASS', 'WOOL', 'GRASS', 'Analogies'),
(127, 'COMPUTER : KEYBOARD :: CARS : ?', 'WHEELS', 'DRIVER', 'MIRROR', 'GEARS', 'WHEELS', 'Analogies'),
(128, 'STOMACH : DIGESTION :: LUNGS : ?', 'BREATHING', 'RESPIRATION', 'CIRCULATION', 'PUMPING', 'BREATHING', 'Analogies'),
(129, 'BOOK : AUTHOR :: MOVIE : ?', 'DIRECTOR', 'PRODUCER', 'ACTOR', 'SCREENWRITER', 'SCREENWRITER', 'Analogies'),
(130, 'CANDLE : WAX :: PAPER : ?', 'CELLULOSE', 'FIBER', 'WOOD', 'PULP', 'CELLULOSE', 'Analogies'),
(131, 'FISH : GILLS :: HUMAN : ?', 'EARS', 'NOSE', 'LUNGS', 'EYES', 'LUNGS', 'Analogies'),
(132, 'SOUND : DECIBEL :: BRIGHTNESS : ?', 'LUMENS', 'WATTS', 'VOLTS', 'AMPERES', 'LUMENS', 'Analogies'),
(133, 'ATHLETE : MEDAL :: STUDENT : ?', 'GRADE', 'HONOR', 'CERTIFICATE', 'DIPLOMA', 'GRADE', 'Analogies'),
(134, 'WATER : THIRST :: FOOD : ?', 'HUNGER', 'NUTRITION', 'SATISFACTION', 'APPETITE', 'HUNGER', 'Analogies'),
(135, 'SNEEZE : BLESS :: CURSE : ?', 'SWEAR', 'BLESS', 'YAWN', 'EXPEL', 'SWear', 'Analogies'),
(136, 'ARTIST : PAINT :: CHEF : ?', 'SPICE', 'COOK', 'KITCHEN', 'INGREDIENT', 'COOK', 'Analogies'),
(137, 'NIGHT : MOON :: DAY : ?', 'STAR', 'EARTH', 'SUN', 'SKY', 'SUN', 'Analogies'),
(138, 'EYE : SIGHT :: EAR : ?', 'HEARING', 'BALANCE', 'TASTE', 'SMELL', 'HEARING', 'Analogies'),
(139, 'PARENT : CHILD :: TEACHER : ?', 'STUDENT', 'CLASS', 'SUBJECT', 'LESSON', 'STUDENT', 'Analogies'),
(140, 'SOCCER : GOALKEEPER :: BOXING : ?', 'REFEREE', 'COACH', 'PUNCH', 'BOXER', 'BOXER', 'Analogies'),
(141, 'NOVEL : PLOT :: POEM : ?', 'RHYME', 'METER', 'VERSE', 'STANZA', 'METER', 'Analogies'),
(142, 'My favorite subject in school ___ mathematics.', 'was', 'were', 'are', 'is', 'is', 'Sentence Completion'),
(143, 'The company ___ its new product yesterday.', 'launches', 'launched', 'will launch', 'is launching', 'launched', 'Sentence Completion'),
(144, 'The concert was canceled ___ the bad weather.', 'because', 'although', 'despite', 'however', 'because', 'Sentence Completion'),
(145, 'I can’t find my keys ___ I put them.', 'where', 'when', 'what', 'why', 'where', 'Sentence Completion'),
(146, 'I ___ a headache all day today.', 'has', 'had', 'have', 'will have', 'have', 'Sentence Completion'),
(147, 'The ___ is a large, carnivorous animal that lives in the forest.', 'tiger', 'giraffe', 'elephant', 'penguin', 'tiger', 'Sentence Completion'),
(148, 'She ___ to college next year.', 'will go', 'has gone', 'is going', 'had gone', 'is going', 'Sentence Completion'),
(149, 'I ___ him for years before we finally met.', 'know', 'knew', 'have known', 'had known', 'had known', 'Sentence Completion'),
(150, 'I’m going to ___ the library to return these books.', 'go', 'gone', 'going', 'goes', 'go', 'Sentence Completion'),
(151, 'The teacher ___ the students to complete the assignment by Friday.', 'asks', 'asked', 'will ask', 'is asking', 'asked', 'Sentence Completion'),
(152, 'I ___ my keys on the kitchen counter this morning.', 'left', 'leave', 'leaving', 'will leave', 'left', 'Sentence Completion'),
(153, 'I ___ a lot of money by the time I retire.', 'hope to save', 'am hoping to save', 'have hoped to save', 'hoped to save', 'am hoping to save', 'Sentence Completion'),
(154, 'She ___ to the party last night, but I didn’t see her.', 'go', 'went', 'has gone', 'had gone', 'went', 'Sentence Completion'),
(155, 'If you don’t ___ your work, you’ll get a bad grade.', 'finish', 'finished', 'finishing', 'will finish', 'finish', 'Sentence Completion'),
(156, 'I’m not ___ if I’ll be able to come to the meeting next week.', 'sure', 'unsure', 'surely', 'assure', 'sure', 'Sentence Completion'),
(157, 'The ___ of the movie was so unexpected.', 'end', 'beginning', 'plot', 'characters', 'plot', 'Sentence Completion'),
(158, 'I ___ my friend at the restaurant last night.', 'see', 'saw', 'have seen', 'had seen', 'saw', 'Sentence Completion'),
(159, 'The ___ at the store were very helpful.', 'clerks', 'customers', 'managers', 'supervisors', 'clerks', 'Sentence Completion'),
(160, 'I’ve been ___ to try that new restaurant.', 'wanting', 'wanted', 'want', 'will want', 'wanting', 'Sentence Completion'),
(161, 'The ___ in the sky is so beautiful tonight.', 'moon', 'sun', 'stars', 'clouds', 'stars', 'Sentence Completion');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `general_awareness`
--
ALTER TABLE `general_awareness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `reasoning`
--
ALTER TABLE `reasoning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `verbal`
--
ALTER TABLE `verbal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
