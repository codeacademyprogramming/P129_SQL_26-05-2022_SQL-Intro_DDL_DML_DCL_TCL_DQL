--DDL (DATA DEFINITION LANGUAGE)
--1. Database Yaranma Sorgusu
CREATE DATABASE P129SQLFIRSTDB

--2. Database Silinme Sorgusu
DROP DATABASE P129SQLFIRSTDB

--3. Yaradilmis Databasin Isdifade olunmasi sorgusu
USE P129SQLFIRSTDB

--4. TAbel Yaradilma Sorgusu
CREATE TABLE Students
(
	Id INT, 
	Name nvarchar(25), 
	SurName nvarchar(25), 
	Age TINYINT
)

--5. Tabel Silinme Sorgusu
DROP TABLE Students

--6. Tabel-a Column Elave Etmek Sorgusu
ALTER TABLE Students 
ADD Email nvarchar(150)

--7. Tabel-dan Column Silme Sorgusu
ALTER TABLE Students 
DROP COLUMN Email

--8. Tabel Column Uzerinde Deyisiklik Etmek Sorgus
ALTER TABLE Students 
ALTER COLUMN Email nvarchar(150)

-- DML(DATA MANIPULATION LANGUAGE)
--1. Tabel-a Data Elave Olunmasi Sorgusu
INSERT INTO Students Values(1,N'Həmid',N'Məmmədov',32,'hamid@code.edu.az')

INSERT INTO Students
Values
(2,'Perviz','Alizade',19,'perviz@code.edu.az'),
(3,'Alyasar','Cabbarli',19,'alayasar@code.edu.az')

INSERT INTO Students(Id, Name, SurName, Email, Age)
Values
(4, 'Orxan','Mammadov','orxan@code.edu.az',23)

INSERT INTO Students(Id, Name, SurName, Email, Age)
Values
(5, 'Aliskandar','Qurbanov','aliskandar@code.edu.az',24),
(6, 'Elcin','Ismayilov','elcin@code.edu.az',26),
(7, 'Cavid','Alizade','cavid@code.edu.az',21)

--2. Tabel-da Data Uzerinde Deyisiklik Etmek Sorgusu
UPDATE Students Set Name='Hamid', Surname='Mammedov' Where Id=1

UPDATE Students Set Age = 20 Where Age=19

--3. Tabel-da Data Silinme Sorgusu
DELETE Students Where Id=1

--DQL(DATA QUERY LANGUAGE)
SELECT * FROM Students

SELECT Name AS 'Ad', SurName AS 'Soyad' FROM Students

SELECT Name 'Ad', SurName 'Soyad' FROM Students

SELECT Name [Ad], SurName [Soyad] FROM Students

SELECT Name AS [Ad], SurName AS [Soyad] FROM Students

SELECT Name 'Ad', SurName 'Soyad' FROM Students Where Age < 19

SELECT Name 'Ad', SurName 'Soyad' FROM Students Where Age >= 23

SELECT Name 'Ad', SurName 'Soyad' FROM Students Where Age > 23 AND Name = N'Həmid'

SELECT Name 'Ad', SurName 'Soyad' FROM Students Where Age = 23 OR Age=35

SELECT Name 'Ad', SurName 'Soyad' FROM Students Where Age>=19 AND Age <=25

SELECT Name 'Ad', SurName 'Soyad' FROM Students Where Age BETWEEN 19 AND 25

SELECT Name 'Ad', SurName 'Soyad' FROM Students Where Age = 23 OR Age = 24 OR Age=26

SELECT Name 'Ad', SurName 'Soyad' FROM Students Where Age IN(23,24,26)

SELECT Id, (Name+' '+SurName) 'FullName',Age FROM Students

SELECT MIN(AGE) FROM Students

SELECT MAX(AGE) FROM Students

SELECT AVG(AGE) FROM Students

Select LOWER(Name) From Students

Select UPPER(Name) From Students

Select UPPER(Name+' '+SurName) From Students

SELECT LEN(Name) From Students

SELECT * FROM Students Where LEN(Name) > 5

SELECT CHARINDEX('@',Email) FROM Students 

SELECT * FROM Students Where Email Like '%az'

SELECT * FROM Students Where CHARINDEX('a',Email) > 2

SELECT SUBSTRING(Email,5,5) FROM Students

SELECT SUBSTRING(Email,CHARINDEX('@',Email)+1,LEN(Email)) FROM Students

SELECT AVG(Age) FROM Students

SELECT * FROM Students Where Age > (SELECT AVG(Age) 's' FROM Students) 

SELECT COUNT(*) FROM Students

SELECT Sum(Age) FROM Students

Select REPLACE(Name,'a','129') FROM Students