use sys;
create table is_yeri(
üst_kat char(4),
daire_adi varchar(25),
daire_no char(5),
adres varchar(102)
);
select * from is_yeri;

create table bilgi
as
select daire_adi, üst_kat, adres
from is_yeri;

drop table bilgi;

select * from bilgi
