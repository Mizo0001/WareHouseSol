USE [master]
GO
/****** Object:  Database [Warehouse]    Script Date: 8/26/2024 10:02:26 AM ******/
CREATE DATABASE [Warehouse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Warehouse', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\Warehouse.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Warehouse_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\Warehouse_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Warehouse] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Warehouse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Warehouse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Warehouse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Warehouse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Warehouse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Warehouse] SET ARITHABORT OFF 
GO
ALTER DATABASE [Warehouse] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Warehouse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Warehouse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Warehouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Warehouse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Warehouse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Warehouse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Warehouse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Warehouse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Warehouse] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Warehouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Warehouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Warehouse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Warehouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Warehouse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Warehouse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Warehouse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Warehouse] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Warehouse] SET  MULTI_USER 
GO
ALTER DATABASE [Warehouse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Warehouse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Warehouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Warehouse] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Warehouse] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Warehouse] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Warehouse] SET QUERY_STORE = ON
GO
ALTER DATABASE [Warehouse] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Warehouse]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/26/2024 10:02:26 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/26/2024 10:02:26 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/26/2024 10:02:26 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/26/2024 10:02:26 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/26/2024 10:02:26 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/26/2024 10:02:26 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/26/2024 10:02:26 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/26/2024 10:02:26 AM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
	[InActiveDate] [datetime] NULL,
	[CreateBy] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](100) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK__Categori__D54EE9B4D473E443] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[CreateBy] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](100) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[Balance] [int] NOT NULL,
	[WarehouseId] [int] NULL,
 CONSTRAINT [PK__ProductD__135C314D53742D4C] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[SubCategoryID] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[InActiveDate] [datetime] NULL,
	[CreateBy] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](100) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[Balance] [int] NOT NULL,
 CONSTRAINT [PK__Products__9834FB9ADA1E6E0D] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[SubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [nvarchar](100) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[InActiveDate] [datetime] NULL,
	[CreateBy] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](100) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK__SubCateg__F7A5CC2660D0512C] PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[TransactionTypeID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[WarehouseId] [int] NOT NULL,
 CONSTRAINT [PK__Transact__55433A4B3596A695] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionType]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionType](
	[TransactionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[Change] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouses]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouses](
	[WarehouseId] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseName] [nvarchar](100) NOT NULL,
	[Location] [nvarchar](255) NOT NULL,
	[Active] [bit] NOT NULL,
	[InactiveDate] [datetime] NULL,
	[CreateBy] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](100) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK__Warehous__2608AFF917314639] PRIMARY KEY CLUSTERED 
