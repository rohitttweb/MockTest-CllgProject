-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 10:19 AM
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
-- Table structure for table `question_bank`
--

CREATE TABLE `question_bank` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_ans` text NOT NULL,
  `maintopic` text NOT NULL,
  `subtopic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_bank`
--

INSERT INTO `question_bank` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_ans`, `maintopic`, `subtopic`) VALUES
(1, 'The average weight of 10 students is 50 kg. If a new student with a weight of 70 kg joins the group, what will be the new average weight of the group?', '50 kg', '55 kg', '60 kg', '65 kg', '55 kg', 'aptitude', 'Averages'),
(2, 'The average of 5 numbers is 20. If one number is excluded, the average becomes 18. What is the excluded number?', '10', '12', '15', '22', '22', 'aptitude', 'Averages'),
(3, 'The average age of a family of 5 members is 30 years. If the age of the youngest member is 15 years, what will be the average age of the family if the age of the youngest member increases by 5 years?', '31 years', '32 years', '33 years', '34 years', '32 years', 'aptitude', 'Averages'),
(4, 'The average of 6 numbers is 12. If two numbers are added to the group, the average becomes 14. What is the sum of the two added numbers?', '34', '36', '38', '40', '40', 'aptitude', 'Averages'),
(5, 'The average of 7 numbers is 15. If the sum of the first 5 numbers is 70, what is the average of the last two numbers?', '10', '15', '20', '25', '10', 'aptitude', 'Averages'),
(6, 'The average of 8 numbers is 12.5. If two numbers are removed from the group, the average becomes 11. What is the sum of the two removed numbers?', '10', '15', '25', '20', '20', 'aptitude', 'Averages'),
(7, 'The average of 9 numbers is 30. If the average of the first 5 numbers is 25 and the average of the last 5 numbers is 35, what is the 5th number?', '25', '30', '35', '40', '40', 'aptitude', 'Averages'),
(8, 'The average of 6 numbers is 18. If each number is increased by 3, what will be the new average of the group?', '18', '19', '20', '21', '20', 'aptitude', 'Averages'),
(9, 'The average of 12 numbers is 15. If the sum of the first 4 numbers is 48 and the sum of the last 4 numbers is 56, what is the average of the remaining 4 numbers?', '15', '16', '17', '18', '16', 'aptitude', 'Averages'),
(10, 'The average of 5 numbers is 10. If one number is multiplied by 2 and another number is divided by 2, what will be the new average of the group?', '10', '11', '13', '12', '10', 'aptitude', 'Averages'),
(11, 'If a shirt costs $20 and is discounted by 25%, what is the new price?', '$10', '$15', '$18', '$22', '$15', 'aptitude', 'Percentages'),
(12, 'What is 20% of 80?', '12', '16', '20', '40', '16', 'aptitude', 'Percentages'),
(13, 'If 50% of a number is 25, what is the number?', '10', '25', '50', '100', '100', 'aptitude', 'Percentages'),
(14, 'If a salary is increased by 10%, and then decreased by 10%, what is the net change in salary?', '0%', '1%', '5%', '10%', '0%', 'aptitude', 'Percentages'),
(15, 'If a number is increased by 25%, and then decreased by 20%, what is the net change in the number?', '5%', '10%', '15%', '20%', '10%', 'aptitude', 'Percentages'),
(16, 'If a car depreciates by 15% each year, what is the value of the car after 3 years if its initial value was $20,000?', '$9,375', '$11,200', '$12,750', '$14,450', '$9,375', 'aptitude', 'Percentages'),
(17, 'If a company\'s profits increase by 20% each year, what is the profit in year 3 if the initial profit was $10,000?', '$14,400', '$14,800', '$15,200', '$15,600', '$15,200', 'aptitude', 'Percentages'),
(18, 'If a class has 40 students, and 25% of the students are absent, how many students are present?', '20', '25', '30', '35', '35', 'aptitude', 'Percentages'),
(19, 'If a store offers a discount of 10% on a $100 item, and then offers an additional 10% discount on the discounted price, what is the final price?', '$80', '$81', '$90', '$91', '$81', 'aptitude', 'Percentages'),
(20, 'If a person spends 40% of their monthly income on rent, 20% on groceries, and 10% on transportation, what percentage of their income is left for other expenses?', '20%', '30%', '40%', '50%', '50%', 'aptitude', 'Percentages'),
(21, 'A merchant bought an item for $50 and sold it for $80. What was his profit percentage?', '60%', '50%', '40%', '30%', '40%', 'aptitude', 'Profit and Loss'),
(22, 'A shopkeeper sells an item for $200 and gains 20%. What was the cost price of the item?', '$160', '$180', '$220', '$240', '$160', 'aptitude', 'Profit and Loss'),
(23, 'A man bought a shirt for $30 and sold it for $40. What was his profit percentage?', '33.33%', '25%', '20%', '16.67%', '16.67%', 'aptitude', 'Profit and Loss'),
(24, 'If a man buys an item for $100 and sells it at a loss of 20%, what is the selling price of the item?', '$80', '$90', '$100', '$120', '$80', 'aptitude', 'Profit and Loss'),
(25, 'A trader buys goods worth $500 and sells them at a profit of 20%. What is the selling price of the goods?', '$600', '$550', '$520', '$480', '$600', 'aptitude', 'Profit and Loss'),
(26, 'A man sold an item for $750 at a profit of 25%. What was the cost price of the item?', '$600', '$650', '$700', '$800', '$650', 'aptitude', 'Profit and Loss'),
(27, 'A shopkeeper sold an item for $1200 and incurred a loss of 20%. What was the cost price of the item?', '$1500', '$1400', '$1300', '$1200', '$1500', 'aptitude', 'Profit and Loss'),
(28, 'A man sells an item for $400 and makes a profit of 25%. What is the cost price of the item?', '$320', '$300', '$350', '$375', '$320', 'aptitude', 'Profit and Loss'),
(29, 'A man sold an item for $3600 at a loss of 10%. What was the cost price of the item?', '$4000', '$4100', '$4200', '$4300', '$4200', 'aptitude', 'Profit and Loss'),
(30, 'A trader marked the price of an item at $200 and offered a discount of 10%. What was the selling price of the item?', '$180', '$190', '$200', '$210', '$190', 'aptitude', 'Profit and Loss'),
(31, 'If the ratio of boys to girls in a class is 3:5, and there are 24 boys, how many girls are there?', '40', '36', '48', '60', '36', 'aptitude', 'Ratios and Proportions'),
(32, 'If 10 men can complete a work in 20 days, how long will it take 15 men to complete the same work?', '10 days', '12 days', '14 days', '16 days', '12 days', 'aptitude', 'Time and Work'),
(33, 'Synonym of CORPULENT', 'Lean', 'Gaunt', 'Emaciated', 'Obese', 'Obese', 'verbal', 'Synonym  Antonyms'),
(34, 'Synonyms of BRIEF', 'Limited', 'Small', 'Little', 'Short', 'Short', 'verbal', 'Synonym  Antonyms'),
(35, 'Synonym of EMBEZZLE', 'Misappropriate', 'Balance', 'Remunerate', 'Clear', 'Misappropriate', 'verbal', 'Synonym  Antonyms'),
(36, 'Synonym of VENT', 'Opening', 'Stodge', 'End', 'Past tense of go', 'Opening', 'verbal', 'Synonym  Antonyms'),
(37, 'Synonym of AUGUST', 'Common', 'Ridiculous', 'Dignified', 'Petty', 'Dignified', 'verbal', 'Synonym  Antonyms'),
(38, 'Given below a word is printed in bold. Below it four choices are given. Pick up the one which is most nearly the same in meaning as the word printer in bold and can replaces it without altering the meaning of the sentence.\n\n\nIt is very difficult to <b>retain</b> all that you hear in the class.', 'keep', 'recall', 'preserve', 'conserve', 'keep', 'verbal', 'Synonym  Antonyms'),
(39, 'Given below a word is printed in bold. Below it four choices are given. Pick up the one which is most nearly the same in meaning as the word printer in bold and can replaces it without altering the meaning of the sentence.\n\n\nThe great artist life was full of <b>vicissitudes</b>.', 'sorrows', 'misfortunes', 'changes', 'surprises', 'changes', 'verbal', 'Synonym  Antonyms'),
(40, 'Given below a word is printed in bold. Below it four choices are given. Pick up the one which is most nearly the same in meaning as the word printer in bold and can replaces it without altering the meaning of the sentence:\n\n\nShe has an <b>insatiable</b> love for music.', 'unsatisfiable', 'unchanging', 'irreconcilable', 'undesirable', 'unsatisfiable', 'verbal', 'Synonym  Antonyms'),
(41, 'Given below a word is printed in bold. Below it four choices are given. Pick up the one which is most nearly the same in meaning as the word printer in bold and can replaces it without altering the meaning of the sentence:\n\n\nThe great dancer impressed the appreciative crowd by his <b>nimble</b> movements.', 'Unrhythmic', 'lively', 'quickening', 'clear', 'quickening', 'verbal', 'Synonym  Antonyms'),
(42, 'Given below a word is printed in bold. Below it four choices are given. Pick up the one which is most nearly the same in meaning as the word printer in bold and can replaces it without altering the meaning of the sentence:\n\n\nThe visitor had a <b>bohemian</b> look.', 'hostile', 'unconventional', 'sinister', 'unfriendly', 'unconventional', 'verbal', 'Synonym  Antonyms'),
(43, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', 'largest railway station', 'general_awareness', 'Basic'),
(44, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', 'Insects', 'general_awareness', 'Basic'),
(45, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', 'Asia', 'Africa', 'Europe', 'Australia', 'Africa', 'general_awareness', 'Basic'),
(46, 'Garampani sanctuary is located at', 'Junagarh, Gujarat', 'Diphu, Assam', 'Kohima, Nagaland', 'Gangtok, Sikkim', 'Diphu, Assam', 'general_awareness', 'Basic'),
(47, 'For which of the following disciplines is Nobel Prize awarded?', 'Physics and Chemistry', 'Physiology or Medicine', 'Literature, Peace and Economics', 'All of the above', 'All of the above', 'general_awareness', 'Basic'),
(48, 'In which year of First World War Germany declared war on Russia and France?', '1914', '1915', '1916', '1917', '1914', 'general_awareness', 'Basic'),
(49, 'ICAO stands for', 'International Civil Aviation Organization', 'Indian Corporation of Agriculture Organization', 'Institute of Company of Accounts Organization', 'None of the above', 'International Civil Aviation Organization', 'general_awareness', 'Basic'),
(50, 'India\'s first Technicolor film ____ in the early 1950s was produced by ____', '\'Jhansi Ki Rani\', Sohrab Modi', '\'Jhansi Ki Rani\', Sir Syed Ahmed', '\'Mirza Ghalib\', Sohrab Modi', '\'Mirza Ghalib\', Munshi Premchand', '\'Jhansi Ki Rani\', Sohrab Modi', 'general_awareness', 'Basic'),
(51, 'India has largest deposits of ____ in the world.', 'gold', 'copper', 'mica', 'None of the above', 'mica', 'general_awareness', 'Basic'),
(52, 'How many Lok Sabha seats belong to Rajasthan?', '32', '25', '30', '17', '25', 'general_awareness', 'Basic'),
(53, 'Two positions of dice are shown below. How many points will appear on the opposite to the face containing 5 points?\n\n<img src=\"https://www.indiabix.com/_files/images/verbal-reasoning/dice/4-13-1-14.png\">', '3', '1', '2', '4', '4', 'reasoning', 'Dice'),
(54, 'Which symbol will be on the face opposite to the face with symbol * ?\n\n<img src=\"https://www.indiabix.com/_files/images/verbal-reasoning/dice/4-13-1-4.png\">', '@', '$', '8', '+', '8', 'reasoning', 'Dice');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question_bank`
--
ALTER TABLE `question_bank`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question_bank`
--
ALTER TABLE `question_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
