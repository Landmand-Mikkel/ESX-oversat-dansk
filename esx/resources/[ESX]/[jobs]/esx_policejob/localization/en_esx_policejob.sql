USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('police', 'Police')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('police',0,'recruit','Elev',20,'{}','{}'),
	('police',1,'officer','Betjent',40,'{}','{}'),
	('police',2,'sergeant','Kommisær',60,'{}','{}'),
	('police',3,'lieutenant','Ledelse',85,'{}','{}'),
	('police',4,'boss','Chef',100,'{}','{}')
;

CREATE TABLE `fine_types` (

	`id` int(11) NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int(11) DEFAULT NULL,
	`category` int(11) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `fine_types` (label, amount, category) VALUES
	('Ulovligt brug af dythorn', 3000, 0),
	('Følger ikke vejens linjer', 4000, 0),
	('Kørsel i forkerte vejbane', 2500, 0),
	('Ulovlig uvending', 2500, 0),
	('Kørsel i uegnet terræn', 17000, 0),
	('Følger ikke politiets anvisninger', 30000, 0),
	('Blokere trafikken', 15000, 0),
	('Ulovlig parkeret', 7000, 0),
	('Blinker ikke', 7000, 0),
	('Mangler køretøjs legimation', 9000, 0),
	('Stopper ikke for stop skilt ', 1050, 0),
	('Stopper ikke ved rødt lys', 1300, 0),
	('Ulovlig overhalning', 1000, 0),
	('Køre ulovligt køretøj', 1000, 0),
	('Kørsel uden kørekort', 15000, 0),
	('Flygter fra skadested', 8000, 0),
	('Køre over < 5 km/t af den navngivne fartgrænse', 900, 0),
	('Køre over 5-15 km/t af den navngivne fartgrænse', 1200, 0),
	('Køre over 15-30 km/t af den navngivne fartgrænse', 1800, 0),
	('Køre over > 30 km/t af den navngivne fartgrænse', 3000, 0),
	('Bryder trafik lov', 11000, 1),
	('Drikker på offentlig gade', 9000, 1),
	('Ikke kontaktbar', 9000, 1),
	('Chikane', 13000, 1),
	('Chikane mod borgere', 7500, 1),
	('Chikane mod tjenestemand', 11000, 1),
	('Mundtlig trussel mod borger', 9000, 1),
	('Mundtlig trussel mod tjenestemand', 50000, 1),
	('Udlevere falsk information', 2500, 1),
	('Forsøg på korruption', 15000, 1),
	('Bære skyde våben', 75000, 2),
	('Affyreskyde våben', 50000, 2),
	('Besiddelse af ulovlige skud', 60000, 2),
	('Besiddelse af ulovligt våben', 70000, 2),
	('Besiddelse af ulovigt kriminelt sammenhængt våben', 3000, 2),
	('Brugstyveri', 18000, 2),
	('Forsøg på at sælge ulovige ting', 15000, 2),
	('Besiddelse af stoffer', 15000, 2),
	('Besiddelse af ulovlig ting ', 6500, 2),
	('Kidnappning af borger', 80000, 2),
	('Kidnappning af tjenestemand', 50000, 2),
	('Røveri', 65000, 2),
	('Bevæbnet røveri af butik', 65000, 2),
	('Bevæbnet røveri af bank', 125000, 2),
	('Overfald på borger', 20000, 3),
	('Overfald på tjenestemand', 25000, 3),
	('Mordforsøg på borger', 30000, 3),
	('Mordforsøg på tjenestemand', 50000, 3),
	('Mord på borger', 100000, 3),
	('Mord på tjenestemand', 300000, 3),
	('Dyremishandling', 18000, 3),
	('Fraud', 20000, 2);
;
