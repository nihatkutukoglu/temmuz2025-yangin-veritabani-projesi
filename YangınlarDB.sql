
---- b�lgeler
--create table locations(
--location_id int primary key identity(1,1) ,
--city varchar(40) NOT NULL ,
--district varchar(40) ,
--neighborhood VARCHAR(100) ) 

---- Yang�nlar�n olas� nedenleri
--CREATE TABLE Causes ( 
--cause_id int primary key identity(1,1) ,
--cause_name VARCHAR(100) NOT NULL UNIQUE, --Nedenin ad� : �rne�in kundaklama 
--description TEXT -- detayl� yaz� 
--) 

--create table fires (
--fire_id int primary key identity(1,1) ,
--location_id int not null, 
--cause_id int not null, 
--start_time DATETIME ,
--end_time datetime , 
--status VARCHAR(50) NOT NULL DEFAULT 'Active' ,
--affected_area_acres DECIMAL(10, 2),
--terrain_type VARCHAR(100),
--FOREIGN KEY (location_id) REFERENCES locations(location_id) ,
--FOREIGN KEY (cause_id) REFERENCES Causes(cause_id) ) 


--insert into locations (city , district , neighborhood) values 
--('Bursa', 'Orhaneli ve Harmanc�k', 'Yakuplar Mahallesi'), 
--('Bursa', 'Merkez Osmangazi il�esi', 'Tophane yama�lar�nda'), 
--('Karab�k', 'Safranbolu', 'Ovac�k ve kent merkezine yak�n ormanl�k alanlar'), 
--('K�tahya', 'Dumlup�nar', '�aml�bel Mahallesi'), 
--('Bursa', 'Orhaneli ve Harmanc�k', 'Yakuplar Mahallesi'), 
--('�zmir', 'Bornova','G�kdere Mahalles'), 
--('Bilecik', 'Osmaneli', 'B�y�kelmal� k�y� ile Kavakl� k�y� aras�'), 
--('�ank�r�', 'Yaprakl�', 'Sar�kaya Mahallesi'), 
--('Manisa', 'Akhisar', 'Se�irdim Mahallesi'), 
--('Manisa', 'Yunusemre', 'Kayap�nar Mahallesi'), 
--('Manisa', 'G�rdes', 'Tar�m arazisi'), 
--('U�ak', 'Sivasl�', 'Ketenlik k�y�') 


--select * from locations 
--select * from causes 
--select * from fires 
----INSERT INTO Causes (cause_name, description) VALUES
----('�hmal', '�nsan kaynakl�, dikkatsizlik sonucu olu�an yang�nlar (�rne�in, sigara izmariti, an�z yakma).'),
----('Kundaklama', 'Kas�tl� olarak ��kar�lan yang�nlar.'),
----('Elektrik Ar�zas�', 'Elektrik tesisat�ndaki sorunlardan kaynaklanan yang�nlar.'),
----('Y�ld�r�m', 'Do�al yollarla, y�ld�r�m d��mesi sonucu ��kan yang�nlar.'),
----('Bilinmeyen', 'Nedeninin belirlenemedi�i yang�nlar.'),
----('Do�al Nedenler', 'Di�er do�al olaylar (�rne�in, kendili�inden tutu�ma).');

