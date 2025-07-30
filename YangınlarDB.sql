
---- bölgeler
--create table locations(
--location_id int primary key identity(1,1) ,
--city varchar(40) NOT NULL ,
--district varchar(40) ,
--neighborhood VARCHAR(100) ) 

---- Yangýnlarýn olasý nedenleri
--CREATE TABLE Causes ( 
--cause_id int primary key identity(1,1) ,
--cause_name VARCHAR(100) NOT NULL UNIQUE, --Nedenin adý : örneðin kundaklama 
--description TEXT -- detaylý yazý 
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
--('Bursa', 'Orhaneli ve Harmancýk', 'Yakuplar Mahallesi'), 
--('Bursa', 'Merkez Osmangazi ilçesi', 'Tophane yamaçlarýnda'), 
--('Karabük', 'Safranbolu', 'Ovacýk ve kent merkezine yakýn ormanlýk alanlar'), 
--('Kütahya', 'Dumlupýnar', 'Çamlýbel Mahallesi'), 
--('Bursa', 'Orhaneli ve Harmancýk', 'Yakuplar Mahallesi'), 
--('Ýzmir', 'Bornova','Gökdere Mahalles'), 
--('Bilecik', 'Osmaneli', 'Büyükelmalý köyü ile Kavaklý köyü arasý'), 
--('Çankýrý', 'Yapraklý', 'Sarýkaya Mahallesi'), 
--('Manisa', 'Akhisar', 'Seðirdim Mahallesi'), 
--('Manisa', 'Yunusemre', 'Kayapýnar Mahallesi'), 
--('Manisa', 'Gördes', 'Tarým arazisi'), 
--('Uþak', 'Sivaslý', 'Ketenlik köyü') 


--select * from locations 
--select * from causes 
--select * from fires 
----INSERT INTO Causes (cause_name, description) VALUES
----('Ýhmal', 'Ýnsan kaynaklý, dikkatsizlik sonucu oluþan yangýnlar (örneðin, sigara izmariti, anýz yakma).'),
----('Kundaklama', 'Kasýtlý olarak çýkarýlan yangýnlar.'),
----('Elektrik Arýzasý', 'Elektrik tesisatýndaki sorunlardan kaynaklanan yangýnlar.'),
----('Yýldýrým', 'Doðal yollarla, yýldýrým düþmesi sonucu çýkan yangýnlar.'),
----('Bilinmeyen', 'Nedeninin belirlenemediði yangýnlar.'),
----('Doðal Nedenler', 'Diðer doðal olaylar (örneðin, kendiliðinden tutuþma).');

--INSERT INTO Fires (location_id, cause_id, start_time, end_time, status, affected_area_acres) VALUES
--(1,2,'26 Temmuz',  '-' , 'Kontrol altýna alýnmaya çalýþýlýyor ve soðutma çalýþmalarý devam ediyor.', '-' ) ,
--(2,1,'29 Temmuz',  '-' , '29 Temmuz da Bursanýn merkez Osmangazi ilçesi Tophane yamaçlarýnda bir yangýn çýktý. Bu yangýnýn havai fiþek kaynaklý olduðu belirlendi.Yayýlma: Havai fiþekten çýkan kývýlcýmlar hýzla kuru otlara ve aðaçlara yayýlarak yangýnýn büyümesine neden oldu..', '-' ) ,
--(3,5,'25 Temmuz',  '-' , 'Yangýn, rüzgarýn da etkisiyle kýsa sürede yayýldý. Ýlk çýktýðý Safranboludan sonra Ovacýk ilçesine ve hatta kent merkezine yakýn ormanlýk alanlara kadar sýçradý. Bu durum, yangýnýn oldukça geniþ bir coðrafyayý tehdit ettiðini gösteriyor.', '-' ) ,
--(4,5,'28 Temmuz',  '29 temmuz' , 'Ekiplerin hýzlý ve etkili müdahalesi sayesinde yangýn büyümeden kontrol altýna alýndý. Erken müdahale, daha büyük bir felaketin önüne geçmiþ oldu.', '-' ) ,
--(6,1,'27 Haziran',  '3 Temmuz' , 'Yangýn, çatý tadilatý sýrasýnda çýkan kývýlcýmlardan kaynaklanmýþtýr.Rüzgarýn etkisiyle Buca ilçesi sýnýrlarýna kadar yayýldýðý ve geniþ bir alanda etkili olduðu biliniyor..', '26 bin 260 hektarlýk (yaklaþýk 262.6 km²)' ) ,
--(7,5,'29 Temmuz',  '30 Temmuz' , 'Yangýna hem Çankýrý hem de Kastamonudan gelen Orman Genel Müdürlüðü (OGM), AFAD ve itfaiye ekipleri karadan ve havadan yoðun bir þekilde müdahale etti. Yaklaþýk 10 saat süren mücadelenin ardýndan alevler kontrol altýna alýndý. OGM de yangýnýn kontrol altýna alýndýðýný sosyal medya hesabýndan duyurdu.', '-' ) ,
--(8,5,'27 Temmuz',  '27 Temmuz' , ' Manisa Valiliðinin "Yangýn Riskini Azaltma Eylem Planý" sayesinde, mahallelerde verilen eðitimler, hýzlý iletiþim aðý ve eðitimli yerel gönüllülerin erken müdahalesi, yangýnýn büyümeden söndürülmesinde etkili oldu. Seðirdim Mahallesi tedbir amaçlý tahliye edilmiþti.', '-' ) ,
--(9,1,'1 Temmuz',  '1 temmuz' , 'Yangýnýn nedeni oldukça þaþýrtýcýydý. Tarým arazisinin bitiþiðindeki bað evinde oturan Özc** ta***ýn, üzerinde kene gördüðü yastýðý yakýp bahçeye atmasý sonucu yangýn çýktý..Yangýna iliþkin soruþturmada Özcan Taþhan, yangýn çýkarmak suçundan tutuklandý. Yangýn ekiplerin 2 saatlik müdahalesiyle kontrol altýna alýndý.', '120 dönüm (12 hektar)' ) ,
--(10,2,'29 Temmuz',  '-' , 'Gördes ilçesi Salur Mahallesinde Y.K, Y.A.S. ve H.K. adlý 3 kiþinin tarlada çay demlemek için ateþ yakmalarý sonucu yangýn çýktý.ekiplerin havadan ve karadan yaptýðý müdahale ile yaklaþýk 4,5 saatte kontrol altýna alýndý. Ateþ yakan 3 þüpheli jandarma ekiplerince gözaltýna alýndý.', '3 hektarlýk orman arazisi' ) ,
--(11,5,'26 Temmuz',  '27 Temmuz' , 'Yangýna havadan ve karadan ekipler yoðun bir þekilde müdahale etti. Tarým ve Orman Bakaný Ýbrahim Yumaklý da yangýnýn tamamen kontrol altýna alýndýðýný resmi olarak teyit etti.', '-' ) 


-- Analizler -- 

--Tüm Yangýn Olaylarýný Detaylarýyla Listeleme
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

--Belirli Bir Þehirdeki (Örn: Bursa) Yangýnlarý ve Nedenlerini Listeleme
---- Bursa þehrindeki yangýnlarý, konum ve neden bilgileriyle birlikte getirir.
--select locations.city,locations.district, fires.fire_id,fires.start_time,fires.status,Causes.cause_name from fires
--inner join locations on fires.location_id =locations.location_id
--inner join Causes on fires.cause_id = Causes.cause_id 
--where locations.city = 'bursa'



























