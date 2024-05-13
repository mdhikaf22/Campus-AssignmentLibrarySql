CREATE TABLE Users(
    id_user CHAR(5) PRIMARY KEY,
    namaUser VARCHAR(30),
    usia VARCHAR (3),
    JenisBukuYangDiminati VARCHAR(30)
);
CREATE TABLE Login(
	id_login CHAR(5)PRIMARY KEY,
	id_user CHAR(5),
	username VARCHAR(10),
	PASSWORD VARCHAR(10),
	CONSTRAINT FK_id_user FOREIGN KEY(id_user) REFERENCES Users(id_user)
);
CREATE TABLE genre(
    id_genre CHAR(5) PRIMARY KEY,
    nama_genre VARCHAR(30)
);
CREATE TABLE Buku(
    id_buku CHAR(5) PRIMARY KEY,
    id_genre CHAR(5),
    judul_buku VARCHAR(30),
    penulis VARCHAR(30),
    tahunTerbit INT(4),
    jumlah_halaman INT(4),
    akumulasiRatingBuku FLOAT(3),
    Komentar VARCHAR(30),
    Harga INT(10),
    kategori VARCHAR(30),
    CONSTRAINT FK_id_genre FOREIGN KEY(id_genre) REFERENCES genre(id_genre)    
);

CREATE TABLE Pencatatan(
   id_pencatan CHAR(5)PRIMARY KEY,
    id_user CHAR(5),
    id_buku CHAR(5),
    halamanTerakhir INT(4),
    chapterTerakhir INT(4),
	 CONSTRAINT FK_iduser FOREIGN KEY(id_user) REFERENCES Users(id_user), 
    CONSTRAINT FK_id_buku FOREIGN KEY(id_buku) REFERENCES Buku(id_buku)
);

INSERT INTO users VALUES
/* id_user,namaUser,Usia,JenisBukuyang diminati*/ 
('US001','Althaf','30','fiksi'),
('US002','Mahardhika','29','nonfiksi'),
('US003','Yusuf','20','fiksi'),
('US004','doni','40','nonfiksi'),
('US005','fatah','56','nonfiksi'),
('US006','udin','49','fiksi'),
('US007','idin','49','fiksi'),
('US008','asep','28','nonfiksi'),
('US009','abah','69','nonfiksi'),
('US010','elek','50','fiksi'), 
('US011','brian','30','fiksi'),
('US012','ujang','19','fiksi'),
('US013','Rai','11','fiksi'),
('US014','emak','69','nonfiksi'),
('US015','rama','34','fiksi');

/*id_login,id_user,username,pasword8*/

INSERT INTO login VALUES
('altf1','US001','Althaf','althaf123'),
('dhik1','US002','mahardhika','mdhika123'),
('ucup1','US003','yusuf','ucup123'),
('doni1','US004','DoniMaxwin','doni123'),
('fatah','US005','FatahManis','fatah123'),
('udin1','US006','udinjbr','udinn111'),
('idin1','US007','idinjrb','idinn222'),
('asep1','US008','AsepKomar','omarudin'),
('abh21','US009','Abahh','abahanteng'),
('elek1','US010','elekmadol','elexya12'),
('brian','US011','Sari','briansari'),
('ujang','US012','ujangrembo','ujang123'),
('rai11','US013','Rai11','rairaka1'),
('emak1','US014','emak212','wirosbleng'),
('rama','US015','ramadhan','berkah123');



INSERT INTO genre VALUES
('GID01','Cerita Rakyat'),
('GID02','Sains'),
('GID03','Action'),
('GID04','fiksi ilmiah'),
('GID05','petualangan'),
('GID06','Action'),
('GID07','sejarah'),
('GID08','humor'),
('GID09','horor'),
('GID10','western'),
('GID11','thrillers'),
('GID12','sastra'),
('GID13','fantasi'),
('GID14','misteri'),
('GID15','klasik')
;
/*id_buku CHAR(5) PRIMARY KEY,
    id_genre CHAR(5),judul_buku VARCHAR(30),penulis VARCHAR(30),tahunTerbit INT(4),jumlah_halaman INT(4),akumulasiRatingBuku FLOAT(3),Komentar VARCHAR(30),Harga INT(10),kategori VARCHAR(30),*/
