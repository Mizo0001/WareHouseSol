USE [master]
GO
/****** Object:  Database [Warehouse]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 8/27/2024 11:09:39 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Categories] UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 8/27/2024 11:09:39 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_ProductDetails_ProductId_WarehouseId_ExpiryDate] UNIQUE NONCLUSTERED 
(
	[ProductID] ASC,
	[WarehouseId] ASC,
	[ExpiryDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/27/2024 11:09:39 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Products] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 8/27/2024 11:09:39 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_SubCategories] UNIQUE NONCLUSTERED 
(
	[SubCategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[TransactionType]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  Table [dbo].[Warehouses]    Script Date: 8/27/2024 11:09:39 AM ******/
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 8/27/2024 11:09:39 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/27/2024 11:09:39 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 8/27/2024 11:09:39 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 8/27/2024 11:09:39 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 8/27/2024 11:09:39 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 8/27/2024 11:09:39 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/27/2024 11:09:39 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllProductDetails]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllProductsInWareHouse]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllSubCategories]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllTransactions]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllTransactionTypes]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllWarehouses]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetExpiryDatesOfProduct]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetProductDetailByProductIdAndExpiryDate]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetProductDetailsByProductId]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetTransactionTypeById]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[InsertCategory]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[InsertProduct]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[InsertProductDetail]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[InsertSubCategory]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[InsertTransaction]    Script Date: 8/27/2024 11:09:39 AM ******/
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
    INSERT INTO Transactions (ProductId, TransactionTypeID, ExpiryDate, Quantity, CreateBy, TransactionDate, WarehouseId)
    VALUES (@ProductId, @TransactionTypeID, @ExpiryDate, @Quantity, @CreateBy, GETDATE(), @WarehouseId);

    -- Update product balance in the warehouse
    UPDATE Products
    SET Balance = Balance + (@Quantity * @Change)
    WHERE ProductId = @ProductId;

    -- Check if TransactionTypeID = 1 and handle the product details accordingly
    IF @TransactionTypeID = 1
    BEGIN
        -- Check if the row exists in ProductDetails
        IF NOT EXISTS (
            SELECT 1
            FROM ProductDetails
            WHERE ProductId = @ProductId AND ExpiryDate = @ExpiryDate AND WarehouseId = @WarehouseId
        )
        BEGIN
            -- If the row does not exist, insert it with the initial balance
            INSERT INTO ProductDetails (ProductId, ExpiryDate,CreateBy,CreateDate,UpdateBy,UpdateDate,Balance, WarehouseId)
            VALUES (@ProductId, @ExpiryDate,@CreateBy,GETDATE(),@CreateBy,GetDate(),@Quantity * @Change, @WarehouseId);
        END
        ELSE
        BEGIN
            -- If the row exists, update the balance
            UPDATE ProductDetails
            SET Balance = Balance + (@Quantity * @Change)
            WHERE ProductId = @ProductId AND ExpiryDate = @ExpiryDate AND WarehouseId = @WarehouseId;
        END
    END
    ELSE
    BEGIN
        -- Update product details balance using ExpiryDate and WarehouseId as usual for other transaction types
        UPDATE ProductDetails
        SET Balance = Balance + (@Quantity * @Change)
        WHERE ProductId = @ProductId 
            AND ExpiryDate = @ExpiryDate
            AND WarehouseId = @WarehouseId;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertWareHouse]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateSubCategory]    Script Date: 8/27/2024 11:09:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateWarehouse]    Script Date: 8/27/2024 11:09:39 AM ******/
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
