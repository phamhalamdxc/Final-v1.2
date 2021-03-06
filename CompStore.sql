USE [master]
GO
/****** Object:  Database [COmpStore]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE DATABASE [COmpStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'COmpStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\COmpStore.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'COmpStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\COmpStore_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [COmpStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [COmpStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [COmpStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [COmpStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [COmpStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [COmpStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [COmpStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [COmpStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [COmpStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [COmpStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [COmpStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [COmpStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [COmpStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [COmpStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [COmpStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [COmpStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [COmpStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [COmpStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [COmpStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [COmpStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [COmpStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [COmpStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [COmpStore] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [COmpStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [COmpStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [COmpStore] SET  MULTI_USER 
GO
ALTER DATABASE [COmpStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [COmpStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [COmpStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [COmpStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [COmpStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [COmpStore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[InStock] [int] NOT NULL,
	[MadeIn] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[PublisherId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publishers]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publishers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Publishers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 09-Nov-17 11:59:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171107143856_FirstData', N'2.0.0-rtm-26452')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (1, N'Laptop')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (2, N'Điện thoại')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (3, N'Máy tính bảng')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (4, N'Máy tính Destop')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (5, N'Màn hình PC')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (6, N'Linh kiện')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (1, N'APPLE IMac 5K 27', N'APPLE_iMac_5K_27.jpg', 0, N'China', CAST(25000000.00 AS Decimal(18, 2)), N'APPLE iMac 5K 27', 1, 4)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (4, N'DELL Inspiron 5000', N'Dell_Inspiron_746_i5_7200U.png', 0, N'Us', CAST(18000000.00 AS Decimal(18, 2)), N'DELL Inspiron 5000', 4, 10)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (5, N'Dell Inspiron 5378 i5 7200U', N'DELL_Inspiron_5000.jpg', 0, N'Us', CAST(17000000.00 AS Decimal(18, 2)), N'Dell Inspiron 5378 i5 7200U', 4, 1)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (6, N'Dell Inspiron 7460 i5 7200U', N'Dell_Inspiron_5378_i5_7200U.jpg', 0, N'Us', CAST(19000000.00 AS Decimal(18, 2)), N'Dell Inspiron 7460 i5 7200U', 4, 1)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (7, N'Dell Vostro 3568 i3 7100U', N'Dell_Vostro_3568_i3_7100U.jpg', 0, N'Us', CAST(22000000.00 AS Decimal(18, 2)), N'Dell Vostro 3568 i3 7100U', 4, 1)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (9, N'Dell Xps 2015', N'Dell_Xps_2015.jpg', 0, N'Us', CAST(32000000.00 AS Decimal(18, 2)), N'Dell Xps 2015', 4, 1)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (10, N'HP 24-g080na 24', N'HP_24_g080na_24.jpg', 1, N'Us', CAST(14000000.00 AS Decimal(18, 2)), N'HP 24-g080na 24', 5, 11)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (12, N'HP 260-a104na Desktop PC', N'HP_260_a104na_Desktop.jpg', 1, N'Us', CAST(15000000.00 AS Decimal(18, 2)), N'NULLHP 260-a104na Desktop PC', 5, 11)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (13, N'HP Envy 13 ad074TU i7 7500U', N'HP_Envy_13_ad074TU_i7_7500U.jpg', 1, N'Us', CAST(27000000.00 AS Decimal(18, 2)), N'HP Envy 13 ad074TU i7 7500U', 5, 2)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (14, N'iPad Pro 10.5 inch Wifi 64GB', N'Pro_10.5_inch_Wifi_64GB.png', 2, N'China', CAST(14000000.00 AS Decimal(18, 2)), N'iPad Pro 10.5 inch Wifi 64GB', 1, 8)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (16, N'iPad Wifi Cellular 32GB (2017)', N'iPad_Wifi_Cellular_32GB_2017.png', 3, N'China', CAST(16000000.00 AS Decimal(18, 2)), N'iPad Wifi Cellular 32GB (2017)', 1, 8)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (17, N'Iphone-7-Plus ', N'Iphone_7_Plus .jpg', 4, N'China', CAST(18000000.00 AS Decimal(18, 2)), N'Iphone-7-Plus ', 1, 4)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (19, N'Laptop HP 15 bs578TU N3710', N'Laptop_HP_15_bs578TU_N3710.jpg', 2, N'Us', CAST(23000000.00 AS Decimal(18, 2)), N'Laptop HP 15 bs578TU N3710', 5, 2)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (20, N'Macbook 12 MLH82 Core M 1.2GHz', N'Macbook_12_MLH82_Core_M_12GHz.jpg', 3, N'China', CAST(31000000.00 AS Decimal(18, 2)), N'Macbook 12 MLH82 Core M 1.2GHz', 1, 3)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (21, N'Macbook 12 MMGM2 Core M 1.2GHz', N'Macbook_12_MMGM2_Core_M_12GHz.jpg', 1, N'China', CAST(37000000.00 AS Decimal(18, 2)), N'Macbook 12 MMGM2 Core M 1.2GHz', 1, 3)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (22, N'Macbook Pro Touch MLH32SA i7', N'Macbook_Pro_Touch_MLH32SA_i7.jpg', 2, N'China', CAST(42000000.00 AS Decimal(18, 2)), N'Macbook Pro Touch MLH32SA i7', 1, 3)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (23, N'Màn hình IPS LG 38', N'Màn_hình_IPS_LG_38.jpg', 3, N'Korea', CAST(6800000.00 AS Decimal(18, 2)), N'Màn hình IPS LG 38', 6, 15)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (24, N'MÀN HÌNH VI TÍNH DELL E2016H', N'MÀN_HÌNH_VI_TÍNH_DELLE-2016H.jpg', 3, N'Us', CAST(4700000.00 AS Decimal(18, 2)), N'MÀN HÌNH VI TÍNH DELL E2016H', 4, 13)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (25, N'MÀN HÌNH VI TÍNH HP 23ES', N'MÀN_HÌNH_VITÍNH_HP_23ES.jpg', 2, N'US', CAST(5200000.00 AS Decimal(18, 2)), N'MÀN HÌNH VI TÍNH HP 23ES', 5, 14)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (26, N'MÀN HÌNH VI TÍNH SAMSUNG qm', N'MÀN_HÌNH_VI TÍNH_SAMSUNG_qm.jpg', 3, N'Korea', CAST(4500000.00 AS Decimal(18, 2)), N'MÀN HÌNH VI TÍNH SAMSUNG qm', 2, 16)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (27, N'Ram ADATA 8GB XPG GAMMIX', N'Ram_ADATA_8GB_XPG_GAMMIX.jpg', 4, N'Taiwan', CAST(3800000.00 AS Decimal(18, 2)), N'Ram ADATA 8GB XPG GAMMIX', 8, 18)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (28, N'Samsung Galaxy Book 10.6 inch', N'Samsung_Galaxy_Book_10.6_inch.png', 6, N'Korea', CAST(14000000.00 AS Decimal(18, 2)), N'Samsung Galaxy Book 10.6 inch', 2, 9)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (29, N'Samsung Galaxy J3 Pro', N'Samsung_Galaxy_J3_Pro.jpg', 3, N'Korea', CAST(19000000.00 AS Decimal(18, 2)), N'Samsung Galaxy J3 Pro', 2, 5)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (30, N'Sony Xperia X', N'Sony_Xperia_X.png', 4, N'Korea', CAST(5400000.00 AS Decimal(18, 2)), N'Sony Xperia X', 2, 5)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (31, N'SSD Samsung 850 EVO 120GB', N'SSD_Samsung_850_EVO_120GB.jpg', 3, N'Korea', CAST(2500000.00 AS Decimal(18, 2)), N'SSD Samsung 850 EVO 120GB', 2, 17)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (33, N'SSD Samsung 960 EVO PCIe', N'SSD_Samsung_960_EVO_PCIe.jpg', 2, N'Korea', CAST(4300000.00 AS Decimal(18, 2)), N'SSD Samsung 960 EVO PCIe', 2, 18)
INSERT [dbo].[Products] ([Id], [Description], [Image], [InStock], [MadeIn], [Price], [ProductName], [PublisherId], [SubCategoryId]) VALUES (34, N'RAM Kingston HyperX 4GB', N'RAM_Kingston_HyperX_4GB.jpg', 5, N'Us', CAST(2300000.00 AS Decimal(18, 2)), N'RAM Kingston HyperX 4GB', 9, 18)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Publishers] ON 

INSERT [dbo].[Publishers] ([Id], [PublisherName]) VALUES (1, N'Apple')
INSERT [dbo].[Publishers] ([Id], [PublisherName]) VALUES (2, N'Samsung')
INSERT [dbo].[Publishers] ([Id], [PublisherName]) VALUES (3, N'Sony')
INSERT [dbo].[Publishers] ([Id], [PublisherName]) VALUES (4, N'Dell')
INSERT [dbo].[Publishers] ([Id], [PublisherName]) VALUES (5, N'Hp')
INSERT [dbo].[Publishers] ([Id], [PublisherName]) VALUES (6, N'LG')
INSERT [dbo].[Publishers] ([Id], [PublisherName]) VALUES (7, N'Corsair')
INSERT [dbo].[Publishers] ([Id], [PublisherName]) VALUES (8, N'Adata')
INSERT [dbo].[Publishers] ([Id], [PublisherName]) VALUES (9, N'Kington')
SET IDENTITY_INSERT [dbo].[Publishers] OFF
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (1, 1, N'Laptop Dell')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (2, 1, N'Laptop Hp')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (3, 1, N'Macbook')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (4, 2, N'Iphone')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (5, 2, N'Điện thoại Samsung')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (7, 2, N'Điện thoại Sony')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (8, 3, N'Máy tính bảng Apple')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (9, 3, N'Máy tính bảng Samsung')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (10, 4, N'Máy tính Destop Dell')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (11, 4, N'Máy tính Destop Hp')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (12, 4, N'Máy tính Destop Apple')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (13, 5, N'Màn hình Dell')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (14, 5, N'Màn hình Hp')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (15, 5, N'Màn hình Lg')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (16, 5, N'Màn hình Samsung')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (17, 6, N'Ổ cứng')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [SubCategoryName]) VALUES (18, 6, N'Ram')
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_PublisherId]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_PublisherId] ON [dbo].[Products]
(
	[PublisherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_SubCategoryId]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_SubCategoryId] ON [dbo].[Products]
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubCategories_CategoryId]    Script Date: 09-Nov-17 11:59:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_SubCategories_CategoryId] ON [dbo].[SubCategories]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Publishers_PublisherId] FOREIGN KEY([PublisherId])
REFERENCES [dbo].[Publishers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Publishers_PublisherId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_SubCategories_SubCategoryId] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_SubCategories_SubCategoryId]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [COmpStore] SET  READ_WRITE 
GO
