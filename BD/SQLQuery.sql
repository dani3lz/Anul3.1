CREATE TABLE Editura (
EdituraID int NOT NULL PRIMARY KEY,
Denumirea varchar(255) NOT NULL,
Orasul varchar(255) NOT NULL,
Tara varchar(255) NOT NULL
);

CREATE TABLE Autori (
AutorID int NOT NULL PRIMARY KEY,
Numele varchar(255) NOT NULL,
Prenumele varchar(255) NOT NULL,
Genul varchar(255) NOT NULL,
AnulNasterii int NOT NULL,
);

CREATE TABLE Carti (
BookID int NOT NULL PRIMARY KEY,
Titlu varchar(255) NOT NULL,
AutorID int NOT NULL FOREIGN KEY REFERENCES Autori(AutorID),
EdituraID int NOT NULL FOREIGN KEY REFERENCES Editura(EdituraID),
ISBN bigint NOT NULL,
Anul int NOT NULL,
Pagini int NOT NULL,
Pretul float
);


INSERT INTO Editura
VALUES 
(1,'RAO','Bucuresti','Romania'),
(2,'Corint','Bucuresti','Romania'),
(3,'TREI','Bucuresti','Romania'),
(4,'ART','Bucuresti','Romania'),
(5,'Steaua Nordului','Bucuresti','Romania'),
(6,'Mihail Sadoveanu','Bucuresti','Romania'),
(7,'Cartier','Chisinau','Moldova'),
(8,'Policadran','Chisinau','Moldova'),
(9,'Amaltea','Bucuresti','Romania'),
(10,'Bestseller','Chisinau','Moldova'),
(11,'Humanitas','Bucuresti','Romania'),
(12,'Liviu Rebreanu','Bucuresti','Romania'),
(13,'Litera','Bucuresti','Romania'),
(14,'Polirom','Bucuresti','Romania'),
(15,'Nemira','Bucuresti','Romania'),
(16,'Curtea veche','Bucuresti','Romania');


INSERT INTO Autori
VALUES
(1,'Rebreanu','Liviu','masculin',1885),
(2,'Sadoveanu','Mihail','masculin',1880),
(3,'Dostoevsky','Fiodor','masculin',1821),
(4,'Hawkins','Paula','femenin',1972),
(5,'Preda','Marin','masculin',1922),
(6,'Bulgakov','Mihail','masculin',1891),
(7,'Dabija','Nicolae','masculin',1948),
(8,'Blaga','Lucian','masculin',1895),
(9,'Kiyosaki','Robert','masculin',1947),
(10,'Clason','George','masculin',1874),
(11,'Boyne','John','masculin',1971),
(12,'Druta','Ion','masculin',1928),
(13,'Sapkowski','Andrzej','masculin',1948),
(14,'Rowling','Joanne','femenin',1928),
(15,'Brown','Dan','masculin',1964),
(16,'Slavici','Ioan','masculin',1848),
(17, 'Coleho','Paulo','masculin',1947),
(18, 'Zusak','Markus','masculin',1975);


