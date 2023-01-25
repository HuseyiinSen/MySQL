use sys;
/*--------------------------------------------------------------------------------------
1) Bir firmalar tablosu olusturun icinde id,
isim ve iletisim_isim field'lari olsun. 
Id ve isim'i beraber Primary Key yapin.
---------------------------------------------------------------------------------------*/
create table firmalar
(
id int,
isim varchar(15),
iletisim_isim varchar(15),
constraint frmalar_pk primary key(id,isim)
);

drop table firmalar;

insert into firmalar values
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez');
select * from firmalar;
/* ====================================== UPDATE ========================================
Tabloda varolan herhangi bir record'a ait verinin degistirilmesi icin kullanilir.
-----Syntax-----
UPDATE table_name
SET field1=''
WHERE condition;
========================================================================================*/

update firmalar
set isim='KRM'
where id=3;
-- Iletisim ismi Veli Gul olan firmanin id'sini 4, ismini FDS olarak guncelleyiniz.
-- ------------1.yol----------------------------
update firmalar
set id=4
where iletisim_isim= 'Veli Gül';

update firmalar
set isim='fds'
where id=4;
-- ------------2.yol----------------------------
update firmalar
set isim='fds',id=4
where iletisim_isim='Veli Gul';
-- Ismi ACB olan firmanin iletisim ismini 'Osman Can' olarak guncelleyiniz.
update firmalar
set iletisim_isim='Osman Can'
where isim ='acb';
select * from firmalar;

