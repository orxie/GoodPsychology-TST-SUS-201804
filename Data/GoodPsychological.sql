USE [master]
GO
/****** Object:  Database [GoodPsychological]    Script Date: 2018/10/30 12:10:27 ******/
CREATE DATABASE [GoodPsychological]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GoodPsychological_data', FILENAME = N'D:\GoodPsychological_data.mdf' , SIZE = 10240KB , MAXSIZE = 512000KB , FILEGROWTH = 15%)
 LOG ON 
( NAME = N'GoodPsychological_logo', FILENAME = N'D:\GoodPsychological.ldf' , SIZE = 3072KB , MAXSIZE = 2048GB , FILEGROWTH = 1024KB )
GO
ALTER DATABASE [GoodPsychological] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GoodPsychological].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GoodPsychological] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GoodPsychological] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GoodPsychological] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GoodPsychological] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GoodPsychological] SET ARITHABORT OFF 
GO
ALTER DATABASE [GoodPsychological] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GoodPsychological] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GoodPsychological] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GoodPsychological] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GoodPsychological] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GoodPsychological] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GoodPsychological] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GoodPsychological] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GoodPsychological] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GoodPsychological] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GoodPsychological] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GoodPsychological] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GoodPsychological] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GoodPsychological] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GoodPsychological] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GoodPsychological] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GoodPsychological] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GoodPsychological] SET RECOVERY FULL 
GO
ALTER DATABASE [GoodPsychological] SET  MULTI_USER 
GO
ALTER DATABASE [GoodPsychological] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GoodPsychological] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GoodPsychological] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GoodPsychological] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GoodPsychological] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GoodPsychological', N'ON'
GO
ALTER DATABASE [GoodPsychological] SET QUERY_STORE = OFF
GO
USE [GoodPsychological]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [GoodPsychological]
GO
/****** Object:  Table [dbo].[ArticleInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleInfo](
	[AID] [int] IDENTITY(1,1) NOT NULL,
	[AFile] [nvarchar](255) NULL,
	[ATitle] [nvarchar](255) NOT NULL,
	[AContent] [nvarchar](255) NOT NULL,
	[ATime] [date] NOT NULL,
	[ACilck] [int] NOT NULL,
	[ARemarks] [nvarchar](255) NULL,
	[AGoodClick] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticleLabelInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleLabelInfo](
	[ALID] [int] IDENTITY(1,1) NOT NULL,
	[ALContent] [nvarchar](255) NOT NULL,
	[ALRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[BannerID] [int] IDENTITY(1001,1) NOT NULL,
	[BannerAlt] [nvarchar](50) NOT NULL,
	[BannerUrl] [nvarchar](50) NOT NULL,
	[BanneYN] [int] NOT NULL,
	[BannerNum] [int] NOT NULL,
	[BannerTime] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BannerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoardBingLabelInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoardBingLabelInfo](
	[BBLLID] [int] IDENTITY(1,1) NOT NULL,
	[AID] [int] NOT NULL,
	[ALID] [int] NOT NULL,
	[BBLLRemarks] [nvarchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BBLLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoardInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoardInfo](
	[PLID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PLContent] [nvarchar](max) NOT NULL,
	[PLTime] [date] NOT NULL,
	[PLRemarks] [nvarchar](255) NULL,
	[PLCilck] [int] NOT NULL,
	[PLYS] [int] NOT NULL,
	[PCTID] [int] NOT NULL,
 CONSTRAINT [PK__BoardInf__5ED8B98B74C6DE37] PRIMARY KEY CLUSTERED 
(
	[PLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoardLabelInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoardLabelInfo](
	[BLID] [int] IDENTITY(1,1) NOT NULL,
	[BLContent] [nvarchar](255) NOT NULL,
	[BLRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoardRepliesBoard]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoardRepliesBoard](
	[BBLID] [int] IDENTITY(1,1) NOT NULL,
	[PLID] [int] NOT NULL,
	[BLID] [int] NOT NULL,
	[BBLBRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BBLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ETCTAnswer]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETCTAnswer](
	[ETCTAID] [int] IDENTITY(1,1) NOT NULL,
	[ETCTID] [int] NOT NULL,
	[ETCTName] [nvarchar](50) NOT NULL,
	[ETCTNScore] [int] NULL,
	[FETCTID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ETCTAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvaluationCategoryInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluationCategoryInfo](
	[ECID] [int] IDENTITY(1,1) NOT NULL,
	[ECName] [nvarchar](255) NOT NULL,
	[ECPicURL] [nvarchar](255) NOT NULL,
	[ECA] [nvarchar](255) NOT NULL,
	[ECRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ECID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_ECName] UNIQUE NONCLUSTERED 
(
	[ECName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvaluationTC]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluationTC](
	[ETCID] [int] IDENTITY(1,1) NOT NULL,
	[ETCName] [nvarchar](50) NOT NULL,
	[ETCPicUrl] [nvarchar](50) NOT NULL,
	[ETCAPicUrl] [nvarchar](50) NOT NULL,
	[ETCIntroduce] [nvarchar](max) NOT NULL,
	[ETCA] [nvarchar](255) NOT NULL,
	[ETCPrice] [money] NOT NULL,
	[ETCClickCount] [int] NOT NULL,
	[ECID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ETCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvaluationTCAnswer]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluationTCAnswer](
	[ETCAID] [int] IDENTITY(1,1) NOT NULL,
	[ETCID] [int] NOT NULL,
	[ETCAStartScore] [int] NULL,
	[ETCAStopScore] [int] NULL,
	[ETCTID] [int] NULL,
	[ETCAResult] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ETCAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvaluationTCT]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluationTCT](
	[ETCTID] [int] IDENTITY(1,1) NOT NULL,
	[ETCTName] [nvarchar](50) NOT NULL,
	[ETCID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ETCTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PCTBingInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCTBingInfo](
	[PCTBLID] [int] IDENTITY(1,1) NOT NULL,
	[PCTLID] [int] NOT NULL,
	[PCTID] [int] NOT NULL,
	[PCTBRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PCTBLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PCTInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCTInfo](
	[PCTID] [int] IDENTITY(1,1) NOT NULL,
	[PCTAccount] [nvarchar](50) NOT NULL,
	[PCTPassWord] [nvarchar](36) NOT NULL,
	[PCTName] [nvarchar](20) NOT NULL,
	[PCTSex] [nvarchar](6) NOT NULL,
	[PCTBirth] [date] NULL,
	[Certificate] [nvarchar](255) NOT NULL,
	[PCTAddress] [nvarchar](255) NOT NULL,
	[PCTRemarks] [nvarchar](255) NULL,
	[PhoneNum] [nvarchar](255) NULL,
	[PlatformAge] [nvarchar](255) NULL,
	[PCTClickCount] [nvarchar](255) NULL,
	[PCTUrl] [nvarchar](255) NULL,
	[Synopsis] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PCTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_PCTAccount] UNIQUE NONCLUSTERED 
(
	[PCTAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PCTLabelInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCTLabelInfo](
	[PCTLID] [int] IDENTITY(1,1) NOT NULL,
	[PCTLabel] [nvarchar](255) NOT NULL,
	[PCTRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PCTLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RadioBingLabelInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadioBingLabelInfo](
	[RBLID] [int] IDENTITY(1,1) NOT NULL,
	[RLID] [int] NOT NULL,
	[RSID] [int] NOT NULL,
	[RBLRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RBLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RadioLabelInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadioLabelInfo](
	[RLID] [int] IDENTITY(1,1) NOT NULL,
	[RLTitle] [nvarchar](255) NOT NULL,
	[RLRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RadioStationInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadioStationInfo](
	[RSID] [int] IDENTITY(1,1) NOT NULL,
	[RSLFile] [nvarchar](255) NOT NULL,
	[RSName] [nvarchar](255) NOT NULL,
	[Rlyric] [nvarchar](max) NULL,
	[RpictureURL] [nvarchar](100) NULL,
	[RCilck] [int] NULL,
	[RSRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecordArticleInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordArticleInfo](
	[RAID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[AID] [int] NOT NULL,
	[RAITime] [date] NOT NULL,
	[RAIRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecordConsultInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordConsultInfo](
	[URCID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PCTID] [int] NOT NULL,
	[URCScore] [nvarchar](255) NULL,
	[URTime] [datetime] NOT NULL,
	[URRemarks] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[URCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecordRadioInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordRadioInfo](
	[RRID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RSID] [int] NOT NULL,
	[RRTime] [date] NOT NULL,
	[RRstate] [int] NOT NULL,
	[RSRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepliesBoardLabelInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepliesBoardLabelInfo](
	[BBLID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[BBLContent] [nvarchar](255) NOT NULL,
	[BBLTime] [date] NOT NULL,
	[BBLRemarks] [nvarchar](255) NULL,
	[BBLYS] [int] NOT NULL,
	[PLID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BBLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalonACategoryInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalonACategoryInfo](
	[SACID] [int] IDENTITY(1,1) NOT NULL,
	[SACName] [nvarchar](255) NOT NULL,
	[VCRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SACID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalonActivityInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalonActivityInfo](
	[SAIID] [int] IDENTITY(1,1) NOT NULL,
	[SAIName] [nvarchar](50) NOT NULL,
	[ETCPrice] [money] NOT NULL,
	[SARClick] [int] NOT NULL,
	[SARGoodClick] [int] NOT NULL,
	[SAIPictureURL] [nvarchar](50) NOT NULL,
	[SAIContent] [nvarchar](max) NOT NULL,
	[SAIPhone] [nvarchar](20) NOT NULL,
	[SAIStartTime] [datetime] NOT NULL,
	[SAIStopTime] [datetime] NOT NULL,
	[SAIMaxNum] [int] NOT NULL,
	[SAINum] [int] NOT NULL,
	[SAIState] [int] NOT NULL,
	[SACID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SAIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalonARadio]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalonARadio](
	[SAR] [int] IDENTITY(1,1) NOT NULL,
	[SAIID] [int] NOT NULL,
	[SARRadioURL] [nvarchar](50) NOT NULL,
	[SARPictureURL] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalonAUserInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalonAUserInfo](
	[SAUIID] [int] IDENTITY(1,1) NOT NULL,
	[SAIID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[SAUIName] [nvarchar](50) NOT NULL,
	[SAUIPhoto] [nvarchar](50) NOT NULL,
	[SAUIRemarks] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[SAUIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserAccount] [nvarchar](50) NOT NULL,
	[UserPassWord] [nvarchar](36) NOT NULL,
	[UserNname] [nvarchar](20) NOT NULL,
	[UserName] [nvarchar](20) NULL,
	[UserSex] [nvarchar](6) NULL,
	[UserBirth] [date] NULL,
	[UserAddress] [nvarchar](255) NULL,
	[UserLandline] [nvarchar](20) NULL,
	[UserPhone] [nvarchar](20) NULL,
	[UserPhoto] [nvarchar](255) NULL,
	[UserRemarks] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_UserAccount] UNIQUE NONCLUSTERED 
(
	[UserAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_UserNname] UNIQUE NONCLUSTERED 
(
	[UserAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTestInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTestInfo](
	[UTID] [int] IDENTITY(1,1) NOT NULL,
	[ETCID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[UTGrade] [nvarchar](255) NOT NULL,
	[UTITime] [date] NOT NULL,
	[UTRemark] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleInfo] ADD  CONSTRAINT [df_ACilck]  DEFAULT ((0)) FOR [ACilck]
GO
ALTER TABLE [dbo].[ArticleInfo] ADD  CONSTRAINT [DF_ArticleInfo_AGoodClick]  DEFAULT ((0)) FOR [AGoodClick]
GO
ALTER TABLE [dbo].[BoardInfo] ADD  CONSTRAINT [df_PLCilck]  DEFAULT ((0)) FOR [PLCilck]
GO
ALTER TABLE [dbo].[BoardInfo] ADD  CONSTRAINT [df_PLYS]  DEFAULT ((0)) FOR [PLYS]
GO
ALTER TABLE [dbo].[EvaluationTC] ADD  CONSTRAINT [df_ETCPrice]  DEFAULT ((0)) FOR [ETCPrice]
GO
ALTER TABLE [dbo].[PCTInfo] ADD  CONSTRAINT [DF_PCTClickCount]  DEFAULT ((0)) FOR [PCTClickCount]
GO
ALTER TABLE [dbo].[RadioStationInfo] ADD  CONSTRAINT [df_RCilck]  DEFAULT ((0)) FOR [RCilck]
GO
ALTER TABLE [dbo].[RecordConsultInfo] ADD  CONSTRAINT [DF_URCScore]  DEFAULT ('老师分析的真好，赞！谢谢！') FOR [URCScore]
GO
ALTER TABLE [dbo].[RecordConsultInfo] ADD  CONSTRAINT [DF_URRemarks]  DEFAULT ('非常好') FOR [URRemarks]
GO
ALTER TABLE [dbo].[RecordRadioInfo] ADD  CONSTRAINT [df_RRstate]  DEFAULT ((0)) FOR [RRstate]
GO
ALTER TABLE [dbo].[RepliesBoardLabelInfo] ADD  CONSTRAINT [df_BBLYS]  DEFAULT ((0)) FOR [BBLYS]
GO
ALTER TABLE [dbo].[SalonActivityInfo] ADD  CONSTRAINT [FK_ETCPrice]  DEFAULT ((0)) FOR [ETCPrice]
GO
ALTER TABLE [dbo].[SalonActivityInfo] ADD  CONSTRAINT [FK_SARClick]  DEFAULT ((0)) FOR [SARClick]
GO
ALTER TABLE [dbo].[SalonActivityInfo] ADD  CONSTRAINT [FK_SARGoodClick]  DEFAULT ((0)) FOR [SARGoodClick]
GO
ALTER TABLE [dbo].[SalonActivityInfo] ADD  CONSTRAINT [DF_SAIMaxNum]  DEFAULT ((0)) FOR [SAIMaxNum]
GO
ALTER TABLE [dbo].[SalonActivityInfo] ADD  CONSTRAINT [DF_SAINum]  DEFAULT ((0)) FOR [SAINum]
GO
ALTER TABLE [dbo].[SalonActivityInfo] ADD  CONSTRAINT [DF_SAIState]  DEFAULT ((0)) FOR [SAIState]
GO
ALTER TABLE [dbo].[BoardBingLabelInfo]  WITH CHECK ADD  CONSTRAINT [fk_BoardBingLabelInfo_AID] FOREIGN KEY([AID])
REFERENCES [dbo].[ArticleInfo] ([AID])
GO
ALTER TABLE [dbo].[BoardBingLabelInfo] CHECK CONSTRAINT [fk_BoardBingLabelInfo_AID]
GO
ALTER TABLE [dbo].[BoardBingLabelInfo]  WITH CHECK ADD  CONSTRAINT [fk_BoardBingLabelInfo_ALID] FOREIGN KEY([ALID])
REFERENCES [dbo].[ArticleLabelInfo] ([ALID])
GO
ALTER TABLE [dbo].[BoardBingLabelInfo] CHECK CONSTRAINT [fk_BoardBingLabelInfo_ALID]
GO
ALTER TABLE [dbo].[BoardInfo]  WITH CHECK ADD  CONSTRAINT [fk_BoardInfo_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[BoardInfo] CHECK CONSTRAINT [fk_BoardInfo_UserID]
GO
ALTER TABLE [dbo].[BoardRepliesBoard]  WITH CHECK ADD  CONSTRAINT [fk_BoardRepliesBoard_BLID] FOREIGN KEY([BLID])
REFERENCES [dbo].[BoardLabelInfo] ([BLID])
GO
ALTER TABLE [dbo].[BoardRepliesBoard] CHECK CONSTRAINT [fk_BoardRepliesBoard_BLID]
GO
ALTER TABLE [dbo].[BoardRepliesBoard]  WITH CHECK ADD  CONSTRAINT [fk_BoardRepliesBoard_RLID] FOREIGN KEY([PLID])
REFERENCES [dbo].[BoardInfo] ([PLID])
GO
ALTER TABLE [dbo].[BoardRepliesBoard] CHECK CONSTRAINT [fk_BoardRepliesBoard_RLID]
GO
ALTER TABLE [dbo].[ETCTAnswer]  WITH CHECK ADD  CONSTRAINT [fk_AnswerETCTID] FOREIGN KEY([ETCTID])
REFERENCES [dbo].[EvaluationTCT] ([ETCTID])
GO
ALTER TABLE [dbo].[ETCTAnswer] CHECK CONSTRAINT [fk_AnswerETCTID]
GO
ALTER TABLE [dbo].[EvaluationTC]  WITH CHECK ADD  CONSTRAINT [fk_EvaluationTC_ECID] FOREIGN KEY([ECID])
REFERENCES [dbo].[EvaluationCategoryInfo] ([ECID])
GO
ALTER TABLE [dbo].[EvaluationTC] CHECK CONSTRAINT [fk_EvaluationTC_ECID]
GO
ALTER TABLE [dbo].[EvaluationTCAnswer]  WITH CHECK ADD  CONSTRAINT [fk_AnswerETCID] FOREIGN KEY([ETCID])
REFERENCES [dbo].[EvaluationTC] ([ETCID])
GO
ALTER TABLE [dbo].[EvaluationTCAnswer] CHECK CONSTRAINT [fk_AnswerETCID]
GO
ALTER TABLE [dbo].[EvaluationTCT]  WITH CHECK ADD  CONSTRAINT [FK_CTETCID] FOREIGN KEY([ETCID])
REFERENCES [dbo].[EvaluationTC] ([ETCID])
GO
ALTER TABLE [dbo].[EvaluationTCT] CHECK CONSTRAINT [FK_CTETCID]
GO
ALTER TABLE [dbo].[PCTBingInfo]  WITH CHECK ADD  CONSTRAINT [fk_PCTBPCTID] FOREIGN KEY([PCTID])
REFERENCES [dbo].[PCTInfo] ([PCTID])
GO
ALTER TABLE [dbo].[PCTBingInfo] CHECK CONSTRAINT [fk_PCTBPCTID]
GO
ALTER TABLE [dbo].[PCTBingInfo]  WITH CHECK ADD  CONSTRAINT [fk_PCTLID] FOREIGN KEY([PCTLID])
REFERENCES [dbo].[PCTLabelInfo] ([PCTLID])
GO
ALTER TABLE [dbo].[PCTBingInfo] CHECK CONSTRAINT [fk_PCTLID]
GO
ALTER TABLE [dbo].[RadioBingLabelInfo]  WITH CHECK ADD  CONSTRAINT [fk_RadioBingLabelInfo_RLID] FOREIGN KEY([RLID])
REFERENCES [dbo].[RadioLabelInfo] ([RLID])
GO
ALTER TABLE [dbo].[RadioBingLabelInfo] CHECK CONSTRAINT [fk_RadioBingLabelInfo_RLID]
GO
ALTER TABLE [dbo].[RadioBingLabelInfo]  WITH CHECK ADD  CONSTRAINT [fk_RadioBingLabelInfo_RSID] FOREIGN KEY([RSID])
REFERENCES [dbo].[RadioStationInfo] ([RSID])
GO
ALTER TABLE [dbo].[RadioBingLabelInfo] CHECK CONSTRAINT [fk_RadioBingLabelInfo_RSID]
GO
ALTER TABLE [dbo].[RecordArticleInfo]  WITH CHECK ADD  CONSTRAINT [fk_RecordArticleInfo_AID] FOREIGN KEY([AID])
REFERENCES [dbo].[ArticleInfo] ([AID])
GO
ALTER TABLE [dbo].[RecordArticleInfo] CHECK CONSTRAINT [fk_RecordArticleInfo_AID]
GO
ALTER TABLE [dbo].[RecordArticleInfo]  WITH CHECK ADD  CONSTRAINT [fk_RecordArticleInfo_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[RecordArticleInfo] CHECK CONSTRAINT [fk_RecordArticleInfo_UserID]
GO
ALTER TABLE [dbo].[RecordConsultInfo]  WITH CHECK ADD  CONSTRAINT [fk_RecordConsultInfo_PCTID] FOREIGN KEY([PCTID])
REFERENCES [dbo].[PCTInfo] ([PCTID])
GO
ALTER TABLE [dbo].[RecordConsultInfo] CHECK CONSTRAINT [fk_RecordConsultInfo_PCTID]
GO
ALTER TABLE [dbo].[RecordConsultInfo]  WITH CHECK ADD  CONSTRAINT [fk_RecordConsultInfo_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[RecordConsultInfo] CHECK CONSTRAINT [fk_RecordConsultInfo_UserID]
GO
ALTER TABLE [dbo].[RecordRadioInfo]  WITH CHECK ADD  CONSTRAINT [fk_RecordRadioInfo_RSID] FOREIGN KEY([RSID])
REFERENCES [dbo].[RadioStationInfo] ([RSID])
GO
ALTER TABLE [dbo].[RecordRadioInfo] CHECK CONSTRAINT [fk_RecordRadioInfo_RSID]
GO
ALTER TABLE [dbo].[RecordRadioInfo]  WITH CHECK ADD  CONSTRAINT [fk_RecordRadioInfo_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[RecordRadioInfo] CHECK CONSTRAINT [fk_RecordRadioInfo_UserID]
GO
ALTER TABLE [dbo].[RepliesBoardLabelInfo]  WITH CHECK ADD  CONSTRAINT [fk_RepliesBoardLabelInfo_PLID] FOREIGN KEY([PLID])
REFERENCES [dbo].[BoardInfo] ([PLID])
GO
ALTER TABLE [dbo].[RepliesBoardLabelInfo] CHECK CONSTRAINT [fk_RepliesBoardLabelInfo_PLID]
GO
ALTER TABLE [dbo].[RepliesBoardLabelInfo]  WITH CHECK ADD  CONSTRAINT [fk_RepliesBoardLabelInfo_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[RepliesBoardLabelInfo] CHECK CONSTRAINT [fk_RepliesBoardLabelInfo_UserID]
GO
ALTER TABLE [dbo].[SalonActivityInfo]  WITH CHECK ADD  CONSTRAINT [fk_SalonActivityInfo_SACID] FOREIGN KEY([SACID])
REFERENCES [dbo].[SalonACategoryInfo] ([SACID])
GO
ALTER TABLE [dbo].[SalonActivityInfo] CHECK CONSTRAINT [fk_SalonActivityInfo_SACID]
GO
ALTER TABLE [dbo].[SalonARadio]  WITH CHECK ADD  CONSTRAINT [fk_SalonARadio_SAIID] FOREIGN KEY([SAIID])
REFERENCES [dbo].[SalonActivityInfo] ([SAIID])
GO
ALTER TABLE [dbo].[SalonARadio] CHECK CONSTRAINT [fk_SalonARadio_SAIID]
GO
ALTER TABLE [dbo].[SalonAUserInfo]  WITH CHECK ADD  CONSTRAINT [fk_SalonAUserInfo_SAIID] FOREIGN KEY([SAIID])
REFERENCES [dbo].[SalonActivityInfo] ([SAIID])
GO
ALTER TABLE [dbo].[SalonAUserInfo] CHECK CONSTRAINT [fk_SalonAUserInfo_SAIID]
GO
ALTER TABLE [dbo].[SalonAUserInfo]  WITH CHECK ADD  CONSTRAINT [fk_SalonAUserInfo_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[SalonAUserInfo] CHECK CONSTRAINT [fk_SalonAUserInfo_UserID]
GO
ALTER TABLE [dbo].[UserTestInfo]  WITH CHECK ADD  CONSTRAINT [fk_ETCID] FOREIGN KEY([ETCID])
REFERENCES [dbo].[EvaluationTC] ([ETCID])
GO
ALTER TABLE [dbo].[UserTestInfo] CHECK CONSTRAINT [fk_ETCID]
GO
ALTER TABLE [dbo].[UserTestInfo]  WITH CHECK ADD  CONSTRAINT [fk_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[UserTestInfo] CHECK CONSTRAINT [fk_UserID]
GO
/****** Object:  StoredProcedure [dbo].[EvaluationTCBY_ETCID]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EvaluationTCBY_ETCID](@ETCID INT)
AS
SELECT ETCName,ETCClickCount,ETCAPicUrl,ETCIntroduce FROM [EvaluationTC] WHERE ETCID=@ETCID
GO
/****** Object:  StoredProcedure [dbo].[IndexMan_3]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[IndexMan_3]
as
select top 3 [PCTName],PCTAddress,[PCTUrl],PCTID from [dbo].[PCTInfo] order by [PCTClickCount] desc
GO
/****** Object:  StoredProcedure [dbo].[PRO_SELECEEVcst]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--根据类别id查询相应测试题
CREATE PROC [dbo].[PRO_SELECEEVcst](@ECID INT)
AS
select top 6  [ETCA],[ETCPicUrl],[ETCName],case when [ETCPrice] =0 then '免费试用' END,[ETCClickCount], ETCID from [EvaluationTC]  WHERE ECID=@ECID  order by ETCID  DESC
GO
/****** Object:  StoredProcedure [dbo].[PRO_SELECTECNameByid]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--根据类别ID查找类别详情
CREATE PROC [dbo].[PRO_SELECTECNameByid](@ECID INT)
AS
SELECT  ECName,ECRemarks FROM [EvaluationCategoryInfo] WHERE ECID=@ECID
GO
/****** Object:  StoredProcedure [dbo].[sp_ArticleInfo_4]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ArticleInfo_4]
as
select a.[AID],a.[AFile],a.[ATitle],a.[AContent],a.[ATime],a.[ACilck],a.[AGoodClick],c.[ALContent] from [dbo].[ArticleInfo] as a,[dbo].[BoardBingLabelInfo] as b,[dbo].[ArticleLabelInfo] as c where a.[AID] =b.AID and c.ALID =b.ALID 

GO
/****** Object:  StoredProcedure [dbo].[sp_Banner]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Banner]
as
select [BannerAlt],[BannerUrl],[BanneYN],[BannerNum],[BannerTime] from [dbo].[Banner] where [BanneYN]=1 order by [BannerNum] asc
GO
/****** Object:  StoredProcedure [dbo].[sp_BoardInfo]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_BoardInfo]
as
select a.[PLTime],b.UserNname,a.[PLContent],a.[PLCilck],c.PCTName from [dbo].[BoardInfo] as a,[dbo].[UserInfo] as b,[dbo].[PCTInfo] as c where a.UserID=b.UserID and a.PCTID=c.PCTID order by a.[PLCilck] desc
GO
/****** Object:  StoredProcedure [dbo].[sp_Evaluation]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Evaluation]
as
select  [ECName],[ECPicURL],[ECRemarks],[ECA],ECID from [EvaluationCategoryInfo]  order by [ECID] asc
GO
/****** Object:  StoredProcedure [dbo].[sp_EvaluationTC_3]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--首页查询前3行测试题
create proc [dbo].[sp_EvaluationTC_3]
as
select top 3 [ETCA],[ETCPicUrl],[ETCName],[ETCIntroduce],case when [ETCPrice] =0 then '免费试用' END,[ETCClickCount],ETCID from [EvaluationTC]  order by [ETCClickCount] desc
GO
/****** Object:  StoredProcedure [dbo].[sp_EvaluationTCBy_ECID]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_EvaluationTCBy_ECID](@ECID INT)
as
select top 3 [ETCA],[ETCPicUrl],[ETCName],ETCID from [EvaluationTC] where [ECID]=@ECID  order by [ETCClickCount]  asc
GO
/****** Object:  StoredProcedure [dbo].[sp_EvaluationTCBy_ECID3]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--查询趣味测试题（能力）--
create proc [dbo].[sp_EvaluationTCBy_ECID3]
as
select top 3 [ETCA],[ETCPicUrl],[ETCName],[ETCIntroduce],case when [ETCPrice] =0 then '免费试用' END,[ETCClickCount],ETCID from [EvaluationTC] where [ECID]=3  order by [ETCClickCount]  asc
GO
/****** Object:  StoredProcedure [dbo].[sp_EvaluationTCBy_EID]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_EvaluationTCBy_EID](@EID INT)
as
select top 3 [ETCA],[ETCPicUrl],[ETCName],ETCID from [EvaluationTC] where [ECID]=(SELECT ECID FROM [EvaluationTC] WHERE ETCID=@EID)  order by [ETCClickCount]  asc
GO
/****** Object:  StoredProcedure [dbo].[sp_EvaluationTOP15]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_EvaluationTOP15]
as
SELECT TOP  18 no=Identity(int,1,1) ,[ETCA],[ETCPicUrl],[ETCName],[ETCIntroduce],case when [ETCPrice] =0 then '免费试用' END AS Money,[ETCClickCount]	Into temptable From   [EvaluationTC] order by  [ETCClickCount] DESC
Select a.*,b.ETCID  from temptable as a,[EvaluationTC] as b  where a.ETCName=b.ETCName and a.no>3
Drop Table temptable
GO
/****** Object:  StoredProcedure [dbo].[sp_IndexMan]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--首页推荐12位心理医生
create proc [dbo].[sp_IndexMan]
as
select top 12 [PCTName],[PCTUrl],PCTID from [dbo].[PCTInfo] order by [PCTClickCount] desc
GO
/****** Object:  StoredProcedure [dbo].[sp_Login]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--登录
create proc [dbo].[sp_Login]
@Account varchar(20) ,
@Pwd varchar(20)
as
select COUNT(*) from UserInfo where UserAccount= @Account and UserPassWord =@Pwd
GO
/****** Object:  StoredProcedure [dbo].[sp_Nname]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Nname]
@Account nvarchar(20)
as
select [UserNname] from [dbo].[UserInfo]  where [UserAccount]=@Account
GO
/****** Object:  StoredProcedure [dbo].[sp_PCTInfo_5]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_PCTInfo_5]
as
select top 5 [PCTAccount],[PCTPassWord],[PCTName],[PCTSex],[PCTBirth],[Certificate],[PCTAddress],[PCTRemarks],[PhoneNum],[PlatformAge],[PCTClickCount],[PCTUrl],[Synopsis],PCTID from [dbo].[PCTInfo]  order by [PCTClickCount] desc
GO
/****** Object:  StoredProcedure [dbo].[sp_PCTInfo_id]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_PCTInfo_id]
@ID int
as
select [PCTName],[PCTUrl],[PCTAddress] from [dbo].[PCTInfo] where [PCTID]=@ID
GO
/****** Object:  StoredProcedure [dbo].[sp_RecordConsultInfo_3]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--咨询点评
CREATE proc [dbo].[sp_RecordConsultInfo_3]
as
select top 3 b.UserName,c.PCTName,a.[URCScore],a.[URRemarks] from [dbo].[RecordConsultInfo] as a,[dbo].[UserInfo] as b, [dbo].[PCTInfo] as c where a.PCTID=c.PCTID and a.UserID=b.UserID order by [URTime] desc
GO
/****** Object:  StoredProcedure [dbo].[sp_SalonActivityInfo_6]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SalonActivityInfo_6]
as
select top 8 [SAIName],[SAIPictureURL],[SAIContent],case when [ETCPrice] =0 then '免费' END,[SARClick],[SARGoodClick] from [dbo].[SalonActivityInfo]  order by [SARClick] desc
GO
/****** Object:  StoredProcedure [dbo].[sp_SalonActivityInfo_xia]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SalonActivityInfo_xia]
as
select [SAIName],[SAIPictureURL],[SAIContent],case when [ETCPrice] =0 then '免费' END,[SARClick],[SARGoodClick] from [dbo].[SalonActivityInfo] where [SACID]=2   order by [SARClick] desc
GO
/****** Object:  StoredProcedure [dbo].[sp_Sugnup]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Sugnup]
@Nname varchar(20) ,
@Pwd varchar(20),
@Account varchar(20)
as
insert into UserInfo(UserNname,UserPassWord,UserAccount) values (@Nname,@Pwd,@Account) 
GO
/****** Object:  StoredProcedure [dbo].[sp_Sugnups]    Script Date: 2018/10/30 12:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Sugnups]
@Nname varchar(20)
as
select COUNT(*) from UserInfo where UserNname= @Nname 
GO
USE [master]
GO
ALTER DATABASE [GoodPsychological] SET  READ_WRITE 
GO
