CREATE DATABASE  IF NOT EXISTS `carrentals` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carrentals`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carrentals
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

--
-- Table structure for table `client3782`
--

DROP TABLE IF EXISTS `client3782`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client3782` (
  `ClientID` smallint NOT NULL,
  `FamilyName` varchar(15) DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `Address` varchar(27) DEFAULT NULL,
  `Suburb` varchar(23) DEFAULT NULL,
  `Pcode` smallint DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (ClientID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client3782`
--

LOCK TABLES `client3782` WRITE;
/*!40000 ALTER TABLE `client3782` DISABLE KEYS */;
INSERT INTO `client3782` VALUES (1567,'Guazzo','Kuman','2715  South Creek Drive','Hay',3924,'0401 234 567'),(1568,'Gallivan','Teresa','15  Western Avenue','Studfield',5457,'0444 445 208'),(1569,'Nagy','David','6548  Alpine Lane','Wattle Glen',5233,'0442 582 415'),(1570,'Petersen','Michael','421  Davis Road','Mordialloc',6332,'0458 726 414'),(1571,'Roel','Aria','69  South Phillips Road','Clementson',4344,'0406 614 259'),(1572,'Moroni','Janosfi','40  Beaufort Ln.','Inverloch',5772,'0413 797 831'),(1573,'Devon','Liu','89  North Bay Boulevard','Mentone',3693,'0423 225 606'),(1574,'Saylor','Michael','17  Templeton Dr. NE','Moreland',4204,'0479 810 653'),(1575,'Schmitt','Katlyn','28  Sycamore Street','Eltham',4722,'0421 735 725'),(1576,'Mackenzie','Zbyszek','5  North Cliff Avenue','Clarinda',3273,'0461 288 895'),(1577,'Roel','Horace','95  North Phillips Road','Strathemerton',4239,'0416 017 292'),(1578,'Leonard','Helvetius','7824  Salmon Street','Wonthaggi',4666,'0467 169 507'),(1579,'Cartrain','Annette','82  Main Street','Harrisfield',4218,'0421 992 612'),(1580,'Mendel','Aaron','4132  Seneca Street','Forest Hill',5380,'0451 363 726'),(1581,'Camino','David','42  Hazelnut Street','Mill Park',6367,'0400 259 427'),(1582,'Kooienga','Carlos','1315  Canyonside Way','Geelong South',6003,'0440 976 816'),(1583,'Donovan','Lino','3  Peachtree St. NW','Maidstone',4379,'0496 558 671'),(1584,'Braunschweiger','Diego','130  Goldsmith Street','Warrenbayne',5639,'0430 840 302'),(1585,'Carter','Janine','701  West 41st Street','Korumburra',5086,'0406 695 290'),(1586,'Schmitt','Antonio','784  Cascade Road','Picola',5926,'0442 471 610'),(1587,'Kenner','Yang','915  Russet Lane','Blackburn North',5674,'0424 509 445'),(1588,'Hamilton','Shirley','4193  Willow Street','Ashwood',4694,'0432 661 574'),(1589,'Martinez','Alicia','399  Founder\'s Way','Ballan',5793,'0451 274 671'),(1590,'Polonia','José','3123  E. Hampton Way','Lysterfield',5037,'0479 123 034'),(1591,'Nodier','Mary','22  Hidden Dr.','Matlock',5296,'0470 424 675'),(1592,'Müller','Connie','4799  Great Road','Shelbourne',5842,'0443 998 855'),(1593,'Espinoza','Jennifer','7112  Davis St.','Rowville',3623,'0493 119 453'),(1594,'Irwin','Shannon','13  Garfield Avenue','Moorooduc',4575,'0432 245 709'),(1595,'Mackenzie','Sven','431  Grant St.','Glenrowan',5548,'0486 626 806'),(1596,'Fernández','Wayne','193  Queue Highway','Port Fairy',3658,'0463 872 206'),(1597,'Klein','Victoria','287  S. Hammond St.','Fitzroy',3525,'0413 640 562'),(1598,'Freyre','Philip','10  Garvey Rd.','The Patch',3385,'0483 128 956'),(1599,'Valdez','Herb','400  East 10 Street','Mandurang',5835,'0489 018 052'),(1600,'Messner','Polly','6  Edgewood Road','San Remo',5849,'0482 405 628'),(1601,'Black','Liam','70  Ethan Allen Drive','Rosebud',5513,'0499 307 722'),(1602,'Murphy','Katlyn','587  Lexington Parkway','Burramine',6234,'0492 150 517'),(1603,'Towers','Isabel','37  Tyler St.','Hartwell',5156,'0425 855 280'),(1604,'McBride','Chantal','278  Collie Ln.','Avondale Heights',4470,'0471 513 960'),(1605,'Cavanaugh','Fran','78  Hall Road','Seaspray',5415,'0416 942 590'),(1606,'Dugan','Lee','28  Tara Lane','Beaconsfield',5107,'0440 718 701'),(1607,'Wolfe','Debby','56  Normandy St.','Bannockburn',3175,'0457 153 763'),(1608,'MacPherson','Simon','224  Four Mile Road','Dinner Plain',5688,'0450 570 666'),(1609,'Carvalho','Rebecca','11  Carter Dr.','Belgrave Heights &',6087,'0428 926 616'),(1610,'Cowan','Georgette','119  Manwell St.','Catani',4932,'0433 260 114'),(1611,'Stevenson','Georgette','1422  Mountain Peak Ridge','Kinglake',6416,'0447 621 073'),(1612,'Lewis','Peter','114  Bayberry Pointe Drive','Fawkner',5492,'0478 546 274'),(1613,'Wang','Alexander','255  Old Bedford Trail','Rosanna',5555,'0422 964 055'),(1614,'Vileid','Michelle','155  Liberty Street','Coldstream',5975,'0462 339 155'),(1615,'Moreno','John','33  East Conway Dr.','George Town',5660,'0420 077 145'),(1616,'Feeney','John','944  Bagley Street','Balliang',4540,'0406 857 925'),(1617,'Reaume','Shane','330  East Monroe Avenue','Narneella',3301,'0444 320 733'),(1618,'Ottlieb','Anne','391  President Dr.','Katandra',5576,'0493 198 378'),(1619,'Carvalho','Shelley','312  King Street','Fryerstown',6206,'0470 813 900'),(1620,'Delamare','Jason','192  Marsh Road','McMillans',4267,'0436 131 602'),(1621,'Towers','Miguel','2463  Orchard Street','Brunswick West',4365,'0458 687 610'),(1622,'Sommer','Daniel','8  Bridge Street','Kennington',5240,'0489 337 672'),(1623,'Saavedra','Pirkko','713  Warner Drive','Seaford',4603,'0469 894 130'),(1624,'Ohno','Kelly','409  Garfield St.','Belmont',5765,'0459 721 987'),(1625,'Wilson','Helen','4516  Sawyer Ave.','Boneo',4589,'0414 200 953'),(1626,'Koskitalo','Janosfi','350  Tower Lane','Thorpdale',4141,'0405 701 463'),(1627,'Pfeiffer','Janete','9188  Gateway Boulevard','Lara and Lara Lake',5079,'0419 716 053'),(1628,'Flake','Reiko','649  Gateway Rd.','Rhyll',3105,'0403 103 028'),(1629,'Cartrain','Pedro','109   E. Fletcher Road','Bendigo',5261,'0497 621 208'),(1630,'Jones','Aria','150  Hartford Ave.','Havelock',4491,'0428 094 776'),(1631,'Nixon','Curtis','84  Battlebridge Lane','Endeavour Hills',3070,'0487 093 171'),(1632,'Brooks','Donald','44  Snow Street SE','Clunes',3826,'0453 337 432'),(1633,'Fletcher','Pam','50  Tenney Circle','Badger Creek',5646,'0486 998 454'),(1634,'Klein','Maurizio','15  Baldwin Boulevard','Newbridge',5275,'0456 257 994'),(1635,'Hodge','Terri','40  Old Lanterne Road','Temora',5632,'0454 961 445'),(1636,'Goulet','Marquez','4  Bradford Farms','Somerville',3322,'0406 476 930'),(1637,'Accorti','Matthew','230  Hawthorne Avenue','Alberton',5534,'0456 675 792'),(1638,'Rovelli','Guillermo','10 36th Street','Riddells Creek',4687,'0479 142 497'),(1639,'Cowan','Rita','11  Jamestown Dr.','Garfield',4057,'0477 262 536'),(1640,'Mouw','Debby','375  Lithonia Dr.','Tyers',3434,'0467 022 773'),(1641,'Jones','Ann','28  Tuttle Drive','Lalor',4778,'0499 240 174'),(1642,'Mercury','Sergio','5  Longfellow Rd.','Narre Warren',6017,'0458 914 615'),(1643,'Fonseca','Juan','214  West Russell Street','Mollongghip',3203,'0418 460 765'),(1644,'Tannamuri','Maria','2324  E. Park St.','Coimadai',5954,'0482 874 468'),(1645,'Batista','Tyler','31 Normandy St.','St Kilda',3882,'0460 275 373'),(1646,'Peterson','Deborah','78   E. Fletcher Road','Keysborough',3574,'0481 667 278'),(1647,'Wang','Brianna','70  Collie Ln.','Omeo',3455,'0408 424 095'),(1648,'Guazzo','Julie','95  Great Road','Christmas Hills',5247,'0439 131 820'),(1649,'Petersen','Harold','3  Goldsmith Street','Coburg',4064,'0412 931 710'),(1650,'Leka','Elizabeth','2715  Battlebridge Lane','Yallourn North',5072,'0464 285 154'),(1651,'Maher','Dominique','287  Mountain Peak Ridge','Seville',4309,'0457 416 464'),(1652,'Leonard','John','6548  Carter Dr.','Aspendale',5121,'0446 331 781'),(1653,'Lauzon','Luis','28  36th Street','Ferny Creek',3896,'0484 292 934'),(1654,'Morris','Isabel','11  Edgewood Road','Lal Lal',3539,'0421 541 846'),(1655,'Björn','Elio','7112  Lexington Parkway','Paynesville',5303,'0447 727 770'),(1656,'Petersen','Pirkko','9188  Garfield Avenue','Victor Harbour',5310,'0490 512 023'),(1657,'Kloss','Damion','587  President Dr.','Mount Macedon',3770,'0427 038 042'),(1658,'Trujillo','Marie','4  Tuttle Drive','Canterbury',6486,'0414 090 408'),(1659,'Petersen','Guillermo','15  Sawyer Ave.','NarreWarren North',5149,'0408 859 872'),(1660,'Rancé','Martín','421  Grant St.','Cann River',6129,'0489 314 824'),(1661,'Suchecki','Timothy','42  Ethan Allen Drive','Pakenham',3448,'0419 288 308'),(1662,'Espinoza','Lars','5  East Conway Dr.','Bundalong',3903,'0465 147 219'),(1663,'Switzer','Charlotte','33  Tower Lane','Briar Hill',5744,'0471 337 905'),(1664,'Maher','James','22  Gateway Boulevard','Baxter',3154,'0466 727 391'),(1665,'Gutiérrez','Jytte','28  Snow Street SE','Olinda',5142,'0471 789 471'),(1666,'Diaz','Rene','4799  Four Mile Road','Nepean Peninsula',4428,'0478 426 659'),(1667,'Winkler','Nicole','1422  Western Avenue','Tatura',4295,'0499 483 879'),(1668,'Kloss','Dawn','399  North Phillips Road','Moonee Ponds',5968,'0446 746 087'),(1669,'Smith','Ray','28  Tyler St.','Moorabbin',3889,'0497 877 112'),(1670,'McMillan','Jaime','8  Salmon Street','Colbinabbin',4120,'0437 420 118'),(1671,'Nagy','Giovanni','649  South Creek Drive','Malvern East',4596,'0471 444 804'),(1672,'Accorti','Donald','193  Old Lanterne Road','Menzies Creek',3518,'0458 458 045'),(1673,'Switzer','Matthew','375  King Street','Toolleen',6318,'0417 072 662'),(1674,'Nagase','Anne','119  Willow Street','Jindivick',4099,'0471 957 093'),(1675,'Smith','Chao-Jun','50  Bagley Street','Toolangi',3469,'0415 294 033'),(1676,'Devling','Zbyszek','330  Peachtree St. NW','Kangaroo Island',3392,'0415 162 995'),(1677,'González','Ken','2463  Bradford Farms','Newborough',5429,'0437 625 132'),(1678,'Larsson','Peter','7824  Founder\'s Way','Bonegilla',3427,'0496 087 514'),(1679,'Dugan','Karl','5  East 10 Street','Glenroy',5387,'0480 935 960'),(1680,'Feuer','Horst','3123  South Phillips Road','Springvale South',6276,'0447 911 369'),(1681,'Arnold','Patricia','13  E. Park St.','Darley',6248,'0471 282 868'),(1682,'Fresnière','Daniel','44  Jamestown Dr.','Bunyip',4148,'0412 124 482'),(1683,'Stapleton','Susan','17  Marsh Road','Kamarooka',5317,'0491 005 428'),(1684,'Henriot','Victoria','69  Beaufort Ln.','Goulburn Valley',3112,'0480 142 595'),(1685,'Izquierdo','Bernardo','82  Davis Road','Outtrim',5569,'0430 341 385'),(1686,'Rancé','Rebecca','1315  West Russell Street','Ceres',6437,'0402 279 615'),(1687,'Blankenship','Luis','784  Longfellow Rd.','Donvale',4288,'0488 809 353'),(1688,'Martin','Guylène','109  Main Street','Tugamah',4652,'0477 501 973'),(1689,'Ranjan','Laurence','350  East Monroe Avenue','Raywood',5863,'0421 422 886'),(1690,'Viereck','Carine','37  Hawthorne Avenue','Clarondon',3357,'0426 878 082'),(1691,'Hoffman','Serena','6  Tenney Circle','Woori Yallock',3966,'0478 904 033'),(1692,'Pedicini','Jeffrey','214  Lithonia Dr.','Healesville',4484,'0488 612 563'),(1693,'Vanderbilt','Jean','130  Hidden Dr.','Kyneton',5681,'0441 842 818'),(1694,'Johnson','Francisco','155  Manwell St.','Clifton Hill',3196,'0498 071 168'),(1695,'Crowther','Gilbert','89  Bridge Street','Beveridge',4561,'0403 502 531'),(1696,'McKenna','Shannon','944  Canyonside Way','Eurora',4323,'0480 674 431'),(1697,'McKenna','Lúcia','150  E. Hampton Way','Doncaster',4904,'0435 608 767'),(1698,'Douglas','Michelle','255  Bayberry Pointe Drive','Malvern',3364,'0410 418 809'),(1699,'Afonso','Toby','701  Baldwin Boulevard','Youanmite',6059,'0440 788 290'),(1700,'Afonso','Art','56  Hall Road','Preston',5408,'0433 532 437'),(1701,'Martin','Renate','400  Cascade Road','Garden City',4799,'0477 722 184'),(1702,'Moncada','Curtis','713  Warner Drive','Tullamarine',5597,'0490 640 293'),(1703,'Pavarotti','Ryan','230  North Bay Boulevard','Burnley',5891,'0469 704 988'),(1704,'Smith','Pascale','192  Garfield St.','Geelong West',4890,'0416 530 883'),(1705,'Jones','Sergio','409  Gateway Rd.','Fitzroy North',5506,'0410 518 366'),(1706,'Reed','Miguel','4516  West 41st Street','Werribee',6178,'0427 786 598'),(1707,'Owens','Daniel','84  Hazelnut Street','Tallygaroopna',5982,'0426 599 007'),(1708,'Donovan','Guylène','10  Davis St.','Dalmore',5485,'0414 931 649'),(1709,'Wang','Beate','391  North Cliff Avenue','Lake Tyers',3014,'0407 079 982'),(1710,'Petofi','Randall','11  Tara Lane','Stanley',3238,'0478 026 710'),(1711,'Stevenson','Matti','15  Orchard Street','Noojee',5961,'0465 707 045'),(1712,'Saylor','Ian','915  Queue Highway','Silvan',4554,'0482 577 866'),(1713,'Wilborn','Helvetius','40  S. Hammond St.','East',5499,'0461 145 204'),(1714,'Moroni','Paolo','224  Russet Lane','Kingsbury',4442,'0482 165 509'),(1715,'Tonini','Dawn','431  Old Bedford Trail','Cape Schanck',5478,'0464 862 685'),(1716,'Mercury','Kerry','4132  Garvey Rd.','Ocean Grove',5359,'0404 083 707'),(1717,'Jenson','Jean','312  Sycamore Street','Albert Park',3077,'0444 202 713'),(1718,'Braunschweiger','Gregory','114  Hartford Ave.','Parkville',3581,'0416 422 931'),(1719,'Shaw','Tara','4193  Seneca Street','Newtown',4582,'0402 910 855'),(1720,'Reed','Marie','2324  Templeton Dr. NE','Tonimbuk',3021,'0467 185 874'),(1721,'Wilson','Lee','40  Liberty Street','Wunghnu',3756,'0467 163 786'),(1722,'Björn','Dora','278  Alpine Lane','Cowwarr',5716,'0486 723 218'),(1723,'Domingues','Antonio','11  Beaufort Ln.','Mallacoota',4981,'0447 273 363'),(1724,'Romero','Robb','2715  Hartford Ave.','Hawthorn',5562,'0427 898 751'),(1725,'Murphy','Thomas','4193  Davis Road','Mountain Gate',3504,'0451 963 463'),(1726,'Nagase','Lauren','278   E. Fletcher Road','Castlemaine',4169,'0423 382 771'),(1727,'Pereira','Sven','5  Orchard Street','Epping',3189,'0498 398 208'),(1728,'Wong','Jeffrey','44  North Bay Boulevard','Thomastown',3840,'0462 634 567'),(1729,'Angel Paolino','Marilyn','42  Normandy St.','Mornington',6409,'0419 603 845'),(1730,'Snyder','Giovanni','1315  Canyonside Way','Brown Hill',3812,'0467 890 536'),(1731,'Burke','Susan','22  Manwell St.','Heathcote',4316,'0487 155 666'),(1732,'Bein','Elizabeth','70  Templeton Dr. NE','Moe',6374,'0480 922 417'),(1733,'McBride','Eugene','28  King Street','Wyndham Vale',3084,'0478 988 147'),(1734,'Pipps','Peter','17  South Phillips Road','Barry\'s Reef',5856,'0446 685 296'),(1735,'Wong','Francisco','28  Battlebridge Lane','Red Hill & Red Hill',6423,'0426 874 460'),(1736,'Foley','Jonas','287  36th Street','Box Hill',3056,'0476 951 540'),(1737,'Delamare','Randall','78  Cascade Road','Strathbogie',5009,'0466 939 627'),(1738,'Estes','Melissa','431  Willow Street','Coongulla',5527,'0434 683 598'),(1739,'Angel Paolino','Charlotte','230  East Monroe Avenue','Chelsea Heights',6143,'0486 395 926'),(1740,'Bouwman','Shelley','15  Lexington Parkway','Moyhu',3917,'0428 584 212'),(1741,'Wilson','Antonio','130  Garvey Rd.','Coode Island',3315,'0455 316 467'),(1742,'Pereira','Barbara','193  Alpine Lane','Nagambie',3819,'0423 878 902'),(1743,'Burke','James','330  Hall Road','Oakleigh',4946,'0425 478 128'),(1744,'MacPherson','Steve','119  Tenney Circle','Beaumaris',5163,'0425 489 750'),(1745,'Markovicz','Theodore','1422  Four Mile Road','Fish Creek',4351,'0402 111 912'),(1746,'Ibsen','Giovanni','7824  Collie Ln.','Taggerty',5023,'0406 993 002'),(1747,'Mills','Peter','155  Gateway Rd.','Connewarre',3308,'0490 367 251'),(1748,'Berdahl','Gretchen','192  Liberty Street','Stony Point',6227,'0493 159 197'),(1749,'Beaufort','Steve','375  West 41st Street','Templestowe',3616,'0416 546 434'),(1750,'Saveley','Julie','713  Lithonia Dr.','Tynong',4988,'0403 701 235'),(1751,'Wilson','Jane','649  Davis St.','Specimen Hill',5422,'0413 580 442'),(1752,'Hernández','Liz','150  Tuttle Drive','Blakeville',4918,'0415 307 828'),(1753,'Kumar','Yoshi','69  Garfield St.','Daydream',3602,'0467 370 483'),(1754,'Roulet','Horace','224  Grant St.','Peppermint Grove',4883,'0471 274 080'),(1755,'Jablonski','Ryan','28  Gateway Boulevard','Arthurs Creek',5170,'0474 338 512'),(1756,'Davenport','Shirley','89  Peachtree St. NW','Flinders',3476,'0416 786 798'),(1757,'Van Singel','Lúcia','33  East 10 Street','Werribee South',5394,'0432 432 146'),(1758,'Shevlin','Edward','15  Snow Street SE','Glenferrie',6031,'0452 154 097'),(1759,'Limeira','Regina','9188  Hazelnut Street','Numurkah',3777,'0425 770 511'),(1760,'Frederick','Scott','944  Mountain Peak Ridge','Merricks',4337,'0483 406 431'),(1761,'Stein','Pascale','400  North Cliff Avenue','Lockwood',4862,'0497 629 601'),(1762,'Citeaux','Alexander','109  Edgewood Road','Point Leo',4568,'0480 613 834'),(1763,'Yorres','Felipe','82  Hawthorne Avenue','Shoreham',5184,'0493 350 834'),(1764,'Wilborn','Nicole','3123  Tower Lane','Patho',3707,'0412 762 498'),(1765,'Crowther','Cheryl','4799  Longfellow Rd.','Footscray',3490,'0491 298 359'),(1766,'Limeira','Paul','399  South Creek Drive','Prahran',5653,'0465 474 839'),(1767,'Labrune','Sven','10  Russet Lane','Laverton',5219,'0438 551 572'),(1768,'Trujillo','Paula','255  Sycamore Street','Geelong East',5870,'0440 337 145'),(1769,'Cramer','Shane','37  Warner Drive','Brunswick East',4155,'0470 050 159'),(1770,'Domingues','Herb','40  Seneca Street','Tecoma',4736,'0433 256 859'),(1771,'Saavedra ','Edward','114  E. Park St.','Traralgon South',4281,'0406 460 295'),(1772,'Rodriquez','Bridgit','915  Sawyer Ave.','Ormond',4505,'0484 620 902'),(1773,'Jerentowski','Horst','11  Garfield Avenue','Puckapunyal',3119,'0414 244 276'),(1774,'Petree','Liz','214  West Russell Street','Moolap',6346,'0442 579 588'),(1775,'Dewey','Paul','4  Tara Lane','Tunstall',3721,'0430 186 425'),(1776,'Chang','Georg','13  Bridge Street','Avenel',5331,'0487 900 642'),(1777,'Moreno','Timothy','6  North Phillips Road','Kangaroo Ground',4372,'0457 387 808'),(1778,'Hammond','Doris','701  Old Bedford Trail','Newham',4197,'0421 753 816'),(1779,'Miller','Yoshi','3  Queue Highway','Donnybrook',3336,'0465 881 917'),(1780,'Hersha','Carlos','2463  Bayberry Pointe Drive','Rushworth',3378,'0436 429 346'),(1781,'Freyre','Yvonne','391  E. Hampton Way','Majorca',4414,'0457 356 855'),(1782,'Rohrs','Doris','409  Bagley Street','Kallista',4869,'0491 664 440'),(1783,'Holden','Joan','8  President Dr.','Maude',4106,'0400 753 577'),(1784,'Shaw','Belinda','6548  Hidden Dr.','Croydon North',5135,'0439 490 779'),(1785,'Vanderbilt','Philip','4132  Carter Dr.','East',6136,'0412 045 826'),(1786,'Saavedra','Marie','56  Main Street','Beaconsfield Upper',6073,'0457 149 888'),(1787,'Brown','Janice','784  Baldwin Boulevard','Winton',6157,'0428 770 723'),(1788,'Bergulfsen','Paula','350  Ethan Allen Drive','Lakes Entrance',3833,'0442 760 167'),(1789,'Reyes','Joe','40  Western Avenue','Fernshaw',4092,'0444 653 295'),(1790,'Mouw','Felipe','36 East Conway Dr.','Croajing',5702,'0444 691 735'),(1791,'Steel','Roland','587  Jamestown Dr.','Cassilis',6052,'0466 627 854'),(1792,'Yasenak','Aaron','95  Founder\'s Way','Surat',3714,'0409 218 712'),(1793,'Franken','Henriette','84  S. Hammond St.','Patterson Lakes',3217,'0432 338 114'),(1794,'Larsson','Amber','4516  Tyler St.','Navigators',6241,'0412 858 137'),(1795,'Cruz','Eugene','2324  Bradford Farms','Brunswick',4225,'0496 795 302'),(1796,'Stein','Ray','7112  Old Lanterne Road','Seymour',6430,'0448 700 898'),(1797,'Leka','Charlotte','50  Great Road','Lilydale',6024,'0430 881 265'),(1798,'Luck','Carl','421  Salmon Street','California Gully',3973,'0416 675 354'),(1799,'Saveley','Millicent','312  Goldsmith Street','Fitzroy North',3028,'0487 470 203'),(1800,'Steel','Alejandra','5  Marsh Road','Kananook',5905,'0401 221 925'),(1801,'Morris','Eduardo','409  S. Hammond St.','Ripponlea',4960,'0415 975 901'),(1802,'Nelson','Paolo','4  Warner Drive','Heatherdale',3805,'0440 683 019'),(1803,'Reaume','Paul','784  Jamestown Dr.','Tooronga',4183,'0494 188 137'),(1804,'Kenner','Rita','4132  Tower Lane','Albion',3994,'0426 529 951'),(1805,'Ashworth','Hari','28  Main Street','Sandringham',4386,'0498 091 392'),(1806,'Moos','Catherine','649  Four Mile Road','Devenish',4029,'0452 000 360'),(1807,'Koskitalo','Jean-Guy','82  Mountain Peak Ridge','Kuranjang',4519,'0415 924 086'),(1808,'de Castro','Helen','431  Hall Road','Port Albert',5282,'0461 999 459'),(1809,'Winkler','Laurence','312  Davis St.','Bellarine',5541,'0453 510 817'),(1810,'Lim','Jeffery','7112  President Dr.','Molesworth',3147,'0449 674 100'),(1811,'Labrune','Damion','3123  Peachtree St. NW','Gawler SA',4456,'0406 683 096'),(1812,'Gregory','Thomas','192  Hidden Dr.','Nar Nar Goon',4435,'0408 441 263'),(1813,'Lim','Cheryl','4193  Davis Road','Durham Lead',3329,'0482 829 910'),(1814,'Kooienga','Mary','2463  Longfellow Rd.','Strzelecki Ranges',3140,'0409 820 309'),(1815,'Cooper','Harold','400  Garfield St.','Dunnstown',4358,'0420 924 939'),(1816,'Wolfe','Paula','278  Normandy St.','Aberfeldy',3035,'0436 885 685'),(1817,'Merchant','Melissa','587  East Conway Dr.','Middle Park',5828,'0418 932 694'),(1818,'Messner','Ann','2324  King Street','Lyndhurst',5996,'0416 578 780'),(1819,'Rossi','Nancy','22  Manwell St.','Darnum',6458,'0415 218 759'),(1820,'Izquierdo','Karl','89  Garvey Rd.','Parkdale',4841,'0424 049 112'),(1821,'Rodriguez ','Jean','5  Liberty Street','Flemington',6115,'0464 044 273'),(1822,'Hersha','Patricio','40  Bayberry Pointe Drive','Hawksburn',3938,'0456 018 587'),(1823,'Yorres','Douglas','36 Collie Ln.','Bena',6472,'0451 877 251'),(1824,'Shevlin','Marie','915  Carter Dr.','Gobur',4449,'0493 222 580'),(1825,'Trujillo','Lauren','224  Edgewood Road','Merriang',4953,'0447 744 262'),(1826,'Black','Carl','44  Templeton Dr. NE','Broadmeadows',3413,'0486 427 859'),(1827,'Merritt','Michele','7824  Ethan Allen Drive','Safety Beach',3294,'0497 673 100'),(1828,'Rayworth','Yvonne','70  Battlebridge Lane','Glenlyon',5345,'0405 300 851'),(1829,'Brown','Yang','255  Marsh Road','Kalkallo',5058,'0481 694 685'),(1830,'Brooks','Teresa','713  Hartford Ave.','Golden Square',5128,'0433 173 833'),(1831,'Arnold','Kelly','28  West 41st Street','Aireys Inlet',5618,'0403 616 081'),(1832,'Bein','Kim','69  Sycamore Street','Belgrave South',3560,'0412 248 930'),(1833,'Carlson','Melissa','50  Bridge Street','Blackburn South',5268,'0491 535 119'),(1834,'Pfalzheim','Patricio','193  East Monroe Avenue','Wandana Heights',4533,'0406 154 092'),(1835,'Hitachi','Juan','3  Grant St.','Mooroolbark',5611,'0450 315 145'),(1836,'Jenkins','Tara','150  Seneca Street','Aspendale Gardens',3644,'0438 595 478'),(1837,'Snyder','Bernardo','15  Canyonside Way','Hamlyn Heights',4190,'0460 467 757'),(1838,'Bennett','André','95  Sawyer Ave.','Lawrence',6045,'0436 068 571'),(1839,'Peterson','Rene','4799  E. Hampton Way','Tooborac',3063,'0485 131 943'),(1840,'Nelson','Karin','33  South Phillips Road','Toolamba',4897,'0407 310 422'),(1841,'Moos','Hari','9188  Garfield Avenue','Rainbow',6339,'0460 856 160'),(1842,'Wilson','Amber','10  Salmon Street','Flowerdale',5590,'0460 155 430'),(1843,'Pasaco','Patricia','2715  Hawthorne Avenue','Goorambat',4876,'0421 169 987'),(1844,'Bergulfsen','Alejandra','11  36th Street','Bell Park',5723,'0423 205 527'),(1845,'Ashworth','José','5  Hazelnut Street','Metung',5604,'0403 096 467'),(1846,'Holz','Martin','84  Tara Lane','Yarra Glen',3952,'0419 730 253'),(1847,'Jenson','Eliane','1422  Tuttle Drive','Park Orchards',3686,'0419 336 318'),(1848,'Valdez','Beate','944  South Creek Drive','Kialla & Kialla West',6199,'0408 885 457'),(1849,'Perrier','Reiko','42  Lithonia Dr.','Southbank',4848,'0450 334 158'),(1850,'Markovicz','Carlos','15  Tyler St.','Boronia',5226,'0485 267 927'),(1851,'Ohno','Pam','13  Western Avenue','Devon Meadows',6171,'0437 089 742'),(1852,'Fernández','Jane','28  North Bay Boulevard','Girgarre',3679,'0418 574 143'),(1853,'Carter','Jonas','78  Old Bedford Trail','Yea',5751,'0478 413 583'),(1854,'Bench','Maria','399  Willow Street','Bittern',6360,'0469 274 977'),(1855,'Giudici','Art','391  E. Park St.','Tallarook',3868,'0485 744 220'),(1856,'Carlson','Douglas','114  Cascade Road','Barrabool',3133,'0489 902 433'),(1857,'Griffin','Gilbert','350  Tenney Circle','Plenty',4638,'0465 838 973'),(1858,'Simpson','Jason','701  Alpine Lane','Grenfell',3042,'0473 099 171'),(1859,'Josephs','Robb','421  East 10 Street','Tumut',4617,'0409 468 979'),(1860,'Heikkonen','Terri','130  Beaufort Ln.','Adelaide Lead',5450,'0488 030 689'),(1861,'Irwin','Daniel','8  Goldsmith Street','Balwyn & North Balwyn',4785,'0429 589 749'),(1862,'Merritt','Howard','4516  Great Road','Blairgowrie',4085,'0438 844 141'),(1863,'Merchant','Mary','155  Old Lanterne Road','Tylden',6311,'0416 300 819'),(1864,'Roulet','Jermaine','6  Orchard Street','Bayles',6038,'0468 785 983'),(1865,'Pfeiffer','Nancy','1315  Baldwin Boulevard','Avonsleigh',6066,'0465 943 209'),(1866,'Karttunen','Jaime','17  West Russell Street','Maffra',6122,'0477 227 588'),(1867,'Woodruff','Fran','40  Bradford Farms','Graytown',3182,'0474 577 873'),(1868,'Trujillo','Elizabeth','119  North Cliff Avenue','Darebin',6283,'0424 772 960'),(1869,'Petree','Liam','109  Gateway Boulevard','Lower Plenty',3245,'0400 664 304'),(1870,'Parente','Charlotte','6548  Bagley Street','Yan Yean',3749,'0484 189 793'),(1871,'Pasaco','Diego','330  North Phillips Road','Lockington',4330,'0471 206 407'),(1872,'Martinez','Matthew','230  Russet Lane','Longwood',6101,'0495 538 543'),(1873,'Diaz','Theodore','287  Queue Highway','Springvale',3672,'0432 226 036'),(1874,'Cruz','Georg','214  Lexington Parkway','Box Hill North',4792,'0490 126 262'),(1875,'Ranjan','Maria','11   E. Fletcher Road','Nunawading',5044,'0497 742 688'),(1876,'Seaver','Paul','37  Gateway Rd.','Fairfield',4645,'0447 376 210'),(1877,'Kumar','Tina','56  Snow Street SE','Portsea',5212,'0476 235 763'),(1878,'Heines','Manuel','375  Founder\'s Way','Keilor',3420,'0453 388 457'),(1879,'Parker','Christina','1422  Sawyer Ave.','Millgrove',5877,'0407 536 768'),(1880,'Olsen','Anabela','701  Old Bedford Trail','North Geelong',3000,'0462 467 612'),(1881,'Petersen','Walter','11  Bagley Street','Yarragon',5758,'0480 260 753'),(1882,'Nodier','Tyler','255  Tara Lane','Mount Egerton',3371,'0432 343 296'),(1883,'Rohrs','Michael','42  Snow Street SE','Crib Point',6325,'0489 856 300'),(1884,'Tannamuri','Chandra','375  South Phillips Road','Lancaster',6010,'0441 542 210'),(1885,'Hodge','Martine','649  Edgewood Road','Macedon',4526,'0492 558 494'),(1886,'Jablonski','Simon','78  Russet Lane','Springhurst',3280,'0449 844 574'),(1887,'Rovelli','Betty','22  Warner Drive','Lang Lang',4708,'0432 077 604'),(1888,'Jenkins','Chantal','11  Tower Lane','Kingston',5464,'0448 827 709'),(1889,'Devling','Dominique','5  Marsh Road','Warrenheip',6444,'0421 909 383'),(1890,'Fonseca','Janine','28  Hartford Ave.','Bendoc',3161,'0493 012 019'),(1891,'Estes','Martín','56  Grant St.','Mount Martha',5114,'0478 002 726'),(1892,'Camino','Hanna','587  Edgewood Road','Cockatoo Island',3126,'0492 260 740'),(1893,'Tonini','Carlos','224  King Street','Altona Meadows',5807,'0495 145 417'),(1894,'Holden','Donald','33  East Monroe Avenue','Leonards Hill',6080,'0496 576 598'),(1895,'Berdahl','Pedro','37  Cascade Road','Shepparton',4008,'0478 477 990'),(1896,'Rodriguez ','Palle','278  S. Hammond St.','Ayr',4253,'0487 819 621'),(1897,'Bennett','Julie','1315  Carter Dr.','Yinnar',4134,'0418 223 177'),(1898,'Parente','Annette','17  Normandy St.','Vermont',4050,'0457 044 351'),(1899,'Bouwman','Bridgit','649  Battlebridge Lane','Tarawingee',3287,'0434 871 059'),(1900,'Rodriquez','Kurt','649  E. Park St.','Currie',4001,'0419 644 724'),(1901,'Miller','Ana','784  Warner Drive','Yellingbo',5205,'0430 886 089'),(1902,'Owens','Ken','944  Great Road','Huntingdale',4302,'0461 871 259'),(1903,'Wang','Michele','8  Cascade Road','Katamatite',4820,'0436 589 815'),(1904,'Hitachi','Melissa','915  Hazelnut Street','Glengarry',3441,'0453 652 925'),(1905,'Lincoln','Regina','214  36th Street','Launching Place',4659,'0419 540 050'),(1906,'Ottlieb','Janice','4799  Hawthorne Avenue','Settlement',5821,'0401 153 618'),(1907,'Griffin','Gretchen','70  Willow Street','Macclesfield',3742,'0485 285 427'),(1908,'Seaver','Marquez','350  Orchard Street','Clifton Springs',6479,'0435 344 045'),(1909,'Ibsen','Jose','9188  East Conway Dr.','Maddingley',5786,'0467 998 080'),(1910,'Bench','Walter','1315  Manwell St.','Saddleworth',4757,'0419 637 053'),(1911,'Rossi','Henriette','193  Normandy St.','Myers Flat',3861,'0490 402 216'),(1912,'Petersen','Kurt','28  Bradford Farms','Ringwood East',4015,'0476 631 470'),(1913,'Holz','Ronald','6  E. Park St.','Mooroopna',3980,'0420 250 805'),(1914,'Lewis','Toby','399  Orchard Street','Croydon',6262,'0450 238 716'),(1915,'Giudici','Mayumi','119  Four Mile Road','Barmah',4729,'0481 983 172'),(1916,'Romero','Michael','36 Liberty Street','Koo Wee Rup Swamp',3931,'0450 059 593'),(1917,'Goulet','Christina','350  Hawthorne Avenue','Blind Bight',4610,'0441 116 354'),(1918,'Cramer','Eduardo','2715  Gateway Rd.','Thornton',6402,'0477 364 087'),(1919,'Noz','Kuman','4516  King Street','Heidelberg West',3259,'0400 133 258'),(1920,'González','Niels','42  Queue Highway','Altona',3462,'0484 490 606'),(1921,'Piestrzeniewicz','Marissa','587  Old Bedford Trail','Laverton North',6269,'0400 878 905'),(1922,'Hajek','Matthew','230  South Phillips Road','Milawa',5051,'0458 264 258'),(1923,'Gallivan','Tina','192  Collie Ln.','Highton',4176,'0447 621 068'),(1924,'Jerentowski','Mary','944  Tara Lane','Cobram',3847,'0421 059 725'),(1925,'Latimer','Polly','15  Great Road','Bamawm & Bamawm',4834,'0474 585 263'),(1926,'Douglas','Scott','421  East 10 Street','Kensington',4113,'0459 866 154'),(1927,'Woodruff','Paula','56  Lithonia Dr.','Flinders',3567,'0420 586 316'),(1928,'Johnson','Belinda','9188  Alpine Lane','Knox',5002,'0427 157 950'),(1929,'Josephs','Tara','192  Salmon Street','Newstead',4512,'0469 231 094'),(1930,'Heikkonen','Graham','150  Templeton Dr. NE','Gannawarra',3497,'0448 336 858'),(1931,'Hajek','Wendy','11  Alpine Lane','Bowenvale',4855,'0405 585 347'),(1932,'Vileid','Alicia','375   E. Fletcher Road','St Andrews',4547,'0450 825 412'),(1933,'Latimer','Ana','400  Gateway Boulevard','Upotipotpon',6108,'0499 006 526'),(1934,'Lim','Lino','40  Lexington Parkway','Betley',5709,'0468 695 612'),(1935,'Pavarotti','Jytte','2463  Gateway Boulevard','Aramac',6094,'0495 049 211'),(1936,'Scholten','Sven','224   E. Fletcher Road','Yarra Valley',5177,'0476 264 909'),(1937,'Davenport','Martin','2324  Hidden Dr.','Sherbrooke',4925,'0485 862 732'),(1938,'Simpson','Tara','944  Beaufort Ln.','Caldermeade',3511,'0405 311 352'),(1939,'Suchecki','Jeffery','2463  Warner Drive','Jamieson',4260,'0406 894 510'),(1940,'de Castro','Marissa','109  Longfellow Rd.','Leopold',5912,'0402 605 746'),(1941,'Pedicini','Graham','230  Lithonia Dr.','Buninyong',3406,'0457 003 366'),(1942,'Beaufort','Carlos','69  West Russell Street','Fish Creek',5471,'0494 293 262'),(1943,'Scholten','Julie','400  Russet Lane','Carisbrook',4967,'0488 728 524'),(1944,'Lauzon','Millicent','50  Salmon Street','Fosterville',6395,'0413 745 981'),(1945,'Devon','Roland','28  East Conway Dr.','Meeniyan',4624,'0442 583 520'),(1946,'Frederick','Yoshi','8  Queue Highway','Toolernvale',3735,'0481 216 776'),(1947,'Noz','Petra','4799  Cascade Road','Point Nepean',5730,'0426 859 170'),(1948,'Piestrzeniewicz','Ronald','784  Davis St.','Inverleigh',3049,'0414 875 194'),(1949,'Citeaux','Donald','11  Edgewood Road','Goldsborough',5352,'0451 406 185'),(1950,'Saavedra ','Nicholas','6  Bridge Street','Morang',5898,'0483 285 481'),(1951,'Phillips','Betty','7112  Canyonside Way','Ringwood',4407,'0492 687 624'),(1952,'Luck','Joan','400  Garvey Rd.','Allendale',3483,'0491 791 271'),(1953,'Feeney','Marilyn','255  President Dr.','Yarrambat',6465,'0488 301 035'),(1954,'Henriot','Kerry','2463  Lithonia Dr.','St Leonards',5254,'0467 479 303'),(1955,'Stapleton','Chao-Jun','22  East 10 Street','Maldon',4246,'0441 997 719'),(1956,'Flake','Lars','1422  Ethan Allen Drive','St James',5093,'0486 975 962'),(1957,'Pfalzheim','Jermaine','278  Hazelnut Street','Bandiana',4673,'0483 890 203'),(1958,'Anders','Martine','13  Baldwin Boulevard','Barnawartha',5289,'0438 717 294'),(1959,'Lincoln','Frédérique','50  Davis Road','Drummond',3700,'0461 435 011'),(1960,'Mills','Connie','287  Mountain Peak Ridge','Loch',4421,'0434 028 215'),(1961,'Jones','Paul','7824  Warner Drive','Wheelers Hill',6388,'0450 450 237'),(1962,'McMillan','Giovanni','391  Baldwin Boulevard','Westgarth',6353,'0404 387 716'),(1963,'Hardy','Palle','109  Western Avenue','North Shore',5030,'0416 146 550'),(1964,'Cooper','Antonio','330  Templeton Dr. NE','Lancefield',5919,'0428 187 907'),(1965,'Batista','Hanna','713  Templeton Dr. NE','Westmeadows',3266,'0455 793 082'),(1966,'Lebihan','André','33  Manwell St.','Rockbank',3007,'0472 433 130'),(1967,'Rayworth','Jean-Guy','78  Willow Street','Whroo',3987,'0455 343 671'),(1968,'Berglund','Ian','44  West Russell Street','Wonga Park',3532,'0486 878 033'),(1969,'Blankenship','Carlos','17  Grant St.','Greater Shepparton',5443,'0429 059 033'),(1970,'Anders','Maurizio','587  Tuttle Drive','Rutherglen',4680,'0474 791 367'),(1971,'Nixon','Renate','17  Bagley Street','Melbourne Central City',4393,'0452 785 770'),(1972,'Lebihan','Nicholas','421  Garvey Rd.','McKinnon',3224,'0467 569 971'),(1973,'Viereck','Anabela','84  Marsh Road','Miepoll',3791,'0482 446 565'),(1974,'Wilson','Jean','7112  Carter Dr.','Boorhamen',4911,'0435 046 038'),(1975,'Olsen','Elio','84  Baldwin Boulevard','Dingley Village',3945,'0467 588 462'),(1976,'Berglund','Maria','4  Bradford Farms','Cheltenham',5191,'0416 990 126'),(1977,'Lim','Paul','5  Gateway Rd.','Grant',3763,'0424 837 113'),(1978,'Hamilton','John','224  Normandy St.','Daylesford',4232,'0498 468 021'),(1979,'Chang','Kim','4799  Mountain Peak Ridge','Romsey',3091,'0481 794 249'),(1980,'Müller','Serena','784  Founder\'s Way','West Melbourne',4036,'0481 056 754'),(1981,'Fletcher','Karin','214  Hidden Dr.','Glenorchy Tas',3665,'0462 830 143'),(1982,'Hammond','Jose','109  Four Mile Road','Moriac & Mt Moriac',4995,'0434 658 819'),(1983,'Hardy','Matti','1422  Tenney Circle','Kings Park',3231,'0437 833 752'),(1984,'Bertrand','Brianna','4799  Garfield Avenue','Norlane',3546,'0475 596 456'),(1985,'Yasenak','Gregory','40  Western Avenue','Noble Park',5667,'0461 421 256'),(1986,'Feuer','Wayne','4516  Davis St.','Carnarvon',6493,'0422 712 819'),(1987,'Smith','Eliane','409  E. Hampton Way','Sebastian',4743,'0454 291 287'),(1988,'Mendel','Deborah','255  Templeton Dr. NE','Bealiba',3252,'0439 336 570'),(1989,'Phillips','John','701  Great Road','Kingsville & Kingsville',4071,'0475 053 952'),(1990,'Cavanaugh','Niels','431  Four Mile Road','Eden Park',4127,'0450 200 918'),(1991,'Heines','Mayumi','44  East Monroe Avenue','Indigo',4939,'0439 556 342'),(1992,'Pipps','Petra','2324  36th Street','Bolwarrah',4974,'0417 110 915'),(1993,'Bertrand','Janete','330  Hartford Ave.','Pyalong',5016,'0438 264 479'),(1994,'Karttunen','Yoshi','40  Tyler St.','Sandy Point',4274,'0444 091 501'),(1995,'Sommer','Yoshi','5  Hartford Ave.','Rochford',5338,'0485 747 075'),(1996,'Reyes','Yoshi','350  Old Lanterne Road','Dookie',3910,'0467 183 272'),(1997,'Polonia','Barbara','3  North Cliff Avenue','Lethbridge',4022,'0481 465 898'),(1998,'Hoffman','Carine','192  Garfield St.','Ardmona',5814,'0437 033 424'),(1999,'Fresnière','John','130  Liberty Street','Baddaginnie',6290,'0417 304 302'),(2000,'Hernández','Catherine','28  Founder\'s Way','Toowoomba',4400,'0403 344 335'),(2001,'Dewey','Liu','40  North Phillips Road','Carrum',5933,'0465 987 922'),(2002,'Perrier','Howard','7112  Edgewood Road','Hoppers Crossing',3651,'0484 212 070'),(2003,'Franken','Joe','42  Tara Lane','Pascoe Vale & Pascoe',6297,'0499 156 686'),(2004,'Gutiérrez','Jennifer','431  Tuttle Drive','Welshmans Reef',5989,'0481 638 220'),(2005,'Moncada','Wendy','15  Seneca Street','Yapean',3588,'0411 987 579'),(2006,'Foley','Dora','42   E. Fletcher Road','Sydenham',3959,'0462 785 045'),(2007,'Parker','Frédérique','409  Cascade Road','Tarraville',5800,'0489 683 102'),(2008,'Petofi','Manuel','82  E. Hampton Way','Northcote',3630,'0405 316 951'),(2009,'Van Singel','Elizabeth','10  South Creek Drive','Cranbourne',4771,'0498 595 584'),(2010,'Gregory','Chandra','56  Main Street','Mount Wellington ',4043,'0401 234 567');
/*!40000 ALTER TABLE `client3782` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depot3782`
--

DROP TABLE IF EXISTS `depot3782`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depot3782` (
  `DepotID` smallint NOT NULL,
  `DepotName` varchar(16) DEFAULT NULL,
  `StreetAddress` varchar(16) DEFAULT NULL,
  `Town` varchar(16) DEFAULT NULL,
  `PhoneNo` int DEFAULT NULL,
  `EmailAddress` varchar(38) DEFAULT NULL,
  PRIMARY KEY (DepotID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depot3782`
--

LOCK TABLES `depot3782` WRITE;
/*!40000 ALTER TABLE `depot3782` DISABLE KEYS */;
INSERT INTO `depot3782` VALUES (1,'Ballarat','3 South Road','Delacombe',92148002,'ballarat@westwindcarhire.com.au'),(2,'Caroline Springs','5 High Street','Caroline Springs',92148001,'carolinesprings@westwindcarhire.com.au'),(3,'Deer Park','1 Main Road','Deer Park',92148000,'deerpark@westwindcarhire.com.au'),(4,'Horsham','5 Wawunna Road','Horsham',92148003,'horsham@westwindcarhire.com.au'),(5,'Sunshine','8 Harvester Road','Sunshine',92140004,'sunshine@westwindcarhire.com.au');
/*!40000 ALTER TABLE `depot3782` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle3782`
--

DROP TABLE IF EXISTS `vehicle3782`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle3782` (
  `RegNo` varchar(6) NOT NULL,
  `Make` varchar(10) DEFAULT NULL,
  `Model` varchar(11) DEFAULT NULL,
  `Type` varchar(12) DEFAULT NULL,
  `ProdYear` smallint DEFAULT NULL,
  `NoOfSeats` tinyint DEFAULT NULL,
  `DepotID` smallint DEFAULT NULL,
  PRIMARY KEY (RegNo),
  CONSTRAINT fk_vehicle_depot_3782
    FOREIGN KEY (DepotID)
    REFERENCES depot3782 (DepotID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle3782`
--

LOCK TABLES `vehicle3782` WRITE;
/*!40000 ALTER TABLE `vehicle3782` DISABLE KEYS */;
INSERT INTO `vehicle3782` VALUES ('WWH001','Toyota','Corolla','Hatch',2015,5,2),('WWH002','Toyota','Corolla','Hatch',2015,5,1),('WWH003','Toyota','Corolla','Sedan',2015,5,4),('WWH004','Toyota','Corolla','Sedan',2015,5,3),('WWH005','Nissan','Navara','Ute',2012,2,4),('WWH006','Volkswagen','Transporter','People Mover',2016,7,5),('WWH007','Volkswagen','Transporter','People Mover',2016,7,2),('WWH008','Volkswagen','Transporter','People Mover',2017,7,3),('WWH009','Volkswagen','Transporter','People Mover',2017,7,2),('WWH010','Toyota','Corolla','Hatch',2020,5,3),('WWH011','Mazda','CX-3','Wagon',2017,5,2),('WWH012','Mazda','CX-3','Wagon',2017,5,3),('WWH013','Mazda','CX-3','Wagon',2017,5,5),('WWH014','Mazda','CX-3','Wagon',2017,5,4),('WWH015','Mazda','CX-3','Wagon',2017,5,1),('WWH016','Mazda','CX-5','Wagon',2019,5,2),('WWH017','Mazda','CX-5','Wagon',2019,5,5),('WWH018','Hyundai','Staria Load','Van',2021,2,2),('WWH019','Hyundai','Staria Load','Van',2021,2,3),('WWH020','Hyundai','I30','Hatchback',2019,5,2),('WWH021','Hyundai','I31','Hatchback',2019,5,3),('WWH022','Hyundai','Staria','Wagon',2021,8,2),('WWH023','Hyundai','Staria','Wagon',2021,8,5),('WWH024','Subaru','Outback','SUV',2009,5,5),('WWH025','Subaru','Liberty','Sedan',2011,5,5),('WWH026','Subaru','Liberty','Sedan',2011,5,3),('WWH027','Subaru','Impreza','Hatchback',2018,5,5),('WWH028','Subaru','Impreza','Hatchback',2018,5,3),('WWH029','Subaru','Impreza','Hatchback',2018,5,4),('WWH030','Subaru','Impreza','Hatchback',2018,5,2);
/*!40000 ALTER TABLE `vehicle3782` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `staff3782`
--

DROP TABLE IF EXISTS `staff3782`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff3782` (
  `StaID` varchar(5) NOT NULL,
  `StaFullName` varchar(15) DEFAULT NULL,
  `StaMobile` varchar(12) DEFAULT NULL,
  `StaEmail` varchar(31) DEFAULT NULL,
  `DepotID` smallint DEFAULT NULL,
  PRIMARY KEY (StaID),
  CONSTRAINT fk_staff_depot
    FOREIGN KEY (DepotID)
    REFERENCES depot3782 (DepotID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff3782`
--

LOCK TABLES `staff3782` WRITE;
/*!40000 ALTER TABLE `staff3782` DISABLE KEYS */;
INSERT INTO `staff3782` VALUES ('W0001','Paul Keating','0491 570 156','pkeating@westwindcarhire.com.au',5),('W0002','Bob Hawke','0491 570 157','bhawke@westwindcarhire.com.au',2),('W0003','Malcolm Fraser','0491 570 158','mfraser@westwindcarhire.com.au',4),('W0004','Gough Whitlam','0491 570 159','gwhitlam@westwindcarhire.com.au',1),('W0005','William McMahon','0491 570 110','wmcmahon@westwindcarhire.com.au',3),('W0006','John Gorton','0491 555 156','jgorton@westwindcarhire.com.au',3),('W0007','Harold Holt','0491 555 157','hholt@westwindcarhire.com.au',1),('W0008','Ben Chifley','0491 555 158','bchifley@westwindcarhire.com.au',4),('W0009','Earle Page','0491 555 159','epage@westwindcarhire.com.au',5);
/*!40000 ALTER TABLE `staff3782` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance3782`
--

DROP TABLE IF EXISTS `maintenance3782`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance3782` (
  `RegNo` varchar(6) NOT NULL,
  `DateIn` date NOT NULL,
  `DateOut` date DEFAULT NULL,
  `JobDesc` varchar(108) DEFAULT NULL,
  `StaID` varchar(5) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (RegNo, DateIn),
  CONSTRAINT fk_maintenance_vehicle
    FOREIGN KEY (RegNo)
    REFERENCES vehicle3782 (RegNo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_maintenance_staff
    FOREIGN KEY (StaID)
    REFERENCES staff3782 (StaID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance3782`
--

LOCK TABLES `maintenance3782` WRITE;
/*!40000 ALTER TABLE `maintenance3782` DISABLE KEYS */;
INSERT INTO `maintenance3782` VALUES ('WWH001','2018-02-01','2018-02-01','Logbook service','W0005','Complete'),('WWH001','2018-11-17','2018-11-17','Logbook service. Fit new tyres x4','W0005','Complete'),('WWH001','2019-07-15','2019-07-16','Logbook service. Fit new windscreen due to large chip.','W0005','Complete'),('WWH001','2020-01-11','2020-01-12','Logbook service. Investigate slight rattle in front RH footwell.','W0006','Complete. Booked for follow up work on rattle'),('WWH001','2020-01-24','2020-01-24','Fit new glovebox strut to fix rattle','W0006','Complete'),('WWH001','2020-07-01','2020-07-02','Windscreen needs replacing.','W0006','Scheduled'),('WWH002','2020-07-03','2020-07-03','Routine rotate tyres.','W0007','Scheduled'),('WWH003','2020-06-27','2020-06-28','Routine rotate tyres.','W0008','Scheduled'),('WWH004','2020-06-28','2020-06-28','New set of tyres','W0006','Scheduled'),('WWH005','2020-06-23','2020-06-25','Full service','W0008','Scheduled'),('WWH006','2020-06-17','2020-06-17','Fit new rear view mirror to windscreen','W0006','Scheduled'),('WWH007','2020-06-13','2020-06-13','Investigate right hand sliding door sticking when fully open.','W0006','Scheduled'),('WWH008','2020-06-17','2020-06-17','Investigate rear wiper arm not working','W0006','Scheduled'),('WWH009','2020-06-20','2020-06-21','Routine service. Needs new front wipers too.','W0006','Scheduled'),('WWH010','2020-07-13','2020-07-13','First six month check. Make sure batteries are charging as they should be. Be sure to tighten chassis bolts.','W0006','Scheduled');
/*!40000 ALTER TABLE `maintenance3782` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental3782`
--

DROP TABLE IF EXISTS `rental3782`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental3782` (
  `RegNo` varchar(6) NOT NULL,
  `ClientID` smallint DEFAULT NULL,
  `DateCollection` date NOT NULL,
  `DateReturn` date DEFAULT NULL,
  PRIMARY KEY (RegNo, DateCollection),
  CONSTRAINT fk_rental_vehicle
    FOREIGN KEY (RegNo)
    REFERENCES vehicle3782 (RegNo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_rental_client
    FOREIGN KEY (ClientID)
    REFERENCES client3782 (ClientID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental3782`
--

LOCK TABLES `rental3782` WRITE;
/*!40000 ALTER TABLE `rental3782` DISABLE KEYS */;
INSERT INTO `rental3782` VALUES ('WWH001',1573,'2020-01-01','2020-01-10'),('WWH001',1569,'2020-01-24','2020-01-26'),('WWH001',1582,'2020-06-15','2020-06-20'),('WWH002',1567,'2020-06-16','2020-06-21'),('WWH002',1567,'2020-10-10','2020-10-17'),('WWH003',1592,'2020-01-30','2020-02-04'),('WWH003',1637,'2020-05-05','2020-05-08'),('WWH003',1573,'2020-05-10','2020-05-23'),('WWH003',1774,'2020-06-17','2020-06-21'),('WWH003',1899,'2021-07-05','2021-07-07'),('WWH003',1736,'2022-01-21','2022-01-23'),('WWH004',1568,'2020-05-04','2020-05-10'),('WWH004',1580,'2020-06-17','2020-06-22'),('WWH005',1994,'2020-01-02','2020-01-06'),('WWH005',1602,'2020-03-01','2020-03-10'),('WWH005',2005,'2020-03-12','2020-03-18'),('WWH005',1862,'2020-04-04','2020-04-14'),('WWH005',1602,'2020-06-03','2020-06-09'),('WWH005',1943,'2020-06-11','2020-06-14'),('WWH005',1994,'2020-06-17','2020-06-29'),('WWH005',2005,'2020-09-09','2020-09-20'),('WWH005',1573,'2020-10-09','2020-10-21'),('WWH005',1603,'2021-03-18','2021-03-19'),('WWH006',1994,'2020-08-20','2020-08-28'),('WWH006',1774,'2020-11-06','2020-11-21'),('WWH007',1580,'2020-02-02','2020-02-12'),('WWH007',1581,'2020-07-07','2020-07-14'),('WWH007',1631,'2021-04-22','2021-04-30'),('WWH008',1568,'2020-03-03','2020-03-12'),('WWH008',1974,'2021-01-02','2021-01-07'),('WWH008',1827,'2022-03-23','2022-03-30'),('WWH009',1601,'2020-05-23','2020-05-26'),('WWH009',2003,'2020-07-10','2020-07-12'),('WWH009',1961,'2020-10-12','2020-10-20'),('WWH009',1631,'2021-01-22','2021-01-23'),('WWH010',1572,'2020-02-04','2020-02-10'),('WWH010',2010,'2020-02-18','2020-02-22'),('WWH010',1869,'2020-10-05','2020-10-14'),('WWH010',1572,'2020-11-09','2020-11-13'),('WWH010',1569,'2020-12-18','2020-12-19'),('WWH010',2005,'2021-06-01','2021-06-07'),('WWH010',1704,'2021-09-10','2021-09-17'),('WWH011',1781,'2020-01-02','2020-01-07'),('WWH011',1718,'2020-11-07','2020-11-10'),('WWH012',1773,'2020-02-01','2020-02-04'),('WWH012',1807,'2020-03-10','2020-03-14'),('WWH012',1701,'2020-03-17','2020-03-19'),('WWH012',1921,'2020-07-04','2020-07-08'),('WWH012',1799,'2021-02-03','2021-02-10'),('WWH012',1703,'2021-05-17','2021-05-20'),('WWH012',1951,'2021-08-12','2021-08-15'),('WWH013',1953,'2020-07-16','2020-07-21'),('WWH014',1854,'2020-01-07','2020-01-14'),('WWH014',1709,'2020-12-14','2020-12-23'),('WWH014',1978,'2021-10-01','2021-10-09'),('WWH014',1680,'2021-12-04','2021-12-05'),('WWH015',1960,'2020-04-28','2020-04-30'),('WWH016',1758,'2020-11-15','2020-11-20'),('WWH016',1723,'2020-11-21','2020-11-26'),('WWH016',1979,'2020-12-01','2020-12-10'),('WWH016',1750,'2020-12-12','2020-12-21'),('WWH016',1805,'2022-01-16','2022-01-21'),('WWH017',1834,'2020-01-05','2020-01-11'),('WWH017',1829,'2020-02-06','2020-02-08'),('WWH017',1845,'2022-01-26','2022-02-01'),('WWH018',1726,'2020-05-06','2020-05-13'),('WWH018',1849,'2020-05-16','2020-05-19'),('WWH018',1944,'2022-02-11','2022-02-12'),('WWH019',1730,'2020-01-19','2020-01-26'),('WWH019',1956,'2020-10-10','2020-10-13'),('WWH019',1898,'2021-07-13','2021-07-20'),('WWH020',1856,'2020-03-20','2020-03-26'),('WWH021',1595,'2020-10-31','2020-11-02'),('WWH021',1888,'2020-12-24','2020-12-30'),('WWH022',1805,'2020-06-06','2020-06-07'),('WWH022',1654,'2020-10-13','2020-10-19'),('WWH023',1735,'2020-07-17','2020-07-19'),('WWH023',1891,'2021-05-25','2021-06-03'),('WWH024',1891,'2020-04-14','2020-04-24'),('WWH024',1676,'2020-06-22','2020-06-27'),('WWH024',1916,'2020-07-01','2020-07-04'),('WWH024',1699,'2021-10-08','2021-10-17'),('WWH024',1752,'2022-01-28','2022-02-01'),('WWH024',1890,'2022-02-02','2022-02-10'),('WWH025',2010,'2021-05-31','2021-06-01'),('WWH025',1929,'2022-01-22','2022-01-24'),('WWH026',1991,'2021-02-04','2021-02-07'),('WWH026',1810,'2021-11-18','2021-11-26'),('WWH026',1643,'2022-01-16','2022-01-21'),('WWH026',1873,'2022-01-31','2022-02-09'),('WWH027',1824,'2021-11-06','2021-11-07'),('WWH030',1754,'2021-06-14','2021-06-18'),('WWH030',1762,'2021-11-03','2021-11-04');
/*!40000 ALTER TABLE `rental3782` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer3782`
--

DROP TABLE IF EXISTS `transfer3782`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer3782` (
  `DepotID` smallint NOT NULL,
  `RegNo` varchar(6) NOT NULL,
  `DateReq` date NOT NULL,
  PRIMARY KEY (DepotID, RegNo, DateReq),
  CONSTRAINT fk_transfer_vehicle
    FOREIGN KEY (RegNo)
    REFERENCES vehicle3782 (RegNo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_rental_depot
    FOREIGN KEY (DepotID)
    REFERENCES depot3782 (DepotID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer3782`
--

LOCK TABLES `transfer3782` WRITE;
/*!40000 ALTER TABLE `transfer3782` DISABLE KEYS */;
INSERT INTO `transfer3782` VALUES (1,'WWH005','2020-09-01'),(1,'WWH007','2020-07-01'),(2,'WWH010','2020-08-01'),(4,'WWH005','2020-08-01'),(4,'WWH005','2020-10-01'),(1,'WWH014','2020-08-01'),(1,'WWH025','2020-03-01'),(1,'WWH003','2020-05-01'),(1,'WWH020','2020-09-01'),(2,'WWH026','2020-05-01'),(2,'WWH020','2020-08-01'),(2,'WWH002','2020-05-01'),(3,'WWH004','2020-10-01'),(3,'WWH021','2020-12-01'),(4,'WWH002','2020-10-01'),(4,'WWH007','2020-12-01'),(4,'WWH029','2020-10-01'),(4,'WWH030','2020-01-01'),(5,'WWH021','2020-09-01');
/*!40000 ALTER TABLE `transfer3782` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2022-03-30 20:10:21
