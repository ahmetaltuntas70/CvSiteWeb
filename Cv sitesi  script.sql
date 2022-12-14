USE [CvSiteWebDB]
GO
/****** Object:  Table [dbo].[TBLADMIN]    Script Date: 26.11.2022 15:29:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLADMIN](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[KULLANICI] [varchar](20) NULL,
	[SİFRE] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLBECERI]    Script Date: 26.11.2022 15:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLBECERI](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[BECERI] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLEGITIM]    Script Date: 26.11.2022 15:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLEGITIM](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[BASLIK] [varchar](50) NULL,
	[ALTBASLIK] [varchar](50) NULL,
	[ACIKLAMA] [varchar](300) NULL,
	[GNOT] [varchar](10) NULL,
	[TARIH] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLHAKKIMDA]    Script Date: 26.11.2022 15:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLHAKKIMDA](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](30) NULL,
	[SOYAD] [varchar](30) NULL,
	[ADRES] [varchar](150) NULL,
	[MAIL] [varchar](50) NULL,
	[TELEFON] [varchar](20) NULL,
	[KISANOT] [varchar](1000) NULL,
	[FOTOGRAF] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLILETISIM]    Script Date: 26.11.2022 15:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLILETISIM](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ADSOYAD] [varchar](30) NULL,
	[MAIL] [varchar](50) NULL,
	[MESAJ] [varchar](250) NULL,
	[KONU] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLILGIALANLAR]    Script Date: 26.11.2022 15:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLILGIALANLAR](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[ILGI] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLKURS]    Script Date: 26.11.2022 15:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLKURS](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[KURS] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLPROJE]    Script Date: 26.11.2022 15:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLPROJE](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[BASLIK] [varchar](50) NULL,
	[ALTBASLIK] [varchar](50) NULL,
	[ACIKLAMA] [varchar](max) NULL,
	[TARIH] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TBLADMIN] ON 

INSERT [dbo].[TBLADMIN] ([ID], [KULLANICI], [SİFRE]) VALUES (1, N'FERO', N'BABA')
SET IDENTITY_INSERT [dbo].[TBLADMIN] OFF
SET IDENTITY_INSERT [dbo].[TBLBECERI] ON 

INSERT [dbo].[TBLBECERI] ([ID], [BECERI]) VALUES (1, N'C# PROGRAMLAMA')
INSERT [dbo].[TBLBECERI] ([ID], [BECERI]) VALUES (2, N'ASP.NET CORE MVC')
INSERT [dbo].[TBLBECERI] ([ID], [BECERI]) VALUES (3, N'HTML-CSS-BOOTSRAP')
INSERT [dbo].[TBLBECERI] ([ID], [BECERI]) VALUES (4, N'MICROSOFT SQL SERVER')
INSERT [dbo].[TBLBECERI] ([ID], [BECERI]) VALUES (5, N'MICROSOFT OFFICE PROGRAMS')
INSERT [dbo].[TBLBECERI] ([ID], [BECERI]) VALUES (8, N'CANVA TASARIM ARACI')
SET IDENTITY_INSERT [dbo].[TBLBECERI] OFF
SET IDENTITY_INSERT [dbo].[TBLEGITIM] ON 

INSERT [dbo].[TBLEGITIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [GNOT], [TARIH]) VALUES (1, N'KARAMAN LİSESİ ANADOLU', N'ANADOLU', N'YABANCI DİL İLE EĞİTİM YAPAN ANADOLU LİSESİ', N'75', N'2013-2017')
INSERT [dbo].[TBLEGITIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [GNOT], [TARIH]) VALUES (2, N'AKSARAY ÜNİVERSİTESİ', N'İKTİSADİ VE İDARİ BİLİMLER FAKÜLTESİ', N'YÖNETİM BİLİŞİM SİSTEMLERİ', N'3.00', N'2018-2022')
INSERT [dbo].[TBLEGITIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [GNOT], [TARIH]) VALUES (4, N'TECHCAREER.NET', N'.NET CORE BOOTCAMP', N'.NET CORE BOOTCAMP KURSUNA SEÇİLEREK KENDİMİ GELİŞTİRİYORUM.', N'PROJE ', N'17.11.2022-13.12.2022')
SET IDENTITY_INSERT [dbo].[TBLEGITIM] OFF
SET IDENTITY_INSERT [dbo].[TBLHAKKIMDA] ON 

INSERT [dbo].[TBLHAKKIMDA] ([ID], [AD], [SOYAD], [ADRES], [MAIL], [TELEFON], [KISANOT], [FOTOGRAF]) VALUES (1, N'AHMET F.', N'ALTUNTAŞ', N'KARAMAN/MERKEZ', N'feroferhat40@gmail.com', N'....................', N'Aksaray Üniversitesi Yönetim Bilişim Sistemleri
mezunuyum. İş yaşamında efektif ve hızlı olmak
konusunda son derece özverili ve hevesli olduğumu,
pozisyonun gerektirdiği sorumluluğu merak ve istekle
üzerime almak istediğimi belirtmek isterim.
// Projelerim GITHUP hesabımda mevcuttur.//', N'https://imgyukle.com/f/2022/11/15/JyHNCn.jpg')
SET IDENTITY_INSERT [dbo].[TBLHAKKIMDA] OFF
SET IDENTITY_INSERT [dbo].[TBLILETISIM] ON 

INSERT [dbo].[TBLILETISIM] ([ID], [ADSOYAD], [MAIL], [MESAJ], [KONU]) VALUES (1, N'ahmo', N'baba@gmail.com', N'gelgel', N'yap')
SET IDENTITY_INSERT [dbo].[TBLILETISIM] OFF
SET IDENTITY_INSERT [dbo].[TBLILGIALANLAR] ON 

INSERT [dbo].[TBLILGIALANLAR] ([ID], [ILGI]) VALUES (1, N'BİLİŞİM')
INSERT [dbo].[TBLILGIALANLAR] ([ID], [ILGI]) VALUES (2, N'YAZILIM')
INSERT [dbo].[TBLILGIALANLAR] ([ID], [ILGI]) VALUES (3, N'İNSAN KAYNAKLARI YÖNETİMİ')
INSERT [dbo].[TBLILGIALANLAR] ([ID], [ILGI]) VALUES (4, N'İŞ ANALİZİ')
INSERT [dbo].[TBLILGIALANLAR] ([ID], [ILGI]) VALUES (5, N'BİLGİ İŞLEM')
INSERT [dbo].[TBLILGIALANLAR] ([ID], [ILGI]) VALUES (11, N'FUTBOL')
INSERT [dbo].[TBLILGIALANLAR] ([ID], [ILGI]) VALUES (12, N'BİLGİSAYAR')
SET IDENTITY_INSERT [dbo].[TBLILGIALANLAR] OFF
SET IDENTITY_INSERT [dbo].[TBLKURS] ON 

INSERT [dbo].[TBLKURS] ([ID], [KURS]) VALUES (1, N'İŞ ANALİZİ')
INSERT [dbo].[TBLKURS] ([ID], [KURS]) VALUES (2, N'UYGULAMALARLA SQL ')
INSERT [dbo].[TBLKURS] ([ID], [KURS]) VALUES (3, N'MICROSOFT EXCEL TEMELLERİ')
INSERT [dbo].[TBLKURS] ([ID], [KURS]) VALUES (4, N'YAZILIM TEST OTOMASYONU')
INSERT [dbo].[TBLKURS] ([ID], [KURS]) VALUES (5, N'AGİLE ve SCRUM EĞİTİMİ')
INSERT [dbo].[TBLKURS] ([ID], [KURS]) VALUES (6, N'UYGULAMA GELİŞTİREREK C#')
INSERT [dbo].[TBLKURS] ([ID], [KURS]) VALUES (9, N'ASP.NET CV PROJESİ')
INSERT [dbo].[TBLKURS] ([ID], [KURS]) VALUES (10, N'.NET CORE BOOTCAMP')
SET IDENTITY_INSERT [dbo].[TBLKURS] OFF
SET IDENTITY_INSERT [dbo].[TBLPROJE] ON 

INSERT [dbo].[TBLPROJE] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (1, N'HASTANE & RANDEVU SİSTEMİ ', N'C# ve SQL SERVER', N'C# Geliştirici olarak çıktığım bu yolda ilk önemli projem olan hastane & randevu sistemi otomasyonu hakkında, kendimi geliştirerek yaptığım projem.

Bu proje de C# Form Uygulaması ve Sql Server veri tabanı kullanılmıştır.

Öncelikle gerekli olan Tbl_Hastalar, Tbl_Doktorlar, Tbl_Sekreter, Tbl_Branslar, Tbl_Randevular, Tbl_Duyurular veritabanları oluşturuldu ve birkaç örnek veri girişi yapıldıktan sonra Visual Studio C# Form Uygulamasına giriş yaparak Proje_Hastane adında yeni projemizi oluşturduk. Burada gerekli olan formlar oluşturularak projemize yön verdik.

Sql Server bağlantımızı da ekleyerek veritabanından verilerimizi çektik. 

Projede Hasta girişi, Doktor girişi, Sekreter girişi olmak üzere üç tane giriş vardır. Bu girişler de kimlik no ve şifre işlemleri vardır. Hasta girişte ayrıca üye ol linki eklenmiştir ve yeni üye kaydı yapılabilr. ', N'15.09.2022')
INSERT [dbo].[TBLPROJE] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (4, N'KİTAPLIK SİSTEMİ', N'C# ve MICROSOFT ACCESS ', N'Bu Kitaplık projesinde C# ve Microsoft Access (veri tabanı) programları kullanılmıştır. Kitaplık projemizde ilk olarak veri tabanımızı oluşturduk ve gerekli olan veri girişlerini yaptık. Kİtap id, adı, yazarı, sayfası, türü, fiyatı, dili, durumu, basım yılı gibi labelleri oluşturduk. Lİstele, güncelle, kaydet, sil, kitap ara, kitap bul ve çıkış gibi butonlarımızı tasarladık. Gerekli olan okunabilir kodlarımızı da C# Form Uygulamasında yazdık.', N'25.10.2022')
INSERT [dbo].[TBLPROJE] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (5, N'FUTBOLCU ANTREMAN SİSTEMİ', N'ASP.NET, HTML, CSS, JAVASCRIPT ve MS SQL (DATASET)', N'Bootstrap template ile web projesi kodlanmıştır. BU PROJEMDE BAZI GALATASARAY FUTBOLCULARININ ANTREMANDAKİ SINAV KAYITLARI GİBİ İSTATİSTİKLERİ VARDIR. FUTBOLCU GİRİŞİ VE ANTRENÖR GİRİŞ PANELLERİ VARDIR.', N'05.11.2022')
INSERT [dbo].[TBLPROJE] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (6, N'ÜRÜN KATEGORİ SİSTEMİ', N'C# ve SQL SERVER (ENTITY)', N'Bu projede C# Form Uygulaması ve Microsoft Sql Server (veri tabanı) kullanılmıştır. Entity Framework yardımıyla Sql server'' da tablolarımızı oluşturarak diagram yardımıyla c#'' da model oluşturulmuştur. TBLADMIN, TBLKATEGORI, TBLMUSTERI, TBLSATIS, TBLURUN tabloları oluşturulmuştur ve gerekli olan veri girişleri yapılmıştır. C# Form'' da ise Giriş Paneli, kategori işlemleri, ürün işlemleri, istatistikler formları oluşturulmuştur. Listele, ekle, güncelle, sil, ileri, geri, çıkış butonları kullanılmıştır. Bir firmanın veya işletmenin ürünlerinin kaydı tutulduğu bir form uygulaması gibi düşünülebilir.', N'15.11.2022')
INSERT [dbo].[TBLPROJE] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (7, N'DÖVİZ OFİSİ UYGULMASI', N'C#', N'Doviz Ofisi projemizde sadece C# Form Uygulaması kullanılmıştır. TCMB kurlar web sayfasından önemli kurlar güncel olarak çekilmiştir. Bu projede menustrip yardımıyla TCMB web sayfasından site çekilmiştir. Kur, miktar TL, tutar, kalan textbox ları kullanılmıştır. Buton olarak temizle, renk ver, dönüştür, hesapla butonları kullanılmıştır. Bir kura tıklanınca ne kadar miktar TL'' de para alınırsa dönüştür ve hesapla butonu ile gerekli bilgiler alınabilir.', N'25.11.2022')
INSERT [dbo].[TBLPROJE] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (8, N'AHMET ALTUNTAŞ-CV', N'CV WEB SİTESİ', N'AHMET ALTUNTAŞ KİŞİSİNİN CV WEB SİTESİDİR.', N'30.11.2022')
INSERT [dbo].[TBLPROJE] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (9, N'AHMET ALTUNTAŞ-CV', N'C# ve SQL SERVER ', N'AHMET ALTUNTAŞ KİŞİSİNİN EK CV WEB SİTESİDİR.', N'05.12.2022')
INSERT [dbo].[TBLPROJE] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (10, N'ERMENEK SEYEHAT BLOG', N'C#, ASP.NET MVC ve SQL SERVER ', N'ERMENEK HAKKINDA GEZİLECEK YERLER VE BU YERLERDEKİ ÖNEMLİ MEKANLAR FOTOĞRAFLANMIŞ VE BLOG WEB SİTESİ OLARAK AÇILMIŞTIR.', N'20.12..2022')
SET IDENTITY_INSERT [dbo].[TBLPROJE] OFF
