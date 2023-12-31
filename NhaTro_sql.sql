USE [TIM_TROO]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[SDT] [varchar](10) NULL,
	[Avatar] [varchar](255) NULL,
	[TrangThai] [tinyint] NULL,
	[Id_TaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ANH_CCCD]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANH_CCCD](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTaiKhoan] [int] NULL,
	[IdCardPhoto] [varchar](255) NULL,
	[IdCardPhoto2] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAIDANG]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIDANG](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_ChuTro] [int] NULL,
	[TenPhong] [nvarchar](255) NULL,
	[Slug] [nvarchar](255) NULL,
	[AnhBia] [varchar](255) NULL,
	[MoTa] [nvarchar](300) NULL,
	[GiaCa] [money] NULL,
	[HoaHong] [money] NULL,
	[TrangThai] [tinyint] NULL,
	[DienTich] [int] NULL,
	[SoLuong] [int] NULL,
	[Contents] [text] NULL,
	[Doituong] [tinyint] NULL,
	[Map] [text] NULL,
	[Video_link] [text] NULL,
	[Ngay] [smalldatetime] NULL,
	[Diachi] [nvarchar](155) NULL,
	[Nuoc] [money] NULL,
	[Dien] [money] NULL,
	[Internet] [money] NULL,
	[GuiXe] [money] NULL,
	[KhuVuc] [nvarchar](150) NULL,
	[Id_Phong] [int] NULL,
 CONSTRAINT [PK__PHONGTRO__3214EC0702CD2E73] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAOCAO]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOCAO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_NguoiDung] [int] NULL,
	[Id_PhongTro] [int] NULL,
	[NoiDung] [ntext] NULL,
	[TrangThai] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUTRO]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUTRO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Facebook] [varchar](100) NULL,
	[Avatar] [varchar](100) NULL,
	[TrangThai] [tinyint] NULL,
	[Id_TaiKhoan] [int] NULL,
 CONSTRAINT [PK__CHUTRO__3214EC07C413C23E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CSVATCHAT]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSVATCHAT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_PhongTro] [int] NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[IdDH] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [bit] NULL,
	[NgayDat] [smalldatetime] NULL,
	[Id_NguoiDung] [int] NULL,
	[Id_Phong] [int] NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[IdDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_DonHang] [int] NULL,
	[GiaPhong] [money] NULL,
	[SoDienThangTruoc] [int] NULL,
	[SoDienThangNay] [int] NULL,
	[SoNuocThangTruoc] [int] NULL,
	[SoNuocThangNay] [int] NULL,
	[TienInternet] [money] NULL,
	[TienGuiXe] [money] NULL,
	[TienRac] [money] NULL,
	[TongHoaDon] [money] NULL,
	[TrangThai] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOTRO]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOTRO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Sdt] [varchar](10) NULL,
	[MotaVande] [nvarchar](max) NULL,
 CONSTRAINT [PK_HOTRO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMAGES]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMAGES](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_PhongTro] [int] NULL,
	[Url_Path] [nvarchar](255) NULL,
	[ten] [nvarchar](100) NULL,
	[Url_Path2] [nvarchar](255) NULL,
	[Url_Path3] [nvarchar](255) NULL,
	[Url_Path4] [nvarchar](255) NULL,
	[Url_Path5] [nvarchar](255) NULL,
	[Id_TaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUVUC]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUVUC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Slug] [nvarchar](255) NULL,
	[TieuDe] [nvarchar](255) NULL,
	[MoTa] [nvarchar](255) NULL,
	[Parent_Id] [bigint] NULL,
	[Type] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUUTIN]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUUTIN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_NguoiDung] [int] NULL,
	[Id_PhongTro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[Parent_id] [int] NULL,
	[type] [tinyint] NULL,
	[Link] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Facebook] [varchar](255) NULL,
	[Avatar] [varchar](255) NULL,
	[Id_TaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHATRO]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHATRO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_ChuTro] [int] NULL,
	[TenNhaTro] [nvarchar](50) NULL,
	[KhuVuc] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONGTRO]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGTRO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_NhaTro] [int] NULL,
	[TenNhaTro] [nvarchar](255) NULL,
	[GiaCa] [money] NULL,
	[TienDien] [money] NULL,
	[TienNuoc] [money] NULL,
	[TienRac] [money] NULL,
	[TienInternet] [money] NULL,
	[TienGuiXe] [money] NULL,
	[TrangThai] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONGTRO_DUYET]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGTRO_DUYET](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_PhongTro] [int] NULL,
	[Id_ChuTro] [int] NULL,
	[TenPhong] [nvarchar](1) NULL,
	[Slug] [nvarchar](1) NULL,
	[AnhBia] [varchar](1) NULL,
	[MoTa] [nvarchar](1) NULL,
	[GiaCa] [money] NULL,
	[HoaHong] [money] NULL,
	[TrangThai] [tinyint] NOT NULL,
	[DienTich] [int] NULL,
	[SoLuong] [int] NULL,
	[Contents] [text] NULL,
	[Doituong] [tinyint] NULL,
	[Map] [text] NULL,
	[Video_link] [text] NULL,
	[Ngay] [smalldatetime] NULL,
	[Diachi] [nvarchar](1) NULL,
	[Nuoc] [money] NULL,
	[Dien] [money] NULL,
	[Internet] [money] NULL,
	[GuiXe] [money] NULL,
	[KhuVuc] [nvarchar](1) NULL,
	[IsApproved] [bit] NOT NULL,
	[ApprovedDate] [datetime] NULL,
	[ApprovedBy] [nvarchar](1) NULL,
	[RejectReason] [nvarchar](1) NULL,
 CONSTRAINT [PK_PHONGTRO_DUYET] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 7/24/2023 10:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[PhanQuyen] [int] NULL,
	[Email] [varchar](50) NULL,
	[SDT] [varchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[CCCD] [varchar](25) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([Id], [Email], [SDT], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (1, N'admin123@gmail.com', N'01234567', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
GO
SET IDENTITY_INSERT [dbo].[ANH_CCCD] ON 

INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (1, 61, N'a1 - Copy.jpg', NULL)
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (2, 61, N'a1.jpg', NULL)
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (3, 62, N'8fd881fd51ac123b51b5d0e4adb07bf8-2813366249932553499.jpg', N'41c9d057b2e923f09da96fd22fcf01cb-2813366249800309866.jpg')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (5, 64, N'avatar1663652034151-16636520345541192384502.jpg', N'Can cuoc.jpg')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (6, 4, N'aaaaa.gfd', N'asdasda.gff')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (7, 65, N'Qu?n lý bài dang.drawio.png', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (8, 66, N'eaa7dafb-31f1-47de-917b-2b5d92c46500_1557916816.jpg', N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (9, 67, N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (10, 68, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (11, 70, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (12, 71, N'eaa7dafb-31f1-47de-917b-2b5d92c46500_1557916816.jpg', N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (13, 72, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (14, 73, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (15, 74, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (16, 75, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (17, 76, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (18, 77, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (19, 78, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (20, 79, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (21, 80, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (22, 81, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (23, 82, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (24, 83, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (25, 84, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (26, 85, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (27, 86, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (28, 87, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (29, 88, N'OIP.png', N'OIB.png')
INSERT [dbo].[ANH_CCCD] ([Id], [IdTaiKhoan], [IdCardPhoto], [IdCardPhoto2]) VALUES (30, 89, N'OIP.png', N'OIB.png')
SET IDENTITY_INSERT [dbo].[ANH_CCCD] OFF
GO
SET IDENTITY_INSERT [dbo].[BAIDANG] ON 

INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (6, 1, N'Phòng mới ', NULL, N'Screenshot (12).png', N'', 1500000.0000, NULL, 1, 12, 2, NULL, 1, NULL, NULL, CAST(N'2023-07-24T14:44:00' AS SmallDateTime), N'', 0.0000, 0.0000, 0.0000, 5555.0000, N'Phú Lợi', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (7, 1, N'Phòng trọ cho sinh viên', NULL, N'tro06.jpg', N'-Phòng trọ đẹp ', 1400000.0000, NULL, 0, 12, 3, NULL, 1, NULL, NULL, NULL, N'Hẻm 178/92A đường Huỳnh Văn Lũy, Phường Phú Lợi, Thủ Dầu Một.', 30000.0000, 2500.0000, 50000.0000, 60000.0000, N'Phú Thọ', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (12, 2, N'Phòng đẹp', NULL, N'tro01.jpg', N'-Phòng trọ đẹp ', 1000000.0000, NULL, 2, 14, 3, NULL, 1, NULL, NULL, CAST(N'2023-04-20T22:58:00' AS SmallDateTime), N'39/102 Đường Trần Bình Trọng, Phường Phú Thọ, Thủ Dầu Một, Bình Dương.', 20000.0000, 2000.0000, 45000.0000, 0.0000, N'Chánh Nghĩa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (15, 1, N'Phòng trọ bình dương', NULL, N'tro05.jpg', N'-Phòng trọ đẹp 

', 900000.0000, NULL, 3, 16, 1, NULL, 1, NULL, NULL, CAST(N'2023-04-22T22:44:00' AS SmallDateTime), N'Bình Dương.', 15000.0000, 3000.0000, 50000.0000, 0.0000, N'Chánh Nghĩa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (16, 2, N'Phòng trọ cao cấp', NULL, N'tro07.jpg', N'-Phòng trọ nâng cấp, giá ưu đãi', 1200000.0000, NULL, 0, 20, 1, NULL, 1, NULL, NULL, CAST(N'2022-11-23T00:00:00' AS SmallDateTime), N'hẻm 147 đường Nguyễn Thị Minh Khai - P. Phú Hoà.', 30000.0000, 3500.0000, 50000.0000, 50000.0000, N'Tân An', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (17, 3, N'Phòng trọ minh tâm', NULL, N'tro10.jpg', N'-Phòng', 1000000.0000, NULL, 0, 25, 2, NULL, 1, NULL, NULL, CAST(N'2023-03-12T00:00:00' AS SmallDateTime), N'đường lê hòng phông, thủ dầu một, bình dương', 3000.0000, 3500.0000, 20000.0000, 2000.0000, N'Phú Lợi', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (18, 3, N'Trọ gần Đại học Thù Dầu Một', NULL, N'a18_1.jpg', N'Phòng rộng rãi thoáng mát', 2000000.0000, NULL, 0, 20, 3, NULL, 1, NULL, NULL, CAST(N'2023-04-12T00:00:00' AS SmallDateTime), N'113, Trần Văn Ơn, Phường Phú Hòa, Thành Phố Thủ Dầu Một, Bình Dương', 12000.0000, 3200.0000, 10000.0000, 2000.0000, N'Phú Hòa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (19, 3, N'Nhà Trọ Bình An', NULL, N'a19_1.jpg', N'Phòng óc sạch sẽ thoang mát', 1700000.0000, NULL, 2, 30, 3, NULL, 1, NULL, NULL, CAST(N'2023-04-18T14:10:00' AS SmallDateTime), N'1238/13, Lê Hồng Phong, Phường Phú Thọ, Thủ Dầu Một, Bình Dương', 15000.0000, 3500.0000, 0.0000, 0.0000, N'Phú Thọ', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (20, 1, N'Cho Thuê Nhà Trọ đường Huỳnh Văn Lũy ', NULL, N'a20_1.jpg', N'Cho Thuê nhà trọ mặt tiền', 1800000.0000, NULL, 3, 16, 1, NULL, 1, NULL, NULL, CAST(N'2023-04-22T22:54:00' AS SmallDateTime), N'Huỳnh Văn Lũy, Phường Phú Lợi, Thủ Dầu Một', 10000.0000, 3500.0000, 0.0000, 0.0000, N'Phú Lợi', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (29, 1, N'Phòng trọ cho sinh viên TDM, cổng đường Phú Lợi', NULL, N'a29_1.jpg', N'Phòng trọ cho Sinh Viên Đại học TDM, Ngay cổng đường Phú Lợi, siêu thị bách hoá xanh. Có gác, yên tĩnh học tập', 1800000.0000, NULL, 3, 25, 3, NULL, 1, NULL, NULL, CAST(N'2023-06-06T18:44:00' AS SmallDateTime), N'Hẻm 172, Phường Phú Hòa, Thành phố Thủ Dầu Một', 5000.0000, 3000.0000, 0.0000, 0.0000, N'Phú Hòa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (30, 1, N'Phòng trọ gần trường ĐH Thủ Dầu Một', NULL, N'Screenshot (4).png', N'', 2000000.0000, NULL, 3, 18, 2, NULL, 1, NULL, NULL, CAST(N'2023-06-06T18:44:00' AS SmallDateTime), N'', 123.0000, 0.0000, 0.0000, 5.0000, N'Phú Hòa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (31, 2, N'Phòng trọ gần trường Đại Học TDM', NULL, N'a31_1.jpg', N'Cho thuê p trọ gần trường Đại học TDM, kv an ninh, tiện ích xung quanh. Có BHX ngay đầu đường. Miễn fi wifi.', 1800000.0000, NULL, 2, 12, 2, NULL, 1, NULL, NULL, CAST(N'2023-04-03T00:00:00' AS SmallDateTime), N'Phú Lợi, Phường Phú Hòa, Thành Phố Thủ Dầu Một', 6000.0000, 3500.0000, 0.0000, 0.0000, N'Phú Hòa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (32, 2, N'Cho thuê trọ mới', NULL, N'a32_1.jpg', N'Nhà trọ mới sạch sẽ,an ninh,thoáng mát,miễn phí wifi,đường ô tô vào được', 1600000.0000, NULL, 2, 24, 2, NULL, 1, NULL, NULL, CAST(N'2023-04-02T00:00:00' AS SmallDateTime), N'hẻm 194, Đường Nguyễn Thị Minh Khai, Phường Phú Hòa , Thủ Dầu Một', 5000.0000, 3500.0000, 0.0000, 0.0000, N'Phú Hòa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (33, 1, N'NHÀ TRỌ SẠCH SẼ CHO THUÊ PHÒNG QUẬN 2', NULL, N'8fd881fd51ac123b51b5d0e4adb07bf8-2813366249932553499.jpg', N'adsadasd

', 3400000.0000, NULL, 3, 21, 3, NULL, 1, NULL, NULL, CAST(N'2023-06-06T19:40:00' AS SmallDateTime), N'14/1 Đường 28, P. Bình Trưng Tây, Quận 2', 15000.0000, 3000.0000, 10000.0000, 3000.0000, N'Phú Hòa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (35, 1, N'Phòng trọ gần Trường đại học TDM', NULL, N'775d98d1d9d9cda052775ac84578de65-2828283707364650560.jpg', N'', 1800000.0000, NULL, 1, 20, 2, NULL, 1, NULL, NULL, CAST(N'2023-07-18T16:42:00' AS SmallDateTime), N' 113/70, Trần Văn Ơn, Phường Phú Hòa, Thành phố Thủ Dầu Một, Bình Dương', 3000.0000, 3000.0000, 3000.0000, 0.0000, N'', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (36, 1, N'NHÀ TRỌ TP MỚI VSIP2 MỸ PHƯỚC 3-PHONG CÁCH MỚI', NULL, N'034178a66bf72185a591e6837374a3c5-2781704375385130084.jpg', N'', 1800000.0000, NULL, 3, 20, 1, NULL, 1, NULL, NULL, CAST(N'2023-07-18T17:05:00' AS SmallDateTime), N'Đường nguyễn văn thành DT741, Phường Hoà Phú, Thành phố Thủ Dầu Một, Bình', 3000.0000, 3000.0000, 0.0000, 0.0000, N'Hòa Phú', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (37, 1, N'Phòng dạng kiod 30m2, DX 112 p.Tân An đói diện cổng sau Đại Nam anninh', NULL, N'511884ea400c986c4ac0085125d464a5-2828028082228952835.jpg', N'aaaaaa

', 1700000.0000, NULL, 3, 60, 2, NULL, 1, NULL, NULL, CAST(N'2023-07-21T15:41:00' AS SmallDateTime), N'Nguyễn Chí Thanh, DX 112, Phường Tân An, Thành phố Thủ Dầu Một, Bình Dương', 3000.0000, 300.0000, 3000.0000, 3000.0000, N'Tân An', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (38, 1, N'cho thuê phòng trọ', NULL, N'e805db55e569b05b7a0a3e7c71c13d42-2826945760350698602.jpg', N'', 3500000.0000, NULL, 1, 35, 2, NULL, 1, NULL, NULL, CAST(N'2023-07-18T16:46:00' AS SmallDateTime), N' Đường Nguyễn Tri Phương, Phường Chánh Nghĩa, Thành phố Thủ Dầu Một, Bình ', 1000.0000, 1000.0000, 1000.0000, 0.0000, N'Chánh Nghĩa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (39, 1, N'Nhà cấp 4 100m2 đường Huỳnh Văn Luỹ, Tp Thủ Dầu Một, Bình Dương', NULL, N'bd4405960a6e31f25cdfba26033df361-2826488947635870466.jpg', N'', 5000000.0000, NULL, 1, 30, 1, NULL, 1, NULL, NULL, CAST(N'2023-06-06T00:00:00' AS SmallDateTime), N'288/43/17/1, Đường Huỳnh Văn Lũy, Phường Phú Lợi, Thành phố Thủ Dầu Một, Bình Dương', 0.0000, 0.0000, 0.0000, 0.0000, N'Phú Lợi', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (41, 1, N'Nhà trọ gần ĐH THỦ DẦU MỘT, chợ TRẦN VĂN ƠN', NULL, N'f8549da7b1d2d918088a59522f1511e0-2826575974177254381.jpg', N'', 4000000.0000, NULL, 4, 60, 2, NULL, 1, NULL, NULL, CAST(N'2023-06-06T00:00:00' AS SmallDateTime), N'Đường Lê Hồng Phong, Phường Phú Hòa, Thành phố Thủ Dầu Một, Bình Dương', 5000.0000, 3000.0000, 0.0000, 0.0000, N'Phú Hòa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (42, 1, N'NHÀ TRỌ CAO CẤP CHÁNH NGHĨA CHỈ 3TR5', NULL, N'79a6faf9a3833fdd60c77ffcc4d0a4f9-2827591831445955907.jpg', N'', 3500000.0000, NULL, 4, 35, 1, NULL, 1, NULL, NULL, CAST(N'2023-06-06T00:00:00' AS SmallDateTime), N'Đường Bùi Quốc Khánh, Phường Chánh Nghĩa, Thành phố Thủ Dầu Một, Bình Dương', 3000.0000, 3000.0000, 3000.0000, 0.0000, N'Chánh Nghĩa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (43, 1, N'Cho thuê căn hộ mini', NULL, N'1f57c8153bdeeb81c3f4a01cbdebbe57-2828536184885502311.jpg', N'&aacute;dsadsad&aacute;d

', 3000000.0000, NULL, 1, 25, 2, NULL, 1, NULL, NULL, CAST(N'2023-06-06T00:00:00' AS SmallDateTime), N'22/16/11, 22/16/11 tổ 2, kp 3, Phường Phú Hòa, Thành phố Thủ Dầu Một, Bình Dương', 0.0000, 0.0000, 0.0000, 0.0000, N'Phú Hòa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (44, 1, N'1234123asdasdasdasd', NULL, N'Screenshot (11).png', N'', 123100.0000, NULL, 1, 123, 1255, NULL, 1, NULL, NULL, CAST(N'2023-07-21T00:00:00' AS SmallDateTime), N'', 0.0000, 0.0000, 0.0000, 0.0000, N'Phú Hòa', NULL)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (45, 1, N'Minhtam - Nha tro sasa', NULL, N'Screenshot (1).png', N'', 200000.0000, NULL, 3, 50, 2, NULL, 1, NULL, NULL, CAST(N'2023-07-23T15:08:00' AS SmallDateTime), N'Lê Hồng Phong, Phú Hòa, Thành Phố Thủ Dầu Một , Tỉnh Bình Dương ', 13000.0000, 20000.0000, 5000.0000, 500015000.0000, N'Phú Hòa', 1)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (50, 1, N'Nhà trọ giá rẻ nhất việt nam', NULL, N'eaa7dafb-31f1-47de-917b-2b5d92c46500_1557916816.jpg', N'tam

', 200000.0000, NULL, 2, 25, 1, NULL, 1, NULL, NULL, CAST(N'2023-07-24T00:00:00' AS SmallDateTime), N'Lê Hồng Phong, Phú Hòa, Thành Phố Thủ Dầu Một , Tỉnh Bình Dương ', 13000.0000, 20000.0000, 5000.0000, 500015000.0000, N'Phú Hòa', 1)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (51, 169, N'nhà trọ tốt cho sinh viên', NULL, N'eaa7dafb-31f1-47de-917b-2b5d92c46500_1557916816.jpg', N'aaaaaa

', 600000.0000, NULL, 3, 25, 1, NULL, 1, NULL, NULL, CAST(N'2023-07-24T20:45:00' AS SmallDateTime), N'Trần Văn Ơn, Phú Hòa, Thành phố Thủ Dầu Một, Tỉnh Bình Dương', 100000.0000, 20000.0000, 2000.0000, 500000200000.0000, N'Phú Hòa', 2)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (52, 170, N'nhà trọ cho sinh viên thủ dầu một', NULL, N'eaa7dafb-31f1-47de-917b-2b5d92c46500_1557916816.jpg', N'', 1200000.0000, NULL, 2, 25, 1, NULL, 1, NULL, NULL, CAST(N'2023-07-24T20:59:00' AS SmallDateTime), N'', 0.0000, 0.0000, 0.0000, 0.0000, N'Phú Hòa', 1)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (53, 171, N'phòng trọ rẻ nhất thủ dầu một', NULL, N'eaa7dafb-31f1-47de-917b-2b5d92c46500_1557916816.jpg', N'', 200000.0000, NULL, 1, 36, 1, NULL, 1, NULL, NULL, CAST(N'2023-07-24T21:14:00' AS SmallDateTime), N'Lê Hồng Phong, Phú Hòa, Thành Phố Thủ Dầu Một , Tỉnh Bình Dương ', 13000.0000, 20000.0000, 5000.0000, 500015000.0000, N'Phú Hòa', 1)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (54, 172, N'nhà trọ giá rẻ chất lượng cao', NULL, N'eaa7dafb-31f1-47de-917b-2b5d92c46500_1557916816.jpg', N'', 200000.0000, NULL, 1, 25, 1, NULL, 1, NULL, NULL, CAST(N'2023-07-24T21:22:00' AS SmallDateTime), N'Lê Hồng Phong, Phú Hòa, Thành Phố Thủ Dầu Một , Tỉnh Bình Dương ', 13000.0000, 20000.0000, 5000.0000, 500015000.0000, N'Phú Hòa', 1)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (55, 173, N'phòng trọ chất lượng giá cao', NULL, N'eaa7dafb-31f1-47de-917b-2b5d92c46500_1557916816.jpg', N'', 4000000.0000, NULL, 3, 25, 1, NULL, 1, NULL, NULL, CAST(N'2023-07-24T21:52:00' AS SmallDateTime), N'', 0.0000, 0.0000, 0.0000, 0.0000, N'Phú Hòa', 1)
INSERT [dbo].[BAIDANG] ([Id], [Id_ChuTro], [TenPhong], [Slug], [AnhBia], [MoTa], [GiaCa], [HoaHong], [TrangThai], [DienTich], [SoLuong], [Contents], [Doituong], [Map], [Video_link], [Ngay], [Diachi], [Nuoc], [Dien], [Internet], [GuiXe], [KhuVuc], [Id_Phong]) VALUES (56, 176, N'nhà trọ thủ dầu một lê hồng phong', NULL, N'eaa7dafb-31f1-47de-917b-2b5d92c46500_1557916816.jpg', N'', 400000.0000, NULL, 3, 25, 1, NULL, 1, NULL, NULL, CAST(N'2023-07-24T22:25:00' AS SmallDateTime), N'', 0.0000, 0.0000, 0.0000, 0.0000, N'Phú Hòa', 1)
SET IDENTITY_INSERT [dbo].[BAIDANG] OFF
GO
SET IDENTITY_INSERT [dbo].[BAOCAO] ON 

INSERT [dbo].[BAOCAO] ([Id], [Id_NguoiDung], [Id_PhongTro], [NoiDung], [TrangThai]) VALUES (1, 1, 1, N'454', 1)
INSERT [dbo].[BAOCAO] ([Id], [Id_NguoiDung], [Id_PhongTro], [NoiDung], [TrangThai]) VALUES (2, 1, 1, N'lường mih tâm Móa nó', 1)
INSERT [dbo].[BAOCAO] ([Id], [Id_NguoiDung], [Id_PhongTro], [NoiDung], [TrangThai]) VALUES (3, 15, 1, N'phòng bị hỏng', 1)
SET IDENTITY_INSERT [dbo].[BAOCAO] OFF
GO
SET IDENTITY_INSERT [dbo].[CHUTRO] ON 

INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (1, NULL, NULL, 1, 2)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (2, NULL, NULL, 1, 3)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (142, NULL, NULL, 1, 50)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (153, NULL, NULL, 1, 24)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (154, NULL, NULL, 1, 55)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (159, NULL, NULL, 1, 61)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (160, NULL, NULL, 1, 62)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (162, NULL, NULL, 1, 64)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (163, NULL, NULL, 1, 65)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (164, NULL, NULL, 1, 66)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (165, NULL, NULL, 1, 67)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (166, NULL, NULL, 1, 68)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (167, NULL, NULL, 1, 69)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (168, NULL, NULL, 1, 70)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (169, NULL, NULL, 1, 71)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (170, NULL, NULL, 1, 73)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (171, NULL, NULL, 1, 75)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (172, NULL, NULL, 1, 77)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (173, NULL, NULL, 1, 79)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (174, NULL, NULL, 1, 84)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (175, NULL, NULL, 1, 87)
INSERT [dbo].[CHUTRO] ([Id], [Facebook], [Avatar], [TrangThai], [Id_TaiKhoan]) VALUES (176, NULL, NULL, 1, 89)
SET IDENTITY_INSERT [dbo].[CHUTRO] OFF
GO
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (2, NULL, CAST(N'2023-03-11T09:38:00' AS SmallDateTime), 3, 15)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (4, NULL, CAST(N'2023-04-18T14:09:00' AS SmallDateTime), 1, 19)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (5, NULL, CAST(N'2023-04-18T14:21:00' AS SmallDateTime), 1, 4)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1007, NULL, CAST(N'2023-04-22T22:11:00' AS SmallDateTime), 1, 5)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1008, NULL, CAST(N'2023-04-22T22:26:00' AS SmallDateTime), 1, 6)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1009, NULL, CAST(N'2023-04-22T22:29:00' AS SmallDateTime), 1, 7)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1010, NULL, CAST(N'2023-04-22T22:35:00' AS SmallDateTime), 1, 12)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1011, NULL, CAST(N'2023-04-22T22:38:00' AS SmallDateTime), 1, 15)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1012, NULL, CAST(N'2023-04-22T22:44:00' AS SmallDateTime), 1, 20)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1013, NULL, CAST(N'2023-04-22T22:53:00' AS SmallDateTime), 1, 19)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1014, NULL, CAST(N'2023-04-26T12:20:00' AS SmallDateTime), 6, 6)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1019, NULL, CAST(N'2023-06-06T18:54:00' AS SmallDateTime), 1, 36)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1020, NULL, CAST(N'2023-06-06T18:54:00' AS SmallDateTime), 1, 33)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1021, NULL, CAST(N'2023-06-06T19:39:00' AS SmallDateTime), 1, 37)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1022, NULL, CAST(N'2023-07-23T15:06:00' AS SmallDateTime), 1, 6)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1023, NULL, CAST(N'2023-07-23T15:08:00' AS SmallDateTime), 1, 45)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1024, NULL, CAST(N'2023-07-24T12:48:00' AS SmallDateTime), 1, 50)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1025, NULL, CAST(N'2023-07-24T20:45:00' AS SmallDateTime), 1, 51)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1026, NULL, CAST(N'2023-07-24T20:45:00' AS SmallDateTime), 1, 51)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1027, NULL, CAST(N'2023-07-24T21:01:00' AS SmallDateTime), 12, 52)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1028, NULL, CAST(N'2023-07-24T21:51:00' AS SmallDateTime), 15, 55)
INSERT [dbo].[DONHANG] ([IdDH], [DaThanhToan], [NgayDat], [Id_NguoiDung], [Id_Phong]) VALUES (1029, NULL, CAST(N'2023-07-24T22:25:00' AS SmallDateTime), 22, 56)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[HOTRO] ON 

INSERT [dbo].[HOTRO] ([Id], [Ten], [Sdt], [MotaVande]) VALUES (1, N'Ai Do', N'06546541', N'Không')
INSERT [dbo].[HOTRO] ([Id], [Ten], [Sdt], [MotaVande]) VALUES (2, N'Ẩn danh', N'987654321', N'Không thể tìm kiếm ')
INSERT [dbo].[HOTRO] ([Id], [Ten], [Sdt], [MotaVande]) VALUES (3, N'1', N'2', N'3')
SET IDENTITY_INSERT [dbo].[HOTRO] OFF
GO
SET IDENTITY_INSERT [dbo].[IMAGES] ON 

INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (1, 4, N'a3.jpg', NULL, N'a2.jpg', N'a1.jpg', N'a4.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (3, 5, N'a1.jpg ', NULL, N'a2.jpg', N'a4.jpg', N'a3.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (4, 6, N'a2.jpg', NULL, N'a4.jpg', N'a3.jpg', N'a1.jpg ', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (7, 7, N'a4.jpg', NULL, N'a2.jpg', N'a1.jpg', N'a3.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (9, 12, N'a4.jpg', NULL, N'a1.jpg', N'a2.jpg', N'a3.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (10, 15, N'a4.jpg', NULL, N'a2.jpg', N'a1.jpg', N'a3.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (11, 17, N'a2.jpg', NULL, N'a2.jpg', N'a2.jpg', N'a2.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (12, 18, N'a18_1.jpg', NULL, N'a18_2.jpg', N'a18_3.jpg', N'a18_4.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (13, 19, N'a19_1.jpg', NULL, N'a19_2.jpg', N'a19_3.jpg', N'a19_4.jpg', N'a19_5.jpg', NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (14, 20, N'a20_1.jpg', NULL, N'a20_2.jpg', N'a20_3.jpg', N'a20_4.jpg', N'a20_5.jpg', NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (15, 23, N'a20_1.jbg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (21, 29, N'a29_1.jpg', NULL, N'a29_2.jpg', N'a29_3.jpg', N'a29_4.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (22, 30, N'a30_1.jpg', NULL, N'a30_2.jpg', N'a30.jpg', N'a30_4.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (23, 31, N'a31_1.jpg', NULL, N'a31_2.jpg', N'a31_3.jpg', NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (24, 32, N'a32_1.jpg', NULL, N'a32_2.jpg', N'a32_3.jpg', N'a32_4.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (25, 33, N'a2.jpg', NULL, N'a3.jpg', N'a5.jpg', NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (26, 33, N'41c9d057b2e923f09da96fd22fcf01cb-2813366249800309866.jpg', NULL, N'1a423dbb46e64ba6c189e866a3a7fee4-2813366249825466436.jpg', N'511a65eb2a00620b391c95d1a2ccf052-2813366250639487636.jpg', N'6e7871208ec554688342156e3562f96e-2813366249698151187.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (27, 34, N'2cd0aac5-c644-44c9-b220-5cc9d04b6a20_1684568188.jpg', NULL, N'cbe0af38-d8d5-4c9c-867d-0acd22bf0149_1684568183.jpg', N'e68d7e53-8bfe-4a00-a5d4-233cf71df298_1684568179.jpg', N'14fa7f46-1cd6-4ee8-bbd0-b01dd1b9f2c3_1684568179.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (28, 35, N'656014e001fb9e1817a2d8e9aecbf043-2828283704234101344.jpg', NULL, N'df63e7a8df2f55feecf296f0fadb4d8c-2828283704384276300.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (29, 36, N'21d6e712729c7f4322f6bbde0f2360a0-2781704374432502761.jpg', NULL, N'5cabb11349629d017412750284b3c3c0-2781704324897259320.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (30, 37, N'070708befdbd376299466a6d67a088f7-2828028081066537405.jpg', NULL, N'27b27de69b78af5fb01f4323f51235ae-2828028080945183168.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (31, 38, N'd2b8312535bacc3c0a1e401c3e5142a3-2826945760917275307.jpg', NULL, N'e8491b6fcaccd0becf674436f53c933a-2826945762289559824.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (32, 39, N'c4c2b6fef60b6e818abf8d2c46d71b3f-2826488947487731357.jpg', NULL, N'663f7aa87c0e60c4e276d8f83a9e6372-2826488947437022870.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (33, 40, N'26e75c139f27c618850695a41dae8e72-2826402967995776733.jpg', NULL, N'07a8f75bf9c2378403b281ddb188d7db-2826402968846202132.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (34, 41, N'62eb2c2395e86d5fe4e5bda56a7b117a-2826575973843318046.jpg', NULL, N'c7e27ed5b08c03b17186769d0a8efcf9-2826575973691230839.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (35, 42, N'd84a2eb88bedec80b15fed3f120c5972-2827591821110928707.jpg', NULL, N'5a159bb681c7f1d6621e6390b5096d48-2827591810252169111.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (36, 43, N'28e451d04b06e7e9c39ab59786427d66-2828536185190575589.jpg', NULL, N'46e922f5bde871458e71afbafb79f91e-2828536185207364805.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (37, 44, N'Screenshot (2).png', NULL, N'Screenshot (3).png', NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (38, 45, N'Screenshot (2).png', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (39, 46, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (40, 47, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (41, 48, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (42, 49, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (43, 50, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (44, 51, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (45, 52, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (46, 53, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (47, 54, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (48, 55, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
INSERT [dbo].[IMAGES] ([Id], [Id_PhongTro], [Url_Path], [ten], [Url_Path2], [Url_Path3], [Url_Path4], [Url_Path5], [Id_TaiKhoan]) VALUES (49, 56, N'5f6ed563-464b-448e-8d9f-427b0446ed70_1557916815.jpg', NULL, N'3d63b5fd-6ef9-4868-ab58-06c0038e2dfc_1557916815.jpg', N'326599e7-ef29-4747-aa23-729756d55e9d_1557916815.jpg', N'34b73384-df05-4c31-bbeb-00c8c22d025e_1557916814.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[IMAGES] OFF
GO
SET IDENTITY_INSERT [dbo].[KHUVUC] ON 

INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (1, N'Hiệp Thành ', N'Binh-Duong', N'Các nhà trong đ?a bàn B?nh Dương', N'', 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (2, N'Phú Lợi', N'Thu-Dau-Mot', N'Các nhà trọ trong địa bàn Thủ Dầu Một', N'', 1, 2)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (3, N'Phú Cường', N'Phu-Hoa', N'Các nhà trong đ?a bàn Phư?ng Phú H?a', N'', 1, 2)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (4, N'Phú Hòa', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (5, N'Phú Thọ', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (6, N'Chánh Nghĩa', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (7, N'Định Hòa', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (8, N'Hòa Phú', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (9, N'Phú Mỹ ', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (10, N'Phú Tân ', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (11, N'Tân An', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (12, N'Hiệp An', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (13, N'Tương Hiệp Bình', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[KHUVUC] ([Id], [Ten], [Slug], [TieuDe], [MoTa], [Parent_Id], [Type]) VALUES (14, N'Chánh Mỹ', NULL, NULL, NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[KHUVUC] OFF
GO
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] ON 

INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (1, NULL, NULL, 4)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (2, NULL, NULL, 14)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (3, NULL, NULL, 17)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (4, NULL, NULL, 25)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (5, NULL, NULL, 33)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (6, NULL, NULL, 40)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (9, NULL, NULL, 45)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (12, NULL, NULL, 72)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (15, NULL, NULL, 78)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (17, NULL, NULL, 81)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (18, NULL, NULL, 82)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (19, NULL, NULL, 83)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (20, NULL, NULL, 85)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (21, NULL, NULL, 86)
INSERT [dbo].[NGUOIDUNG] ([Id], [Facebook], [Avatar], [Id_TaiKhoan]) VALUES (22, NULL, NULL, 88)
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHATRO] ON 

INSERT [dbo].[NHATRO] ([Id], [Id_ChuTro], [TenNhaTro], [KhuVuc], [DiaChi]) VALUES (1, 1, N'Thanh Xuan', N'Phú Hòa', N'Lê Hồng Phong, Phú Hòa, Thành Phố Thủ Dầu Một , Tỉnh Bình Dương ')
INSERT [dbo].[NHATRO] ([Id], [Id_ChuTro], [TenNhaTro], [KhuVuc], [DiaChi]) VALUES (2, 1, N'Minh Tam', N'Phú Hòa', N'Trần Văn Ơn, Phú Hòa, Thành phố Thủ Dầu Một, Tỉnh Bình Dương')
SET IDENTITY_INSERT [dbo].[NHATRO] OFF
GO
SET IDENTITY_INSERT [dbo].[PHONGTRO] ON 

INSERT [dbo].[PHONGTRO] ([Id], [Id_NhaTro], [TenNhaTro], [GiaCa], [TienDien], [TienNuoc], [TienRac], [TienInternet], [TienGuiXe], [TrangThai]) VALUES (1, 1, N'Phong 1', 200000.0000, 20000.0000, 13000.0000, 15000.0000, 5000.0000, 5000.0000, 1)
INSERT [dbo].[PHONGTRO] ([Id], [Id_NhaTro], [TenNhaTro], [GiaCa], [TienDien], [TienNuoc], [TienRac], [TienInternet], [TienGuiXe], [TrangThai]) VALUES (2, 2, N'Phong 2', 600000.0000, 20000.0000, 100000.0000, 200000.0000, 2000.0000, 500000.0000, 1)
SET IDENTITY_INSERT [dbo].[PHONGTRO] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (1, N'admin', N'admin', N'ADMIN', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (2, N'chutro1', N'12345', N'Hoàng', 2, NULL, NULL, N'Bình Dương', CAST(N'1994-01-01T00:00:00' AS SmallDateTime), N'123457865')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (3, N'chutro2', N'12345', N'Hiếu', 2, N'tung231@gmail.com', N'0456456465', N'TP HCM', CAST(N'1999-01-04T00:00:00' AS SmallDateTime), N'07989564123')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (4, N'nguoidung1', N'1', N'HoàngHuy', 3, N'hoang12345@gmail.com', N'033242457', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (5, N'nguoidung2', N'12345', N'Phúc Hiếu', 3, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (10, N'123hieu', N'12345', N'Phuc Hieu', 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (11, N'chutro3', N'123456', N'OK', 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (14, N'nguoidung3', N'12345', N'NGUOIDUNG', 3, N'tam710@gmail.com', N'0339911993', N'Bình Dương', CAST(N'2002-10-07T00:00:00' AS SmallDateTime), N'0363256363')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (15, N'a123', N'12345', N'aaaa', 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (16, N'a123', N'12345', N'aaaaaa', 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (17, N'tammm', N'12345', N'tam', 3, N'tam@gmail.com', N'113', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (19, N'chutro2', N'2', N'chutro2', 2, N'chutro2@gmail.com', N'0333333333', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (20, N'chutro3', N'3', N'chutro2', 2, N'afkkenta710@gmail.com', N'12121212', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (21, N'chutro3', N'3', N'chutro3', 2, N'afkkenta710@gmail.com', N'12121212', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (22, N'chutro4', N'4', N'chutro4', 2, N'afkkenta710@gmail.com', N'12121212', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (23, N'chutro4', N'4', N'chutro4', 2, N'chutro4@gmail.com', N'1231313131', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (24, N'a', N'a', N'tam', 2, N'asd@gmail.com', N'12131231', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (25, N'a', N'a', N'tam', 3, N'asd@gmail.com', N'12131231', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (26, N'tam', N'tam', N'tam', 2, N'tam@gmail.com', N'12313', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (27, N'tam', N'tam', N'hhhhhh', 2, N'tam@gmail.com', N'12313', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (28, N'h', N'h', N'hhhhhh', 2, N'tam@gmail.com', N'12313', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (33, N'1', N'1', N'1', 3, N'1', N'1', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (37, N'chutro5', N'5', N'chutro1', 2, N'ádasdasd', N'123123', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (38, N'chutro5', N'5', N'chutro1', 2, N'ádasdasd', N'123123', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (39, N'ab123', N'12345', N'AAA', 2, N'abba11@gmail.com', N'0123123', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (40, N'NGUOIDUNG05', N'12345', N'nguoidung5', 3, N'abc123321@gmail.com', N'0987894561', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (45, N'222', N'222', N'222', 3, N'222', N'222', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (50, N'888', N'888', N'888', 2, N'888', N'888', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (53, N'000', N'000', N'000', 2, N'000', N'000', NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (54, N'777', N'777', N'777', 3, N'777', N'777', N'777', CAST(N'2023-03-30T00:00:00' AS SmallDateTime), N'777')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (55, N'999', N'999', N'999', 2, N'999', N'999', N'999', CAST(N'2023-04-10T00:00:00' AS SmallDateTime), N'999')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (61, N'qq', N'1', N'qqq', 2, N'hoang1321@gmail.com', N'0332247226', N'Bình Dương', CAST(N'2023-05-13T00:00:00' AS SmallDateTime), N'1313123')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (62, N'tata', N'tata', N'tam', 2, N'afkkenta710@gmail.com', N'010101010', N'dasdsad', CAST(N'2023-05-20T00:00:00' AS SmallDateTime), N'123123123213232')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (64, N'tam', N'1', N'tam', 2, N'luongminhta710@gmail', N'0347013', N'ádasdasd', CAST(N'2023-06-06T00:00:00' AS SmallDateTime), N'123131123')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (65, N'', N'123', N'xuan', 2, N'xuan@gmail.com', N'0121312', N'điasds', CAST(N'2022-08-11T00:00:00' AS SmallDateTime), N'0175888623')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (66, N'thy123', N'123', N'thy', 2, N'thy7921@gmail.com', N'0358999888', N'tân mỹ, tân tuyền', CAST(N'2023-01-11T00:00:00' AS SmallDateTime), N'074202000479')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (67, N'huong123', N'123', N'huong', 2, N'huong710@gmail.com', N'06548256', N'tân mỹ, tân uyên', CAST(N'2022-09-07T00:00:00' AS SmallDateTime), N'07420200489')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (68, N'khanh123', N'123', N'khanh', 2, N'khach', N'123', N'adas', CAST(N'2023-06-28T00:00:00' AS SmallDateTime), N'31231')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (69, N'dungct123', N'1', N'dungct', 2, N'dungct@game.com', N'123123', N'điasds', CAST(N'2023-06-29T00:00:00' AS SmallDateTime), N'13123123')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (70, N'kkk', N'1', N'kkkk', 2, N'ádasds', N'12356', N'tân mỹ, tân tuyền', CAST(N'2023-07-03T00:00:00' AS SmallDateTime), N'0175888623')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (71, N'maian123', N'123', N'maian', 2, N'maian710@gmail.com', N'012356', N'tân mỹ, tân tuyền', CAST(N'2023-07-12T00:00:00' AS SmallDateTime), N'52124521')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (72, N'yen123', N'123', N'yen', 3, N'yen@gmail.com', N'01522222', N'tân mỹ, tân tuyền', CAST(N'2023-07-06T00:00:00' AS SmallDateTime), N'112232112')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (73, N'cong123', N'1', N'cong', 2, N'cong@gmail.com', N'12313212', N'thủ dàu một', CAST(N'2023-07-24T00:00:00' AS SmallDateTime), N'07422222')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (74, N'phuc123', N'123', N'phuc', 3, N'phuc123@gmail.com', N'0698547', N'tân mỹ, tân tuyền', CAST(N'2022-09-07T00:00:00' AS SmallDateTime), N'02856947')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (75, N'tuan123', N'1', N'tuan', 2, N'tuan710@gmail.com', N'0968525', N'thủ dàu một', CAST(N'2022-09-14T00:00:00' AS SmallDateTime), N'058964723')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (76, N'dung123', N'123', N'dung', 3, N'dung123@gmail.com', N'23256555', N'tân mỹ, tân tuyền', CAST(N'2023-02-09T00:00:00' AS SmallDateTime), N'5698792')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (77, N'vy123', N'1', N'vy', 2, N'vy123@gmail.com', N'56587942', N'thủ dàu một', CAST(N'2023-05-17T00:00:00' AS SmallDateTime), N'25478963')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (78, N'tai123', N'123', N'tai', 3, N'tai123@gmail.com', N'12387785', N'thân', CAST(N'2023-07-05T00:00:00' AS SmallDateTime), N'55552214')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (79, N'hao123', N'1', N'hao', 2, N'hao123@gmail.com', N'5556478952', N'tân mỹ, tân tuyền', CAST(N'2023-07-06T00:00:00' AS SmallDateTime), N'55896565')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (80, N'duc123', N'123', N'duc', 3, N'duc123@gmail.com', N'6598741', N'tân mỹ, tân tuyền', CAST(N'2023-07-20T00:00:00' AS SmallDateTime), N'659874133')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (81, N'duc123', N'123', N'duc', 3, N'duc123@gmail.com', N'123000025', N'tân mỹ, tân tuyền', CAST(N'2023-06-08T00:00:00' AS SmallDateTime), N'36556285')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (82, N'quang123', N'123', N'quang', 3, N'quan123@gmail.com', N'55685232', N'tân mỹ, tân tuyền', CAST(N'2023-04-06T00:00:00' AS SmallDateTime), N'89552574')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (83, N'duong123', N'123', N'duong', 3, N'duong@gmail.com', N'45585552', N'tân mỹ, tân tuyền', CAST(N'2023-06-29T00:00:00' AS SmallDateTime), N'586555212')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (84, N'', N'123', N'thuan', 2, N'thuan@gmail.com', N'02359525', N'tân mỹ, tân tuyền', CAST(N'2023-07-15T00:00:00' AS SmallDateTime), N'8615525')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (85, N'truong123', N'123', N'truong', 3, N'truong123@gmail.com', N'45541232', N'tân mỹ, tân tuyền', CAST(N'2023-07-07T00:00:00' AS SmallDateTime), N'3123128789')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (86, N'vu123', N'123', N'vu', 3, N'vu@gmail.com', N'4565516565', N'tân mỹ, tân tuyền', CAST(N'2023-07-06T00:00:00' AS SmallDateTime), N'65656265')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (87, N'thom123', N'123', N'thom', 2, N'thom@gmail.com', N'55566882', N'thủ dàu một', CAST(N'2023-06-30T00:00:00' AS SmallDateTime), N'115588966')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (88, N'trung123', N'1', N'trung ', 3, N'trung@gmail.com', N'789562', N'tân mỹ, tân tuyền', CAST(N'2023-07-07T00:00:00' AS SmallDateTime), N'25852852')
INSERT [dbo].[TAIKHOAN] ([Id], [TaiKhoan], [MatKhau], [HoTen], [PhanQuyen], [Email], [SDT], [DiaChi], [NgaySinh], [CCCD]) VALUES (89, N'ha123', N'123', N'ha', 2, N'ha@gmail.com', N'45256851', N'thủ dàu một', CAST(N'2023-07-01T00:00:00' AS SmallDateTime), N'879451213')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ADMIN__A9D105346090C093]    Script Date: 7/24/2023 10:41:57 PM ******/
ALTER TABLE [dbo].[ADMIN] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BAIDANG] ADD  CONSTRAINT [DF__PHONGTRO__GiaCa__4E88ABD4]  DEFAULT ((0)) FOR [GiaCa]
GO
ALTER TABLE [dbo].[BAIDANG] ADD  CONSTRAINT [DF__PHONGTRO__TrangT__4F7CD00D]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[KHUVUC] ADD  DEFAULT ((0)) FOR [Parent_Id]
GO
ALTER TABLE [dbo].[KHUVUC] ADD  DEFAULT ((1)) FOR [Type]
GO
ALTER TABLE [dbo].[PHONGTRO_DUYET] ADD  DEFAULT ((4)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[PHONGTRO_DUYET] ADD  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[ANH_CCCD]  WITH CHECK ADD FOREIGN KEY([IdTaiKhoan])
REFERENCES [dbo].[TAIKHOAN] ([Id])
GO
ALTER TABLE [dbo].[ANH_CCCD]  WITH CHECK ADD  CONSTRAINT [FK_ANH_CCCD_IdTaiKhoan] FOREIGN KEY([IdTaiKhoan])
REFERENCES [dbo].[TAIKHOAN] ([Id])
GO
ALTER TABLE [dbo].[ANH_CCCD] CHECK CONSTRAINT [FK_ANH_CCCD_IdTaiKhoan]
GO
ALTER TABLE [dbo].[BAOCAO]  WITH CHECK ADD FOREIGN KEY([Id_NguoiDung])
REFERENCES [dbo].[NGUOIDUNG] ([Id])
GO
ALTER TABLE [dbo].[BAOCAO]  WITH CHECK ADD FOREIGN KEY([Id_PhongTro])
REFERENCES [dbo].[PHONGTRO] ([Id])
GO
ALTER TABLE [dbo].[CHUTRO]  WITH CHECK ADD  CONSTRAINT [FK_CHUTRO_TAIKHOAN] FOREIGN KEY([Id_TaiKhoan])
REFERENCES [dbo].[TAIKHOAN] ([Id])
GO
ALTER TABLE [dbo].[CHUTRO] CHECK CONSTRAINT [FK_CHUTRO_TAIKHOAN]
GO
ALTER TABLE [dbo].[CSVATCHAT]  WITH CHECK ADD  CONSTRAINT [FK_CSVC_PT] FOREIGN KEY([Id_PhongTro])
REFERENCES [dbo].[BAIDANG] ([Id])
GO
ALTER TABLE [dbo].[CSVATCHAT] CHECK CONSTRAINT [FK_CSVC_PT]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_NGUOIDUNG] FOREIGN KEY([Id_NguoiDung])
REFERENCES [dbo].[NGUOIDUNG] ([Id])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_NGUOIDUNG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([Id_DonHang])
REFERENCES [dbo].[DONHANG] ([IdDH])
GO
ALTER TABLE [dbo].[LUUTIN]  WITH CHECK ADD  CONSTRAINT [FK_LT_ND] FOREIGN KEY([Id_NguoiDung])
REFERENCES [dbo].[NGUOIDUNG] ([Id])
GO
ALTER TABLE [dbo].[LUUTIN] CHECK CONSTRAINT [FK_LT_ND]
GO
ALTER TABLE [dbo].[LUUTIN]  WITH CHECK ADD  CONSTRAINT [FK_LT_PT] FOREIGN KEY([Id_PhongTro])
REFERENCES [dbo].[BAIDANG] ([Id])
GO
ALTER TABLE [dbo].[LUUTIN] CHECK CONSTRAINT [FK_LT_PT]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_TAIKHOAN] FOREIGN KEY([Id_TaiKhoan])
REFERENCES [dbo].[TAIKHOAN] ([Id])
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_TAIKHOAN]
GO
ALTER TABLE [dbo].[NHATRO]  WITH CHECK ADD FOREIGN KEY([Id_ChuTro])
REFERENCES [dbo].[CHUTRO] ([Id])
GO
ALTER TABLE [dbo].[PHONGTRO]  WITH CHECK ADD FOREIGN KEY([Id_NhaTro])
REFERENCES [dbo].[NHATRO] ([Id])
GO
ALTER TABLE [dbo].[PHONGTRO_DUYET]  WITH CHECK ADD  CONSTRAINT [FK_PHONGTRO_DUYET_CHUTRO] FOREIGN KEY([Id_ChuTro])
REFERENCES [dbo].[CHUTRO] ([Id])
GO
ALTER TABLE [dbo].[PHONGTRO_DUYET] CHECK CONSTRAINT [FK_PHONGTRO_DUYET_CHUTRO]
GO
ALTER TABLE [dbo].[BAIDANG]  WITH CHECK ADD  CONSTRAINT [CK__PHONGTRO__DienTi__59063A47] CHECK  (([DienTich]>(0)))
GO
ALTER TABLE [dbo].[BAIDANG] CHECK CONSTRAINT [CK__PHONGTRO__DienTi__59063A47]
GO
ALTER TABLE [dbo].[BAIDANG]  WITH CHECK ADD  CONSTRAINT [CK__PHONGTRO__GiaCa__59FA5E80] CHECK  (([GiaCa]>=(0)))
GO
ALTER TABLE [dbo].[BAIDANG] CHECK CONSTRAINT [CK__PHONGTRO__GiaCa__59FA5E80]
GO
ALTER TABLE [dbo].[BAIDANG]  WITH CHECK ADD  CONSTRAINT [CK__PHONGTRO__SoLuon__5AEE82B9] CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[BAIDANG] CHECK CONSTRAINT [CK__PHONGTRO__SoLuon__5AEE82B9]
GO
