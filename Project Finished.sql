
Create DATABASE Real_Estate_DB10

create table HouseType (
	HouseTypeID int not null identity(1,1) primary key ,
	TypeName varchar(50) not null,
	unique (TypeName)
	)

create table Customers (
	CustomerID int not null identity(1,1) Primary Key ,
	Name varchar(50) not null ,
	Email varchar(50) null ,
	PhoneNum int not null,
 	Owner bit not null ,
	unique (PhoneNum)
	)

create table City (
	CityID int not null identity(1,1) primary key ,
	CityName varchar(50) not null
	)

create table House (
	HouseID int not null Identity(1,1) primary key ,
	HouseTypeID int not null foreign key (HouseTypeID) references HouseType(HouseTypeID),
	CustomerID int null foreign key (CustomerID) references Customers(CustomerID),
	Address varchar(50) not null,
	Neighborhood varchar(50) null,
	CityID int not null foreign key (CityID) references City(CityID),
	Owned bit not null,
	SqrFt int null,
	)




Create table SalesMan (
	SalesManID int not null identity(1,1) Primary key ,
	Name varchar(50) not null ,
	BirthDate date not null ,
	Email varchar(50) null ,
	PhoneNum int not null ,
	unique(PhoneNum)
	)


Create table HouseOwners (
	CustomerID int not null foreign key (CustomerID) references Customers(CustomerID),
	HouseID int not null foreign key (HouseID) references House(HouseID),
	)


Create Table Sale (
	SaleID int not null identity(1,1) Primary key ,
	SalesManID int not null foreign key (SalesManID) references SalesMan(SalesManID) ,
	HouseID int not null foreign key (HouseID) references House(HouseID) ,
	SellerID int null foreign key (SellerID) references Customers(CustomerID),
	BuyerID int null foreign key (BuyerID) references Customers(CustomerID),
	Askedprice int not null,
	SalePrice int not null ,
	SaleDate date not null 
	)



create table SmanExpertise (
	SalesManID int not null foreign key (SalesManID) references SalesMan(SalesManID) ,
	HouseTypeID int not null foreign key (HouseTypeID) references HouseType(HouseTypeID)
	)



--here the table creation has ended and starteed the values adding section

insert into HouseType (TypeName)
Values
('Apartment'),
('House'),
('Villa'),
('Condo'),
('Townhouse'),
('Studio'),
('Loft'),
('Duplex'),
('Triplex'),
('Quadplex'),
('Penthouse'),
('Cottage'),
('Cabin'),
('Mansion'),
('Estate')


--------------


insert into Customers(Name,Email,PhoneNum,Owner)
values
('Daniel Cohen','daniel.cohen@gmail.com','0507956321',1),
('Noam Levy','noam.levy@gmail.com','0524683091',1),
('Omer David','omer.david@gmail.com','0541802543',0),
('Ben Goldstein','ben.goldstein@outlook.com','0537365219',1),
('Amit Berger','amit.berger@gmail.com','0509284170',0),
('Itai Katz','itai.katz@gmail.com','0525163985',1),
('Eitan Schwartz','eitan.schwartz@outlook.com','0543082517',1),
('Lior Friedman','lior.friedman@gmail.com','0538326904',1),
('Aviv Mizrahi','aviv.mizrahi@gmail.com','0506094731',1),
('Yael Peretz',' yael.peretz@outlook.com','0522783156',0),
('Shira Ben-David','shira.ben-david@gmail.com','0544702948',1),
('Yossi Cohen','yossi.cohen@gmail.com','0539267325',1),
('Tamar Mizrahi','tamar.mizrahi@outlook.com','0508195602',1),
('Ran Berger','ran.berger@gmail.com','0523864017',1),
('Ido Katz','ido.katz@gmail.com','0545803459',1),
('Bob Macadoo','Bob.Mac@gmail.com','0547803459',0),
('Maria Hill','Marry.h@gmail.com','052783459',0)
------------------------

insert into city (CityName)
values
('Ramat Gan'),
('Haifa'),
('Jerusalem'),
('Tel Aviv'),
('Hulon'),
('Petah-Tikva'),
('Modi''in'),
('Giv''atayim'),
('Be''ar-sheva')


