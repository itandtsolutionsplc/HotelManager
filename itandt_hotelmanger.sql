USE [ITANDTHM_DB]
GO
/****** Object:  User [dhoteladmin]    Script Date: 01/23/2018 09:43:10 ******/
CREATE USER [dhoteladmin] FOR LOGIN [dhoteladmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [Emp]    Script Date: 01/23/2018 09:43:05 ******/
CREATE SCHEMA [Emp] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [Roo]    Script Date: 01/23/2018 09:43:05 ******/
CREATE SCHEMA [Roo] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [Swi]    Script Date: 01/23/2018 09:43:05 ******/
CREATE SCHEMA [Swi] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [Tran]    Script Date: 01/23/2018 09:43:05 ******/
CREATE SCHEMA [Tran] AUTHORIZATION [dbo]
GO
/****** Object:  Table [Tran].[Tra.Transaction]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Tran].[Tra.Transaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[BillTo] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[BilledBy] [nvarchar](50) NULL,
	[GrandTotal] [float] NULL,
	[PaymentTypeId] [int] NULL,
	[Balance] [float] NULL,
	[PaymentStatus] [int] NULL,
	[FacilityId] [int] NULL,
	[ServiceId] [int] NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Swi].[Swi.SwimmingPoolGallery]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Swi].[Swi.SwimmingPoolGallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GalleryImage] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Swi].[Swi.SwimmingPool]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Swi].[Swi.SwimmingPool](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SwimmingPoolName] [nvarchar](50) NULL,
	[SwimmingPoolGalleryId] [int] NULL,
	[SizeId] [int] NULL,
	[RateId] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Str.Store]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Str.Store](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreType] [nvarchar](100) NULL,
	[StockId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stc.StockItem]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stc.StockItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StockName] [nvarchar](50) NULL,
	[StockCategoryId] [int] NULL,
	[StockypeId] [int] NULL,
	[Quantity] [int] NULL,
	[QuantityUnit] [int] NULL,
	[QuantityBalance] [int] NULL,
	[QuantityLimit] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ModelNumber] [nvarchar](50) NULL,
	[Manufacture] [nvarchar](100) NULL,
	[PurchasePrice] [float] NULL,
	[ManufacturedDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ser.Service]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ser.Service](
	[Id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Roo].[RoomGallery]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Roo].[RoomGallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomImage] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Roo].[RoomCapacity]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Roo].[RoomCapacity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomCapacity] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Roo].[RoomAllocation]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Roo].[RoomAllocation](
	[Id] [int] NOT NULL,
	[RoomId] [int] NULL,
	[RoomTypeId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Roo].[Room]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Roo].[Room](
	[Id] [int] NOT NULL,
	[RoomTypeId] [int] NULL,
	[RoomName] [nvarchar](250) NULL,
	[SizeId] [int] NULL,
	[RateId] [int] NULL,
	[RoomGalleryId] [int] NULL,
	[RoomNumber] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[IsAvailable] [bit] NULL,
	[RoomCapacityId] [int] NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rev.BulkBooking]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rev.BulkBooking](
	[Id] [int] NOT NULL,
	[BulkId] [int] NOT NULL,
	[RoomId] [int] NULL,
	[CustomerId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rev.Booking]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rev.Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[BulkId] [int] NULL,
	[ArrivalDate] [datetime] NULL,
	[DepartureDate] [datetime] NULL,
	[Adult] [int] NULL,
	[Children] [int] NULL,
	[IsBulk] [bit] NULL,
	[NumberOfRoomsSelected] [int] NULL,
	[DateCreated] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rev.Billing]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rev.Billing](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[ProductName] [nvarchar](50) NULL,
	[NumberofRooms] [int] NULL,
	[Prices] [nvarchar](50) NULL,
	[Vat] [nvarchar](50) NULL,
	[TotalAmount] [nvarchar](50) NULL,
	[CommitmentFee] [nvarchar](50) NULL,
	[BillingType] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[IsPaid] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ret.RetaurantBillingItem]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ret.RetaurantBillingItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FoodId] [int] NULL,
	[Quantity] [int] NULL,
	[Amount] [float] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ret.Restaurants]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ret.Restaurants](
	[Id] [int] NULL,
	[RestuarantName] [nvarchar](50) NULL,
	[RestuarantGalleryId] [int] NULL,
	[SizeId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ret.RestaurantRet.RestaurantBilling]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ret.RestaurantRet.RestaurantBilling](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerId] [int] NULL,
	[MenuTypeId] [int] NULL,
	[FoodId] [int] NULL,
	[RestaurantId] [int] NULL,
	[RestaurantBillingItemId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Total] [float] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ret.RestaurantItem]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ret.RestaurantItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StockId] [int] NULL,
	[ItemName] [nvarchar](50) NULL,
	[ItemCount] [int] NULL,
	[Image] [nvarchar](250) NULL,
	[RateId] [float] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ret.RestaurantGallery]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ret.RestaurantGallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RestuarantId] [int] NULL,
	[RoomImage] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ret.Restaurant]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ret.Restaurant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerId] [int] NULL,
	[MenuTypeId] [int] NULL,
	[RestaurantId] [int] NULL,
	[FoodId] [int] NULL,
	[RestaurantBillingItemId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Total] [float] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ret.FoodItems]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ret.FoodItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FoodItemName] [nvarchar](50) NULL,
	[FoodItemQuantity] [nvarchar](50) NULL,
	[FoodItemId] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ret.Food]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ret.Food](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FoodId] [int] NULL,
	[FoodName] [nvarchar](50) NULL,
	[FoodItemId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.Title]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.Title](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.StoreType]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.StoreType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreType] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.StockType]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.StockType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Stockype] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.StockCategory]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.StockCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StockCategory] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.State]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](50) NULL,
	[Decription] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.Size]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.RoomType]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.RoomType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeName] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.RoomSize]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.RoomSize](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.Rate]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.Rate](
	[Id] [int] NOT NULL,
	[RateName] [nvarchar](250) NULL,
	[Amount] [float] NULL,
	[StartDuration] [time](7) NULL,
	[EndDuration] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.PaymentType]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.PaymentType](
	[Id] [int] NOT NULL,
	[PaymentType] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.Night]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.Night](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Night] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.MaritalStatus]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.MaritalStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaritalStatus] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.Lga]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.Lga](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lga] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.LaundaryType]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.LaundaryType](
	[Id] [int] NOT NULL,
	[LaundaryType] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.InstitutionType]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.InstitutionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionTypeName] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.Gender]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.FacilityType]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.FacilityType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacilityType] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.Country]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.Color]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.BillingType]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.BillingType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BillingType] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Par.BedSize]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Par.BedSize](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BedSize] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lau.Laundry]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lau.Laundry](
	[Id] [int] NOT NULL,
	[LaundaryId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[LaundaryType] [nvarchar](50) NULL,
	[RoomId] [int] NULL,
	[LaundaryGalleryId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[BillingAmount] [nvarchar](50) NULL,
	[RateId] [int] NULL,
	[Amount] [nvarchar](50) NULL,
	[Balanced] [nvarchar](50) NULL,
	[DateCollected] [datetime] NULL,
	[IsPayed] [bit] NULL,
	[IsReady] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[CreatedBy] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lau.LaundaryItem]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lau.LaundaryItem](
	[Id] [int] NOT NULL,
	[StockId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[ItemCount] [int] NULL,
	[Image] [nvarchar](250) NULL,
	[RateId] [float] NULL,
	[CreatedBy] [nchar](10) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lau.LaundaryGallery]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lau.LaundaryGallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LaundaryImage] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fac.FacilityAllocation]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fac.FacilityAllocation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacilityId] [int] NULL,
	[StockId] [int] NULL,
	[Quantity] [int] NULL,
	[Descrption] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fac.Facility]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fac.Facility](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacilityId] [int] NULL,
	[FacilityTypeId] [int] NULL,
	[FacilityName] [nvarchar](50) NULL,
	[WorkingCondition] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Emp].[EmployeeWorkHistory]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Emp].[EmployeeWorkHistory](
	[Id] [int] NOT NULL,
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[CompanyPhone] [nvarchar](50) NULL,
	[CompanyEmail] [nvarchar](50) NULL,
	[CompanyWebsite] [nvarchar](250) NULL,
	[CompanyAddress] [nvarchar](max) NULL,
	[EmployerName] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[StartYear] [datetime] NULL,
	[EndYear] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Emp].[EmployeeNextofKin]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Emp].[EmployeeNextofKin](
	[id] [int] NOT NULL,
	[TitleId] [int] NULL,
	[Firstname] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[SignatureImage] [nvarchar](250) NULL,
	[Passport1] [nvarchar](250) NULL,
	[Passport2] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Emp].[EmployeeEducationalHistory]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Emp].[EmployeeEducationalHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionId] [int] NULL,
	[FacultyId] [int] NULL,
	[QualificationId] [int] NULL,
	[ResultypeId] [int] NULL,
	[EntryYear] [datetime] NULL,
	[GraduationYear] [datetime] NULL,
	[InstitutionAddress] [nvarchar](max) NULL,
	[CetificationImage] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Emp].[EmployeeDetials]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Emp].[EmployeeDetials](
	[Id] [int] NOT NULL,
	[TiltleId] [int] NULL,
	[Firstname] [nvarchar](50) NULL,
	[Middlename] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Maritalstatus] [nvarchar](50) NULL,
	[Dod] [datetime] NULL,
	[phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Country] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Lga] [nvarchar](50) NULL,
	[Street] [nvarchar](max) NULL,
	[PassportImage] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cus.CustomerDetail]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cus.CustomerDetail](
	[Id] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[FIrstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[MaritalStatus] [nvarchar](10) NULL,
	[Gender] [nvarchar](10) NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[PassportImage] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bar.Bar]    Script Date: 01/23/2018 09:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bar.Bar](
	[Id] [int] NOT NULL,
	[Bar] [nvarchar](50) NULL,
	[BarGalleryId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
