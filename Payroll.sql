USE [ProjectDB]
GO

/****** Object:  Table [dbo].[Payroll]    Script Date: 15-Feb-22 1:48:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Payroll](
	[Serial_No] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](30) NOT NULL,
	[Designation] [varchar](30) NULL,
	[AttendanceID] [int] NULL,
 CONSTRAINT [PK_Payroll] PRIMARY KEY CLUSTERED 
(
	[Serial_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Payroll]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_Attendance] FOREIGN KEY([AttendanceID])
REFERENCES [dbo].[Attendance] ([AttendanceID])
GO

ALTER TABLE [dbo].[Payroll] CHECK CONSTRAINT [FK_Payroll_Attendance]
GO

ALTER TABLE [dbo].[Payroll]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO

ALTER TABLE [dbo].[Payroll] CHECK CONSTRAINT [FK_Payroll_Employee]
GO

ALTER TABLE [dbo].[Payroll]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_Salary_Splitup] FOREIGN KEY([Designation])
REFERENCES [dbo].[Salary_Splitup] ([Designation])
GO

ALTER TABLE [dbo].[Payroll] CHECK CONSTRAINT [FK_Payroll_Salary_Splitup]
GO


