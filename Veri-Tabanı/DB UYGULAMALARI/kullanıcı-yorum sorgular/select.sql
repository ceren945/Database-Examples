/*kullan�c�lar�n ad�,soyad�,epostas�n� listeleme*/
SELECT ad,soyad,eposta FROM kullanicilar

/*yaz�lar�n t�m bilgilerini yay�mlanma tarihine g�re yeniden eskiye do�ru listeleyen SQL kodu*/
SELECT * FROM yazilar WHERE yayimlama_tarihi>='12.01.2021' AND yayimlama_tarihi<='12.15.2021' ORDER BY yayimlama_tarihi DESC

/*Ba�l�k, i�erik ve �zet b�l�m�nde �yemek� veya �tatl�� ge�en t�m yaz�lar� listeleyen SQL kodu*/
SELECT baslik,icerik,ozet FROM yazilar WHERE baslik like '%yemek%' or baslik like '%tatl�%' 
SELECT baslik,icerik,ozet FROM yazilar WHERE icerik like '%yemek%' or icerik like '%tatl�%' 
SELECT baslik,icerik,ozet FROM yazilar WHERE ozet like '%yemek%' or ozet like '%tatl�%'