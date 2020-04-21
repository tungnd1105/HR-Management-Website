USE [Quanlynhanvien]
GO

/****** Object:  Table [dbo].[record]    Script Date: 4/21/2020 9:02:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[record](
	[id] [nvarchar](50) NOT NULL,
	[type] [bit] NULL,
	[reason] [nvarchar](50) NULL,
	[data] [nvarchar](50) NULL,
 CONSTRAINT [PK_record] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [Quanlynhanvien]
GO

/****** Object:  Table [dbo].[depart]    Script Date: 4/21/2020 9:02:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[depart](
	[id] [nvarchar](50) NOT NULL,
	[departname] [nvarchar](50) NULL,
 CONSTRAINT [PK_depart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



