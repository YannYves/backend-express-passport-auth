
CREATE TABLE `form_assurance`
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parrtners_a` varchar
(45) NOT NULL,
  `partners_b` varchar
(45) NOT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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


CREATE TABLE `form_banque`
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patners_a` varchar
(45) NOT NULL,
  `partners_b` varchar
(45) NOT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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



CREATE TABLE `users`
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `isAdmin` tinyint
(1) NOT NULL,
  `lastName` varchar
(250) NOT NULL,
  `firstName` varchar
(250) NOT NULL,
  `e-mail` varchar
(250) NOT NULL,
  `pwd` varchar
(250) NOT NULL,
  PRIMARY KEY
(`id`),
  UNIQUE KEY `e-mail_UNIQUE`
(`e-mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
