CREATE TABLE [dbo].[Account](
	[Account_ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_name] [varchar](40) NOT NULL,
	[Account_description] [varchar](40) NOT NULL,
	[Account_phone] [int] NOT NULL,
	[Biling_address] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountContactRole]    Script Date: 18.04.2022 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountContactRole](
	[AccountContactRole_ID] [int] NOT NULL,
	[Contact_ID] [int] NOT NULL,
	[Account_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_AccountContactRole] PRIMARY KEY CLUSTERED 
(
	[AccountContactRole_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campaign]    Script Date: 18.04.2022 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign](
	[Campaign_ID] [int] IDENTITY(1,1) NOT NULL,
	[Campaign_name] [varchar](40) NOT NULL,
	[Campaign_objectives] [varchar](40) NOT NULL,
	[Campaign_sponsor] [varchar](40) NOT NULL,
	[Campaign_start_date] [date] NOT NULL,
	[Campaign_end_date] [date] NOT NULL,
	[Campaign_other_details] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED 
(
	[Campaign_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CampaignMember]    Script Date: 18.04.2022 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampaignMember](
	[CampaignMember_ID] [int] NOT NULL,
	[Campaign_ID] [int] NOT NULL,
	[Lead_ID] [int] NOT NULL,
	[Contact_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CampaignMember] PRIMARY KEY CLUSTERED 
(
	[CampaignMember_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Case]    Script Date: 18.04.2022 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Case](
	[Case_ID] [int] NOT NULL,
	[Contact_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Case] PRIMARY KEY CLUSTERED 
(
	[Case_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 18.04.2022 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Contact_ID] [int] NOT NULL,
	[Account_ID] [int] IDENTITY(1,1) NOT NULL,
	[Contact_address] [varchar](40) NOT NULL,
	[Contact_contact_details] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Contact_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 18.04.2022 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Contract_ID] [int] NOT NULL,
	[Account_ID] [int] IDENTITY(1,1) NOT NULL,
	[Contract_status] [varchar](40) NOT NULL,
	[Contract_approval] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[Contract_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lead]    Script Date: 18.04.2022 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lead](
	[Lead_ID] [int] IDENTITY(1,1) NOT NULL,
	[Lead_firstname] [varchar](40) NOT NULL,
	[Lead_surname] [varchar](40) NOT NULL,
	[Lead_other_details] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Lead] PRIMARY KEY CLUSTERED 
(
	[Lead_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opportunity]    Script Date: 18.04.2022 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opportunity](
	[Opportunity_ID] [int] NOT NULL,
	[Account_ID] [int] IDENTITY(1,1) NOT NULL,
	[Opportunity_description] [varchar](40) NOT NULL,
	[Opportunity_details] [varchar](40) NOT NULL,
	[Opportunity_stage] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Opportunity] PRIMARY KEY CLUSTERED 
(
	[Opportunity_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpportunityContactRole]    Script Date: 18.04.2022 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpportunityContactRole](
	[OpportunityContactRole_ID] [int] NOT NULL,
	[Contact_ID] [int] NOT NULL,
	[Opportunity_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date_time] [datetime] NOT NULL,
	[Other_details] [varchar](40) NOT NULL,
 CONSTRAINT [PK_OpportunityContactRole] PRIMARY KEY CLUSTERED 
(
	[OpportunityContactRole_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountContactRole]  WITH CHECK ADD  CONSTRAINT [FK_AccountContactRole_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[AccountContactRole] CHECK CONSTRAINT [FK_AccountContactRole_Account]
GO
ALTER TABLE [dbo].[AccountContactRole]  WITH CHECK ADD  CONSTRAINT [FK_AccountContactRole_Contact] FOREIGN KEY([Contact_ID])
REFERENCES [dbo].[Contact] ([Contact_ID])
GO
ALTER TABLE [dbo].[AccountContactRole] CHECK CONSTRAINT [FK_AccountContactRole_Contact]
GO
ALTER TABLE [dbo].[CampaignMember]  WITH CHECK ADD  CONSTRAINT [FK_CampaignMember_Campaign] FOREIGN KEY([Campaign_ID])
REFERENCES [dbo].[Campaign] ([Campaign_ID])
GO
ALTER TABLE [dbo].[CampaignMember] CHECK CONSTRAINT [FK_CampaignMember_Campaign]
GO
ALTER TABLE [dbo].[CampaignMember]  WITH CHECK ADD  CONSTRAINT [FK_CampaignMember_Contact] FOREIGN KEY([Contact_ID])
REFERENCES [dbo].[Contact] ([Contact_ID])
GO
ALTER TABLE [dbo].[CampaignMember] CHECK CONSTRAINT [FK_CampaignMember_Contact]
GO
ALTER TABLE [dbo].[CampaignMember]  WITH CHECK ADD  CONSTRAINT [FK_CampaignMember_Lead] FOREIGN KEY([Lead_ID])
REFERENCES [dbo].[Lead] ([Lead_ID])
GO
ALTER TABLE [dbo].[CampaignMember] CHECK CONSTRAINT [FK_CampaignMember_Lead]
GO
ALTER TABLE [dbo].[Case]  WITH CHECK ADD  CONSTRAINT [FK_Case_Contact] FOREIGN KEY([Contact_ID])
REFERENCES [dbo].[Contact] ([Contact_ID])
GO
ALTER TABLE [dbo].[Case] CHECK CONSTRAINT [FK_Case_Contact]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Account]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Account]
GO
ALTER TABLE [dbo].[Opportunity]  WITH CHECK ADD  CONSTRAINT [FK_Opportunity_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[Opportunity] CHECK CONSTRAINT [FK_Opportunity_Account]
GO
ALTER TABLE [dbo].[OpportunityContactRole]  WITH CHECK ADD  CONSTRAINT [FK_OpportunityContactRole_Contact] FOREIGN KEY([Contact_ID])
REFERENCES [dbo].[Contact] ([Contact_ID])
GO
ALTER TABLE [dbo].[OpportunityContactRole] CHECK CONSTRAINT [FK_OpportunityContactRole_Contact]
GO
ALTER TABLE [dbo].[OpportunityContactRole]  WITH CHECK ADD  CONSTRAINT [FK_OpportunityContactRole_Opportunity] FOREIGN KEY([Opportunity_ID])
REFERENCES [dbo].[Opportunity] ([Opportunity_ID])
GO
ALTER TABLE [dbo].[OpportunityContactRole] CHECK CONSTRAINT [FK_OpportunityContactRole_Opportunity]
GO
USE [master]
GO
ALTER DATABASE [CRM] SET  READ_WRITE 
GO