--INSERT INTO Fires (location_id, cause_id, start_time, end_time, status, affected_area_acres) VALUES
--(1,2,'26 Temmuz',  '-' , 'Kontrol alt�na al�nmaya �al���l�yor ve so�utma �al��malar� devam ediyor.', '-' ) ,
--(2,1,'29 Temmuz',  '-' , '29 Temmuz da Bursan�n merkez Osmangazi il�esi Tophane yama�lar�nda bir yang�n ��kt�. Bu yang�n�n havai fi�ek kaynakl� oldu�u belirlendi.Yay�lma: Havai fi�ekten ��kan k�v�lc�mlar h�zla kuru otlara ve a�a�lara yay�larak yang�n�n b�y�mesine neden oldu..', '-' ) ,
--(3,5,'25 Temmuz',  '-' , 'Yang�n, r�zgar�n da etkisiyle k�sa s�rede yay�ld�. �lk ��kt��� Safranboludan sonra Ovac�k il�esine ve hatta kent merkezine yak�n ormanl�k alanlara kadar s��rad�. Bu durum, yang�n�n olduk�a geni� bir co�rafyay� tehdit etti�ini g�steriyor.', '-' ) ,
--(4,5,'28 Temmuz',  '29 temmuz' , 'Ekiplerin h�zl� ve etkili m�dahalesi sayesinde yang�n b�y�meden kontrol alt�na al�nd�. Erken m�dahale, daha b�y�k bir felaketin �n�ne ge�mi� oldu.', '-' ) ,
--(6,1,'27 Haziran',  '3 Temmuz' , 'Yang�n, �at� tadilat� s�ras�nda ��kan k�v�lc�mlardan kaynaklanm��t�r.R�zgar�n etkisiyle Buca il�esi s�n�rlar�na kadar yay�ld��� ve geni� bir alanda etkili oldu�u biliniyor..', '26 bin 260 hektarl�k (yakla��k 262.6 km�)' ) ,
--(7,5,'29 Temmuz',  '30 Temmuz' , 'Yang�na hem �ank�r� hem de Kastamonudan gelen Orman Genel M�d�rl��� (OGM), AFAD ve itfaiye ekipleri karadan ve havadan yo�un bir �ekilde m�dahale etti. Yakla��k 10 saat s�ren m�cadelenin ard�ndan alevler kontrol alt�na al�nd�. OGM de yang�n�n kontrol alt�na al�nd���n� sosyal medya hesab�ndan duyurdu.', '-' ) ,
--(8,5,'27 Temmuz',  '27 Temmuz' , ' Manisa Valili�inin "Yang�n Riskini Azaltma Eylem Plan�" sayesinde, mahallelerde verilen e�itimler, h�zl� ileti�im a�� ve e�itimli yerel g�n�ll�lerin erken m�dahalesi, yang�n�n b�y�meden s�nd�r�lmesinde etkili oldu. Se�irdim Mahallesi tedbir ama�l� tahliye edilmi�ti.', '-' ) ,
--(9,1,'1 Temmuz',  '1 temmuz' , 'Yang�n�n nedeni olduk�a �a��rt�c�yd�. Tar�m arazisinin biti�i�indeki ba� evinde oturan �zc** ta***�n, �zerinde kene g�rd��� yast��� yak�p bah�eye atmas� sonucu yang�n ��kt�..Yang�na ili�kin soru�turmada �zcan Ta�han, yang�n ��karmak su�undan tutukland�. Yang�n ekiplerin 2 saatlik m�dahalesiyle kontrol alt�na al�nd�.', '120 d�n�m (12 hektar)' ) ,
--(10,2,'29 Temmuz',  '-' , 'G�rdes il�esi Salur Mahallesinde Y.K, Y.A.S. ve H.K. adl� 3 ki�inin tarlada �ay demlemek i�in ate� yakmalar� sonucu yang�n ��kt�.ekiplerin havadan ve karadan yapt��� m�dahale ile yakla��k 4,5 saatte kontrol alt�na al�nd�. Ate� yakan 3 ��pheli jandarma ekiplerince g�zalt�na al�nd�.', '3 hektarl�k orman arazisi' ) ,
--(11,5,'26 Temmuz',  '27 Temmuz' , 'Yang�na havadan ve karadan ekipler yo�un bir �ekilde m�dahale etti. Tar�m ve Orman Bakan� �brahim Yumakl� da yang�n�n tamamen kontrol alt�na al�nd���n� resmi olarak teyit etti.', '-' ) 


-- Analizler -- 

--T�m Yang�n Olaylar�n� Detaylar�yla Listeleme
--select 
--locations.city,
--locations.district,
--locations.neighborhood,
--Causes.cause_name,
--Fires.start_time,
--Fires.end_time,
--Fires.status,
--Fires.affected_area_acres

--from fires 
--inner join Causes on fires.cause_id= Causes.cause_id
--inner join locations on fires.location_id = locations.location_id
--order by fires.start_time

--Belirli Bir �ehirdeki (�rn: Bursa) Yang�nlar� ve Nedenlerini Listeleme
---- Bursa �ehrindeki yang�nlar�, konum ve neden bilgileriyle birlikte getirir.
--select locations.city,locations.district, fires.fire_id,fires.start_time,fires.status,Causes.cause_name from fires
--inner join locations on fires.location_id =locations.location_id
--inner join Causes on fires.cause_id = Causes.cause_id 
--where locations.city = 'bursa'



























