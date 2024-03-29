USE [EOkul]
GO
/****** Object:  Table [dbo].[TblDersler]    Script Date: 15.06.2023 04:12:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDersler](
	[Dersid] [tinyint] IDENTITY(1,1) NOT NULL,
	[DersAd] [varchar](30) NULL,
 CONSTRAINT [PK_TblDersler] PRIMARY KEY CLUSTERED 
(
	[Dersid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblKulupler]    Script Date: 15.06.2023 04:12:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblKulupler](
	[Kulupid] [tinyint] IDENTITY(1,1) NOT NULL,
	[KulupAd] [varchar](30) NULL,
 CONSTRAINT [PK_TblKulupler] PRIMARY KEY CLUSTERED 
(
	[Kulupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblNotlar]    Script Date: 15.06.2023 04:12:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblNotlar](
	[Notid] [int] IDENTITY(1,1) NOT NULL,
	[Dersid] [tinyint] NULL,
	[Ogrid] [int] NULL,
	[Sınav1] [tinyint] NULL,
	[Sınav2] [tinyint] NULL,
	[Sınav3] [tinyint] NULL,
	[Proje] [tinyint] NULL,
	[Ortalama] [decimal](5, 2) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_TblNotlar] PRIMARY KEY CLUSTERED 
(
	[Notid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOgrenciler]    Script Date: 15.06.2023 04:12:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOgrenciler](
	[Ogrid] [int] IDENTITY(1,1) NOT NULL,
	[OgrAd] [varchar](30) NULL,
	[OgrSoyad] [varchar](30) NULL,
	[OgrKulup] [tinyint] NULL,
	[OgrCinsiyet] [varchar](5) NULL,
 CONSTRAINT [PK_TblOgrenciler] PRIMARY KEY CLUSTERED 
(
	[Ogrid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOgretmenler]    Script Date: 15.06.2023 04:12:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOgretmenler](
	[Ogretmenid] [tinyint] IDENTITY(1,1) NOT NULL,
	[OgretmenBrans] [tinyint] NULL,
	[OgretmenAdSoyad] [varchar](50) NULL,
 CONSTRAINT [PK_TblOgretmenler] PRIMARY KEY CLUSTERED 
(
	[Ogretmenid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblDersler] ON 

INSERT [dbo].[TblDersler] ([Dersid], [DersAd]) VALUES (1, N'ALGORİTMA')
INSERT [dbo].[TblDersler] ([Dersid], [DersAd]) VALUES (2, N'VERİ MADENCİLİĞİ')
INSERT [dbo].[TblDersler] ([Dersid], [DersAd]) VALUES (3, N'WEB PROGRAMLAMA')
INSERT [dbo].[TblDersler] ([Dersid], [DersAd]) VALUES (4, N'SİBER GÜVENLİK')
INSERT [dbo].[TblDersler] ([Dersid], [DersAd]) VALUES (5, N'CİHAZ MİMARİSİ')
SET IDENTITY_INSERT [dbo].[TblDersler] OFF
GO
SET IDENTITY_INSERT [dbo].[TblKulupler] ON 

INSERT [dbo].[TblKulupler] ([Kulupid], [KulupAd]) VALUES (1, N'BİLGİSAYAR')
INSERT [dbo].[TblKulupler] ([Kulupid], [KulupAd]) VALUES (2, N'SPOR')
INSERT [dbo].[TblKulupler] ([Kulupid], [KulupAd]) VALUES (3, N'ALGORİTMA')
INSERT [dbo].[TblKulupler] ([Kulupid], [KulupAd]) VALUES (4, N'İLETİŞİM')
INSERT [dbo].[TblKulupler] ([Kulupid], [KulupAd]) VALUES (5, N'BİLİM')
SET IDENTITY_INSERT [dbo].[TblKulupler] OFF
GO
SET IDENTITY_INSERT [dbo].[TblNotlar] ON 

INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (1, 1, 1, 80, 85, 90, 50, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (2, 2, 1, 60, 60, 60, 60, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (3, 3, 1, 50, 65, 90, 80, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (4, 4, 1, 50, 40, 60, 30, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (5, 5, 1, 40, 45, 50, 55, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (6, 1, 2, 60, 60, 60, 65, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (7, 2, 2, 90, 50, 80, 70, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (8, 3, 2, 65, 25, 100, 100, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (9, 4, 2, 35, 85, 85, 90, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (10, 5, 2, 30, 30, 30, 30, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (11, 1, 3, 10, 10, 20, 20, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (12, 2, 3, 100, 100, 100, 10, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (13, 3, 3, 25, 65, 50, 10, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (14, 4, 3, 50, 50, 100, 100, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (15, 5, 3, 50, 12, 13, 14, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (16, 1, 4, 100, 80, 50, 60, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (17, 2, 4, 100, 60, 50, 50, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (18, 3, 4, 10, 20, 30, 40, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (19, 4, 4, 30, 40, 50, 60, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (20, 5, 4, 80, 90, 70, 60, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (21, 1, 5, 10, 20, 30, 0, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (22, 2, 5, 0, 10, 15, 60, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (23, 3, 5, 100, 10, 100, 100, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (24, 4, 5, 50, 60, 70, 80, NULL, 1)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (25, 5, 5, 60, 60, 60, 60, NULL, 0)
INSERT [dbo].[TblNotlar] ([Notid], [Dersid], [Ogrid], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (26, NULL, NULL, 50, 100, 100, 60, NULL, 1)
SET IDENTITY_INSERT [dbo].[TblNotlar] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOgrenciler] ON 

INSERT [dbo].[TblOgrenciler] ([Ogrid], [OgrAd], [OgrSoyad], [OgrKulup], [OgrCinsiyet]) VALUES (1, N'SEDAT', N'AYYILDIZ', 1, N'ERKEK')
INSERT [dbo].[TblOgrenciler] ([Ogrid], [OgrAd], [OgrSoyad], [OgrKulup], [OgrCinsiyet]) VALUES (2, N'MUSTAFA', N'BALKAYA', 2, N'ERKEK')
INSERT [dbo].[TblOgrenciler] ([Ogrid], [OgrAd], [OgrSoyad], [OgrKulup], [OgrCinsiyet]) VALUES (3, N'MEHMET', N'ASLAN', 1, N'ERKEK')
INSERT [dbo].[TblOgrenciler] ([Ogrid], [OgrAd], [OgrSoyad], [OgrKulup], [OgrCinsiyet]) VALUES (4, N'ERAY', N'KEŞAP', 3, N'ERKEK')
INSERT [dbo].[TblOgrenciler] ([Ogrid], [OgrAd], [OgrSoyad], [OgrKulup], [OgrCinsiyet]) VALUES (5, N'SERKAN', N'BAHTİYAR', 4, N'ERKEK')
INSERT [dbo].[TblOgrenciler] ([Ogrid], [OgrAd], [OgrSoyad], [OgrKulup], [OgrCinsiyet]) VALUES (6, N'SALİHA NUR', N'DÖNGEZ', 5, N'KIZ')
SET IDENTITY_INSERT [dbo].[TblOgrenciler] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOgretmenler] ON 

INSERT [dbo].[TblOgretmenler] ([Ogretmenid], [OgretmenBrans], [OgretmenAdSoyad]) VALUES (1, 1, N'YASEMİN BİNNUR')
INSERT [dbo].[TblOgretmenler] ([Ogretmenid], [OgretmenBrans], [OgretmenAdSoyad]) VALUES (2, 2, N'MAHİR DEMİR')
INSERT [dbo].[TblOgretmenler] ([Ogretmenid], [OgretmenBrans], [OgretmenAdSoyad]) VALUES (3, 3, N'KENAN KARAMAN')
INSERT [dbo].[TblOgretmenler] ([Ogretmenid], [OgretmenBrans], [OgretmenAdSoyad]) VALUES (4, 4, N'ÖZKAN İNİK')
INSERT [dbo].[TblOgretmenler] ([Ogretmenid], [OgretmenBrans], [OgretmenAdSoyad]) VALUES (5, 5, N'İLKER BOZHÖYÜK')
SET IDENTITY_INSERT [dbo].[TblOgretmenler] OFF
GO
ALTER TABLE [dbo].[TblNotlar]  WITH CHECK ADD  CONSTRAINT [FK_TblNotlar_TblDersler] FOREIGN KEY([Dersid])
REFERENCES [dbo].[TblDersler] ([Dersid])
GO
ALTER TABLE [dbo].[TblNotlar] CHECK CONSTRAINT [FK_TblNotlar_TblDersler]
GO
ALTER TABLE [dbo].[TblNotlar]  WITH CHECK ADD  CONSTRAINT [FK_TblNotlar_TblOgrenciler] FOREIGN KEY([Ogrid])
REFERENCES [dbo].[TblOgrenciler] ([Ogrid])
GO
ALTER TABLE [dbo].[TblNotlar] CHECK CONSTRAINT [FK_TblNotlar_TblOgrenciler]
GO
ALTER TABLE [dbo].[TblOgrenciler]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenciler_TblKulupler] FOREIGN KEY([OgrKulup])
REFERENCES [dbo].[TblKulupler] ([Kulupid])
GO
ALTER TABLE [dbo].[TblOgrenciler] CHECK CONSTRAINT [FK_TblOgrenciler_TblKulupler]
GO
ALTER TABLE [dbo].[TblOgretmenler]  WITH CHECK ADD  CONSTRAINT [FK_TblOgretmenler_TblDersler] FOREIGN KEY([OgretmenBrans])
REFERENCES [dbo].[TblDersler] ([Dersid])
GO
ALTER TABLE [dbo].[TblOgretmenler] CHECK CONSTRAINT [FK_TblOgretmenler_TblDersler]
GO