insert into House (HouseTypeID, CustomerID, Address, CityID, Neighborhood, Owned, SqrFt)
values
(1,1, 'Ha''atzmaut Street 123',1, 'Kfar Azar',  1, 1000),
(3,null ,'Rabin 19',2,  'Neve Sha''anan', 0, 90),
(2,2, 'Ben Yehuda Street 78', 3, 'Mamila', 1, 60),
(4,null ,'Allenby Street 113', 4,'Tel Aviv City Center',  0, 200),
(5,4, 'Dizengoff Street 1213', 4,'Neve Tzedek',  1, 100),
(7, null,'Yarkon Street 1415', 4,'Ramat Aviv',  0, 1100),
(6, 6,'Hagibor 19',  5,'Tel Giborim', 1, 130),
(8,null, 'Nahum 17', 6,'Kiryat Arye',  0, 300),
(10,7, 'Hatirtza 1', 7,'Macabim-Reut', 1, 800),
(9,null, 'Bar-Chohva Street 23',  4,'Ramat Gan', 0, 100),
(11,8, 'Rochah',  3,'Shikun Aliya', 1, 220),
(12,9, 'Tamar 59',  3,'Biet-Nekofa', 1, 1500),
(14,11, 'Allenby Street 282', 4, 'Tel Aviv City Center', 1, 80),
(13,null ,'Hamishav 31',  8,'Sheinkin', 0, 150),
(15,12, 'Yarkon Street 33',  4,'Ramat Aviv', 1, 110),
(2,null, 'Bar Ilan Street 35', 3,'Baka',  0, 160),
(4,13,'King George Street 3637', 3,'Downtown Jerusalem',  1, 100),
(7,null ,'Yaffa Road 39',4, 'Jaffa',  0, 200),
(14,14, 'Ha''atzmaut Street 1', 1,'Kfar Azar',  1, 120),
(13,15 ,'Haifa Road 4243', 9, 'Neve Sha''anan', 1, 70)


---------------------------------

insert into SalesMan (Name,BirthDate,Email,PhoneNum)
Values
('Alon Cohen','2002-5-12','alon.cohen@gmail.com','0507956321'),
('Anat David','1989-12-8','anat.david@outlook.com','0524683091'),
('Avi Berger','1995-3-22','avi.berger@gmail.com','0541802543'),
('Ayala Katz','1990-11-10','ayala.katz@gmail.com','0537365219'),
('Bar Katz','1997-7-14','bar.katz@outlook.com','0509284170'),
('Ben Schwartz','1992-9-18','ben.schwartz@gmail.com','0525163985'),
('Orly Goldstein','1999-1-20','orly.goldstein@gmail.com','0543082517'),
('Hadas Levi','1994-4-24','hadas.levi@outlook.com','0538326904'),
('Batsheva David','2000-6-28','batsheva.david@gmail.com','0506094731'),
('Amihai Shama','1985-7-31','amihai.shama@gmail.com','0522783156'),
('Gary Groover','1991-8-3','gary.groover@outlook.com','0544702948'),
('Dan Tombler','1998-9-5','dan.tombler@gmail.com','0539267325'),
('Ron Hasharon','1993-10-7','ron.hasharon@gmail.com','0508195602'),
('Mika Tika','1986-11-9','mika.tika@outlook.com','0523864017'),
('Roi Baqu','1996-12-11','roi.baqu@gmail.com','0545803459')

-------------------------------------


insert into HouseOwners (CustomerID, HouseID)
select  c.CustomerID, HouseID
from house h 
inner join Customers c on h.CustomerID = c.CustomerID

------------------------------

