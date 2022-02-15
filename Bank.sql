USE [ProjectDB]
GO

/****** Object:  Table [dbo].[Bank]    Script Date: 15-Feb-22 1:50:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bank](
	[Serial_No] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](30) NOT NULL,
	[Account_Number] [bigint] NOT NULL,
	[IFSC] [varchar](25) NOT NULL,
	[Bank_Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Bank] PRIMARY KEY CLUSTERED 
(
	[Serial_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Bank]  WITH CHECK ADD  CONSTRAINT [FK_Bank_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO

ALTER TABLE [dbo].[Bank] CHECK CONSTRAINT [FK_Bank_Employee]
GO

