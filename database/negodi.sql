--- TABLES --------

----USER------

CREATE TABLE users
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



---- FORM BANQUE ------

ALTER TABLE `negodi`.`form_banque`
ADD COLUMN `question3` VARCHAR
(45) NOT NULL AFTER `question2`,
ADD COLUMN `question4` VARCHAR
(45) NOT NULL AFTER `question3`,
ADD COLUMN `question4a` DECIMAL
(8,2) NOT NULL AFTER `question4`,
ADD COLUMN `question5` VARCHAR
(45) NOT NULL AFTER `question4a`,
ADD COLUMN `question5a` DECIMAL
(8,2) NOT NULL AFTER `question5`,
ADD COLUMN `question5b` DECIMAL
(8,2) NOT NULL AFTER `question5a`,
ADD COLUMN `question5bis` VARCHAR
(45) NOT NULL AFTER `question5b`,
ADD COLUMN `question5bisa` VARCHAR
(45) NOT NULL AFTER `question5bis`,
ADD COLUMN `question5bisb` DECIMAL
(8,2) NOT NULL AFTER `question5bisa`,
ADD COLUMN `question6` VARCHAR
(45) NOT NULL AFTER `question5bisb`,
ADD COLUMN `question7` VARCHAR
(45) NOT NULL AFTER `question6`,
ADD COLUMN `question7a` INT NOT NULL AFTER `question7`,
ADD COLUMN `question7b` VARCHAR
(45) NOT NULL AFTER `question7a`,
ADD COLUMN `question8` VARCHAR
(45) NOT NULL AFTER `question7b`,
ADD COLUMN `question8a` DECIMAL
(6,2) NOT NULL AFTER `question8`,
ADD COLUMN `question9` VARCHAR
(45) NOT NULL AFTER `question8a`,
ADD COLUMN `question10` VARCHAR
(45) NOT NULL AFTER `question9`,
ADD COLUMN `question10a` DECIMAL
(8,2) NOT NULL AFTER `question10`,
ADD COLUMN `question10b` DECIMAL
(8,2) NOT NULL AFTER `question10a`,
ADD COLUMN `question11` VARCHAR
(45) NOT NULL AFTER `question10b`,
ADD COLUMN `question12` VARCHAR
(45) NOT NULL AFTER `question11`,
ADD COLUMN `question14` VARCHAR
(45) NOT NULL AFTER `question12`,
ADD COLUMN `question15` VARCHAR
(45) NOT NULL AFTER `question14`,
ADD COLUMN `question16` VARCHAR
(45) NOT NULL AFTER `question15`,
ADD COLUMN `question16a` INT NOT NULL AFTER `question16`,
ADD COLUMN `question16b` VARCHAR
(45) NOT NULL AFTER `question16a`,
ADD COLUMN `question17` DECIMAL
(8,2) NOT NULL AFTER `question16b`,
ADD COLUMN `question18` VARCHAR
(45) NOT NULL AFTER `question17`,
ADD COLUMN `question18a` DECIMAL
(8,2) NOT NULL AFTER `question18`,
ADD COLUMN `question19a` DECIMAL
(8,2) NOT NULL AFTER `question18a`,
ADD COLUMN `question19a1` VARCHAR
(45) NOT NULL AFTER `question19a`,
ADD COLUMN `question19b` DECIMAL
(8,2) NOT NULL AFTER `question19a1`,
ADD COLUMN `question20a` DECIMAL
(8,2) NOT NULL AFTER `question19b`,
ADD COLUMN `question20b` DECIMAL
(8,2) NOT NULL AFTER `question20a`,
ADD COLUMN `question20c` DECIMAL
(8,2) NOT NULL AFTER `question20b`,
ADD COLUMN `question20d` DECIMAL
(8,2) NOT NULL AFTER `question20c`,
ADD COLUMN `question21` VARCHAR
(45) NOT NULL AFTER `question20d`,
ADD COLUMN `question21a` DECIMAL
(8,2) NOT NULL AFTER `question21`,
ADD COLUMN `question22` VARCHAR
(45) NOT NULL AFTER `question21a`,
ADD COLUMN `question22a` DECIMAL
(8,2) NOT NULL AFTER `question22`,
ADD COLUMN `question22b` INT NOT NULL AFTER `question22a`,
ADD COLUMN `question22c` DECIMAL
(8,2) NOT NULL AFTER `question22b`,
ADD COLUMN `question23a` DECIMAL
(8,2) NOT NULL AFTER `question22c`,
ADD COLUMN `question23b` DECIMAL
(8,2) NOT NULL AFTER `question23a`,
ADD COLUMN `question24` VARCHAR
(45) NOT NULL AFTER `question23b`,
ADD COLUMN `question25` VARCHAR
(45) NOT NULL AFTER `question24`,
ADD COLUMN `question26` VARCHAR
(45) NOT NULL AFTER `question25`,
ADD COLUMN `question27` VARCHAR
(45) NOT NULL AFTER `question26`,
ADD COLUMN `question27b1` DECIMAL
(8,2) NOT NULL AFTER `question27`,
ADD COLUMN `question28` VARCHAR
(45) NOT NULL AFTER `question27b1`,
ADD COLUMN `question28a` DECIMAL
(8,2) NOT NULL AFTER `question28`,
ADD COLUMN `question29` DECIMAL
(8,2) NOT NULL AFTER `question28a`,
ADD COLUMN `question30` VARCHAR
(45) NOT NULL AFTER `question29`,
ADD COLUMN `question31a` DECIMAL
(8,2) NOT NULL AFTER `question30`,
ADD COLUMN `question31b` DECIMAL
(8,2) NOT NULL AFTER `question31a`,
ADD COLUMN `question31c` DECIMAL
(8,2) NOT NULL AFTER `question31b`,
ADD COLUMN `question31d` DECIMAL
(8,2) NOT NULL AFTER `question31c`,
ADD COLUMN `question32` DECIMAL
(8,2) NOT NULL AFTER `question31d`,
ADD COLUMN `question33` VARCHAR
(45) NOT NULL AFTER `question32`,
ADD COLUMN `question34` VARCHAR
(45) NOT NULL AFTER `question33`,
ADD COLUMN `question35` VARCHAR
(45) NOT NULL AFTER `question34`,
ADD COLUMN `question36` VARCHAR
(45) NOT NULL AFTER `question35`,
ADD COLUMN `question37` DATETIME NOT NULL AFTER `question36`,
ADD COLUMN `question38a` VARCHAR
(45) NOT NULL AFTER `question37`,
ADD COLUMN `question38b` INT NOT NULL AFTER `question38a`,
ADD COLUMN `question38bisa` VARCHAR
(45) NOT NULL AFTER `question38b`,
ADD COLUMN `question38bisb` INT NOT NULL AFTER `question38bisa`,
ADD COLUMN `question38bisc` VARCHAR
(45) NOT NULL AFTER `question38bisb`,
ADD COLUMN `question38c` VARCHAR
(45) NOT NULL AFTER `question38bisc`,
ADD COLUMN `question39a` DECIMAL
(8,2) NOT NULL AFTER `question38c`,
ADD COLUMN `question39b` DECIMAL
(8,2) NOT NULL AFTER `question39a`,
ADD COLUMN `question40` VARCHAR
(45) NOT NULL AFTER `question39b`,
ADD COLUMN `question40a` VARCHAR
(45) NOT NULL AFTER `question40`,
ADD COLUMN `question41` VARCHAR
(45) NOT NULL AFTER `question40a`,
ADD COLUMN `question42` VARCHAR
(45) NOT NULL AFTER `question41`,
ADD COLUMN `question42bis` VARCHAR
(45) NOT NULL AFTER `question42`,
ADD COLUMN `question43` DECIMAL
(8,2) NOT NULL AFTER `question42bis`,
ADD COLUMN `question431` DECIMAL
(8,2) NOT NULL AFTER `question43`,
ADD COLUMN `question432` DECIMAL
(8,2) NOT NULL AFTER `question431`,
CHANGE COLUMN `partners_a` `question1` VARCHAR
(45) NOT NULL ,
CHANGE COLUMN `partners_b` `question2` VARCHAR
(45) NOT NULL , RENAME TO  `negodi`.`form` ;


--------------- QUERY -----------------

smaple user--------

INSERT into users
values
  (0, FALSE, 'Maurice', 'Brassart', 'maurice@example.com' , 'xe58bB'),
  (0, FALSE, 'Thomas', 'Dupont', 'yhomas@example.com' , 'fgT88o'),
  (0, FALSE, 'Isabelle', 'Leclerc', 'isabelle@example.com', 'tVb011'),
  (0, FALSE, 'Suzy', 'Dutilleux', 'suzy@example.com', 'Fgkkl7'),
  (0, FALSE, 'Sebastien', 'Machin', 'sebastien@example.com', 'Vwer880');