INSERT INTO Carti
VALUES
(1,'Codul lui Da Vinci',15,1,9786066094931,2004,506,110),
(2,'Simbolul pierdut',15,1,9786067761740,2009,601,133),
(3,'Origini',15,1,9786060063759,2017,456,171),
(4,'Maestrul si Margareta',6,2,9786068723259,1967,464,154),
(5,'Fata din tren',4,3,9786067193503,2015,408,180),
(6,'Crima si pedeapsa',3,2,9786069368954,1866,590,165),
(7,'Idiotul',3,14,9789734621279,1869,696,150),
(8,'Padurea spanzuratilor',1,13,9786063367571,1922,352,70),
(9,'Baltagul',2,6,9786069335505,1930,204,108),
(10,'Frunze de dor',12,7,9789975863049,1957,260,110),
(11,'Horodiste',12,8,9789975442305,1953,233,60),
(12,'Hronicul si cantecul varstelor',8,11,9789735060404,1965,184,128),
(13,'Cel mai iubit dintre pamanteni vol.1',5,4,9786067100235,2014,378,70),
(14,'Cel mai iubit dintre pamanteni vol.2',5,4,9786067100242,2014,332,60),
(15,'Cel mai iubit dintre pamanteni vol.3',5,13,9789736755835,2004,428,50),
(16,'Tema pentru acasa',7,10,9789975334952,2020,506,211),
(17,'Tata bogat tata sarac',9,16,9786064402547,2018,232,215),
(18,'Cel mai bogat om din Babilon',10,9,9789737780027,2004,144,66),
(19,'Baiatul cu pijamale in dungi',11,1,9786067761849,2016,224,119),
(20,'Ultima dorinta. Seria Witcher. Cartea I',13,15,9786064305398,2019,296,175),
(21,'Sabia destinului. Seria Witcher. Cartea II',13,15,9786064305381,2019,352,175),
(22,'Sangele elfilor. Seria Witcher. Cartea III',13,15,9786064305800,2019,312,175),
(23,'Vremea dispretului. Seria Witcher. Cartea IV',13,15,9786064305817,2019,328,158),
(24,'Botezul focului. Seria Witcher. Cartea V',13,15,9786064304872,2019,352,175),
(25,'Turnul randunicii. Seria Witcher. Cartea VI',13,15,9786064308979,2020,400,175),
(26,'Harry Potter 1. Piatra filosofala',14,4,9786060861317,2016,260,200),
(27,'Harry Potter 2. Camera secretelor',14,4,9786060861324,2016,270,225),
(28,'Harry Potter 3. Prizonierul din Azkaban',14,4,9786060861973,2016,265,205),
(29,'Harry Potter 4. Pocalul de foc',14,4,9786060862338,2017,450,267),
(30,'Harry Potter 5. Ordinul Phoenix',14,4,9786060862161,2017,990,300),
(31,'Harry Potter 6. Printul Semisange ',14,4,9786067998436,2017,900,295),
(32,'Harry Potter 7. Talismanul mortii',14,4,9786060861331,2018,335,50),
(33,'Mara',16,5,6422600000831,2007,335,50),
(34,'Ion',1,7,9789975860253,2015,464,179),
(35,'Ciuleandra',1,12,9789731898346,2017,152,67),
(36,'Alchimistul',17,11,9786067793802,2018,224,152),
(37,'Adulter',17,11,9786067795660,2018,256,137),
(38,'Spioana',17,11,9786067790948,2016,200,109),
(39,'Unsprezece minute',17,11,9786067792607,2019,264,145),
(40,'Hotul de carti. Curaj mai presus de cuvinte',18,1,9786066096133,2011,440,154);

SELECT * FROM Carti
SELECT * FROM Autori
SELECT * FROM Editura

SELECT * FROM Carti
WHERE Len(Titlu) > 20

SELECT * FROM Autori
WHERE Numele LIKE '%a'

SELECT * FROM Editura
WHERE Tara = 'Moldova'

SELECT * FROM Autori
ORDER BY Prenumele DESC

SELECT TOP 5 * FROM Autori
WHERE AnulNasterii < 2000
ORDER BY AnulNasterii DESC

SELECT Titlu,ISBN FROM Carti
WHERE Anul BETWEEN 2015 and 2020

SELECT c.Titlu,a.Prenumele,a.Numele
FROM Carti as c
INNER JOIN Autori as a ON c.AutorID = a.AutorID

SELECT c.Titlu,a.Prenumele,a.Numele
FROM Carti as c
INNER JOIN Autori as a ON c.AutorID = a.AutorID
WHERE a.Numele = 'Brown'

SELECT c.Titlu,a.Prenumele,a.Numele,c.Pretul
FROM Carti as c
INNER JOIN Autori as a ON c.AutorID = a.AutorID
WHERE c.Pretul > 150
ORDER BY Pretul

SELECT c.Titlu,c.ISBN,e.Denumirea
FROM Carti as c
INNER JOIN Editura as e ON c.EdituraID = e.EdituraID
WHERE e.Tara = 'Moldova'
ORDER BY c.Titlu ASC

SELECT AVG(c.Pretul) as [Pretul mediu]
FROM Carti as c

