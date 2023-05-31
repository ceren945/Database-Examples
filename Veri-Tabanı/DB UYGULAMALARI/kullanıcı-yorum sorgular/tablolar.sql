CREATE DATABASE Gezi_Blog
CREATE TABLE kullanicilar
(
kullanici_id int primary key not null,
ad varchar(30) not null,
soyad varchar(30) not null,
eposta varchar(50),
sifre varchar(10) ,
biyografi varchar(max),
fotograf image
)
CREATE TABLE yazilar
(
yazi_id int primary key not null,
baslik varchar(30) not null,
ozet varchar(max),
icerik varchar(50),
olusturma_tarihi date,
guncelleme_tarihi date,
yayimlama_tarihi date,
kul_id int FOREIGN KEY REFERENCES kullanicilar(kullanici_id)
)
CREATE TABLE roller
(
kul_rol_id int primary key not null,
rol_adi varchar(15) not null
)
CREATE TABLE kategori
(
kat_id int primary key not null,
kat_adi varchar(15)
)
CREATE TABLE etiket
(
etiket_id int primary key not null,
anahtar_kelime varchar(15)
)
CREATE TABLE mesajlasma 
(
m_id int primary key not null,
baslik varchar(15),
icerik varchar(15),
okunma_tarihi date,
gonderme_tarihi date,
gonderici_id int FOREIGN KEY REFERENCES kullanicilar(kullanici_id) not null,
alici_id int FOREIGN KEY REFERENCES kullanicilar(kullanici_id) not null
)
CREATE TABLE puanlama
(
puan_id int primary key not null,
puan int,
tarih date,
yazi_id int FOREIGN KEY REFERENCES yazilar(yazi_id) not null,
kul_id int FOREIGN KEY REFERENCES kullanicilar(kullanici_id) not null,
)
CREATE TABLE yorum
(
yorum_id int primary key not null,
yorum varchar(50),
yorum_tarihi date,
yazi_id int FOREIGN KEY REFERENCES yazilar(yazi_id) not null,
kul_id int FOREIGN KEY REFERENCES kullanicilar(kullanici_id) not null
)
CREATE TABLE kullanici_rol
(
kul_rol_id int primary key not null,
kul_id int FOREIGN KEY REFERENCES kullanicilar(kullanici_id) not null,
rol_id int FOREIGN KEY REFERENCES roller(kul_rol_id) not null
)
CREATE TABLE kategori_yazi
(
kat_yaz_id int primary key not null,
yazi_id int FOREIGN KEY REFERENCES yazilar(yazi_id) not null,
kat_id int FOREIGN KEY REFERENCES kategori(kat_id) not null
)
CREATE TABLE etiket_yazi
(
eti_yazi_id int primary key not null,
yazi_id int FOREIGN KEY REFERENCES yazilar(yazi_id) not null,
etiket_id int FOREIGN KEY REFERENCES etiket(etiket_id) not null
)