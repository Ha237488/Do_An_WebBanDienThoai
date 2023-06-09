USE [master]
GO
/****** Object:  Database [DienThoaiDB]    Script Date: 06/04/2023 1:11:40 PM ******/
CREATE DATABASE [DienThoaiDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DienThoaiDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DienThoaiDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DienThoaiDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DienThoaiDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DienThoaiDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DienThoaiDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DienThoaiDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DienThoaiDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DienThoaiDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DienThoaiDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DienThoaiDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DienThoaiDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DienThoaiDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DienThoaiDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DienThoaiDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DienThoaiDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DienThoaiDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DienThoaiDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DienThoaiDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DienThoaiDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DienThoaiDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DienThoaiDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DienThoaiDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DienThoaiDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DienThoaiDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DienThoaiDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DienThoaiDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DienThoaiDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DienThoaiDB] SET RECOVERY FULL 
GO
ALTER DATABASE [DienThoaiDB] SET  MULTI_USER 
GO
ALTER DATABASE [DienThoaiDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DienThoaiDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DienThoaiDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DienThoaiDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DienThoaiDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DienThoaiDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DienThoaiDB', N'ON'
GO
ALTER DATABASE [DienThoaiDB] SET QUERY_STORE = OFF
GO
USE [DienThoaiDB]
GO
/****** Object:  Table [dbo].[CTDH]    Script Date: 06/04/2023 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDH](
	[MaDon] [int] NOT NULL,
	[MaDT] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CTDH] PRIMARY KEY CLUSTERED 
(
	[MaDon] ASC,
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 06/04/2023 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[MaDT] [int] NOT NULL,
	[TenDT] [nvarchar](50) NULL,
	[MaHDH] [int] NULL,
	[MaNSX] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[Hinh] [nvarchar](100) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuotXem] [int] NULL,
 CONSTRAINT [PK_DienThoai] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 06/04/2023 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDon] [int] NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrang] [int] NULL,
	[MaNguoiDung] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeDieuHanh]    Script Date: 06/04/2023 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeDieuHanh](
	[MaHDH] [int] NOT NULL,
	[TenHDH] [nvarchar](100) NULL,
 CONSTRAINT [PK_HeDieuHanh] PRIMARY KEY CLUSTERED 
(
	[MaHDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 06/04/2023 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[MatKhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[DiaChi] [nvarchar](150) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSX]    Script Date: 06/04/2023 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSX](
	[MaNSX] [int] NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_NhaSX] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 06/04/2023 1:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (1, N'SamSung S8', 1, 1, CAST(25000000 AS Decimal(18, 0)), N'samsung1.png', CAST(N'3023-03-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (2, N'NoKiA', 1, 5, CAST(2300000 AS Decimal(18, 0)), N'nokia.png', CAST(N'2023-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (3, N'SamSung Node8', 1, 1, CAST(12000004 AS Decimal(18, 0)), N'samsung2.png', CAST(N'2023-03-03T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (4, N'Oppo Neo5', 1, 3, CAST(4300000 AS Decimal(18, 0)), N'opponeo5.png', CAST(N'2023-03-07T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (5, N'Iphone 13', 22, 2, CAST(45000000 AS Decimal(18, 0)), N'iphone13.png', CAST(N'2023-03-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (6, N'SamSung j2', 1, 1, CAST(2300000 AS Decimal(18, 0)), N'samsungj2.png', CAST(N'2023-03-22T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (7, N'LumMiA', 1, 7, CAST(1000000 AS Decimal(18, 0)), N'lumia.png', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (8, N'ZTE m3', 1, 10, CAST(2300000 AS Decimal(18, 0)), N'zte.png', CAST(N'2023-03-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (9, N'Oppo', 1, 3, CAST(4000000 AS Decimal(18, 0)), N'oppo.png', CAST(N'2023-03-07T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (10, N'IPhone 8', 22, 2, CAST(23670000 AS Decimal(18, 0)), N'iphone8.png', CAST(N'2023-03-04T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (11, N'Iphone X', 22, 2, CAST(12000000 AS Decimal(18, 0)), N'iphoneX.png', CAST(N'2023-03-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (12, N'Iphone 11', 22, 2, CAST(43000000 AS Decimal(18, 0)), N'iphone11.png', CAST(N'2023-03-05T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (13, N'NOKIA A12', 1, 5, CAST(1200000 AS Decimal(18, 0)), N'nokiaa12.png', CAST(N'2023-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (14, N'OPPO A5', 1, 3, CAST(12300000 AS Decimal(18, 0)), N'oppoa5.png', CAST(N'2023-03-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (15, N'VIVO Y21', 1, 4, CAST(4000000 AS Decimal(18, 0)), N'vivoy21.png', CAST(N'2023-03-19T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (16, N'VIVO Y22', 1, 4, CAST(4500000 AS Decimal(18, 0)), N'vivoy22.png', CAST(N'2023-03-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (17, N'Readme Nazo', 6, 8, CAST(4000000 AS Decimal(18, 0)), N'readme.png', CAST(N'2023-03-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (18, N'Xiaaomi red', 4, 6, CAST(2300000 AS Decimal(18, 0)), N'xiaomi.png', CAST(N'2023-03-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (19, N'Readme Y22', 1, 8, CAST(4500000 AS Decimal(18, 0)), N'readmey22.png', CAST(N'2023-03-29T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (20, N'Iphone 14', 22, 2, CAST(40000000 AS Decimal(18, 0)), N'iphone14.png', CAST(N'2023-03-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (21, N'Iphone 14 Pro Max', 22, 2, CAST(50000000 AS Decimal(18, 0)), N'iphone14pr.png', CAST(N'2022-01-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (22, N'Iphone 8 Plus', 22, 2, CAST(15000000 AS Decimal(18, 0)), N'iphone8plus.png', CAST(N'2022-01-03T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (23, N'Iphone 7', 22, 2, CAST(6500000 AS Decimal(18, 0)), N'iphone7.png', CAST(N'2022-01-04T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (24, N'SamSung Galaxy S22', 1, 1, CAST(20000000 AS Decimal(18, 0)), N'samsunggalaxys22.png', CAST(N'2022-01-05T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (25, N'SamSung A52', 1, 1, CAST(26500000 AS Decimal(18, 0)), N'samsung4.png', CAST(N'2022-01-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (26, N'SamSung J50', 1, 1, CAST(16500000 AS Decimal(18, 0)), N'samsung5.png', CAST(N'2022-01-07T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (27, N'SamSung Galaxy Flip 4', 1, 1, CAST(35000000 AS Decimal(18, 0)), N'samsung6.png', CAST(N'2022-01-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (28, N'Oppo A94', 1, 3, CAST(19500000 AS Decimal(18, 0)), N'oppoa94.png', CAST(N'2022-01-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (29, N'Oppo Reno 8T', 1, 3, CAST(20000000 AS Decimal(18, 0)), N'oppo8t.png', CAST(N'2022-01-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (30, N'Oppo A78', 1, 3, CAST(17800000 AS Decimal(18, 0)), N'oppoa78.png', CAST(N'2022-01-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (31, N'VIVO T1', 1, 4, CAST(3650000 AS Decimal(18, 0)), N'vivot1.png', CAST(N'2022-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (32, N'VIVO Y16', 1, 4, CAST(7500000 AS Decimal(18, 0)), N'vivoy16.png', CAST(N'2022-01-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (33, N'VIVO V2', 1, 4, CAST(6500000 AS Decimal(18, 0)), N'vivov2.png', CAST(N'2022-01-14T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (34, N'Nokia A10', 1, 5, CAST(750000 AS Decimal(18, 0)), N'nokia10.png', CAST(N'2022-01-15T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (35, N'Nokia U11', 1, 5, CAST(965000 AS Decimal(18, 0)), N'nokia11.png', CAST(N'2022-01-16T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (36, N'Nokia K12', 1, 5, CAST(1000000 AS Decimal(18, 0)), N'nokia12.png', CAST(N'2022-01-17T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (37, N'Readme C3', 6, 8, CAST(6750000 AS Decimal(18, 0)), N'readmec3.png', CAST(N'2022-01-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (38, N'Readme Pro J11', 6, 8, CAST(9000000 AS Decimal(18, 0)), N'readme11.png', CAST(N'2022-01-19T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (39, N'Readme A7 Max', 6, 8, CAST(9750000 AS Decimal(18, 0)), N'readme7.png', CAST(N'2022-01-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (40, N'Xiaomi X Pro', 4, 6, CAST(14500000 AS Decimal(18, 0)), N'xiaomix.png', CAST(N'2022-01-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (41, N'Xiaomi A13', 4, 6, CAST(8650000 AS Decimal(18, 0)), N'xiaomi13.png', CAST(N'2022-01-22T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [MaHDH], [MaNSX], [DonGia], [Hinh], [NgayCapNhat], [SoLuotXem]) VALUES (42, N'Xiaomi A12 Z', 4, 6, CAST(7500000 AS Decimal(18, 0)), N'xiaomi12.png', CAST(N'2022-01-23T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[HeDieuHanh] ([MaHDH], [TenHDH]) VALUES (1, N'Android')
INSERT [dbo].[HeDieuHanh] ([MaHDH], [TenHDH]) VALUES (4, N'Symbian')
INSERT [dbo].[HeDieuHanh] ([MaHDH], [TenHDH]) VALUES (6, N'Bada')
INSERT [dbo].[HeDieuHanh] ([MaHDH], [TenHDH]) VALUES (12, N'BlackBerry OS')
INSERT [dbo].[HeDieuHanh] ([MaHDH], [TenHDH]) VALUES (13, N'WinDows Phone')
INSERT [dbo].[HeDieuHanh] ([MaHDH], [TenHDH]) VALUES (22, N'IOS')
GO
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [Email], [DienThoai], [MatKhau], [IDQuyen], [DiaChi]) VALUES (14, N'Nguyen Dinh Ha', N'ha@gmail.com', N'0399207862', N'123456', 2, N'553 Nguyễn Văn khối')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [Email], [DienThoai], [MatKhau], [IDQuyen], [DiaChi]) VALUES (15, N'Le Trung Thuc', N'Thuc@gmail.com', N'123456778', N'123abc', 2, N'112 Nguyễn Văn Nghi')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [Email], [DienThoai], [MatKhau], [IDQuyen], [DiaChi]) VALUES (16, N'Gia Kiet', N'kiet123@gmail.com', N'012345676', N'12345678', 1, N'939 Nguyễn Kiệm')
GO
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (1, N'SAM SUNG', N'553 Nguyễn Văn Khói', N'0399207862')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (2, N'APPLE', N'142 Nguyễn Văn Cừ P8', N'0335661278')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (3, N'OPPO', N'23 Thẩm Quyến Trung Quốc', N'1234567890')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (4, N'VYVO', N'65 Phạm Văn Đồng P10', N'0346844489')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (5, N'NOKIA', N'78 LankMak Thanh Phố Hồ Chí Minh', N'0322245678')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (6, N'XIAOMI', N'111 Quang Trung P4', N'0346788896')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (7, N'LUMIA', N'112 Lê Lợi', N'0999999999')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (8, N'REAMED', N'89 Hoàng Diệu, Thanh Xuân, Hà Nội', N'0234555555')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (9, N'LINUX', N'555  Phổ quang TP. Hồ Chí Minh', N'0999998965')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (10, N'ZTE', N'936 Nguyễn VĂn Nghi, TP. Hồ Chí Minh', N'0123465321')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (11, N'Hà lóc chóc', N'51/18/2A Phạm Văn Chiêu P.11, Quận Gò Vấp', N'0903719504')
GO
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
GO
USE [master]
GO
ALTER DATABASE [DienThoaiDB] SET  READ_WRITE 
GO
