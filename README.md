Yangın Veritabanı Projesi
Bu depo, Türkiye'deki yangın olaylarının verilerini depolamak, yönetmek ve analiz etmek için tasarlanmış basit bir SQL veritabanı projesidir. Proje, yangınların konumları, nedenleri, etkilenen alanları ve zaman içindeki eğilimleri gibi bilgileri içerir.

Proje Amacı
Bu projenin temel amacı, SQL veritabanı tasarımı, veri girişi ve karmaşık sorgulama becerilerini pratik ederek pekiştirmektir. Gerçek dünya senaryosuna dayalı yangın verileri üzerinden çeşitli analizler yaparak veri analizi yeteneklerini geliştirmek hedeflenmiştir.

Kullanılan Teknolojiler
Veritabanı Yönetim Sistemi: Microsoft SQL Server

Dil: SQL (Structured Query Language)

Veritabanı Şeması
Proje aşağıdaki ana tabloları içermektedir:

Locations: Yangınların meydana geldiği coğrafi konum bilgilerini (şehir, ilçe, mahalle) depolar.

Causes: Yangınların olası nedenlerini (ihmal, kundaklama, yıldırım vb.) standartlaştırılmış bir şekilde tutar.

Fires: Her bir yangın olayının temel detaylarını (başlangıç/bitiş zamanı, durumu, etkilenen alan, arazi tipi, ilk rapor kaynağı ve detaylı açıklaması) ve Locations ile Causes tablolarıyla ilişkilerini içerir.



Kurulum ve Veri Girişi
Veritabanını Oluşturma:

fire_db_schema.sql dosyasını kullanarak fire_incidents_db adında veritabanını ve tablolarını oluşturun.

Microsoft SQL Server Management Studio (SSMS) veya tercih ettiğiniz SQL Server aracında bu dosyayı çalıştırın.

Örnek Veri Girişi:

fire_db_sample_data.sql dosyasını kullanarak oluşturulan tablolara örnek verileri ekleyin.

Bu dosyayı çalıştırmadan önce, mevcut verileri temizlemek için dosya içindeki TRUNCATE TABLE Fires; gibi komutları kullanmanız önerilir.

Sorgulama ve Analiz
fire_db_queries_analysis.sql dosyası, veritabanındaki veriler üzerinde çeşitli analizler yapmanızı sağlayacak örnek SQL sorgularını içerir. Bu sorgularla şunları yapabilirsiniz:

Tüm yangın olaylarını detaylarıyla listeleme.

Halen aktif olan yangınları belirleme.

Belirli bir şehirdeki yangınları filtreleme.

En büyük etkilenen alanlara sahip yangınları sıralama.

Yangın nedenlerine göre yangın sayısı ve etkilenen alanları analiz etme.

Tarih aralıklarına göre yangınları inceleme.

En çok yangın çıkan şehirleri ve ayları bulma.

Ortalama etkilenen alan büyüklüklerini hesaplama.

Bilinmeyen nedenli yangınları listeleme.

Yangın durumlarına göre sayım ve toplam etkilenen alanları görme.

Yangın sürelerini hesaplama.

İlk rapor kaynaklarına göre yangın yoğunluğunu analiz etme.

!(https://placehold.co/600x300/E0E0E0/333333?text=%C3%96rnek+Sorgu+Sonu%C3%A7lar%C4%B1)
(Yukarıdaki görsel, örnek sorgu sonuçlarının bir ekran görüntüsü yer tutucusudur. Kendi sorgularınızın sonuçlarını buraya ekleyebilirsiniz.)

Katkıda Bulunma
Projeyi geliştirmek için fikirlerin veya katkıların varsa, lütfen bir "issue" açmaktan veya bir "pull request" göndermekten çekinme.

Lisans
Bu proje açık kaynaklıdır ve MIT Lisansı altında yayınlanmıştır.

.
Ülkemizde yaşanan orman yangınlarında hayatını kaybeden vatandaşlarımıza Allah'tan rahmet, yaralılara acil şifalar diliyoruz. Yangınlardan etkilenen tüm bölgelerimize ve vatandaşlarımıza geçmiş olsun dileklerimizi iletiyor, yaraların en kısa sürede sarılmasını temenni ediyoruz.

.

Yangınlara Karşı Duyarlı Olalım!
Ormanlarımız geleceğimizdir!

Ateş Yakmayın: Ormanlık alanlarda veya yakınında ateş yakmaktan kaçının. Piknik ve mangal gibi etkinlikler için belirlenmiş güvenli alanları tercih edin.

Sigara İzmaritlerini Söndürün: Araç kullanırken veya doğada bulunurken sigara izmaritlerini asla yere atmayın, tamamen söndürdüğünüzden emin olun.

Anız Yakmayın: Tarım arazilerinde anız yakmak, orman yangınlarına neden olan başlıca faktörlerden biridir. Anız yakma alışkanlığından vazgeçin.

Cam ve Plastik Atıkları Toplayın: Doğada bırakılan cam ve plastik atıklar, güneş ışınlarını odaklayarak yangınlara yol açabilir. Çöplerinizi mutlaka yanınızda geri götürün.

Şüpheli Durumları Bildirin: Ormanlık alanda duman veya yangın belirtisi gördüğünüzde hemen 112 Acil Çağrı Merkezi'ni arayın.

Unutmayın, küçük bir kıvılcım büyük felaketlere yol açabilir. Geleceğimiz için ormanlarımızı koruyalım!
