
CREATE TABLE enrol.Address (
    AddressID INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
	StreetAddress nvarchar(50)  NOT NULL,
	City nvarchar(50) NOT NULL,
	State nvarchar(50) NULL,
	PostalCode nvarchar(50) NULL,
	Country nvarchar(50) NULL,
	InsertedOn Date NOT NULL DEFAULT GETDATE()
);


INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('5 Schurz Lane','Grybow',NULL,'33-330','Poland');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('628 Waubesa Drive','Jinsheng',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('44135 Northfield Way','Nowy Dwor Mazowiecki',NULL,'05-160','Poland');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('335 Bellgrove Road','Gaoqiao',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('28 Victoria Junction','Bukovec',NULL,'739 84','Czech Republic');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('6 Stuart Road','Wushan',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('730 Barby Street','Zhengchang',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('22742 Schiller Street','Sumurwaru',NULL,NULL,'Indonesia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('31 Elka Junction','Cigembong',NULL,NULL,'Indonesia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('5 Kenwood Circle','Davao',NULL,'8000','Philippines');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('99 Bunker Hill Crossing','Zarasai',NULL,'32001','Lithuania');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('5 Farragut Center','Jaromerice',NULL,'569 44','Czech Republic');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('25 Lerdahl Street','Nanshi',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('918 Bonner Way','Phayakkhaphum Phisai',NULL,'44110','Thailand');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('9 West Alley','Sempu',NULL,NULL,'Indonesia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('234 Hagan Lane','Rennes','Bretagne','35033','France');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('33942 Eagle Crest Trail','Oliveiras','Porto','4745-235','Portugal');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('20791 Hermina Way','B?o L?c',NULL,NULL,'Vietnam');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('86 Lake View Way','Marsa Alam',NULL,NULL,'Egypt');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('19732 Burning Wood Parkway','Pitea','Norrbotten','944 73','Sweden');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('9320 Oak Valley Road','Rathangani',NULL,'A45','Ireland');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('2638 Waubesa Circle','Honda',NULL,'732048','Colombia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('6999 Monument Center','Cortes',NULL,'6341','Philippines');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('1 Warbler Hill','Proletar',NULL,NULL,'Tajikistan');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('1311 Crowley Street','Baghlan',NULL,NULL,'Afghanistan');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('19 Walton Way','aldziyt',NULL,NULL,'Mongolia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('1 Glacier Hill','Cergy-Pontoise','ile-de-France','95304','France');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('5094 Gateway Way','zivinice',NULL,NULL,'Bosnia and Herzegovina');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('2 Roth Pass','Tuatuka',NULL,NULL,'Indonesia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('89531 Northview Road','Ganyi',NULL,NULL,'China');
