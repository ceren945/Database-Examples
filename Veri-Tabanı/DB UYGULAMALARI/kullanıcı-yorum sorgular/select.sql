/*kullanýcýlarýn adý,soyadý,epostasýný listeleme*/
SELECT ad,soyad,eposta FROM kullanicilar

/*yazýlarýn tüm bilgilerini yayýmlanma tarihine göre yeniden eskiye doðru listeleyen SQL kodu*/
SELECT * FROM yazilar WHERE yayimlama_tarihi>='12.01.2021' AND yayimlama_tarihi<='12.15.2021' ORDER BY yayimlama_tarihi DESC

/*Baþlýk, içerik ve özet bölümünde ‘yemek’ veya ‘tatlý’ geçen tüm yazýlarý listeleyen SQL kodu*/
SELECT baslik,icerik,ozet FROM yazilar WHERE baslik like '%yemek%' or baslik like '%tatlý%' 
SELECT baslik,icerik,ozet FROM yazilar WHERE icerik like '%yemek%' or icerik like '%tatlý%' 
SELECT baslik,icerik,ozet FROM yazilar WHERE ozet like '%yemek%' or ozet like '%tatlý%'