INSERT INTO Buku VALUES 
('BID01','GID01','MALINKUNDANG','Rini Kurniasih','2012','128','4','jangan jadi orang durhaka','10000','fiksi'),
('BID02','GID02','ensiklopedia burung', 'rani yulianty','1994','54','4','best ensiklopedia ever','18000','nonfiksi'),
('BID03','GID03','Negri Para Bedebah', 'tere liye','2012','194','4','bagus ceritanya','14000','fiksi'),
('BID04','GID04','The Time Machine','Helbert George','1895','84','4','seru','13000','fiksi'),
('BID05','GID05','Harry Potter', 'J.K Rowling','1997','336','5','best book ever','28000','fiksi'),
('BID06','GID06','Naruto', 'Masashi Kishimoto','1999','194','4','kebanyakan flash back','16000','fiksi'),
('BID07','GID07','Jas Merah',' wirianto sumartono','2018','262','4','mengenal sejarah nih','12000','nonfiksi'),
('BID08','GID08','marmut merah jambu', 'raditya dika','2016','222','4','romance komedi ngakak','21000','fiksi'),
('BID09','GID09','Danur', 'Risa saraswati','2011','216','4','bagus ceritanya','14000','fiksi'),
('BID10','GID10','Bad News cowboy','maisey yates','2016','444','4','heehaah ','17000','fiksi'),
('BID11','GID11','the silent patient', 'alex michaelides','2019','398','5','serem','18000','fiksi'),
('BID12','GID12','Wajah indonesia ku', 'dra sumiatun','2010','198','3','buku pembelajaran anak sd','12000','nonfiksi'),
('BID13','GID13','Aroma Karsa', 'dewi lestari','2018','734','4','lumayan lahh','14000','fiksi'),
('BID14','GID14','sherlock holmes', 'sir arthur conan','2015','832','4','banyak plotnya','16000','fiksi'),
('BID15','GID15','pride and prejudice','jane austen','1813','823','4','bagus','14000','fiksi');


INSERT INTO pencatatan VALUES 
('IPN01','US001','BID01','89','2'),
('IPN02','US002','BID02','21','1'),
('IPN03','US003','BID03','114','3'),
('IPN04','US004','BID04','84','2'),
('IPN05','US005','BID05','228','3'),
('IPN06','US006','BID06','120','3'),
('IPN07','US007','BID07','14','1'),
('IPN08','US008','BID08','222','4'),
('IPN09','US009','BID09','114','2'),
('IPN10','US010','BID10','25','1'),
('IPN11','US011','BID11','308','3'),
('IPN12','US012','BID12','11','1'),
('IPN13','US013','BID13','98','1'),
('IPN14','US014','BID14','729','7'),
('IPN15','US015','BID15','114','1');


SELECT * FROM users;
SELECT namaUser,usia,jenisbukuyangdiminati FROM users WHERE namaUser LIKE 'althaf';
SELECT namauser,Usia FROM users WHERE Usia LIKE '%9%';

SELECT * FROM buku ;
SELECT judul_buku,Harga FROM Buku WHERE Harga > 15000;
SELECT id_buku,judul_buku FROM buku WHERE kategori = 'fiksi'

SELECT ,productline,buyprice FROM products WHERE (productline = 'Motorcycles' OR productline = 'Plane') AND buyprice >= 50;

SELECT * FROM pencatatan; 
SELECT id_user, Max(halamanTerakhir) FROM pencatatan
SELECT id_pencatatan,MIN(chapterTerakhir) FROM pencatatan
SELECT judul_buku,(Harga*0.5) As NewHarga FROM buku

select id_user ,halamanterakhir from pencatatan where halaman terakhir = max(halamanterakhir);
