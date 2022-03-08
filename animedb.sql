-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2022. Már 08. 11:08
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `animedb`
--
CREATE DATABASE IF NOT EXISTS `animedb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `animedb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `animek`
--

CREATE TABLE IF NOT EXISTS `animek` (
  `anime_id` int(11) NOT NULL AUTO_INCREMENT,
  `anime_nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_megjdatum` date NOT NULL,
  `anime_mufaj` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_evadsz` int(11) NOT NULL,
  `anime_trailer` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`anime_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `animek`
--

INSERT INTO `animek` (`anime_id`, `anime_nev`, `anime_megjdatum`, `anime_mufaj`, `anime_evadsz`, `anime_trailer`) VALUES
(1, 'Kimetsu no Yaiba', '2019-04-06', 'Action, Supernatural', 2, 'https://www.youtube.com/embed/VQGCKyvzIM4'),
(2, 'Ousama Ranking', '2021-10-15', 'Adventure, Fantasy', 1, 'https://www.youtube.com/embed/Tr1ahorojPg'),
(3, 'One Piece', '1999-10-20', 'Action, Adventure, Comedy, Drama, Fantasy', 1, 'https://www.youtube.com/embed/S8_YwFLCh4U'),
(4, 'Fullmetal Alchemist: Brotherhood', '2009-04-05', 'Action, Adventure, Comedy, Drama, Fantasy', 1, 'https://www.youtube.com/embed/dqDB6gQLbPM'),
(5, 'Blue Period', '2021-10-02', 'Drama, Slice of Life', 1, 'https://www.youtube.com/embed/gvn4pVO6UsQ'),
(6, 'Shingeki no Kyojin', '2013-04-07', 'Action, Drama, Fantasy, Mystery', 4, 'https://www.youtube.com/embed/bT9csxkth8g'),
(7, 'Steins;Gate', '2011-04-06', 'Drama, Sci-Fi, Suspense', 1, 'https://www.youtube.com/embed/uMYhjVwp0Fk'),
(8, 'Monster', '2004-04-07', 'Drama, Horror, Mystery, Suspense', 1, 'https://www.youtube.com/embed/9aS-EgdAq6U'),
(9, 'Vinland Saga', '2019-07-08', 'Action, Adventure, Drama', 2, 'https://www.youtube.com/embed/f8JrZ7Q_p-8'),
(10, 'Great Teacher Onizuka', '1999-06-30', 'Comedy, Drama, Slice of Life', 1, 'hhttps://www.youtube.com/embed/HS2n3-e_0PE');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `leiras`
--

CREATE TABLE IF NOT EXISTS `leiras` (
  `anime_leiras_id` int(11) NOT NULL AUTO_INCREMENT,
  `leiras` text NOT NULL,
  PRIMARY KEY (`anime_leiras_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `leiras`
--

INSERT INTO `leiras` (`anime_leiras_id`, `leiras`) VALUES
(1, 'Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado\'s shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in the woods at night.\n\nWhen he finally arrives back home the next day, he is met with a horrifying sight—his whole family has been slaughtered. Worse still, the sole survivor is his sister Nezuko, who has been turned into a bloodthirsty demon. Consumed by rage and hatred, Tanjirou swears to avenge his family and stay by his only remaining sibling. Alongside the mysterious group calling themselves the Demon Slayer Corps, Tanjirou will do whatever it takes to slay the demons and protect the remnants of his beloved sister\'s humanity.'),
(2, 'The people of the kingdom look down on the young Prince Bojji, who can neither hear nor speak. They call him \"The Useless Prince\" while jeering at his supposed foolishness.\r\n\r\nHowever, while Bojji may not be physically strong, he is certainly not weak of heart. When a chance encounter with a shadow creature should have left him traumatized, it instead makes him believe that he has found a friend amidst those who only choose to notice his shortcomings. He starts meeting with Kage, the shadow, regularly, to the point where even the otherwise abrasive creature begins to warm up to him.\r\n\r\nKage and Bojji\'s unlikely friendship lays the budding foundations of the prince\'s journey, one where he intends to conquer his fears and insecurities. Despite the constant ridicule he faces, Bojji resolves to fulfill his desire of becoming the best king he can be.\r\n'),
(3, 'Gol D. Roger was known as the \"Pirate King,\" the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King.\r\n\r\nEnter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate ransacking villages for fun, Luffy\'s reason for being a pirate is one of pure wonder: the thought of an exciting adventure that leads him to intriguing people and ultimately, the promised treasure. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach the most coveted of all fortunes—One Piece.'),
(4, 'After a horrific alchemy experiment goes wrong in the Elric household, brothers Edward and Alphonse are left in a catastrophic new reality. Ignoring the alchemical principle banning human transmutation, the boys attempted to bring their recently deceased mother back to life. Instead, they suffered brutal personal loss: Alphonse\'s body disintegrated while Edward lost a leg and then sacrificed an arm to keep Alphonse\'s soul in the physical realm by binding it to a hulking suit of armor.\r\n\r\nThe brothers are rescued by their neighbor Pinako Rockbell and her granddaughter Winry. Known as a bio-mechanical engineering prodigy, Winry creates prosthetic limbs for Edward by utilizing \"automail,\" a tough, versatile metal used in robots and combat armor. After years of training, the Elric brothers set off on a quest to restore their bodies by locating the Philosopher\'s Stone—a powerful gem that allows an alchemist to defy the traditional laws of Equivalent Exchange.\r\n\r\nAs Edward becomes an infamous alchemist and gains the nickname \"Fullmetal,\" the boys\' journey embroils them in a growing conspiracy that threatens the fate of the world.'),
(5, 'Second-year high school student Yatora Yaguchi is a delinquent with excellent grades, but is unmotivated to find his true calling in life. Yatora spends his days working hard to maintain his academic standing while hanging out with his equally unambitious friends. However, beneath his carefree demeanor, Yatora does not enjoy either activity and wishes he could find something more fulfilling.\r\n\r\nWhile mulling over his predicament, Yatora finds himself staring at a vibrant landscape of Shibuya. Unable to express how he feels about the unusually breathtaking sight, he picks up a paintbrush, hoping his thoughts will be conveyed on canvas. After receiving praise for his work, the joy he feels sends him on a journey to enter the extremely competitive Tokyo University of the Arts—a school that only accepts one in every 200 applicants.\r\n\r\nFacing talented peers, a lack of understanding of the fine arts, and struggles to obtain his parents’ approval, Yatora is confronted by much adversity. In the hopes of securing one of the five prestigious spots in his program of choice, Yatora must show that his inexperience does not define him. '),
(6, 'Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against the man-eating abominations.\r\n\r\nAfter witnessing a horrific personal loss at the hands of the invading creatures, Eren Yeager dedicates his life to their eradication by enlisting into the Survey Corps, an elite military unit that combats the merciless humanoids outside the protection of the walls. Based on Hajime Isayama\'s award-winning manga, Shingeki no Kyojin follows Eren, along with his adopted sister Mikasa Ackerman and his childhood friend Armin Arlert, as they join the brutal war against the titans and race to discover a way of defeating them before the last walls are breached.\r\n'),
(7, 'The self-proclaimed mad scientist Rintarou Okabe rents out a room in a rickety old building in Akihabara, where he indulges himself in his hobby of inventing prospective \"future gadgets\" with fellow lab members: Mayuri Shiina, his air-headed childhood friend, and Hashida Itaru, a perverted hacker nicknamed \"Daru.\" The three pass the time by tinkering with their most promising contraption yet, a machine dubbed the \"Phone Microwave,\" which performs the strange function of morphing bananas into piles of green gel.\r\n\r\nThough miraculous in itself, the phenomenon doesn\'t provide anything concrete in Okabe\'s search for a scientific breakthrough; that is, until the lab members are spurred into action by a string of mysterious happenings before stumbling upon an unexpected success—the Phone Microwave can send emails to the past, altering the flow of history.\r\n\r\nAdapted from the critically acclaimed visual novel by 5pb. and Nitroplus, Steins;Gate takes Okabe through the depths of scientific theory and practicality. Forced across the diverging threads of past and present, Okabe must shoulder the burdens that come with holding the key to the realm of time.'),
(8, 'Dr. Kenzou Tenma, an elite neurosurgeon recently engaged to his hospital director\'s daughter, is well on his way to ascending the hospital hierarchy. That is until one night, a seemingly small event changes Dr. Tenma\'s life forever. While preparing to perform surgery on someone, he gets a call from the hospital director telling him to switch patients and instead perform life-saving brain surgery on a famous performer. His fellow doctors, fiancée, and the hospital director applaud his accomplishment; but because of the switch, a poor immigrant worker is dead, causing Dr. Tenma to have a crisis of conscience.\r\n\r\nSo when a similar situation arises, Dr. Tenma stands his ground and chooses to perform surgery on the young boy Johan Liebert instead of the town\'s mayor. Unfortunately, this choice leads to serious ramifications for Dr. Tenma—losing his social standing being one of them. However, with the mysterious death of the director and two other doctors, Dr. Tenma\'s position is restored. With no evidence to convict him, he is released and goes on to attain the position of hospital director. \r\n\r\nNine years later when Dr. Tenma saves the life of a criminal, his past comes back to haunt him—once again, he comes face to face with the monster he operated on. He must now embark on a quest of pursuit to make amends for the havoc spread by the one he saved.\r\n'),
(9, 'Young Thorfinn grew up listening to the stories of old sailors that had traveled the ocean and reached the place of legend, Vinland. It\'s said to be warm and fertile, a place where there would be no need for fighting—not at all like the frozen village in Iceland where he was born, and certainly not like his current life as a mercenary. War is his home now. Though his father once told him, \"You have no enemies, nobody does. There is nobody who it\'s okay to hurt,\" as he grew, Thorfinn knew that nothing was further from the truth.\r\n\r\nThe war between England and the Danes grows worse with each passing year. Death has become commonplace, and the viking mercenaries are loving every moment of it. Allying with either side will cause a massive swing in the balance of power, and the vikings are happy to make names for themselves and take any spoils they earn along the way. Among the chaos, Thorfinn must take his revenge and kill Askeladd, the man who murdered his father. The only paradise for the vikings, it seems, is the era of war and death that rages on.\r\n'),
(10, 'Twenty-two-year-old Eikichi Onizuka—ex-biker gang leader, conqueror of Shonan, and virgin—has a dream: to become the greatest high school teacher in all of Japan. This isn\'t because of a passion for teaching, but because he wants a loving teenage wife when he\'s old and gray. Still, for a perverted, greedy, and lazy delinquent, there is more to Onizuka than meets the eye. So when he lands a job as the homeroom teacher of the Class 3-4 at the prestigious Holy Forest Academy—despite suplexing the Vice Principal—all of his talents are put to the test, as this class is particularly infamous.\n\nDue to their utter contempt for all teachers, the class\' students use psychological warfare to mentally break any new homeroom teacher they get, forcing them to quit and leave school. However, Onizuka isn\'t your average teacher, and he\'s ready for any challenge in his way.\n\nBullying, suicide, and sexual harassment are just a few of the issues his students face daily. By tackling the roots of their problems, Onizuka supports them with his unpredictable and unconventional methods—even if it means jumping off a building to save a suicidal child. Thanks to his eccentric charm and fun-loving nature, Class 3-4 slowly learns just how enjoyable school can be when you\'re the pupils of the Great Teacher Onizuka.'),
(16, 'cewf');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavazatok`
--

CREATE TABLE IF NOT EXISTS `szavazatok` (
  `szavazat_id` int(11) NOT NULL AUTO_INCREMENT,
  `szavazat_animeid` int(11) NOT NULL,
  PRIMARY KEY (`szavazat_id`),
  KEY `szavazat_animeid` (`szavazat_animeid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szavazatok`
--

INSERT INTO `szavazatok` (`szavazat_id`, `szavazat_animeid`) VALUES
(5, 1),
(6, 1),
(8, 1),
(9, 1),
(10, 1),
(12, 1),
(15, 1),
(16, 1),
(1, 2),
(7, 2),
(2, 3),
(11, 3),
(17, 3),
(3, 4),
(4, 4),
(13, 9),
(14, 10);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59'),
(14, 'csoko99', 'laczkolali77@gmail.com', '$2a$08$4jMqJQfOT8sxS4y/FU.22uJCjmId7hftTGNciifAs.kQ6knjYud7i', '2022-01-17 10:37:24', '2022-01-17 10:37:24');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('2022-01-17 10:37:24', '2022-01-17 10:37:24', 1, 14),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_roles` (`roleId`);

--
-- Megkötések a táblához `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
