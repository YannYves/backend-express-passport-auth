--- TABLES --------

----USER------

CREATE TABLE `users`
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `isAdmin` tinyint
(1) NOT NULL,
  `lastName` varchar
(250) NOT NULL,
  `firstName` varchar
(250) NOT NULL,
  `email` varchar
(250) NOT NULL,
  `pwd` varchar
(250) NOT NULL,
  PRIMARY KEY
(`id`),
  UNIQUE KEY `email_UNIQUE`
(`email`)
);


---- FORM ASSURANCE ------


CREATE TABLE `form_assurance`
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `partners_a` varchar
(45) NOT NULL,
  `partners_b` varchar
(45) NOT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---- FORM ASSURANCE-partners ------

CREATE TABLE `form_assurance_partners`
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY
(`id`),
  CONSTRAINT `fk_form_assurance` FOREIGN KEY
(`id`) REFERENCES `form_assurance`
(`id`),
  CONSTRAINT `fk_form_partners` FOREIGN KEY
(`id`) REFERENCES `partners`
(`idpartners`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---- FORM BANQUE ------


CREATE TABLE `form_banque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question1` varchar(45) DEFAULT NULL,
  `question2` varchar(45) DEFAULT NULL,
  `question3` varchar(45) DEFAULT NULL,
  `question4` varchar(45) DEFAULT NULL,
  `question4a` varchar(45) DEFAULT NULL,
  `question5` varchar(45) DEFAULT NULL,
  `question5a` varchar(45) DEFAULT NULL,
  `question5b` varchar(45) DEFAULT NULL,
  `question6` varchar(45) DEFAULT NULL,
  `question7` varchar(45) DEFAULT NULL,
  `question7a` varchar(45) DEFAULT NULL,
  `question7b` varchar(45) DEFAULT NULL,
  `question8` varchar(45) DEFAULT NULL,
  `question8a` varchar(45) DEFAULT NULL,
  `question9` varchar(45) DEFAULT NULL,
  `question10` varchar(45) DEFAULT NULL,
  `question10a` varchar(45) DEFAULT NULL,
  `question10b` varchar(45) DEFAULT NULL,
  `question11` varchar(45) DEFAULT NULL,
  `question12` varchar(45) DEFAULT NULL,
  `question14` varchar(45) DEFAULT NULL,
  `question15` varchar(45) DEFAULT NULL,
  `question16` varchar(45) DEFAULT NULL,
  `question16a` varchar(45) DEFAULT NULL,
  `question16b` varchar(45) DEFAULT NULL,
  `question17` varchar(45) DEFAULT NULL,
  `question18` varchar(45) DEFAULT NULL,
  `question19a` varchar(45) DEFAULT NULL,
  `question19b` varchar(45) DEFAULT NULL,
  `question20a` varchar(45) DEFAULT NULL,
  `question20b` varchar(45) DEFAULT NULL,
  `question20c` varchar(45) DEFAULT NULL,
  `question20d` varchar(45) DEFAULT NULL,
  `question21` varchar(45) DEFAULT NULL,
  `question21a` varchar(45) DEFAULT NULL,
  `question22` varchar(45) DEFAULT NULL,
  `question22a` varchar(45) DEFAULT NULL,
  `question23a` varchar(45) DEFAULT NULL,
  `question23b` varchar(45) DEFAULT NULL,
  `question24` varchar(45) DEFAULT NULL,
  `question25` varchar(45) DEFAULT NULL,
  `question26` varchar(45) DEFAULT NULL,
  `question27` varchar(45) DEFAULT NULL,
  `question27a` varchar(45) DEFAULT NULL,
  `question27b` varchar(200) DEFAULT NULL,
  `question28` varchar(45) DEFAULT NULL,
  `question28a` varchar(45) DEFAULT NULL,
  `question29` varchar(45) DEFAULT NULL,
  `question29a` varchar(200) DEFAULT NULL,
  `question30` varchar(45) DEFAULT NULL,
  `question31a` int(11) DEFAULT NULL,
  `question31b` int(11) DEFAULT NULL,
  `question31c` int(11) DEFAULT NULL,
  `question31d` int(11) DEFAULT NULL,
  `question32` int(11) DEFAULT NULL,
  `question33` varchar(200) DEFAULT NULL,
  `question34` varchar(45) DEFAULT NULL,
  `question35` varchar(45) DEFAULT NULL,
  `question36` varchar(45) DEFAULT NULL,
  `question37` date DEFAULT NULL,
  `question38a` varchar(45) DEFAULT NULL,
  `question38b` varchar(45) DEFAULT NULL,
  `question38c` varchar(45) DEFAULT NULL,
  `question39a` int(11) DEFAULT NULL,
  `question39b` int(11) DEFAULT NULL,
  `question40` varchar(45) DEFAULT NULL,
  `question40a` varchar(45) DEFAULT NULL,
  `question41` varchar(45) DEFAULT NULL,
  `question42` varchar(45) DEFAULT NULL,
  `question43` varchar(150) DEFAULT NULL,
  `question44` varchar(45) DEFAULT NULL,
  `question45a` varchar(45) DEFAULT NULL,
  `question45aa` varchar(45) DEFAULT NULL,
  `question45b` varchar(45) DEFAULT NULL,
  `question45c` date DEFAULT NULL,
  `question45d` varchar(45) DEFAULT NULL,
  `question46` varchar(45) DEFAULT NULL,
  `question47` varchar(45) DEFAULT NULL,
  `question47a` varchar(45) DEFAULT NULL,
  `question48a` int(11) DEFAULT NULL,
  `question48b` int(11) DEFAULT NULL,
  `question48c` varchar(45) DEFAULT NULL,
  `question49a` varchar(45) DEFAULT NULL,
  `question49b` varchar(45) DEFAULT NULL,
  `question49c` varchar(45) DEFAULT NULL,
  `question49d` varchar(45) DEFAULT NULL,
  `question50` varchar(45) DEFAULT NULL,
  `question51` varchar(45) DEFAULT NULL,
  `question52` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);




