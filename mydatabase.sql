CREATE DATABASE hepsiburada;
ALTER DATABASE hepsiburada CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE Categories CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE Products CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

SET NAMES 'utf8mb4';

CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE Colors (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_no VARCHAR(50) NOT NULL,
    description varchar(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    color_id INT,
    location VARCHAR(255) NOT NULL,
    star decimal(3,2) not null,
    name varchar(50) not null,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (color_id) REFERENCES Colors(color_id)
);

drop table products;

create table slider(
    slider_id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL
);

INSERT INTO slider (image_url) VALUES 
	('https://i.hizliresim.com/kqye40x.png'),
	('https://i.hizliresim.com/s7xnwvt.png'),
	('https://i.hizliresim.com/cbsipyz.png'),
	('https://i.hizliresim.com/frvnv32.png'),
	('https://i.hizliresim.com/1x8uszy.png'),
	('https://i.hizliresim.com/s4wr7p9.png'),
	('https://i.hizliresim.com/t6ggljc.png'),
	('https://i.hizliresim.com/dnelyf2.png'),
	('https://i.hizliresim.com/nc6qaeb.png'),
	('https://i.hizliresim.com/lusi1c1.png');
    

  -- Insert category entries
INSERT INTO Categories (category_name) VALUES
('Elektronik'),
('Moda'),
('Ev, Yaşam, Kırtasiye, Ofis'),
('Oto, Bahçe, Yapı Market'),
('Anne, Bebek, Oyuncak'),
('Spor, Outdoor'),
('Kozmetik, Kişisel Bakım'),
('Süpermarket, Pet Shop'),
('Kitap, Müzik, Film, Hobi');

SELECT * FROM Categories;
SELECT * FROM products;


-- Insert color entries
INSERT INTO Colors (color_name) VALUES ('default'), ('mavi'), ('beyaz'), ('siyah');

INSERT INTO Products (product_no, description, price, image_url, category_id, color_id, location, star, name)
VALUES 
    ('123456', 'Ayı Konsepti Turuncu Çocuk Su Sebili', 599.00, 'https://productimages.hepsiburada.net/s/236/550/110000219518587.jpg/format:webp', 5, 1, 'Izmir', 4.5, 'Funtik'),
    ('654321', 'Çocuk Genç Odası Çalışma Koltuğu Döner Tekerli Sandalye Kumaş Döşeme Yarış Arabası Resimli', 1250.00, 'https://productimages.hepsiburada.net/s/31/550/10349662044210.jpg/format:webp', 3, 1, 'Istanbul', 4.2, 'Depolife'),
    ('987654', 'Çocuk Kol Saati LED Dokunmatik Su Geçirmez Spiderman Örümcek Adam', 129.90, 'https://productimages.hepsiburada.net/s/264/550/110000248517574.jpg/format:webp', 2, 4, 'Ankara', 3.8, 'Zavira'),
    ('987654321', 'Creator 3-in-1 31124 Süper Robot (159 Parça)', 299.00, 'https://productimages.hepsiburada.net/s/184/1100/110000149956627.jpg/format:webp', 5, 1, 'Istanbul', 4.0, 'LEGO'),
    ('654321987', 'Değersiz Bir Hayat - Hanya Yanagihara', 332.64, 'https://productimages.hepsiburada.net/s/18/550/9802819043378.jpg/format:webp', 9, 1, 'Ankara', 4.7, 'Doğan Kitap'),
    ('135792468', 'Converse Run Star Motion Cx Platform Summer Utility', 2399.20, 'https://productimages.hepsiburada.net/s/484/600-800/110000529825055.jpg/format:webp', 2, 3, 'Istanbul', 3.9, 'Converse'),
    ('246813579', '3D Creality Ender-3 S1 3D Printer', 9900.00, 'https://productimages.hepsiburada.net/s/177/550/110000141682207.jpg/format:webp', 1, 4, 'Izmir', 4.1, 'Creality'),
    ('369258147', '58V 6Ah Li-ion Çift Akülü EXPRESS SERİ Darbeli Turbo Şarjlı Matkap 27 Parça Uç Setli', 699.00, 'https://productimages.hepsiburada.net/s/132/1100/110000083261004.jpg/format:webp', 4, 1, 'Izmir', 4.8, 'Sturdy'),
    ('987654321', 'Selpak El ve Yüz Havlusu x 5 Paket 400 Yaprak', 308.99, 'https://productimages.hepsiburada.net/s/506/550/110000560770879.jpg/format:webp', 8, 1, 'Ankara', 4.3, 'Selpak'),
    ('123456789', 'Periferik Pou Bebek Peluş Oyuncak - Bej', 218.79, 'https://productimages.hepsiburada.net/s/459/1100/110000495649065.jpg/format:webp', 5, 1, 'Istanbul', 4.6, 'Afar'),
    ('111111', 'Kedi Tırmalama ve Oyun Evi Xxl 96cm Gri', 43104.03, 'https://productimages.hepsiburada.net/s/777/550/110000659532960.jpg/format:webp', 8, 1, 'Izmir', 3.4, 'Trixie'),
    ('222222', 'Lenovo LOQ AMD Ryzen 7 7840HS 16GB 1TB SSD RTX4060 Freedos 15.6" IPS Taşınabilir Bilgisayar 82XT0048TX', 39999.00, 'https://productimages.hepsiburada.net/s/435/1100/110000468471448.jpg/format:webp', 1, 1, 'Istanbul', 4.6, 'Lenovo'),
    ('333333', 'HP 240 GB S650 2.5" SSD Harddisk', 853.99, 'https://productimages.hepsiburada.net/s/424/1100/110000454573064.jpg/format:webp', 1, 1, 'Istanbul', 4.6, 'HP'),
    ('444444', 'Kedi Şekilli Kraft Karton Kutu - Hediyelik Mama Kutusu - 50 Adet', 239.00, 'https://productimages.hepsiburada.net/s/493/1100/110000543444685.jpg/format:webp', 3, 1, 'Ankara', 3.9, 'Tasarım Şeker'),
    ('555555', 'Kingston 8GB 2400MHz DDR4 Ram KVR24S17S8/8', 779.00, 'https://productimages.hepsiburada.net/s/26/550/10150292193330.jpg/format:webp', 1, 1, 'Istanbul', 4.7, 'Kingston'),
    ('666666', 'Kinder Joy Harry Potter Limited Edition 3X20GR', 499.00, 'https://productimages.hepsiburada.net/s/446/550/110000480300464.jpg/format:webp', 8, 1, 'Izmir', 4.4, 'Kinder Joy'),
    ('777777', 'Tekerlekli Yürüteç Rolatör Hasta Yatağı Yürüteci 130 kg Taşır', 2891.00, 'https://productimages.hepsiburada.net/s/25/550/10106142916658.jpg/format:webp', 7, 1, 'Ankara', 4.8, 'Poylin'),
    ('888888', 'Günlük Unisex Spor Ayakkabı', 880.00, 'https://productimages.hepsiburada.net/s/471/1000/110000512509829.jpg', 2, 4, 'Ankara', 4.1, 'Letoon'),
    ('999999', 'Philips EP5547/90 5500 Serisi Tam Otomatik Espresso Makinesi', 21399.00, 'https://productimages.hepsiburada.net/s/777/550/110000665679725.jpg/format:webp', 3, 1, 'Istanbul', 4.6, 'Philips'),
	('101010', 'Osram 9W Led Uzaktan Kumandalı Ampul Sarı-Beyaz Işık 806lm', 159.00, 'https://productimages.hepsiburada.net/s/168/550/110000130551217.jpg/format:webp', 4, 1, 'Izmir', 4.6, 'Osram'),
    ('202020', 'Easy Pump Akülü Hava Kompresörü', 2365.73, 'https://productimages.hepsiburada.net/s/111/550/110000058697582.jpg/format:webp', 4, 1, 'Izmir', 4.8, 'Bosch'),
    ('303030', 'Tamirci Plastik Takım Çantası 13 Metal Kilit', 260.99, 'https://productimages.hepsiburada.net/s/777/550/110000630564719.jpg/format:webp', 4, 1, 'Istanbul', 3.4, 'Mano'),
    ('404040', 'Konfor Jasmine 1452 Krem Bej Modern Dokuma Halı', 449.90, 'https://productimages.hepsiburada.net/s/408/1100/110000436650122.jpg/format:webp', 3, 1, 'Izmir', 4.2, 'Konfor'),
    ('505050', 'NewLaker Unisex Oversize Siyah Los Angeles Nakış İşleme Bomber Kolej Ceket', 689.00, 'https://productimages.hepsiburada.net/s/519/1100/110000575363600.jpg/format:webp', 2, 4, 'Izmir', 4.0, 'NewLaker'),
    ('606060', 'İnanılmaz Dijital Şirk Peluş, Yeni İnanılmaz Dijital Şirk Pomni/jax Peluş Oyuncak, Yumuşak Dolması Anime Peluş Bebek, Karikatür Hayvan Figürü Yastık Çocuklar İçin Hediyeler Hayranı', 421.74, 'https://productimages.hepsiburada.net/s/531/550/110000589385576.jpg/format:webp', 5, 1, 'Istanbul', 4.1, 'Runjing'),
    ('707070', 'Intex 57558 Flamingo Binici - Tutmacli Ada', 1112.00, 'https://productimages.hepsiburada.net/s/26/550/10163899760690.jpg/format:webp', 6, 1, 'Izmir', 4.6, 'Intex'),
    ('808080', 'Dört Tekeri Işıklı Çocuk Paten Dizlik Dirseklik Setli, Tasima Cantali', 1299.90, 'https://productimages.hepsiburada.net/s/414/1100/110000443924943.jpg/format:webp', 6, 1, 'Izmir', 4.5, 'Toyaş'),
    ('909090', 'Urevo 2.5hp 2in1 Katlanabilir Koşu Ve Yürüyüş Bandı Siyah 0-12KM (Distributor Garantili)', 9990.00, 'https://productimages.hepsiburada.net/s/473/1100/110000516208427.jpg/format:webp', 6, 1, 'Istanbul', 3.7, 'Urevo'),
    ('101010', 'Kamp Alani-ı Duş Giyinme WC Çadırı Fotografçı Prova Kabini Otomatik Kurulum', 1519.05, 'https://productimages.hepsiburada.net/s/777/1100/110000659873537.jpg/format:webp', 6, 1, 'Ankara', 2.4, 'Smayling'),
    ('111111', 'İnsanlığımı Yitirirken - Osamu Dazai', 82.41, 'https://productimages.hepsiburada.net/s/206/1100/110000182742597.jpg/format:webp', 9, 1, 'Istanbul', 4.8, 'İthaki Yayınları'),
    ('121212', 'Zeki Muren - Batmayan Gunes (Plak)', 394.80, 'https://productimages.hepsiburada.net/s/43/1100/10769771986994.jpg/format:webp', 9, 1, 'Ankara', 4.8, 'Zeki Müren'),
    ('131313', 'Ahm Gammarus Kaplumbağa Yemi 1000 ml', 831.25, 'https://productimages.hepsiburada.net/s/74/550/110000016403242.jpg/format:webp', 8, 1, 'Ankara', 4.3, 'Ahm'),
    ('141414', 'Hangi Moodsun Türkçe Eğlenceli Parti Oyunu What Do You Ne Modsun Kutu Mood Meme ve Kart Oyunları', 359.95, 'https://productimages.hepsiburada.net/s/485/1100/110000530843613.jpg/format:webp', 9, 1, 'Izmir', 4.4, 'Zodiac Store'),
    ('151515', 'NIVEA Q10 Sıkılaştırıcı Vücut Losyonu Pump 400 ml x2 Adet(10 Günde Sıkılaşmış ve Esnek Cilt, Avantajlı Boy)', 569.90, 'https://productimages.hepsiburada.net/s/393/1100/110000417857127.jpg/format:webp', 7, 1, 'Ankara', 4.8, 'NIVEA'),
    ('161616', 'HC Care Complex Bitkisel Saç Bakım Kompleksi Büyük Boy - 200 ml', 789.00, 'https://productimages.hepsiburada.net/s/342/550/110000349486867.jpg/format:webp', 7, 1, 'Istanbul', 4.7, 'HC Care'),
    ('171717', 'Gillette Venus Comfort Glide Breeze Tıraş Makinesi + 2 Adet Yedek Başlık', 216.90, 'https://productimages.hepsiburada.net/s/777/550/110000659741295.jpg/format:webp', 7, 1, 'Izmir', 4.7, 'Gillette Venus');