(
	[WarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.30')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'101033251947724215951', N'Google', N'f961f9ab-9019-4cf0-90a2-db119a1fc640')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'115580040757632985260', N'Google', N'0e889a7c-4455-4116-b760-55e5b18f3e2f')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0e889a7c-4455-4116-b760-55e5b18f3e2f', N'moza1.ra@gmail.com', N'MOZA1.RA@GMAIL.COM', N'moza1.ra@gmail.com', N'MOZA1.RA@GMAIL.COM', 1, NULL, N'OEDDUUFKO5K4HOD2QFMAMATSTVEZHTZJ', N'fb82d5a0-485d-4685-bf60-b4c9be6d2c5e', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4c86232c-f1af-47ae-91bd-49a398640f04', N'moza13.ra@gmail.com', N'MOZA13.RA@GMAIL.COM', N'moza13.ra@gmail.com', N'MOZA13.RA@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECGO8ByefVTxNGnWvfObzPGIpFcljrFhc3qKHNCUH1SKbvjEV7DXdolqBB/cQJESEQ==', N'UAJVQPWJQ3MBUHZCJBXL2T3M3KJTG6VB', N'a79657e1-853b-48f6-936d-704fe894e7ff', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'664dd79e-e8d8-4c7d-a8c9-f0fbf3ca448e', N'ramezehab20@gmail.com', N'RAMEZEHAB20@GMAIL.COM', N'ramezehab20@gmail.com', N'RAMEZEHAB20@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJtzB1eBwhID1AVLhG0gNi9f2NktOG4z0IXIlR6VRf3iUuMX3xf9QHQCpW1JWfysTQ==', N'WHRIQG3CC37GYM67NSH6QPP5RD7QIGIS', N'370f408f-16c0-4106-a81d-25041c55b973', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f961f9ab-9019-4cf0-90a2-db119a1fc640', N'rania.philo77@gmail.com', N'RANIA.PHILO77@GMAIL.COM', N'rania.philo77@gmail.com', N'RANIA.PHILO77@GMAIL.COM', 1, NULL, N'QGDFCL2OZLBHZD5NU6HGGPG2GR3CR7VH', N'48216228-6dea-436d-9936-93d328c5f425', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'laptops', 0, CAST(N'2024-07-23T16:59:03.173' AS DateTime), N'Ramez', CAST(N'2024-07-16T15:58:04.580' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-23T16:59:03.173' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'TV', 0, CAST(N'2024-07-23T16:59:08.363' AS DateTime), N'Ramez', CAST(N'2024-07-16T16:00:28.327' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-23T16:59:08.363' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'wiressss', 0, CAST(N'2024-07-23T16:59:11.610' AS DateTime), N'Ehab', CAST(N'2024-07-17T10:37:05.143' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-23T16:59:11.610' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'powerbank', 0, CAST(N'2024-07-23T16:59:19.187' AS DateTime), N'philo', CAST(N'2024-07-17T10:40:20.410' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-23T16:59:19.187' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'disks', 0, CAST(N'2024-07-23T16:59:24.473' AS DateTime), N'john', CAST(N'2024-07-17T10:56:50.133' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-23T16:59:24.473' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'proj', 0, CAST(N'2024-07-23T16:59:28.423' AS DateTime), N'philo', CAST(N'2024-07-17T11:12:27.967' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-23T16:59:28.423' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'wires', 0, CAST(N'2024-07-23T16:59:33.090' AS DateTime), N'ramez', CAST(N'2024-07-17T11:13:01.517' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-23T16:59:33.090' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, N'mm', 0, CAST(N'2024-07-22T14:34:05.803' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-20T10:42:59.280' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-22T14:34:05.803' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (11, N'test', 1, NULL, N'moza13.ra@gmail.com', CAST(N'2024-07-22T12:25:18.130' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-22T14:32:39.497' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (12, N'bags', 0, CAST(N'2024-07-22T14:34:08.193' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-22T12:36:12.580' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-22T14:34:08.193' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (13, N'desk', 1, NULL, N'moza13.ra@gmail.com', CAST(N'2024-07-22T14:14:07.483' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-22T14:31:41.340' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (14, N'mmm', 0, CAST(N'2024-07-22T14:34:10.507' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-22T14:17:02.650' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-22T14:34:10.507' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (15, N'phone', 1, NULL, N'ramezehab20@gmail.com', CAST(N'2024-07-22T14:19:48.177' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-22T14:32:50.387' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (16, N'walletsssss', 0, CAST(N'2024-07-22T14:34:16.007' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-22T14:22:39.143' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-22T14:34:16.007' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (17, N'bottle', 1, NULL, N'ramezehab20@gmail.com', CAST(N'2024-07-22T14:35:05.467' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-22T14:35:05.467' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (18, N'jjj', 0, CAST(N'2024-07-22T15:01:31.540' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-22T15:01:16.163' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-22T15:01:31.540' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (19, N'jkj', 1, NULL, N'moza13.ra@gmail.com', CAST(N'2024-07-22T15:05:50.013' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-22T15:05:50.013' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 
GO
INSERT [dbo].[ProductDetails] ([DetailID], [ProductID], [ExpiryDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance], [WarehouseId]) VALUES (1, 12, CAST(N'2024-08-08' AS Date), N'moza13.ra@gmail.com', CAST(N'2024-07-31T11:38:00.170' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-31T11:38:00.170' AS DateTime), 900, NULL)
GO
INSERT [dbo].[ProductDetails] ([DetailID], [ProductID], [ExpiryDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance], [WarehouseId]) VALUES (2, 14, CAST(N'2024-08-22' AS Date), N'ramezehab20@gmail.com', CAST(N'2024-07-31T11:42:13.040' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-31T11:42:13.040' AS DateTime), 500, NULL)
GO
INSERT [dbo].[ProductDetails] ([DetailID], [ProductID], [ExpiryDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance], [WarehouseId]) VALUES (3, 15, CAST(N'2024-08-17' AS Date), N'moza13.ra@gmail.com', CAST(N'2024-08-06T11:49:07.937' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T11:49:07.937' AS DateTime), 1600, NULL)
GO
INSERT [dbo].[ProductDetails] ([DetailID], [ProductID], [ExpiryDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance], [WarehouseId]) VALUES (4, 12, CAST(N'2024-08-15' AS Date), N'moza13.ra@gmail.com', CAST(N'2024-08-06T14:10:31.617' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T14:10:31.617' AS DateTime), 1700, NULL)
GO
INSERT [dbo].[ProductDetails] ([DetailID], [ProductID], [ExpiryDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance], [WarehouseId]) VALUES (5, 17, CAST(N'2024-08-29' AS Date), N'ramezehab20@gmail.com', CAST(N'2024-08-07T11:32:14.787' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-08-07T11:32:14.787' AS DateTime), 0, 1)
GO
INSERT [dbo].[ProductDetails] ([DetailID], [ProductID], [ExpiryDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance], [WarehouseId]) VALUES (7, 17, CAST(N'2024-08-27' AS Date), N'ramezehab20@gmail.com', CAST(N'2024-08-07T11:36:29.450' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-08-07T11:36:29.450' AS DateTime), 500, 2)
GO
INSERT [dbo].[ProductDetails] ([DetailID], [ProductID], [ExpiryDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance], [WarehouseId]) VALUES (10, 17, CAST(N'2024-08-27' AS Date), N'ramezehab20@gmail.com', CAST(N'2024-08-07T12:05:16.553' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-08-07T12:05:16.553' AS DateTime), 800, 3)
GO
INSERT [dbo].[ProductDetails] ([DetailID], [ProductID], [ExpiryDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance], [WarehouseId]) VALUES (11, 14, CAST(N'2024-08-12' AS Date), N'ramezehab20@gmail.com', CAST(N'2024-08-07T14:22:52.607' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-08-07T14:22:52.607' AS DateTime), 100, 1)
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SubCategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance]) VALUES (9, N'phone', 8, 0, CAST(N'2024-07-23T17:09:31.987' AS DateTime), N'Ramez', CAST(N'2024-07-20T09:35:30.570' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-23T17:09:31.987' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SubCategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance]) VALUES (10, N'lap', 6, 0, CAST(N'2024-07-20T09:49:55.657' AS DateTime), N'Ramez', CAST(N'2024-07-20T09:46:35.297' AS DateTime), N'Ehab', CAST(N'2024-07-20T09:49:55.657' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SubCategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance]) VALUES (11, N'keyboard', 6, 1, NULL, N'Ramez', CAST(N'2024-07-20T09:51:37.927' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-24T09:19:03.053' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SubCategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance]) VALUES (12, N'mouse', 6, 1, NULL, N'philo', CAST(N'2024-07-20T09:52:08.810' AS DateTime), N'philo', CAST(N'2024-08-04T14:26:56.960' AS DateTime), 3580)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SubCategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance]) VALUES (13, N'ipad', 6, 0, CAST(N'2024-07-20T10:12:28.713' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-20T10:10:36.413' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-20T10:12:28.713' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SubCategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance]) VALUES (14, N'applewatch', 4, 1, NULL, N'moza13.ra@gmail.com', CAST(N'2024-07-20T10:18:32.960' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-28T15:49:20.897' AS DateTime), 2200)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SubCategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance]) VALUES (15, N'wires', 4, 1, NULL, N'ramezehab20@gmail.com', CAST(N'2024-07-20T10:19:25.417' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-20T10:19:52.130' AS DateTime), 1600)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SubCategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Balance]) VALUES (17, N'tags', 8, 1, NULL, N'ramezehab20@gmail.com', CAST(N'2024-07-23T17:13:25.953' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-28T10:38:25.590' AS DateTime), 1300)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'proj', 5, 1, NULL, N'Ramez', CAST(N'2024-07-17T14:01:52.437' AS DateTime), N'reem', CAST(N'2024-07-17T14:26:10.203' AS DateTime))
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'lENOVO', 19, 0, CAST(N'2024-07-23T17:04:41.500' AS DateTime), N'philo', CAST(N'2024-07-17T14:02:37.470' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-23T17:04:41.500' AS DateTime))
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'HP', 15, 1, NULL, N'John', CAST(N'2024-07-17T14:27:05.760' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-23T17:04:26.477' AS DateTime))
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'lg', 15, 0, CAST(N'2024-07-23T17:03:44.753' AS DateTime), N'rania', CAST(N'2024-07-17T14:33:03.733' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-23T17:03:44.753' AS DateTime))
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'phone', 13, 1, NULL, N'moza13.ra@gmail.com', CAST(N'2024-07-20T10:25:38.207' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-23T17:03:36.570' AS DateTime))
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID], [Active], [InActiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, N'test', 19, 0, CAST(N'2024-07-23T17:03:13.853' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-07-23T16:55:32.867' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-07-23T17:03:13.853' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Transactions] ON 
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (1, 12, 1, 900, CAST(N'2024-08-06T15:02:23.190' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T15:02:23.190' AS DateTime), CAST(N'2024-08-08' AS Date), 0)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (2, 14, 2, 500, CAST(N'2024-08-06T15:03:16.353' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T15:03:16.353' AS DateTime), CAST(N'2024-08-22' AS Date), 0)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (3, 15, 1, 1000, CAST(N'2024-08-06T15:04:23.220' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T15:04:23.220' AS DateTime), CAST(N'2024-08-17' AS Date), 0)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (4, 12, 2, 9000, CAST(N'2024-08-06T15:05:29.100' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T15:05:29.100' AS DateTime), CAST(N'2024-08-15' AS Date), 0)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (5, 12, 3, 8000, CAST(N'2024-08-06T15:06:25.130' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T15:06:25.130' AS DateTime), CAST(N'2024-08-15' AS Date), 0)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (6, 15, 2, 100, CAST(N'2024-08-06T15:13:05.117' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T15:13:05.117' AS DateTime), CAST(N'2024-08-17' AS Date), 0)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (7, 15, 2, 100, CAST(N'2024-08-06T15:13:15.433' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T15:13:15.433' AS DateTime), CAST(N'2024-08-17' AS Date), 0)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (8, 15, 2, 400, CAST(N'2024-08-06T15:28:59.200' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T15:28:59.200' AS DateTime), CAST(N'2024-08-17' AS Date), 0)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (9, 12, 2, 700, CAST(N'2024-08-06T15:33:35.490' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-06T15:33:35.490' AS DateTime), CAST(N'2024-08-15' AS Date), 0)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (11, 14, 2, 300, CAST(N'2024-08-11T14:15:30.667' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-11T14:15:30.667' AS DateTime), CAST(N'2024-08-12' AS Date), 1)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (12, 17, 2, 700, CAST(N'2024-08-11T14:30:46.743' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-11T14:30:46.743' AS DateTime), CAST(N'2024-08-27' AS Date), 2)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (13, 17, 3, 200, CAST(N'2024-08-11T14:31:34.180' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-11T14:31:34.180' AS DateTime), CAST(N'2024-08-27' AS Date), 2)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (14, 17, 2, 800, CAST(N'2024-08-11T14:49:19.567' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-11T14:49:19.567' AS DateTime), CAST(N'2024-08-27' AS Date), 3)
GO
INSERT [dbo].[Transactions] ([TransactionID], [ProductID], [TransactionTypeID], [Quantity], [TransactionDate], [CreateBy], [CreateDate], [ExpiryDate], [WarehouseId]) VALUES (15, 14, 3, 200, CAST(N'2024-08-15T02:41:46.670' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-15T02:41:46.670' AS DateTime), CAST(N'2024-08-12' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[Transactions] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactionType] ON 
GO
INSERT [dbo].[TransactionType] ([TransactionTypeID], [TypeName], [Change]) VALUES (1, N'Beginning Balance', 1)
GO
INSERT [dbo].[TransactionType] ([TransactionTypeID], [TypeName], [Change]) VALUES (2, N'In', 1)
GO
INSERT [dbo].[TransactionType] ([TransactionTypeID], [TypeName], [Change]) VALUES (3, N'Out', -1)
GO
SET IDENTITY_INSERT [dbo].[TransactionType] OFF
GO
SET IDENTITY_INSERT [dbo].[Warehouses] ON 
GO
INSERT [dbo].[Warehouses] ([WarehouseId], [WarehouseName], [Location], [Active], [InactiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'W1', N'Tagmo3', 1, NULL, N'moza13.ra@gmail.com', CAST(N'2024-08-07T10:43:29.220' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-08-07T11:40:08.030' AS DateTime))
GO
INSERT [dbo].[Warehouses] ([WarehouseId], [WarehouseName], [Location], [Active], [InactiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'W2', N'Heliopolis', 1, NULL, N'moza13.ra@gmail.com', CAST(N'2024-08-07T11:06:07.657' AS DateTime), N'moza13.ra@gmail.com', CAST(N'2024-08-07T11:06:07.657' AS DateTime))
GO
INSERT [dbo].[Warehouses] ([WarehouseId], [WarehouseName], [Location], [Active], [InactiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'W3', N'Zayed', 1, NULL, N'ramezehab20@gmail.com', CAST(N'2024-08-07T11:37:17.897' AS DateTime), N'ramezehab20@gmail.com', CAST(N'2024-08-07T11:37:17.897' AS DateTime))
GO
INSERT [dbo].[Warehouses] ([WarehouseId], [WarehouseName], [Location], [Active], [InactiveDate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'W4', N'Alex', 1, NULL, N'Ramez Ehab', CAST(N'2024-08-22T12:25:45.400' AS DateTime), N'Ramez Ehab', CAST(N'2024-08-22T12:25:45.400' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Warehouses] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 8/26/2024 10:02:26 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/26/2024 10:02:26 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 8/26/2024 10:02:26 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 8/26/2024 10:02:26 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 8/26/2024 10:02:26 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 8/26/2024 10:02:26 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/26/2024 10:02:26 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories]    Script Date: 8/26/2024 10:02:26 AM ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [IX_Categories] UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_ProductDetails_ProductId_WarehouseId_ExpiryDate]    Script Date: 8/26/2024 10:02:26 AM ******/
ALTER TABLE [dbo].[ProductDetails] ADD  CONSTRAINT [UQ_ProductDetails_ProductId_WarehouseId_ExpiryDate] UNIQUE NONCLUSTERED 
(
	[ProductID] ASC,
	[WarehouseId] ASC,
	[ExpiryDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Products]    Script Date: 8/26/2024 10:02:26 AM ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [IX_Products] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SubCategories]    Script Date: 8/26/2024 10:02:26 AM ******/
ALTER TABLE [dbo].[SubCategories] ADD  CONSTRAINT [IX_SubCategories] UNIQUE NONCLUSTERED 
(
	[SubCategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[ProductDetails] ADD  CONSTRAINT [DF_ProductDetails_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ProductDetails] ADD  CONSTRAINT [DF_ProductDetails_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[ProductDetails] ADD  CONSTRAINT [DF_ProductDetails_Balance]  DEFAULT ((0)) FOR [Balance]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Balance]  DEFAULT ((0)) FOR [Balance]
GO
ALTER TABLE [dbo].[SubCategories] ADD  CONSTRAINT [DF_SubCategories_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[SubCategories] ADD  CONSTRAINT [DF_SubCategories_InActiveDate]  DEFAULT (getdate()) FOR [InActiveDate]
GO
ALTER TABLE [dbo].[SubCategories] ADD  CONSTRAINT [DF_SubCategories_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[SubCategories] ADD  CONSTRAINT [DF_SubCategories_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Transactions] ADD  CONSTRAINT [DF__Transacti__Trans__339FAB6E]  DEFAULT (getdate()) FOR [TransactionDate]
GO
ALTER TABLE [dbo].[Transactions] ADD  CONSTRAINT [DF__Transacti__Creat__3493CFA7]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Transactions] ADD  CONSTRAINT [DF_Transactions_WarehouseId]  DEFAULT ((0)) FOR [WarehouseId]
GO
ALTER TABLE [dbo].[Warehouses] ADD  CONSTRAINT [DF__Warehouse__Activ__40C49C62]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Warehouses] ADD  CONSTRAINT [DF__Warehouse__Creat__41B8C09B]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Warehouses] ADD  CONSTRAINT [DF__Warehouse__Updat__42ACE4D4]  DEFAULT (getdate()) FOR [UpdateDate]
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
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_Product]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_ProductDetails] FOREIGN KEY([DetailID])
REFERENCES [dbo].[ProductDetails] ([DetailID])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_ProductDetails]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Warehouse] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Warehouse]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCategories]
AS
BEGIN
    SELECT * FROM Categories;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProductDetails]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProductDetails]
AS 
BEGIN
SELECT * FROM ProductDetails
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProducts]
AS
Begin
Select * From Products
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllProductsInWareHouse]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetAllProductsInWareHouse]
@warehouseid INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT 
        pd.*, 
        p.*
    FROM 
        ProductDetails pd
    INNER JOIN 
        Products p ON pd.ProductId = p.ProductId
    WHERE 
        pd.WarehouseId = @warehouseid
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllSubCategories]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllSubCategories]
AS
BEGIN
SELECT * FROM SubCategories
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllTransactions]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllTransactions]
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
AS
BEGIN
    SELECT *
    FROM Transactions
    WHERE 
        (@StartDate IS NULL AND @EndDate IS NULL) OR
        (@StartDate IS NOT NULL AND @EndDate IS NOT NULL AND cast(TransactionDate as date) BETWEEN @StartDate AND @EndDate) OR
        (@StartDate IS NOT NULL AND @EndDate IS NULL AND TransactionDate >= @StartDate) OR
        (@StartDate IS NULL AND @EndDate IS NOT NULL AND TransactionDate <= @EndDate);
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllTransactionTypes]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllTransactionTypes]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TransactionTypeID, TypeName, Change
    FROM TransactionType;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllWarehouses]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllWarehouses]
AS
BEGIN
    SELECT * FROM Warehouses;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetExpiryDatesOfProduct]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetExpiryDatesOfProduct]
    @ProductId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        pd.*, 
        p.*
    FROM 
        ProductDetails pd
    INNER JOIN 
        Products p ON pd.ProductID = p.ProductID
    WHERE 
        pd.ProductID = @ProductId
END

GO
/****** Object:  StoredProcedure [dbo].[GetProductDetailByProductIdAndExpiryDate]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductDetailByProductIdAndExpiryDate]
    @DetailId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DetailID, ProductId, ExpiryDate, Balance, CreateBy, CreateDate, UpdateBy, UpdateDate
    FROM ProductDetails
    WHERE DetailID = @DetailId ;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetProductDetailsByProductId]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductDetailsByProductId]
    @ProductId INT
AS
BEGIN
    -- Ensure we handle cases where the product ID might be invalid or no data is found
    IF @ProductId IS NULL
    BEGIN
        RAISERROR ('ProductId cannot be null.', 16, 1);
        RETURN;
    END

    -- Select expiry dates for the given ProductId
    SELECT ExpiryDate
    FROM ProductDetails
    WHERE ProductId = @ProductId
    ORDER BY ExpiryDate;
END
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionTypeById]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTransactionTypeById]
    @TransactionTypeID INT
AS
BEGIN
    -- Set NOCOUNT to ON to prevent extra result sets from interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT 
        TransactionTypeID,
        TypeName,
        Change
    FROM 
        TransactionType
    WHERE 
        TransactionTypeID = @TransactionTypeID;
END
GO
/****** Object:  StoredProcedure [dbo].[InsertCategory]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertCategory]
    @CategoryName NVARCHAR(100),
    @CreateBy NVARCHAR(50)
AS
BEGIN
    -- Declare and initialize @Active to 1 (active)
    

    -- Insert into Categories table
    INSERT INTO Categories (CategoryName,InActiveDate, CreateBy, CreateDate, UpdateBy, UpdateDate)
    VALUES (@CategoryName,null,@CreateBy, GETDATE(), @CreateBy, GETDATE());
END
GO
/****** Object:  StoredProcedure [dbo].[InsertProduct]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertProduct]
    @ProductName NVARCHAR(100),
    @SubCategoryId INT,
    @CreateBy NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Products (ProductName, SubCategoryId,InActiveDate ,CreateBy, CreateDate, UpdateBy, UpdateDate)
    VALUES (@ProductName, @SubCategoryId,null, @CreateBy, GETDATE(), @CreateBy, GETDATE());
END
GO
/****** Object:  StoredProcedure [dbo].[InsertProductDetail]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertProductDetail]
    @ProductID INT,
    @WarehouseId INT,        -- New parameter for WarehouseId
    @ExpiryDate DATE = NULL,
    @CreateBy NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO ProductDetails (ProductID, WarehouseId, ExpiryDate, CreateBy, CreateDate, UpdateBy, UpdateDate)
    VALUES (@ProductID, @WarehouseId, @ExpiryDate, @CreateBy, GETDATE(), @CreateBy, GETDATE());
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertSubCategory]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertSubCategory]
    @SubCategoryName NVARCHAR(100),
    @CategoryId INT,
    @CreateBy NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO SubCategories (SubCategoryName, CategoryId,InActiveDate,CreateBy, CreateDate, UpdateBy, UpdateDate)
    VALUES (@SubCategoryName, @CategoryId,null,@CreateBy,GetDate(),@CreateBy,GETDATE());

END
GO
/****** Object:  StoredProcedure [dbo].[InsertTransaction]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTransaction]
    @ProductId INT,
    @TransactionTypeID INT,
	@ExpiryDate DATETIME,
    @Quantity INT,
    @CreateBy NVARCHAR(50),
    @WarehouseId INT
AS
BEGIN
    DECLARE @Change INT;

    -- Get the change value from the transaction type
    SELECT @Change = Change
    FROM TransactionType
    WHERE TransactionTypeID = @TransactionTypeID;

    -- Check for sufficient balance if it's an out operation
    IF @Change < 0
    BEGIN
        DECLARE @CurrentBalance INT;
        SELECT @CurrentBalance = Balance
        FROM ProductDetails
        WHERE ProductId = @ProductId AND ExpiryDate = @ExpiryDate
          AND WarehouseId = @WarehouseId;

        IF @CurrentBalance < ABS(@Quantity * @Change)
        BEGIN
            RAISERROR('Insufficient balance for this operation', 16, 1);
            RETURN;
        END
    END

    -- Insert transaction
    INSERT INTO Transactions (ProductId, TransactionTypeID, ExpiryDate,Quantity, CreateBy, TransactionDate, WarehouseId)
    VALUES (@ProductId, @TransactionTypeID,@ExpiryDate, @Quantity, @CreateBy, GETDATE(), @WarehouseId);

    -- Update product balance in the warehouse
    UPDATE Products
    SET Balance = Balance + (@Quantity * @Change)
    WHERE ProductId = @ProductId ;
      

    -- Update product details balance using ExpiryDate and WarehouseId
    UPDATE ProductDetails
    SET Balance = Balance + (@Quantity * @Change)
    WHERE ProductId = @ProductId 
	      AND ExpiryDate = @ExpiryDate
      AND WarehouseId = @WarehouseId;
END

GO
/****** Object:  StoredProcedure [dbo].[InsertWareHouse]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertWareHouse]
    @WarehouseName NVARCHAR(100),
    @Location NVARCHAR(255),
    @CreateBy NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Warehouses (WarehouseName, Location, Active, CreateBy, CreateDate, UpdateBy, UpdateDate)
    VALUES (@WarehouseName, @Location, 1, @CreateBy, GETDATE(), @CreateBy, GETDATE());
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCategory]
    @CategoryId INT,
    @CategoryName NVARCHAR(100) = NULL,
    @Active BIT = NULL,
    @UpdateBy NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @InActiveDate DATETIME = NULL;

    -- Check if Active state is being updated to inactive
    IF @Active = 0
    BEGIN
        SET @InActiveDate = GETDATE();
    END

    -- Update Categories table
    UPDATE Categories
    SET
        CategoryName = ISNULL(@CategoryName, CategoryName),
        Active = ISNULL(@Active, Active),
        InActiveDate = CASE WHEN @Active = 0 THEN @InActiveDate ELSE NULL END, -- Reset InActiveDate to NULL if @Active is set back to 1
        UpdateBy = @UpdateBy,
        UpdateDate = GETDATE()
    WHERE
        CategoryId = @CategoryId;

    -- Return updated row
    SELECT *
    FROM Categories
    WHERE CategoryId = @CategoryId;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateProduct]
    @ProductId INT,
    @ProductName NVARCHAR(100),
    @SubCategoryId INT,
    @Active BIT,
    @UpdateBy NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Products
    SET 
        ProductName = @ProductName,
        SubCategoryId = @SubCategoryId,
        Active = @Active,
        UpdateBy = @UpdateBy,
        UpdateDate = GETDATE(),
        InactiveDate = CASE WHEN @Active = 0 THEN GETDATE() ELSE NULL END
    WHERE 
        ProductId = @ProductId;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSubCategory]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateSubCategory]
    @SubCategoryId INT,
    @SubCategoryName NVARCHAR(100),
    @CategoryId INT,
    @Active BIT = NULL,
    @UpdateBy NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @InActiveDate DATETIME = NULL;

    -- Check if Active state is being updated to inactive
    IF @Active = 0
    BEGIN
        SET @InActiveDate = GETDATE();
    END

    -- Update SubCategories table
    UPDATE SubCategories
    SET
        SubCategoryName = @SubCategoryName,
        CategoryId = @CategoryId,
        Active = ISNULL(@Active, Active),
        InActiveDate = CASE WHEN @Active = 0 THEN @InActiveDate ELSE NULL END,
        UpdateBy = @UpdateBy,
        UpdateDate = GETDATE()
    WHERE
        SubCategoryId = @SubCategoryId;

    -- Return updated row
    SELECT *
    FROM SubCategories
    WHERE SubCategoryId = @SubCategoryId;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateWarehouse]    Script Date: 8/26/2024 10:02:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateWarehouse]
    @WarehouseId INT,
    @WarehouseName NVARCHAR(100) = NULL,
    @Location NVARCHAR(255) = NULL,
    @Active BIT = NULL,
    @UpdateBy NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @InActiveDate DATETIME = NULL;

    -- Check if Active state is being updated to inactive
    IF @Active = 0
    BEGIN
        SET @InActiveDate = GETDATE();
    END

    -- Update Warehouses table
    UPDATE Warehouses
    SET
        WarehouseName = ISNULL(@WarehouseName, WarehouseName),
        Location = ISNULL(@Location, Location),
        Active = ISNULL(@Active, Active),
        InactiveDate = CASE WHEN @Active = 0 THEN @InActiveDate ELSE NULL END, -- Reset InactiveDate to NULL if @Active is set back to 1
        UpdateBy = @UpdateBy,
        UpdateDate = GETDATE()
    WHERE
        WarehouseId = @WarehouseId;

    -- Return updated row
    SELECT *
    FROM Warehouses
    WHERE WarehouseId = @WarehouseId;
END
GO
USE [master]
GO
ALTER DATABASE [Warehouse] SET  READ_WRITE 
GO