---- FORM ASSURANCE-partners ------

CREATE TABLE `form_banque_partners`
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY
(`id`),
  CONSTRAINT `fk_id_form_banque` FOREIGN KEY
(`id`) REFERENCES `form_banque`
(`id`),
  CONSTRAINT `fk_id_form_partners` FOREIGN KEY
(`id`) REFERENCES `partners`
(`idpartners`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---- PARTNERS ------

CREATE TABLE `partners`
(
  `idpartners` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar
(45) NOT NULL,
  `isBanque` tinyint
(1) DEFAULT NULL,
  `isAssurance` tinyint
(1) DEFAULT NULL,
  PRIMARY KEY
(`idpartners`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--------------- QUERY -----------------

user--------

INSERT into users
values
  (0, FALSE, 'Maurice', 'Brassart', 'maurice@example.com' , 'xe58bB'),
  (0, FALSE, 'Thomas', 'Dupont', 'yhomas@example.com' , 'fgT88o'),
  (0, FALSE, 'Isabelle', 'Leclerc', 'isabelle@example.com', 'tVb011'),
  (0, FALSE, 'Suzy', 'Dutilleux', 'suzy@example.com', 'Fgkkl7'),
  (0, FALSE, 'Sebastien', 'Machin', 'sebastien@example.com', 'Vwer880');


partners--------

INSERT into partners
values
  (0, 'BNP', 1 , 0 ),
  (0, 'SGE', 1 , 0 ),
  (0, 'CIC', 1 , 0 ),
  (0, 'LAPOSTE', 1 , 0 ),
  (0, 'ING', 1 , 0 );


TODO--- DATA NEEDED ---  

form_banque-----------
INSERT into form_banque

form_banque_partners-----------
INSERT into form_banque_partners

form_assurance-----------
INSERT into form_assurance

form_assurance_partners-----------
INSERT into form_assurance_partners



