/****** Object:  Table [dbo].[Members]    Script Date: 03/02/2023 00:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nchar](40) NOT NULL,
	[password] [nchar](8) NOT NULL,
	[mail] [nchar](40) NULL,
	[phone] [nchar](10) NOT NULL,
	[address] [nchar](50) NULL,
	[yearBorn] [date] NULL,
	[gender] [bit] NULL,
	[remainingHours] [time](7) NULL,
	[active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 03/02/2023 00:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[giverID] [smallint] NOT NULL,
	[categoryID] [smallint] NOT NULL,
	[date] [date] NOT NULL,
	[hour] [time](7) NOT NULL,
	[note] [nchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportsDetails]    Script Date: 03/02/2023 00:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportsDetails](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[reportID] [smallint] NOT NULL,
	[memberID] [smallint] NOT NULL,
	[receiverApproved] [bit] NULL
) ON [PRIMARY]
GO
