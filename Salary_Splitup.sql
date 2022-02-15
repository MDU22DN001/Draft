USE [ProjectDB]
GO

/****** Object:  Table [dbo].[Salary_Splitup]    Script Date: 15-Feb-22 1:51:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Salary_Splitup](
	[Designation] [varchar](30) NOT NULL,
	[Basic_Pay] [int] NOT NULL,
	[HRA] [int] NOT NULL,
	[PF] [int] NOT NULL,
	[Medical_Allowance] [int] NOT NULL,
	[Special_Allowance] [int] NOT NULL,
	[Tax_Deduction] [int] NOT NULL,
	[Gross_Pay] [int] NOT NULL,
	[Net_Pay] [int] NOT NULL,
 CONSTRAINT [PK_Salary_Splitup] PRIMARY KEY CLUSTERED 
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