insert into Sale ([SalesManID], [HouseID], SellerID, BuyerID, [SalePrice], Askedprice, [SaleDate])
values 
(10,2,15,2,300000,200000,'2023-09-18'),
(10,2,14,3,720000,720000,'2015-01-13'),
(2,3,13,2,2300000,2800000,'2007-11-11'),
(14,5,12,5,300000,370000,'2010-02-28'),
(6,7,11,7,4500000,4100000,'2015-10-25'),
(11,9,10,8,310000,370000,'2020-07-22'),
(15,11,9,8,9000000,9500000,'2013-11-19'),
(3,12,8,9,2000000,1900000,'2016-02-06'),
(7,13,7,10,1000000,3000000,'2023-01-24'),
(5,15,6,12,2000000,3000000,'2008-06-06'),
(9,17,5,13,800000,850000,'2022-11-22'),
(13,19,4,14,1000000,960000,'2016-10-27'),
(4,20,3,15,500000,580000,'2023-03-18'),
(2,15,2,8,1500000,1630000,'2023-04-18'),
(8,17,1,13,9000000,11000000,'2023-04-18')

----------------------------------------------------

insert into SmanExpertise (SalesManID, HouseTypeID)
values
(1, 2),
(2, 5),
(2, 9),
(3, 6),
(3, 8),
(4, 7),
(4, 1),
(5, 3),
(5, 6),
(6, 8),
(7, 4),
(7, 7),
(8, 9),
(9, 6),
(10, 3),
(11, 8),
(12, 4),
(13, 7),
(14, 1),
(15, 2),
(15, 5)


select *
from SalesMan

--here the values adding has ended and started the queries answers section

*/
--א. חשב את רווחי החברה מכל התיווכים שנעשו השנה לפי סוג הבית. רווח מחושב ע"י ההפרש
--בין מחיר המכירה של החברה ללקוח לבין המחיר אותו ביקש הלקוח שמוכר את ביתו. יש
--להציג לכל סוג בית (לדוגמא: דירה בבנין, פנטהאוז וכדומה) את סה"כ הרווחים השנה.


select ht.TypeName, sum(s.askedprice - s.saleprice) TotalEarned
from Sale s
inner join House h on s.HouseID = h.HouseID
inner join HouseType ht on h.HouseTypeID=ht.HouseTypeID
where s.SaleDate >= '2023-01-01'
group by TypeName
order by TotalEarned desc

-------

--ב. הצג לקוחות אשר מכרו באמצעות שירותי החברה וקנו בית אחר במחיר הגבוה ממחיר המכירה

select c.name, SellOwner.SaleID, SellOwner.SalePrice, Buyer.BuyingPrice
from

(select SaleID, SellerID, SalePrice
	from Sale) as SellOwner,
(
select [BuyerID],SalePrice as 'BuyingPrice'
	from sale)as Buyer, 
	Customers c
where SellOwner.SellerID = Buyer.BuyerID
and c.CustomerID = SellOwner.SellerID
and buyer.BuyingPrice > SellOwner.SalePrice


--ג. מהי השכונה היוקרתית ביותר? הצגו את שם השכונה ושם העיר אשר ממוצע מחירי הבתים
--שנמכרו בה הכי יקרים.


select Neighborhood , c.CityName, avg(SalePrice) as AverageSalePrice
from Sale s
inner join House h on s.HouseID = h.HouseID
inner join city c on h.CityID = c.CityID
group by Neighborhood, c.CityName
order by AverageSalePrice desc


--הצג את העובד המצטיין לכל שנה. עובד מצטיין הינו עובד שסך הרווחים ממכירותיו הכי
--גבוהה באותה שנה


SELECT year(SaleDate) as year, SalesManID, sum(SalePrice - Askedprice) as TotalRevenue
from Sale
group by year(SaleDate), SalesManID
order by TotalRevenue desc


--הציעו בית חדש ומרווח יותר ללקוח שרכש בית באמצעות שירותי החברה לפני שנתיים או
--יותר באותה עיר שבה גר. )מרווח יותר משמעו מספר חדרים גדול יותר או שטח גדול יותר(
--שימו לב כי הבית המוצע חייב להיות בית למכירה ברגע זה ואינו בית שכבר נמכר.


select h.HouseID, h.address, h.Neighborhood, h.CityID, h.SqrFt
from House h
inner join Sale s on h.HouseID = s.HouseID
inner join Customers c on s.BuyerID = c.CustomerID
inner join City on h.CityID = city.CityID
where s.SaleDate < dateadd(year, -2, getdate())
and h.CityID = City.CityID
and h.Owned = 0
and h.SqrFt > (
    select h2.SqrFt
    from House h2
    where h2.HouseID = s.HouseID
  )

 