USE [QLHS]
GO
/****** Object:  Table [dbo].[m_statuses]    Script Date: 03/14/2017 17:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_statuses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](max) NOT NULL,
	[delflg] [int] NOT NULL,
 CONSTRAINT [PK_m_statuses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_roles]    Script Date: 03/14/2017 17:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](max) NOT NULL,
	[delflg] [int] NOT NULL,
 CONSTRAINT [PK_m_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 03/14/2017 17:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[fullname] [nvarchar](max) NULL,
	[birthday] [datetime] NULL,
	[role_id] [int] NOT NULL,
	[school_year_begin] [int] NULL,
	[delflg] [int] NOT NULL,
	[school_year_end] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 03/14/2017 17:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [nvarchar](max) NOT NULL,
	[hour] [nvarchar](max) NOT NULL,
	[teacher_id] [int] NOT NULL,
	[description] [text] NULL,
	[date_begin] [date] NULL,
	[date_end] [date] NULL,
	[status_id] [int] NOT NULL,
	[delflg] [int] NOT NULL,
 CONSTRAINT [PK_classes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[study_dates]    Script Date: 03/14/2017 17:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[study_dates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NOT NULL,
	[study_date] [date] NOT NULL,
	[delflg] [int] NOT NULL,
 CONSTRAINT [PK_study_dates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scores]    Script Date: 03/14/2017 17:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[score] [float] NULL,
	[delflg] [int] NOT NULL,
 CONSTRAINT [PK_scores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[checks]    Script Date: 03/14/2017 17:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[checks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[date_id] [int] NOT NULL,
	[delflg] [int] NOT NULL,
 CONSTRAINT [PK_checks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_checks_study_dates]    Script Date: 03/14/2017 17:07:58 ******/
ALTER TABLE [dbo].[checks]  WITH CHECK ADD  CONSTRAINT [FK_checks_study_dates] FOREIGN KEY([date_id])
REFERENCES [dbo].[study_dates] ([id])
GO
ALTER TABLE [dbo].[checks] CHECK CONSTRAINT [FK_checks_study_dates]
GO
/****** Object:  ForeignKey [FK_checks_users]    Script Date: 03/14/2017 17:07:58 ******/
ALTER TABLE [dbo].[checks]  WITH CHECK ADD  CONSTRAINT [FK_checks_users] FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[checks] CHECK CONSTRAINT [FK_checks_users]
GO
/****** Object:  ForeignKey [FK_classes_m_statuses]    Script Date: 03/14/2017 17:07:58 ******/
ALTER TABLE [dbo].[classes]  WITH CHECK ADD  CONSTRAINT [FK_classes_m_statuses] FOREIGN KEY([status_id])
REFERENCES [dbo].[m_statuses] ([id])
GO
ALTER TABLE [dbo].[classes] CHECK CONSTRAINT [FK_classes_m_statuses]
GO
/****** Object:  ForeignKey [FK_classes_users]    Script Date: 03/14/2017 17:07:58 ******/
ALTER TABLE [dbo].[classes]  WITH CHECK ADD  CONSTRAINT [FK_classes_users] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[classes] CHECK CONSTRAINT [FK_classes_users]
GO
/****** Object:  ForeignKey [FK_scores_classes]    Script Date: 03/14/2017 17:07:58 ******/
ALTER TABLE [dbo].[scores]  WITH CHECK ADD  CONSTRAINT [FK_scores_classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[classes] ([id])
GO
ALTER TABLE [dbo].[scores] CHECK CONSTRAINT [FK_scores_classes]
GO
/****** Object:  ForeignKey [FK_scores_users]    Script Date: 03/14/2017 17:07:58 ******/
ALTER TABLE [dbo].[scores]  WITH CHECK ADD  CONSTRAINT [FK_scores_users] FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[scores] CHECK CONSTRAINT [FK_scores_users]
GO
/****** Object:  ForeignKey [FK_study_dates_classes]    Script Date: 03/14/2017 17:07:58 ******/
ALTER TABLE [dbo].[study_dates]  WITH CHECK ADD  CONSTRAINT [FK_study_dates_classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[classes] ([id])
GO
ALTER TABLE [dbo].[study_dates] CHECK CONSTRAINT [FK_study_dates_classes]
GO
/****** Object:  ForeignKey [FK_users_m_roles]    Script Date: 03/14/2017 17:07:58 ******/
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_m_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[m_roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_m_roles]
GO
