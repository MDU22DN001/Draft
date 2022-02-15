USE [ProjectDB]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 15-Feb-22 1:44:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeID] [varchar](30) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Designation] [varchar](30) NOT NULL,
	[Gender] [varchar](15) NOT NULL,
	[DOJ] [date] NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[PAN] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Salary_Splitup] FOREIGN KEY([Designation])
REFERENCES [dbo].[Salary_Splitup] ([Designation])
GO

ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Salary_Splitup]
GO


