USE [master]
GO
/****** Object:  Database [ProjectKitabciDB]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE DATABASE [ProjectKitabciDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectKitabciDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.AYTACMSSQL\MSSQL\DATA\ProjectKitabciDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectKitabciDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.AYTACMSSQL\MSSQL\DATA\ProjectKitabciDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectKitabciDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectKitabciDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectKitabciDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectKitabciDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectKitabciDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectKitabciDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectKitabciDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProjectKitabciDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjectKitabciDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectKitabciDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectKitabciDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectKitabciDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectKitabciDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectKitabciDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectKitabciDB', N'ON'
GO
ALTER DATABASE [ProjectKitabciDB] SET QUERY_STORE = OFF
GO
USE [ProjectKitabciDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/26/2021 12:33:57 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/26/2021 12:33:57 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[TimeStamp] [datetime2](7) NULL,
	[Text] [nvarchar](500) NULL,
	[UserID] [nvarchar](128) NULL,
	[Rating] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentToProducts]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentToProducts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CommentID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_CommentToProducts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[PhoneNumber1] [int] NULL,
	[PhoneNumber2] [int] NULL,
	[SiteName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre_To_Product]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre_To_Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[GenreID] [int] NOT NULL,
 CONSTRAINT [PK_Genre_To_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImgUrl] [nvarchar](500) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LanguageResources]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageResources](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](50) NULL,
	[LanguageID] [int] NOT NULL,
	[Value] [nvarchar](10) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_LanguageResources] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ShortCode] [int] NULL,
	[IsEnabled] [bit] NULL,
	[IsRTL] [bit] NULL,
	[IsDefault] [bit] NULL,
	[IconCode] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Header] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferToImages]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferToImages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OfferID] [int] NOT NULL,
	[ImageUrl] [int] NOT NULL,
	[ImageID] [int] NULL,
 CONSTRAINT [PK_OfferToImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHistories]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHistories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[OrderStatus] [bit] NULL,
	[Note] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_OrderHistories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseDate] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[OrderCode] [int] NULL,
	[PlacedOn] [nvarchar](50) NULL,
	[DeliveryChanges] [nvarchar](50) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[CustomerID] [nvarchar](max) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerEmail] [nvarchar](50) NULL,
	[CustomerPhone] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[PromoID] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[AuthorName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Discount] [int] NULL,
	[Barcode] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsFeatured] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[publishing] [nvarchar](50) NULL,
	[Language] [nvarchar](50) NULL,
	[PdfLink] [nvarchar](500) NULL,
	[InStok] [int] NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promos]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PromoCode] [int] NULL,
 CONSTRAINT [PK_Promos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop_To_Products]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop_To_Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShopID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Shop_To_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shops]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shops](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[ShopName] [nvarchar](50) NOT NULL,
	[ShopSiteName] [nvarchar](50) NULL,
	[UserID] [int] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[User_Id] [nvarchar](128) NULL,
 CONSTRAINT [PK_Shops] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description1] [nvarchar](500) NULL,
	[Description2] [nvarchar](500) NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SliderToImages]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SliderToImages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SliderID] [int] NOT NULL,
	[ImageID] [int] NOT NULL,
 CONSTRAINT [PK_SliderToImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialLinks]    Script Date: 9/26/2021 12:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialLinks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LinkName] [nvarchar](500) NOT NULL,
	[Socialİcon] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_SocialLinks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210125180222_AddSql', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210126090354_category', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210126152900_ProImgUrl', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210128151226_SliderImg', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210130145752_ProImg', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210130164128_offerToİmage', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210130164420_offer', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210131142340_sliderimage', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210131142859_ImagePro', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210131145154_sliderurl', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210131145811_slider', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210201193638_offerThumb', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210206111739_SliderProID', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210206112007_sldpro', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210208104912_OfferProId', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210211091038_CatParID', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210212082843_prorating', N'5.0.2')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name]) VALUES (3, N'Roman')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (4, N'Uşaq ədəbiyyatı')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (5, N'Dedektiv')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (6, N'Hekayə')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (7, N'Digər')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (8, N'Elmi-fantastik')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (30, N'08f58c31-77dd-48ce-a825-56ca3b07e3da.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (31, N'ba85e078-a805-4db5-8265-4f81be47b254.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (32, N'1ebf73ae-efb6-4c53-8f01-26e7127efd68.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (33, N'bb151b42-aba8-409d-8b90-4ef0958a0155.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (34, N'7a81e9db-0de0-4cc1-a0fe-66e3d165db04.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (35, N'2b5240c1-bfdf-4884-be58-07bb1b3f3aa3.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (36, N'10a644a6-11c2-494c-9d72-1d30387047e7.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (37, N'1b364464-606e-4aa2-a0ee-4f31e85303bb.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (38, N'a333efda-23ac-4ace-829c-8a1db04b299d.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (39, N'05e166fe-3c3f-4be7-bf2e-3e70d70e2adc.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (40, N'1cd00fa3-ea16-4303-b16c-84cc3ccc187f.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (41, N'9958d761-7004-4a9d-b704-3026a71f9226.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (42, N'e6ef1744-5a1f-4676-8229-1ea5bb8491f1.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (43, N'2951bd47-0196-4bcc-9a89-f732e39044df.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (44, N'fcf81447-ee97-4cbf-b660-ee2c29cdf980.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (45, N'03097533-df40-4a4d-bea9-d6d90f823891.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (46, N'cb0d343e-e5b3-408a-b570-cebe87a15f16.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (47, N'0d6c0864-052f-48bd-ae95-946a41823472.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (48, N'f26c2ef8-4dcd-4e07-977b-751e7cfb6b15.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (49, N'bc53001e-a4e4-42e0-b122-219e69779eb7.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (50, N'a3b9ed6c-b3b5-4e34-8221-0e80b93d84f7.jpg')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (51, N'0c6cef95-5d03-42ba-8a86-2f103f2365d2.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (52, N'2da8b4c9-1156-4aee-8ed8-649ef5063d6e.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (53, N'a4f2e815-324b-49ee-aafd-f0b50b0cadfe.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (54, N'127ee424-3836-497f-a428-dec1fb42868e.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (55, N'24e085f7-4f97-4fe1-9a0b-9c3c4222fd80.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (56, N'46257da3-c3b1-4170-84cc-265becb1a2e5.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (57, N'db621c7c-689c-4797-9055-2f4ab936a4c8.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (58, N'0c3528f5-b212-4df9-b156-358d8acc1376.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (59, N'4c9f30b4-7ed3-4f82-a155-879159a84f19.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (60, N'a1b58981-0b55-43e6-896c-42675ed4e584.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (61, N'9f978dfc-72e0-47c5-b4ad-68b8ba7ba342.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (62, N'eb586a80-4508-4ca4-9286-1ff8ac154cfc.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (63, N'cc432e8e-3017-4847-902c-e1260d114bbb.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (64, N'73c15211-161d-4df5-8a01-dec932641db1.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (65, N'974a2303-b1c6-40ea-993f-a3a3e96683b4.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (66, N'844b0671-537c-4afd-8c2d-fe7badf8f84f.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (67, N'd0cf5548-7328-41d9-8a3e-45bb7e071629.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (68, N'f5a0b333-77d6-47a1-9a32-845cf289734c.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (69, N'a31e4f93-b617-4b99-8f26-909b0454c50c.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (70, N'850939b0-73a4-4c1e-9410-d0e773bed0d4.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (71, N'4db63f6f-f6c7-4087-8b83-03286f0b7566.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (72, N'22a0bd14-1c66-49d6-920d-7be2723832f3.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (73, N'ac6b0d9c-3e92-4659-8cc2-820ae3073d91.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (74, N'd9c37cd8-612c-4413-ae3d-cf8694867dbd.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (75, N'3bdd383b-a758-43f3-ba3f-c2b4f7e28ad2.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (76, N'32758d32-6c6a-43d1-a7d6-6b879481207e.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (77, N'ecabcc18-b584-4b14-bf35-75b2df82ee4c.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (78, N'82e318c1-b375-4533-82e7-1f932301dcfc.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (79, N'9542a9da-ab00-4647-81e3-18c9ec0a086a.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (80, N'cdb698d3-43be-4d94-a35b-c38ed915da89.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (81, N'0887f66e-386b-40ac-802c-118fc369da51.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (82, N'63137525-e408-493f-b2ed-e8de6f3d8229.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (83, N'e8566181-c274-40b6-96ce-2bbeb1a52d16.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (84, N'696ab1da-fe59-4fbd-a1c2-a68305a8e9b6.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (85, N'420cc199-a291-4bbc-90b3-454feff3a575.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (86, N'b4891188-8b33-429f-ab03-156f88b6db36.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (87, N'10422309-4b83-48f9-949d-f1472aff01a9.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (88, N'461d66cc-970c-493f-b510-a496ea058f98.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (89, N'43164580-ad6e-48c0-abac-899da6136d34.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (90, N'd31b71d0-86da-403c-adb2-0dc8add8ce6a.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (91, N'8633635a-9a7a-4c02-a679-5430c5e3f1a4.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (92, N'3dcdd2fa-a966-4616-8f42-fa8179e19f3f.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (93, N'8c316eab-cfca-49f6-a710-ab2a51c16620.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (94, N'719d3525-49c6-4e86-a627-ea252daff60b.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (95, N'185977ea-299c-4ecb-8d61-c917c0b9818f.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (96, N'a17c71ec-2c43-4ef0-9f04-6537632c5abe.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (97, N'556dc041-f9c7-4118-b728-c91a5b1fe692.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (98, N'a71d519e-aa1c-4edb-8a2c-f76def2b06b2.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (99, N'82d48c0d-b8c4-4df5-8e42-a0d71409795f.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (100, N'e824b5e1-c70c-453a-9142-f5a2d0a47ecf.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (101, N'bccab629-79df-4dc7-bc4d-3165d7065ae6.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (102, N'3c2c57d3-5b53-46d5-9a5f-7d8281b4c112.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (103, N'4d963d10-cccd-414b-86c4-620a93e5543a.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (104, N'0faa1761-e5ab-4064-ab35-a901fb302d06.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (105, N'ca0cb36b-f0fe-470b-a3c8-6e037a61cb5f.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (106, N'3e65d65f-3552-493f-b8ae-2f0d87fca5f7.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (107, N'624207ae-c58e-46b3-8e29-cc831046ee12.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (108, N'0822c8ab-0474-461e-92a9-8060ac2c9c59.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (109, N'b2a5ed8f-c5f6-4fed-a1ce-3323716c905f.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (110, N'94ca0882-5ab2-411f-99b3-554ff71ff32b.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (111, N'980f41cb-f8e8-4200-b59f-6084e6dd2e65.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (112, N'54c69cfb-97fe-4ee5-8ab4-5734172027a6.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (113, N'03834ea2-87cd-4b49-9fd7-9bc756cb9ea5.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (114, N'fe53f874-1ec8-4034-8222-e6d54523d6e7.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (115, N'09129e8c-4f65-4bbd-9c2b-1b70b31c3f8a.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (116, N'ccc4547a-cf79-4d8a-a5f9-6cf5dcf16d29.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (117, N'afcd3022-bd60-4eb1-8e91-767cc75b734d.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (118, N'a82ebeb5-fcb5-4506-9dfd-c74e0bc21008.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (119, N'84b57da0-8d00-4f6d-b9ba-81d457700b0e.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (120, N'1f97fdb0-6af7-4926-9f71-599e5372033c.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (121, N'76a6348c-8a08-44fd-9fdf-80ab1647c0a0.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (122, N'834a1569-4556-4de6-bcff-261a6ffb22bf.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (123, N'a78a00b7-dc4e-4ab9-9cf3-0ab32ce57b4b.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (124, N'f86c4d56-eb54-4fcc-8a82-5a19f14cea32.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (125, N'a1d06417-522a-47d4-a773-dbe5c59e1a75.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (126, N'22cc9da1-8f28-47aa-9897-6dd7ee2f95bb.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (127, N'556281d8-d241-4b5a-ad98-ce4661fda165.png')
INSERT [dbo].[Images] ([ID], [ImgUrl]) VALUES (128, N'361034ff-21c0-41fa-a0e9-4b1523f2856a.png')
GO
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Offers] ON 

INSERT [dbo].[Offers] ([ID], [ProductID], [Header], [Description], [TotalAmount], [Time]) VALUES (3, 25, N'Salam', N'Salamkjnvfhfdlbgnjblfkiodngnuhvdfviigf', CAST(35.00 AS Decimal(18, 2)), CAST(N'2021-01-31T13:35:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (12, N'Böyük ümidlər', N'Charles Dickens', N'asfdg', CAST(11.99 AS Decimal(18, 2)), NULL, NULL, 0, 0, 0, 3, N'Qanun', NULL, NULL, 5, N'85450d94-49be-472c-88bf-474b125fc4e6boyukumidler - Copy.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (13, N'Varlıq və heçlik', N'Jean-Paul Sartre', NULL, CAST(20.99 AS Decimal(18, 2)), NULL, NULL, 0, 0, 0, 3, N'Qanun', NULL, NULL, 5, N'0adcceb9-22d0-4788-916a-d9fbeb0c4e1avarliveheclik.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (14, N'Anlat  Sen Seversin Yalanı', N'Tuba Ezici', NULL, CAST(15.49 AS Decimal(18, 2)), 15, NULL, 0, 0, 0, 3, N'Qanun', NULL, NULL, NULL, N'303a1215-5ed0-45cf-9d3d-18957db8bf58anlatsenseversin.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (15, N'The Giver Of Stars', N'Jojo Mayes', NULL, CAST(13.50 AS Decimal(18, 2)), 10, NULL, 0, 0, 0, 8, NULL, NULL, NULL, NULL, N'a7f8ba1d-2838-4391-8846-a89411711b4egiveofstars.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (16, N'Youtube''dan para kazanma sırları', N'Afqan Rasulov', NULL, CAST(20.99 AS Decimal(18, 2)), 40, NULL, 0, 0, 0, 7, NULL, NULL, NULL, 3, N'ed484bd7-cc13-4aa1-be68-feac557c2a24youtube.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (17, N'Fikir mimarları', N'Nietzsche', NULL, CAST(20.99 AS Decimal(18, 2)), 40, NULL, 0, 0, 0, 3, NULL, NULL, NULL, NULL, N'2509c62a-930e-4c44-b61a-447a1a4ce463nitsşe.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (18, N'Pəri cadu', N'Əbdürrəhimbəy Haqverdiyev', NULL, CAST(20.99 AS Decimal(18, 2)), 80, NULL, 0, 0, 0, 3, NULL, NULL, NULL, NULL, N'68d443a9-f9df-4e05-82f1-156c7533b043pəricadu.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (19, N'Мы против вас', N'Бакман Фpeдик', NULL, CAST(20.99 AS Decimal(18, 2)), 25, NULL, 0, 0, 0, 3, NULL, NULL, NULL, NULL, N'6ad2a3a3-15cd-4bab-a685-5a057568f2ccmıprotiv.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (20, N'Sizsiz', N'Anar', NULL, CAST(18.45 AS Decimal(18, 2)), 35, NULL, 0, 0, 0, 7, NULL, NULL, NULL, 12, N'1df26971-16aa-4be6-aa2b-af763bacd8afanar.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (21, N'Əmim Hamlet', N'Eldəniz Qurtulan', NULL, CAST(30.99 AS Decimal(18, 2)), 30, NULL, 0, 0, 0, 3, N'Qanun', NULL, NULL, NULL, N'727a03b4-86a2-451d-a7f1-89f558a8ef67emimhamlet.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (22, N'Zolaqlı Pijamalı Oğlan', N'John Boyne', NULL, CAST(25.19 AS Decimal(18, 2)), 40, NULL, 0, 0, 0, 3, NULL, NULL, NULL, 10, N'20352466-2490-4bb0-8cea-78a0462956edpijamalı.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (23, N'Başqa bir şey', N'Ahmet Batman', NULL, CAST(30.59 AS Decimal(18, 2)), 25, NULL, 0, 0, 0, 3, NULL, NULL, NULL, NULL, N'30056f1c-8387-4b5a-af8b-b8efeb1a3e69ahmetbatman.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (24, N'Yol', N'Nəcib Məhfuz', NULL, CAST(12.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, 0, 3, NULL, NULL, NULL, NULL, N'4462ea16-8da9-4451-9825-c4e13ba80747yol.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (25, N'Elcornon üçün çiçəklər', N'Daniel Kayes', NULL, CAST(10.00 AS Decimal(18, 2)), 10, NULL, 0, 0, 0, 3, NULL, NULL, NULL, 5, N'2973822b-9fc3-4fee-9832-aa6346a84dfddaniel.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (26, N'Anne Annem', N'Elbrus Ərud', NULL, CAST(8.00 AS Decimal(18, 2)), 15, NULL, 0, 0, 0, 3, NULL, NULL, NULL, 13, N'90262485-a464-425b-ae65-8b07581afaa7anneannem.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (27, N'Hekayələr', N'Haynrix Böll', NULL, CAST(14.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, 0, 6, NULL, NULL, NULL, 17, N'560d12d1-a476-4921-b30e-57f675cec86bhekayeler.png', 0)
INSERT [dbo].[Products] ([ID], [Name], [AuthorName], [Description], [Price], [Discount], [Barcode], [IsActive], [IsFeatured], [IsDeleted], [CategoryID], [publishing], [Language], [PdfLink], [InStok], [ImageUrl], [Rating]) VALUES (28, N'Harry Potter', N'Harry', NULL, CAST(40.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, 0, 3, NULL, NULL, NULL, NULL, N'4df82700-21a2-4a92-8ed4-d8457aaee0b0harry.png', 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_LanguageID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_LanguageID] ON [dbo].[Comments]
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommentToProducts_CommentID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_CommentToProducts_CommentID] ON [dbo].[CommentToProducts]
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommentToProducts_ProductID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_CommentToProducts_ProductID] ON [dbo].[CommentToProducts]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Genre_To_Product_GenreID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_Genre_To_Product_GenreID] ON [dbo].[Genre_To_Product]
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Genre_To_Product_ProductID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_Genre_To_Product_ProductID] ON [dbo].[Genre_To_Product]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LanguageResources_LanguageID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_LanguageResources_LanguageID] ON [dbo].[LanguageResources]
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_ProductID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_ProductID] ON [dbo].[Offers]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferToImages_ImageID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferToImages_ImageID] ON [dbo].[OfferToImages]
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferToImages_OfferID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferToImages_OfferID] ON [dbo].[OfferToImages]
(
	[OfferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderID] ON [dbo].[OrderItems]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_ProductID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductID] ON [dbo].[OrderItems]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_PromoID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_PromoID] ON [dbo].[Orders]
(
	[PromoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shop_To_Products_ProductID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_Shop_To_Products_ProductID] ON [dbo].[Shop_To_Products]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shop_To_Products_ShopID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_Shop_To_Products_ShopID] ON [dbo].[Shop_To_Products]
(
	[ShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sliders_ProductID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_Sliders_ProductID] ON [dbo].[Sliders]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SliderToImages_ImageID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_SliderToImages_ImageID] ON [dbo].[SliderToImages]
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SliderToImages_SliderID]    Script Date: 9/26/2021 12:33:57 AM ******/
CREATE NONCLUSTERED INDEX [IX_SliderToImages_SliderID] ON [dbo].[SliderToImages]
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Rating]
GO
ALTER TABLE [dbo].[Sliders] ADD  DEFAULT ((0)) FOR [ProductID]
GO
ALTER TABLE [dbo].[SliderToImages] ADD  DEFAULT ((0)) FOR [ImageID]
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
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Languages_LanguageID] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Languages] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Languages_LanguageID]
GO
ALTER TABLE [dbo].[CommentToProducts]  WITH CHECK ADD  CONSTRAINT [FK_CommentToProducts_Comments_CommentID] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comments] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommentToProducts] CHECK CONSTRAINT [FK_CommentToProducts_Comments_CommentID]
GO
ALTER TABLE [dbo].[CommentToProducts]  WITH CHECK ADD  CONSTRAINT [FK_CommentToProducts_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommentToProducts] CHECK CONSTRAINT [FK_CommentToProducts_Products_ProductID]
GO
ALTER TABLE [dbo].[Genre_To_Product]  WITH CHECK ADD  CONSTRAINT [FK_Genre_To_Product_Genres_GenreID] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Genre_To_Product] CHECK CONSTRAINT [FK_Genre_To_Product_Genres_GenreID]
GO
ALTER TABLE [dbo].[Genre_To_Product]  WITH CHECK ADD  CONSTRAINT [FK_Genre_To_Product_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Genre_To_Product] CHECK CONSTRAINT [FK_Genre_To_Product_Products_ProductID]
GO
ALTER TABLE [dbo].[LanguageResources]  WITH CHECK ADD  CONSTRAINT [FK_LanguageResources_Languages_LanguageID] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Languages] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LanguageResources] CHECK CONSTRAINT [FK_LanguageResources_Languages_LanguageID]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_Products_ProductID]
GO
ALTER TABLE [dbo].[OfferToImages]  WITH CHECK ADD  CONSTRAINT [FK_OfferToImages_Images_ImageID] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ID])
GO
ALTER TABLE [dbo].[OfferToImages] CHECK CONSTRAINT [FK_OfferToImages_Images_ImageID]
GO
ALTER TABLE [dbo].[OfferToImages]  WITH CHECK ADD  CONSTRAINT [FK_OfferToImages_Offers_OfferID] FOREIGN KEY([OfferID])
REFERENCES [dbo].[Offers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OfferToImages] CHECK CONSTRAINT [FK_OfferToImages_Offers_OfferID]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Promos_PromoID] FOREIGN KEY([PromoID])
REFERENCES [dbo].[Promos] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Promos_PromoID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
ALTER TABLE [dbo].[Shop_To_Products]  WITH CHECK ADD  CONSTRAINT [FK_Shop_To_Products_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Shop_To_Products] CHECK CONSTRAINT [FK_Shop_To_Products_Products_ProductID]
GO
ALTER TABLE [dbo].[Shop_To_Products]  WITH CHECK ADD  CONSTRAINT [FK_Shop_To_Products_Shops_ShopID] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shops] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Shop_To_Products] CHECK CONSTRAINT [FK_Shop_To_Products_Shops_ShopID]
GO
ALTER TABLE [dbo].[Sliders]  WITH CHECK ADD  CONSTRAINT [FK_Sliders_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sliders] CHECK CONSTRAINT [FK_Sliders_Products_ProductID]
GO
ALTER TABLE [dbo].[SliderToImages]  WITH CHECK ADD  CONSTRAINT [FK_SliderToImages_Images_ImageID] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SliderToImages] CHECK CONSTRAINT [FK_SliderToImages_Images_ImageID]
GO
ALTER TABLE [dbo].[SliderToImages]  WITH CHECK ADD  CONSTRAINT [FK_SliderToImages_Sliders_SliderID] FOREIGN KEY([SliderID])
REFERENCES [dbo].[Sliders] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SliderToImages] CHECK CONSTRAINT [FK_SliderToImages_Sliders_SliderID]
GO
USE [master]
GO
ALTER DATABASE [ProjectKitabciDB] SET  READ_WRITE 
GO