BEGIN
DECLARE @nume_autor varchar(50)
SET @nume_autor = 'Preda'
	IF(EXISTS (SELECT * FROM Autori
				WHERE Numele=@nume_autor))
		PRINT @nume_autor + ' - exista autor cu asa nume.'
	ELSE
		PRINT @nume_autor + ' - nu exista autor cu asa nume.'
END

BEGIN
DECLARE @count INT
SET @count = (
				SELECT COUNT(Titlu) FROM Carti
				GROUP BY Pretul
				HAVING Pretul = 180 )
				PRINT @count
END

USE BookShop
GO
CREATE VIEW view1 AS
SELECT Numele, Prenumele FROM Autori
WHERE Genul = 'femenin'
GO
SELECT * FROM view1

USE BookShop
GO
CREATE VIEW view2 AS
SELECT * FROM Editura
WHERE Tara = 'Romania'
GO
SELECT * FROM view2

USE BookShop
GO
CREATE or ALTER PROCEDURE SelectAllBooks @Title varchar(100)
AS
SELECT * FROM Carti WHERE Titlu = @Title
GO
EXEC SelectAllBooks @Title = 'Origini';

USE BookShop
GO
CREATE or ALTER PROCEDURE SelectAllBooks_2 @Price INT
AS
SELECT * FROM Carti WHERE Pretul > @Price
GO
EXEC SelectAllBooks_2 200;

USE BookShop
GO
CREATE or ALTER FUNCTION PriceToEur (@Price INT) RETURNS FLOAT
BEGIN RETURN @Price/20 END
GO
DECLARE @Pret INT
SET @Pret = (
SELECT TOP 1 Pretul FROM Carti
WHERE Anul > 2000)
PRINT convert(VARCHAR, dbo.PriceToEur(@Pret)) + ' EUR'

USE BookShop
GO
CREATE or ALTER FUNCTION DiffPrice (@Price_1 INT, @Price_2 INT) RETURNS INT
BEGIN RETURN @Price_1 -  @Price_2 END
GO
DECLARE @P1 INT
DECLARE @P2 INT
SET @P1 = (
SELECT Pretul FROM Carti
WHERE Titlu = 'Origini')
SET @P2 = (
SELECT Pretul FROM Carti
WHERE Titlu = 'Alchimistul')
PRINT convert(VARCHAR, dbo.DiffPrice(@P1, @P2)) + ' LEI'

USE BookShop
GO
DROP TRIGGER IF EXISTS alter_restriction ON DATABASE
GO
CREATE TRIGGER alter_restriction ON DATABASE
AFTER ALTER_TABLE
AS
IF MONTH(getdate())>8
BEGIN
	RAISERROR('Modificarea dupa luna August este interzisa',1,1)
	ROLLBACK TRANSACTION
END
GO
ALTER TABLE Autori
ADD hobby varchar(255);

USE BookShop
GO
DROP TRIGGER IF EXISTS asigurarea_trigger_dml
GO
CREATE TRIGGER asigurarea_trigger_dml ON Carti
FOR INSERT,UPDATE,DELETE
AS
BEGIN
	IF DATEPART(WEEKDAY, getdate())=4
	BEGIN
		PRINT 'Operatiile DML pentru tabelul Carti sunt restrictionate Miercuria'
		ROLLBACK TRANSACTION
	END
END
GO
UPDATE Carti
SET Pretul = 999
WHERE Pretul = 180

USE BookShop
GO
BACKUP DATABASE BookShop
TO DISK = 'D:\UTM\BookShop_Backup_complete.bkp'
	WITH FORMAT,
		NAME='BookShop = Full DB backup'

USE master
GO
ALTER DATABASE BookShop SET single_user WITH ROLLBACK immediate
GO
DROP DATABASE BookShop
GO
RESTORE DATABASE BookShop
FROM DISK = 'D:\UTM\BookShop_Backup_complete.bkp'
	WITH REPLACE, NORECOVERY
GO
RESTORE DATABASE BookShop
FROM DISK = 'D:\UTM\BookShop_Backup_complete.bkp'
	WITH RECOVERY

