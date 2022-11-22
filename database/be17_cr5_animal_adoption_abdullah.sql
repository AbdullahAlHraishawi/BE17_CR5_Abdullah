-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 09:04 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be17_cr5_animal_adoption_abdullah`
--

-- --------------------------------------------------------

--
-- Table structure for table `adopted`
--

CREATE TABLE `adopted` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `vaccine` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `vaccine` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `user_id`, `name`, `age`, `gender`, `breed`, `size`, `vaccine`, `image`, `address`, `description`) VALUES
(18, 0, 'Charlie', 5, 'male', 'Labrador Retriever', 'big', 'yes', 'noemi-macavei-katocz-c7bUIRBqapA-unsplash.jpg', 'Donaufelder Straße 45', 'The Labrador Retriever is the most popular dog in the United States for a reason. The breed is friendly, patient, and trainable. The breed is extremely versatile, doing everything including hunting, showing, dock diving, tracking, and obedience.'),
(19, 0, 'Archie', 3, 'female', 'Pug', 'small', 'yes', 'pug-puppy-i14-sz6.jpg', 'Erdenweg 32', 'The Pug is well described by the phrase “multum in parvo” which means “a lot of dogs in a small space.” He is small but requires no coddling and his roguish face soon wiggles its way into the hearts of men, women and especially children, for whom this dog seems to have a special affinity. His great reason for living is to be near his people and to please them. He is comfortable in a small apartment or country home alike, easily adaptable to all situations.'),
(20, 0, 'Ollie', 9, 'male', 'Newfoundland', 'big', 'no', 'Newfoundland_dog_Smoky.jpg', 'Liesingbachstraße 69', 'Above all things, the Newfoundland must have intelligence, loyalty, and sweetness which are his best-known traits. He must be able and willing to help his master perform his necessary tasks at command, and also have the intelligence to act on his own responsibility when rescue work demands it. Because of these traits, Newfoundlands make excellent family dogs.'),
(21, 0, 'Nala', 4, 'female', 'Scottish Fold Cats', 'small', 'no', 'image.jpg', 'Meischlgasse 48', 'Scottish fold cats are known to possess an easy-going nature, and to be very loving and friendly with people and other household pets. This breed, outgoing and playful, tends to become particularly attached to one family member. The Scottish fold cat is also known for its soft voice and the ability to \"speak\" in a variety of different-sounding purrs and meows not commonly heard in many other cat breeds.'),
(22, 0, 'Leo', 8, 'male', 'Persian Cats', 'small', 'yes', 'persian_cat__1_.jpg', 'Liesingbachstraße 69', 'Persian cats are not only the most popular breed of cats, but they’ve also been around the longest. Hieroglyphics reference their origination as far back as 1684 B.C. Thought to have originated in Persia (now Iran), the cats were named after their believed “country of origin.” Although the breed has evolved in colour and body type, one thing has remained the same: its thick and full fur. Ideally, Persians should be groomed at least once a day to prevent knots and matting of the fur. Persians should also be bathed occasionally to maintain a clean and healthy coat.'),
(23, 0, 'Luna', 9, 'female', 'Ragdoll Cats', 'medium', 'yes', 'image (1).jpg', 'Simmeringer Hauptstraße 171', 'Ragdolls are extremely mild-mannered and friendly, and often seek out human companionship, such as following people around the house, sleeping with or flopping on their owners. This breed is particularly good with children and other pets and is easily trained to learn the same tricks as dogs, such as playing fetch, rolling over or begging.'),
(24, 0, 'Apollo', 10, 'male', 'Bearded Dragon', 'small', 'no', 'shutterstock_156527144.jpg', 'Krottenhofgasse 122', 'This Australian native is a light tan with a spiky “beard” around its neck that inflates when it feels threatened, but owners are unlikely to see the aggressive side of the docile creature. They tolerate handling well, and most are calm while they perch on their owner’s shoulder. Although they make excellent pets for beginners, Bearded Dragons have specialized diets composed of fruit, vegetables, and insects. Juveniles need feeding three times a day, but adults can eat once daily.'),
(25, 0, 'Hecate', 9, 'female', 'Green Iguana', 'small', 'yes', 'green-iguana-shutterstock_637249666.jpg', 'Absberggasse 35-37', 'Green iguanas make great pets with the proper living conditions and diet, but beginners should prepare their homes for the reptile’s growth spurt. Although infants are less than a foot long, adults can grow as big as seven feet when you include the tail. Since the reptile’s enclosure needs to be larger than most reptile housing, some owners convert small rooms or closets to iguana habitats.'),
(26, 0, 'Thumper', 6, 'male', 'Harlequin Rabbits', 'medium', 'yes', 'harlequin-rabbit_634_0_orig.jpg', 'Forchheimergasse 34', 'Hailing from France, Harlequin rabbits take their name from their distinctive fur markings. These bunnies love human interaction, making them great companions.\r\nHarlequin rabbits are the clowns of the bunny world. They live to entertain, so you’ll forge an effortless bond in no time at all.'),
(27, 0, 'Buster', 3, 'male', 'Mini Lop Rabbits', 'small', 'no', 'mini-lop-rabbit_FiledIMAGE_Shutterstock.jpg', 'Neurissenweg 8', 'Arguably more than any other breed, the Mini Lop was born to be a pet. They look like teddy bears and love to be showered with affection. They return this adoration without question.\r\nMini Lop rabbits are also intelligent. This works in your favour, as it means they can be litter trained. They require constant entertainment, though. Fill their hutch with toys, and arrange exercises for your rabbit.'),
(28, 0, 'Hamilton', 2, 'male', 'Dwarf Roborovski', 'small', 'yes', 'istockphoto-1157798585-612x612.jpg', 'Siebenbrunnengasse 32', 'The smallest of the popular hamster breeds, the Roborovski dwarf hamster (Phodopus roborovski) matures to just 2 inches long. On average, these hamsters live about three years. Because this breed is so tiny, it is best to use an aquarium with a mesh lid to house these hamsters.'),
(29, 0, 'Patches', 4, 'male', 'Chinese Hamster', 'small', 'yes', 'blog_hamster2-pitbzdiv0cbnt6upviogwtcgvucgdxfa0z5ezyv53o.jpg', 'Zwachgasse 5', 'The Chinese hamster (Cricetus griseus) can get up to five inches long. They can live up to three years. This species is known for being friendly and comfortable with handling if they are consistently tamed and handled from a young age.');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(7, 'user', 'user@mail.com', '7815696ecbf1c96e6894b779456d330e', 'user'),
(9, 'admin', 'admin@mail.com', '7815696ecbf1c96e6894b779456d330e', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adopted`
--
ALTER TABLE `adopted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adopted`
--
ALTER TABLE `adopted`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
