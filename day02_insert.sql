/*========================================
               VERI GIRISI
========================================
-- INSERT INTO + tablo adi + VALUES + (std_id CHAR(4),std_name VARCHAR(25),std_age int)
-- Degerleri girerken dikkat edilmesi gereken Tabloyu 
-- olustururken degerleri atadigimiz veri cinsinden olmasi
-- String ifadeleri tek tirnak icinde yaziyoruz.
-- Date data tipi de String gibi tek tirnak icine yazilir,
-- ayrica MySQL 'in default tarih formati YYYY-MM-DD seklindedir.
******************************************************
-> Bir field'a kaydedilecek verileri UNIQUE yapmak icin 
 table olustururken field isminin yanina UNIQUE yaziyoruz.
-> Bir field'a kaydedilecek verilerde null olmasin istiyorsak 
table olustururken field isminin yanina NOT NULL yaziyoruz.
********************************************************
-- Fen Lisesi ogrencilerinin okul no , isim , derece, adres ve
-- son degisiklik tarihi field'lari olan tablosunu hazirlayalim.
-- okul no field'i UNIQUE olmali, isim field'i da bos birakilmasin.
*/
use sys;
create table fen_lisesi(
okul_no int unique,
isim varchar (25) not null,
derece double,
adres varchar(50),
degisiklik_tarihi date
);
select *from fen_lisesi;
insert into  fen_lisesi values (101,'Huseyin Sen',4.5,'Ankara','2023-01-20');
select * from fen_lisesi;
insert into fen_lisesi values (102,'Hasan Sen',4.30,'Corum','2023-01-15');
insert into fen_lisesi values (103,'Mehmet Erden',3.9,'Izmir','2023-01-15');
insert into fen_lisesi values (104,'Sinan Bey',4.07,'Istanbul','2023-01-19');
insert into fen_lisesi values (105,'Esra Turker',4.90,'Ankara','2023-01-18');
insert into fen_lisesi values (106,'Esra Turker',null,null,null);
insert into fen_lisesi values (null,'Esra Turker',null,null,null);
insert into fen_lisesi(isim,adres) values ('Abdullah Ak','Antep');
insert into fen_lisesi(okul_no,isim,adres) values (109,'yücel Bey','Antep');
select * from fen_lisesi;
/*-- UNIQUE olarak belirledigimiz bir field'a istedigimiz kadar NULL deger kaydedebiliriz
-- ancak data tipi String ise hiclik ifadesini sadece 1 kere kaydeder,
-- diger kayitlarda duplicate hatasi verir.
 ----------------------------------------------
Q1 : okul_no int, isim , adres, derece fieldlari olan 
anadolu lisesi table olusturun. okul_no CHAR ve UNIQUE, 
isim NOT NULL olacak
------------------------------------------------- */
create table Anadolu_lisesi(
okul_no char(4) UNIQUE,
isim varchar (25) not null,
adres varchar(10),
derece double
);
drop table Anadolu_lisesi;
select * from  Anadolu_lisesi;
insert into Anadolu_lisesi values('1001','Ayşe Nuriye','Istanbul',4.7);
insert into Anadolu_lisesi values('1002','Zafer Bey','Ankara',4.6);
insert into Anadolu_lisesi values('1003','Furkan Veli İnal','Istanbul',3.9);
insert into Anadolu_lisesi values('1004','Humeyra Uysal','Izmir',4.8);
insert into Anadolu_lisesi values('1005','Mehmet Harun','Istanbul',3.8);
insert into Anadolu_lisesi values('1006','Mehmet Harun','Istanbul',3.8);
insert into Anadolu_lisesi values('1007','Mehmet Harun','Istanbul',3.8);
insert into Anadolu_lisesi values('','Mehmet Harun','Istanbul',3.8);
insert into Anadolu_lisesi values(null,'Mehmet Harun','Istanbul',3.8);
insert into Anadolu_lisesi values(null,'','Istanbul',3.8);
insert into Anadolu_lisesi (isim,adres)values('Berrin','Ankara');
select * from Anadolu_lisesi;




